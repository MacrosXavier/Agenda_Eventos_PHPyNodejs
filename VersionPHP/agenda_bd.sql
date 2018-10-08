-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2018 a las 03:29:08
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `fecha_fin` date NOT NULL,
  `hora_fin` time NOT NULL,
  `dia_completo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `user_id`, `titulo`, `fecha_inicio`, `hora_inicio`, `fecha_fin`, `hora_fin`, `dia_completo`) VALUES
(1, 1, 'Futbol', '2018-10-13', '21:00:00', '2018-10-13', '22:30:00', 0),
(2, 1, 'Curso', '2018-10-15', '19:00:00', '2018-10-15', '20:30:00', 0),
(3, 1, 'Rentas', '2018-10-18', '07:00:00', '2018-10-18', '08:30:00', 0),
(4, 1, 'Ciclismo', '2018-10-21', '07:00:00', '2018-10-14', '12:30:00', 0),
(5, 1, 'Capacitacion', '2018-10-26', '09:00:00', '2018-10-28', '12:30:00', 0),
(7, 2, 'Practica Futbol', '2018-10-08', '08:30:00', '2018-10-11', '12:30:00', 0),
(8, 2, 'Practica Futbol', '2018-10-08', '17:00:00', '2018-10-11', '20:30:00', 0),
(9, 2, 'Concentracion', '2018-10-12', '00:00:00', '0000-00-00', '00:00:00', 0),
(10, 2, 'Partido', '2018-10-13', '15:30:00', '2018-10-13', '17:00:00', 0),
(11, 2, 'Descanso', '2018-10-14', '00:00:00', '0000-00-00', '00:00:00', 0),
(12, 2, 'Practica Futbol', '2018-10-15', '08:30:00', '2018-10-18', '12:30:00', 0),
(13, 2, 'Practica Futbol', '2018-10-15', '17:00:00', '2018-10-18', '20:30:00', 0),
(14, 2, 'Concentracion', '2018-10-19', '00:00:00', '0000-00-00', '00:00:00', 0),
(15, 2, 'Partido', '2018-10-20', '17:00:00', '2018-10-20', '19:00:00', 0),
(16, 3, 'DT Practica', '2018-10-08', '09:00:00', '2018-10-11', '12:30:00', 0),
(17, 3, 'DT Practica', '2018-10-08', '16:00:00', '2018-10-11', '20:00:00', 0),
(18, 3, 'DT Concentacion', '2018-10-12', '00:00:00', '0000-00-00', '00:00:00', 0),
(19, 3, 'DT Partido', '2018-10-14', '18:00:00', '2018-10-14', '19:30:00', 0),
(20, 3, 'DT Practica', '2018-10-15', '09:00:00', '2018-10-18', '12:30:00', 0),
(21, 3, 'DT Practica', '2018-10-15', '15:30:00', '2018-10-18', '20:00:00', 0),
(22, 3, 'DT Concentacion', '2018-10-19', '00:00:00', '0000-00-00', '00:00:00', 0),
(23, 3, 'DT Partido', '2018-10-21', '20:00:00', '2018-10-21', '21:30:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `clave` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `clave`, `nacimiento`) VALUES
(1, 'Mauro Javier Sanchez', 'mauro@nextu.com', '$2y$10$gFdmJBUz4E37nanGri6xPONJEMBHbDyRvIrj1y7IpOd59fd8sorVm', '1981-11-04'),
(2, 'Mario Alberto Kempes', 'kempes@nextu.com', '$2y$10$j.rhEnv2SH9CsYNukFdH1uVSnpMfQgJwAUJSp2I9DyrNz87Q6GJa2', '0000-00-00'),
(3, 'Diego Armando Maradona', 'maradona@nextu.com', '$2y$10$uXAF3dH6.tDrMOazGamq/uAk5JDvt3jai91S0StlItFxe78orv6BC', '0000-00-00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relacion_eventos_usuarios` (`user_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `relacion_eventos_usuarios` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
