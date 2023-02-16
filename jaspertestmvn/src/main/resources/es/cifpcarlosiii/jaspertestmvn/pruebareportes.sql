-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-02-2014 a las 21:25:49
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `pruebareportes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `ID` bigint(51) NOT NULL AUTO_INCREMENT,
  `TEXTO` longtext NOT NULL,
  `PARTICIPANTE` bigint(51) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `PARTICIPANTE` (`PARTICIPANTE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcar la base de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`ID`, `TEXTO`, `PARTICIPANTE`) VALUES
(1, 'Comentario 1.1', 1),
(2, 'Comenatario 1.2', 1),
(3, 'Comentario 1.3', 1),
(4, 'Comenatario 1.4', 1),
(5, 'Comentario 2.1', 2),
(6, 'Comenatario 2.2', 2),
(7, 'Comentario 3.1', 3),
(8, 'Comenatario 5.1', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantes`
--

DROP TABLE IF EXISTS `participantes`;
CREATE TABLE IF NOT EXISTS `participantes` (
  `ID` bigint(51) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `DETALLES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `participantes`
--

INSERT INTO `participantes` (`ID`, `NOMBRE`, `USERNAME`, `PASSWORD`, `DETALLES`) VALUES
(1, 'Participante 1', 'par1user', 'part1pass', 'comentarios participante 1'),
(2, 'Participante 2', 'par2user', 'part2pass', 'comentarios participante 2'),
(3, 'Participante 3', 'par3user', 'part3pass', 'comentarios participante 3'),
(4, 'Participante 4', 'par4user', 'part4pass', 'comentarios respecto al participante 4'),
(5, 'Participante 5', 'par5user', 'part5pass', 'sin comentarios para el participante 5'),
(6, 'Participante 6', 'par6user', 'part6pass', NULL),
(7, 'Participante 7', 'par7user', 'part7pass', 'comentatios participante 7'),
(8, 'Participante 8', 'par8user', 'part8pass', 'comentarios participante 8'),
(9, 'Participante 9', 'par9user', 'part9pass', 'comentarios participante 9'),
(10, 'Participante 10', 'par10user', 'part10pass', NULL);

--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`PARTICIPANTE`) REFERENCES `participantes` (`ID`);
