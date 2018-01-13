-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-01-2018 a las 11:28:41
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdcarrito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `celulares`
--

CREATE TABLE `celulares` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `celulares`
--

INSERT INTO `celulares` (`id`, `nombre`, `descripcion`, `imagen`, `precio`) VALUES
(1, 'ZenFone 4 Max', 'The first 5.7-inch smartphone compatible with Tango and Daydream technologies. Tango is the new augmented reality (RA) technology created to expand your vision and change the way you interact with the world.', '/phones/1.png', 700.89),
(2, 'ZenFone Zoom', 'The first 5.7-inch smartphone compatible with Tango and Daydream technologies. Tango is the new augmented reality (RA) technology created to expand your vision and change the way you interact with the world. ', '/phones/2.png', 759.99),
(3, 'ZenFone 2 Laser', 'The first 5.7-inch smartphone compatible with Tango and Daydream technologies. Tango is the new augmented reality (RA) technology created to expand your vision and change the way you interact with the world.\r\n\r\n', '/phones/3.png', 400.99),
(4, 'Zenfone Selfie', 'The first 5.7-inch smartphone compatible with Tango and Daydream technologies. Tango is the new augmented reality (RA) technology created to expand your vision and change the way you interact with the world.\r\n\r\n', '/phones/4.png', 559.67);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gamer`
--

CREATE TABLE `gamer` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gamer`
--

INSERT INTO `gamer` (`id`, `nombre`, `descripcion`, `imagen`, `precio`) VALUES
(1, 'WIRELESS AUDIO', 'Con el mejor sonido para tus juegos. Siente el juego real.', '/gamer/1.png', 99.89),
(2, 'ALFOMBRILLA', 'Un buen adorno y a la vez una gran comodidad.', '/gamer/2.png', 25.99),
(3, 'QUERTY RG45', 'Con un buen diseño y buen desempeño.', '/gamer/3.png', 79.99),
(4, 'LED 45\"', 'Una pantalla LED con una gran nitidez y soporte de gráficos.', '/gamer/4.png', 499.99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portatil`
--

CREATE TABLE `portatil` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `portatil`
--

INSERT INTO `portatil` (`id`, `nombre`, `descripcion`, `imagen`, `precio`) VALUES
(1, 'ROG GL553VD', 'El ROG cuenta con todas las herramientas que necesitas para elevar tu rendimiento gaming al siguiente nivel.', '/portatil/1.png', 1799.87),
(2, 'ROG GR45', 'El ROG cuenta con todas las herramientas que necesitas para elevar tu rendimiento gaming al siguiente nivel.', '/portatil/2.png', 1999.88),
(3, 'ROG STRIX ', 'El ROG cuenta con todas las herramientas que necesitas para elevar tu rendimiento gaming al siguiente nivel.', '/portatil/3.png', 1856.33),
(4, 'ROG POWER', 'El ROG cuenta con todas las herramientas que necesitas para elevar tu rendimiento gaming al siguiente nivel.', '/portatil/4.png', 2999.88);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobremesa`
--

CREATE TABLE `sobremesa` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sobremesa`
--

INSERT INTO `sobremesa` (`id`, `nombre`, `descripcion`, `imagen`, `precio`) VALUES
(1, 'G112D MON', 'Rendimiento sin concesiones con iluminación espectacular.', '/sobremesa/1.png', 3999.87),
(2, 'G45 POWER', 'Rendimiento sin concesiones con iluminación espectacular.', '/sobremesa/2.png', 1999.99),
(3, 'HOUSE F17', 'Rendimiento sin concesiones con iluminación espectacular.', '/sobremesa/3.png', 1455.99),
(4, 'ROBOCOP 85', 'Rendimiento sin concesiones con iluminación espectacular.', '/sobremesa/4.png', 3000.99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabletas`
--

CREATE TABLE `tabletas` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tabletas`
--

INSERT INTO `tabletas` (`id`, `nombre`, `descripcion`, `imagen`, `precio`) VALUES
(1, 'ASUS ZenPad 3s', 'Estilo persolanizable y un increible potecial para el entretenimiento.', '/tablets/1.png', 600.99),
(2, 'ASUS ZenPad 8.0', 'Estilo persolanizable y un increible potecial para el entretenimiento.', '/tablets/2.png', 345.99),
(3, 'ASUS ZenPad 10', 'Estilo persolanizable y un increible potecial para el entretenimiento.', '/tablets/3.png', 679.89),
(4, 'ASUS ZenPad C7.0', 'Estilo persolanizable y un increible potecial para el entretenimiento.', '/tablets/4.png', 499.99);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `celulares`
--
ALTER TABLE `celulares`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gamer`
--
ALTER TABLE `gamer`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `portatil`
--
ALTER TABLE `portatil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sobremesa`
--
ALTER TABLE `sobremesa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tabletas`
--
ALTER TABLE `tabletas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `celulares`
--
ALTER TABLE `celulares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `gamer`
--
ALTER TABLE `gamer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `portatil`
--
ALTER TABLE `portatil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sobremesa`
--
ALTER TABLE `sobremesa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tabletas`
--
ALTER TABLE `tabletas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
