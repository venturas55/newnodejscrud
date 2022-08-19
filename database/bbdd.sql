-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 07-07-2022 a las 11:57:00
-- Versión del servidor: 8.0.20
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nodejs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items1`
--

CREATE TABLE `items1` (
  `columnaA` varchar(8) NOT NULL,
  `columnaB` varchar(12) DEFAULT NULL,
  `columnaC` varchar(250) DEFAULT NULL,
  `columnaD` varchar(200) DEFAULT NULL,
  `columnaE` varchar(50) DEFAULT NULL,
  `columnaF` varchar(250) DEFAULT NULL,
  `columnaG` decimal(5,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla de items1';

--
-- Volcado de datos para la tabla `items1`
--

INSERT INTO `items1` (`columnaA`, `columnaB`, `columnaC`, `columnaD`, `columnaE`, `columnaF`, `columnaG`) VALUES
('254600', 'E-0190', NULL, '', 'GpD(2)V', 'L0,5 oc1,5 L0,5 oc4,5', '55.00'),
('26504', 'E-0217', 'DFGG', 'DDDD', 'GpD(3)V', '9.00', '2.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `items1`
--
ALTER TABLE `items1`
  ADD PRIMARY KEY (`columnaA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
