-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-06-2016 a las 11:03:08
-- Versión del servidor: 5.5.50-cll
-- Versión de PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `elaula_system`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Categorias`
--

CREATE TABLE IF NOT EXISTS `Categorias` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Foto` varchar(255) NOT NULL,
  `Bebida` varchar(255) NOT NULL,
  `Muestra` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `Nombre` (`Nombre`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Volcado de datos para la tabla `Categorias`
--

INSERT INTO `Categorias` (`Id`, `Nombre`, `Foto`, `Bebida`, `Muestra`) VALUES
(1, 'SOPAS', '1.jpg', '0', 0),
(2, 'SANDWICHS', '2.jpg', '0', 0),
(3, 'TAPAS', '3.jpg', '0', 0),
(4, 'PANESS', '', '0', 1),
(5, 'ENSALADAS', '5.jpg', '0', 0),
(6, 'HAMBURGUESAS', '6.jpg', '0', 0),
(7, 'ESPECIALIDADES', '7.jpg', '0', 0),
(8, 'POSTRES', '8.jpg', '0', 0),
(9, 'BEBIDAS', '9.jpg', '1', 0),
(10, 'BATIDOS', '10.jpg', '1', 0),
(11, 'CERVEZAS', '11.jpg', '1', 0),
(12, 'VINOS', '12.jpg', '1', 0),
(13, 'JARRAS', '13.jpg', '0', 0),
(14, 'LICORES', '14.jpg', '0', 0),
(15, 'TES', '', '0', 1),
(16, 'CAFES', '16.jpg', '1', 0),
(17, 'COCTELES', '17.jpg', '1', 0),
(18, 'MENU DIARIO', '18.jpg', '0', 0),
(19, 'ADICIONES', '19.jpg', '0', 0),
(20, 'CIGARRILLOS', '20.jpg', '0', 0),
(21, 'FAMILY', '', '0', 1),
(22, 'CATAS', '22.jpg', '0', 0),
(23, 'CAFÉ AMOR PERFECTO', '23.jpg', '1', 0),
(24, 'REPOSTERIA', '24.jpeg', '0', 0),
(25, 'COMBO', '25.jpg', '0', 0),
(26, 'TAPAS ESPECIALES', '26.jpg', '0', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Img_mesas`
--

CREATE TABLE IF NOT EXISTS `Img_mesas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `Img_mesas`
--

INSERT INTO `Img_mesas` (`Id`, `Nombre`) VALUES
(1, '1.jpg'),
(2, '2.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Informacion`
--

CREATE TABLE IF NOT EXISTS `Informacion` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Identificacion` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Pais` varchar(255) NOT NULL,
  `Ciudad` varchar(255) NOT NULL,
  `Dir` varchar(255) NOT NULL,
  `Codigo` varchar(255) NOT NULL,
  `Telefono` varchar(255) NOT NULL,
  `Celular` varchar(255) NOT NULL,
  `Logo` varchar(255) NOT NULL,
  `Url` varchar(255) NOT NULL,
  `Urlseguimiento` longtext NOT NULL,
  `Banco` varchar(255) NOT NULL,
  `Tipocuenta` varchar(255) NOT NULL,
  `Nrocuenta` varchar(255) NOT NULL,
  `Nombrecuenta` varchar(255) NOT NULL,
  `Nit` varchar(255) NOT NULL,
  `Casillero` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `Informacion`
--

INSERT INTO `Informacion` (`Id`, `Nombre`, `Identificacion`, `Email`, `Pais`, `Ciudad`, `Dir`, `Codigo`, `Telefono`, `Celular`, `Logo`, `Url`, `Urlseguimiento`, `Banco`, `Tipocuenta`, `Nrocuenta`, `Nombrecuenta`, `Nit`, `Casillero`) VALUES
(1, 'Rapibox', '2632623', 'rapibox@hotmail.com', 'COLOMBIA', 'MEDELLIN', 'CALLE 50', '505140', '3202020', '211111111', 'LOGO', 'URLMELA', 'URLSEGUIMIENTOMELA', 'NO HAY', 'TIPO', 'NRO', 'ASI SE LLAMA', '4515151', '305625');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Login`
--

CREATE TABLE IF NOT EXISTS `Login` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(255) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Estado` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=172 ;

--
-- Volcado de datos para la tabla `Login`
--

INSERT INTO `Login` (`Id`, `Usuario`, `Fecha`, `Estado`) VALUES
(1, '1234988775', '2016-03-03 10:54:03', 0),
(2, '1234988775', '2016-03-03 03:21:40', 0),
(3, '1234988775', '2016-03-03 04:07:43', 0),
(4, '71216799', '2016-03-03 04:21:48', 0),
(5, '71216799', '2016-03-03 06:20:52', 0),
(6, '1234988775', '2016-03-04 08:49:04', 0),
(7, '71216799', '2016-03-04 02:44:59', 0),
(8, '71216799', '2016-03-04 02:46:00', 0),
(9, '71216799', '2016-03-04 02:46:09', 0),
(10, '71216799', '2016-03-04 02:46:30', 0),
(11, '71216799', '2016-03-04 02:55:01', 0),
(12, '71216799', '2016-03-04 03:03:06', 0),
(13, '71216799', '2016-03-04 03:03:17', 0),
(14, '71216799', '2016-03-04 03:03:39', 0),
(15, '71216799', '2016-03-04 03:21:51', 0),
(16, '71216799', '2016-03-04 06:30:37', 0),
(17, '71216799', '2016-03-06 01:39:50', 0),
(18, '71216799', '2016-03-06 01:39:53', 0),
(19, '1234988775', '2016-03-07 09:02:55', 0),
(20, '1234988775', '2016-03-07 09:12:00', 0),
(21, '1234988775', '2016-03-07 09:14:10', 0),
(22, '1234988775', '2016-03-07 09:51:34', 0),
(23, '1234988775', '2016-03-07 11:31:48', 0),
(24, '1234988775', '2016-03-08 08:51:06', 0),
(25, '1234988775', '2016-03-09 09:04:35', 0),
(26, '1234988775', '2016-03-09 09:15:55', 0),
(27, '1234988775', '2016-03-09 04:10:57', 0),
(28, '1234988775', '2016-03-10 09:03:09', 0),
(29, '1234988775', '2016-03-10 09:30:30', 0),
(30, '1234988775', '2016-03-10 09:53:51', 0),
(31, '1234988775', '2016-03-10 09:53:51', 0),
(32, '1234988775', '2016-03-11 09:03:41', 0),
(33, '1234988775', '2016-03-11 10:09:29', 0),
(34, '1234988775', '2016-03-11 10:20:54', 0),
(35, '1234988775', '2016-03-11 10:26:58', 0),
(36, '1234988775', '2016-03-11 10:27:15', 0),
(37, '1234988775', '2016-03-11 10:27:52', 0),
(38, '71216799', '2016-03-11 01:38:06', 0),
(39, '71216799', '2016-03-11 02:47:33', 0),
(40, '1234988775', '2016-03-14 08:40:02', 0),
(41, '1234988775', '2016-03-14 11:40:52', 0),
(42, '1234988775', '2016-03-15 09:07:18', 0),
(43, '1234988775', '2016-03-15 10:58:48', 0),
(44, '1234988775', '2016-03-15 03:50:33', 0),
(45, '71216799', '2016-03-15 03:53:37', 0),
(46, '1234988775', '2016-03-16 09:12:13', 0),
(47, '1234988775', '2016-03-16 03:12:20', 0),
(48, '1234988775', '2016-03-16 03:20:59', 0),
(49, '1234988775', '2016-03-17 09:06:25', 0),
(50, '1234988775', '2016-03-18 09:07:49', 0),
(51, '1234988775', '2016-03-22 08:47:21', 0),
(52, '1234988775', '2016-03-23 09:00:22', 0),
(53, '71216799', '2016-03-23 09:55:24', 0),
(54, '1234988775', '2016-03-31 10:03:00', 0),
(55, '1234988775', '2016-04-01 09:10:45', 0),
(56, '1234988775', '2016-04-05 08:44:32', 0),
(57, '1234988775', '2016-04-05 01:42:12', 0),
(58, '1234988775', '2016-04-06 08:53:12', 0),
(59, '1234988775', '2016-04-06 11:36:46', 0),
(60, '1234988775', '2016-04-07 08:57:00', 0),
(61, '1234988775', '2016-04-08 08:59:42', 0),
(62, '1234988775', '2016-04-08 10:49:38', 0),
(63, '71216799', '2016-04-08 12:58:05', 0),
(64, '71216799', '2016-04-08 01:34:13', 0),
(65, '71216799', '2016-04-08 01:43:30', 0),
(66, '1234988775', '2016-04-11 08:35:12', 0),
(67, '1234988775', '2016-04-11 09:13:42', 0),
(68, '1234988775', '2016-04-11 09:14:50', 0),
(69, '1234988775', '2016-04-11 09:15:02', 0),
(70, '1234988775', '2016-04-11 09:16:23', 0),
(71, '1234988775', '2016-04-11 09:26:09', 0),
(72, '1234988775', '2016-04-11 09:27:47', 0),
(73, '1234988775', '2016-04-11 09:32:29', 0),
(74, '1234988775', '2016-04-11 09:36:56', 0),
(75, '1234988775', '2016-04-12 08:54:05', 0),
(76, '1234988775', '2016-04-12 11:03:01', 0),
(77, '1234988775', '2016-04-13 08:59:17', 0),
(78, '1234988775', '2016-04-13 09:57:19', 0),
(79, '1234988775', '2016-04-14 09:08:00', 0),
(80, '1234988775', '2016-04-14 02:23:30', 0),
(81, '1234988775', '2016-04-15 09:02:03', 0),
(82, '71216799', '2016-04-15 03:54:56', 0),
(83, '1234988775', '2016-04-15 04:20:00', 0),
(84, '1234988775', '2016-04-18 08:41:36', 0),
(85, '1234988775', '2016-04-18 09:33:55', 0),
(86, '1234988775', '2016-04-22 09:18:15', 0),
(87, '1234988775', '2016-04-22 11:37:47', 0),
(88, '1234988775', '2016-04-22 01:49:06', 0),
(89, '1234988775', '2016-04-22 03:35:00', 0),
(90, '1234988775', '2016-04-22 03:43:05', 0),
(91, '1234988775', '2016-04-23 08:20:44', 0),
(92, '1234988775', '2016-04-25 09:06:43', 0),
(93, '1234988775', '2016-04-25 01:34:39', 0),
(94, '1234988775', '2016-04-26 11:11:20', 0),
(95, '1234988775', '2016-04-26 08:05:58', 0),
(96, '1234988775', '2016-04-27 09:16:46', 0),
(97, '1234988775', '2016-04-27 01:52:58', 0),
(98, '1234988775', '2016-04-27 01:53:00', 0),
(99, '1234988775', '2016-04-27 01:53:00', 0),
(100, '1234988775', '2016-04-27 01:53:00', 0),
(101, '1234988775', '2016-04-27 01:53:00', 0),
(102, '1234988775', '2016-04-28 09:10:56', 0),
(103, '1234988775', '2016-05-02 09:27:17', 0),
(104, '1234988775', '2016-05-03 10:09:00', 0),
(105, '1234988775', '2016-05-03 10:09:00', 0),
(106, '1234988775', '2016-05-04 09:10:16', 0),
(107, '1234988775', '2016-05-05 03:21:43', 0),
(108, '1234988775', '2016-05-06 09:10:43', 0),
(109, '1234988775', '2016-05-06 09:10:43', 0),
(110, '1234988775', '2016-05-06 03:47:19', 0),
(111, '1234988775', '2016-05-06 03:47:20', 0),
(112, '1234988775', '2016-05-06 03:47:20', 0),
(113, '1234988775', '2016-05-06 03:47:20', 0),
(114, '1234988775', '2016-05-10 09:24:16', 0),
(115, '1234988775', '2016-05-11 09:11:01', 0),
(116, '1234988775', '2016-05-11 10:31:03', 0),
(117, '1234988775', '2016-05-11 02:21:58', 0),
(118, '1234988775', '2016-05-12 09:11:12', 0),
(119, '1234988775', '2016-05-12 12:45:28', 0),
(120, '1234988775', '2016-05-13 08:58:37', 0),
(121, '1234988775', '2016-05-13 08:58:41', 0),
(122, '1234988775', '2016-05-16 09:13:52', 0),
(123, '1234988775', '2016-05-16 09:13:53', 0),
(124, '1234988775', '2016-05-16 10:00:55', 0),
(125, '1234988775', '2016-05-16 10:05:33', 0),
(126, '1234988775', '2016-05-16 11:34:47', 0),
(127, '1234988775', '2016-05-16 11:34:47', 0),
(128, '1234988775', '2016-05-16 11:34:53', 0),
(129, '1234988775', '2016-05-16 01:24:19', 0),
(130, '1234988775', '2016-05-16 03:05:12', 0),
(131, '1234988775', '2016-05-16 03:05:12', 0),
(132, '1234988775', '2016-05-16 03:49:29', 0),
(133, '1234988775', '2016-05-16 04:33:09', 0),
(134, '1234988775', '2016-05-16 04:43:49', 0),
(135, '1234988775', '2016-05-18 02:17:29', 0),
(136, '1234988775', '2016-05-18 03:11:39', 0),
(137, '1234988775', '2016-05-18 04:09:35', 0),
(138, '1234988775', '2016-05-18 04:11:59', 0),
(139, '1234988775', '2016-05-18 06:34:24', 0),
(140, '1234988775', '2016-05-18 08:00:25', 0),
(141, '1234988775', '2016-05-18 08:24:23', 0),
(142, '1234988775', '2016-05-19 02:17:18', 0),
(143, '1234988775', '2016-05-20 09:04:21', 0),
(144, '1234988775', '2016-05-23 09:05:00', 0),
(145, '1234999', '2016-05-23 12:58:08', 0),
(146, '1234988775', '2016-05-23 01:09:07', 0),
(147, '1234988775', '2016-05-24 09:06:02', 0),
(148, '71216799', '2016-05-24 02:01:51', 0),
(149, '1234988775', '2016-05-25 09:10:03', 0),
(150, '1234988775', '2016-05-26 09:15:53', 0),
(151, '1234988775', '2016-05-26 10:02:44', 0),
(152, '1234988775', '2016-05-26 02:01:38', 0),
(153, '1234988775', '2016-05-27 09:07:29', 0),
(154, '1234988775', '2016-05-31 09:30:19', 0),
(155, '1234988775', '2016-06-01 09:25:01', 0),
(156, '1234988775', '2016-06-02 09:02:46', 0),
(157, '1234988775', '2016-06-03 09:00:20', 0),
(158, '1234988775', '2016-06-03 02:09:02', 0),
(159, '1234988775', '2016-06-03 03:03:08', 0),
(160, '1234988775', '2016-06-07 09:05:20', 0),
(161, '1234988775', '2016-06-08 09:14:21', 0),
(162, '1234988775', '2016-06-09 08:40:44', 0),
(163, '1234988775', '2016-06-10 08:57:23', 0),
(164, '1234988775', '2016-06-13 08:59:12', 0),
(165, '1234988775', '2016-06-14 09:05:11', 0),
(166, '1234988775', '2016-06-14 11:50:42', 0),
(167, '1234988775', '2016-06-15 08:39:56', 0),
(168, '1234988775', '2016-06-16 09:12:14', 0),
(169, '1234988775', '2016-06-16 10:19:11', 0),
(170, '1234988775', '2016-06-16 10:53:55', 0),
(171, '1234988775', '2016-06-17 09:12:37', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Menu`
--

CREATE TABLE IF NOT EXISTS `Menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Url` varchar(255) NOT NULL,
  `Icono` varchar(255) NOT NULL,
  `Pos` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `Menu`
--

INSERT INTO `Menu` (`Id`, `Nombre`, `Url`, `Icono`, `Pos`) VALUES
(1, 'Maestros', '#', 'icon-grid', 1),
(5, 'Ordenes', 'M', 'icon-note', 3),
(6, 'Historial', 'H', 'icon-calculator', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Menusub`
--

CREATE TABLE IF NOT EXISTS `Menusub` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Idmenu` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Url` varchar(255) NOT NULL,
  `Icono` varchar(255) NOT NULL,
  `Pos` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `Menusub`
--

INSERT INTO `Menusub` (`Id`, `Idmenu`, `Nombre`, `Url`, `Icono`, `Pos`) VALUES
(1, 1, 'Usuarios', 'act_usuario', 'icon-user', 2),
(2, 1, 'Tipo de usuarios', 'act_tipo_usuario', 'icon-key', 0),
(7, 1, 'Información', 'I', 'icon-info', 0),
(8, 1, 'Permisos', 'pass', 'icon-settings', 1),
(21, 1, 'Productos', 'act_producto', 'icon-equalizer', 5),
(20, 1, 'Categorias', 'act_categoria', 'icon-bar-chart', 4),
(19, 1, 'Mesas', 'act_mesa', 'icon-bag', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Mesas`
--

CREATE TABLE IF NOT EXISTS `Mesas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nro` int(3) unsigned zerofill NOT NULL,
  `Descripcion` longtext NOT NULL,
  `Activo` int(11) NOT NULL,
  `Muestra` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `Mesas`
--

INSERT INTO `Mesas` (`Id`, `Nro`, `Descripcion`, `Activo`, `Muestra`) VALUES
(1, 002, 'PUERTA IZQUIERDA', 0, 0),
(2, 344, 'OK E', 0, 0),
(3, 001, 'PATIO 1', 0, 0),
(4, 003, 'OKO', 1, 0),
(5, 004, 'OKO', 0, 0),
(6, 005, 'OKO', 0, 0),
(7, 006, 'QUEDA AL LADO DE LA PUERTA', 0, 0),
(8, 007, 'PATIO ', 0, 0),
(9, 011, 'SALON', 0, 0),
(10, 009, 'SALON', 0, 0),
(11, 020, 'NEGRA', 0, 0),
(12, 021, 'NEGRA', 0, 0),
(13, 023, 'BARRA', 0, 0),
(14, 017, 'PATIO 2', 0, 0),
(15, 000, '', 0, 0),
(16, 014, 'PATIO 2', 0, 0),
(17, 018, 'PATIO 2', 0, 0),
(18, 008, 'SALON', 0, 0),
(19, 010, 'SALON', 0, 0),
(20, 012, 'SALON', 0, 0),
(21, 013, 'PATIO 2', 0, 0),
(22, 015, 'PATIO 2', 0, 0),
(23, 016, 'PATIO 2', 0, 0),
(24, 019, 'PATIO 2', 0, 0),
(25, 022, '22 BARRA', 0, 0),
(26, 024, 'SOFA', 0, 0),
(27, 025, 'FIN DE SEMANA', 0, 0),
(28, 026, 'MESERO 1', 0, 0),
(29, 999, '999', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ordenes`
--

CREATE TABLE IF NOT EXISTS `Ordenes` (
  `Id` int(7) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Fechai` datetime NOT NULL,
  `Fechaf` datetime NOT NULL,
  `Mesa` int(3) unsigned zerofill NOT NULL,
  `Mesas` varchar(255) NOT NULL,
  `Mesero` varchar(255) NOT NULL,
  `Propina` double NOT NULL,
  `Descuento` double NOT NULL,
  `Forma` varchar(255) NOT NULL,
  `Total` double NOT NULL,
  `Usuario` varchar(255) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Impreso` int(11) NOT NULL,
  `Cancelado` int(11) NOT NULL,
  `Motivo` longtext NOT NULL,
  `Hora` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Mesa` (`Mesa`),
  KEY `Fechai` (`Fechai`),
  KEY `Fechaf` (`Fechaf`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `Ordenes`
--

INSERT INTO `Ordenes` (`Id`, `Fechai`, `Fechaf`, `Mesa`, `Mesas`, `Mesero`, `Propina`, `Descuento`, `Forma`, `Total`, `Usuario`, `Estado`, `Impreso`, `Cancelado`, `Motivo`, `Hora`) VALUES
(0000004, '2016-06-16 12:03:47', '2016-06-16 14:08:06', 003, '', 'Mateo Guzmán', 0, 0, '', 0, '', 0, 0, 0, '', '12:03:47'),
(0000003, '2016-06-16 11:19:02', '2016-06-16 12:15:54', 001, '', 'Mateo Guzmán', 0, 0, '', 0, '', 0, 0, 0, '', '11:19:02'),
(0000005, '2016-06-16 13:32:12', '0000-00-00 00:00:00', 000, '', 'Mateo Guzmán', 0, 0, '', 0, '', 0, 0, 0, '', '13:32:12'),
(0000006, '2016-06-16 13:32:12', '2016-06-16 13:32:17', 000, '', 'Mateo Guzmán', 0, 0, '', 0, '', 0, 0, 0, '', '13:32:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ordenesfin`
--

CREATE TABLE IF NOT EXISTS `Ordenesfin` (
  `Id` int(7) unsigned zerofill NOT NULL,
  `Fechai` datetime NOT NULL,
  `Fechaf` datetime NOT NULL,
  `Mesa` int(3) unsigned zerofill NOT NULL,
  `Mesas` varchar(255) NOT NULL,
  `Mesero` varchar(255) NOT NULL,
  `Propina` double NOT NULL,
  `Descuento` double NOT NULL,
  `Forma` varchar(255) NOT NULL,
  `Total` double NOT NULL,
  `Usuario` varchar(255) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Impreso` int(11) NOT NULL,
  `Cancelado` int(11) NOT NULL,
  `Motivo` longtext NOT NULL,
  `Hora` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Mesa` (`Mesa`),
  KEY `Fechai` (`Fechai`),
  KEY `Fechaf` (`Fechaf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Ordenesfin`
--

INSERT INTO `Ordenesfin` (`Id`, `Fechai`, `Fechaf`, `Mesa`, `Mesas`, `Mesero`, `Propina`, `Descuento`, `Forma`, `Total`, `Usuario`, `Estado`, `Impreso`, `Cancelado`, `Motivo`, `Hora`) VALUES
(0000002, '2016-06-15 15:09:11', '2016-06-16 14:11:52', 344, '', 'Mateo Guzmán', 0, 0, '', 0, '', 1, 0, 0, '', '15:09:11'),
(0000001, '2016-06-15 15:05:03', '2016-06-17 10:42:43', 002, '', 'Mateo Guzmán', 0, 0, '', 0, '', 1, 0, 0, '', '15:05:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ordenesitem`
--

CREATE TABLE IF NOT EXISTS `Ordenesitem` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Idorden` int(7) unsigned zerofill NOT NULL,
  `Idprod` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Valor` double NOT NULL,
  `Cant` int(11) NOT NULL,
  `Nota` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Idorden` (`Idorden`),
  KEY `Idprod` (`Idprod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Volcado de datos para la tabla `Ordenesitem`
--

INSERT INTO `Ordenesitem` (`Id`, `Idorden`, `Idprod`, `Nombre`, `Valor`, `Cant`, `Nota`) VALUES
(21, 0000005, 78, 'BLANCO - COUSIÑO MACUL“SAUVIGNON BLANC” - COPA', 6000, 1, ''),
(12, 0000003, 344, 'SOPA DE GATO', 1000, 1, ''),
(17, 0000004, 58, 'PARA LOS OLVIDADIZOS', 6500, 1, ''),
(22, 0000005, 77, 'TINTO - PATA NEGRA “TEMPRANILLO” - COPA', 6000, 1, ''),
(23, 0000005, 308, 'VINO SEGU', 4000, 1, ''),
(24, 0000006, 78, 'BLANCO - COUSIÑO MACUL“SAUVIGNON BLANC” - COPA', 6000, 1, ''),
(25, 0000006, 77, 'TINTO - PATA NEGRA “TEMPRANILLO” - COPA', 6000, 1, ''),
(26, 0000006, 308, 'VINO SEGU', 4000, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ordenesitemfin`
--

CREATE TABLE IF NOT EXISTS `Ordenesitemfin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Idorden` int(7) unsigned zerofill NOT NULL,
  `Idprod` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Valor` double NOT NULL,
  `Cant` int(11) NOT NULL,
  `Nota` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Idorden` (`Idorden`),
  KEY `Idprod` (`Idprod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Volcado de datos para la tabla `Ordenesitemfin`
--

INSERT INTO `Ordenesitemfin` (`Id`, `Idorden`, `Idprod`, `Nombre`, `Valor`, `Cant`, `Nota`) VALUES
(18, 0000001, 59, 'PARA LOS AGRIPADOS', 7000, 1, ''),
(20, 0000001, 27, 'CREMA DE TOMATE CASERA', 5000, 1, ''),
(19, 0000001, 344, 'SOPA DE GATO', 1000, 1, ''),
(35, 0000002, 60, 'PARA LOS ESTRESADOS', 6500, 1, ''),
(30, 0000002, 236, 'TAPA ', 1000, 1, ''),
(29, 0000002, 16, 'SÁNDWICH ÍNDIGO', 14500, 2, ''),
(36, 0000002, 58, 'PARA LOS OLVIDADIZOS', 6500, 1, ''),
(33, 0000002, 15, 'SANDWICH TINTERO', 12000, 1, 'CON TINTO'),
(27, 0000002, 282, 'SANDWICH ', 13000, 1, ''),
(34, 0000002, 61, 'PARA LOS CUIDADOSOS', 6500, 1, ''),
(31, 0000002, 174, 'PALITO DE QUESO', 2500, 1, ''),
(28, 0000002, 18, 'SÁNDWICH - CRAQUEÉ MONSIEUR', 12000, 1, ''),
(32, 0000002, 17, 'SÁNDWICH VEGETAL', 12000, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Permisos`
--

CREATE TABLE IF NOT EXISTS `Permisos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Idtipo` int(11) NOT NULL,
  `Men` int(11) NOT NULL,
  `Submenu` int(11) NOT NULL,
  `Opciones` int(11) NOT NULL,
  `Mos` int(11) NOT NULL,
  `Agr` int(11) NOT NULL,
  `Act` int(11) NOT NULL,
  `Del` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1285 ;

--
-- Volcado de datos para la tabla `Permisos`
--

INSERT INTO `Permisos` (`Id`, `Idtipo`, `Men`, `Submenu`, `Opciones`, `Mos`, `Agr`, `Act`, `Del`) VALUES
(1283, 1, 6, 0, 0, 1, 1, 1, 1),
(1282, 1, 1, 21, 0, 1, 1, 1, 1),
(1250, 3, 1, 1, 0, 1, 1, 0, 0),
(1249, 3, 1, 8, 0, 1, 1, 0, 0),
(1248, 3, 1, 7, 0, 1, 1, 0, 0),
(1247, 3, 1, 2, 0, 1, 1, 0, 0),
(1246, 3, 1, 0, 0, 1, 0, 0, 0),
(1281, 1, 1, 20, 0, 1, 1, 1, 1),
(1280, 1, 1, 19, 0, 1, 1, 1, 1),
(1279, 1, 1, 1, 0, 1, 1, 1, 1),
(1278, 1, 1, 8, 0, 1, 1, 1, 1),
(1277, 1, 1, 7, 0, 1, 1, 1, 1),
(1276, 1, 1, 2, 0, 1, 1, 1, 1),
(1275, 1, 1, 0, 0, 1, 0, 0, 0),
(1266, 5, 1, 0, 0, 1, 0, 0, 0),
(1267, 5, 1, 2, 0, 0, 0, 0, 0),
(1268, 5, 1, 7, 0, 0, 0, 0, 0),
(1269, 5, 1, 8, 0, 0, 0, 0, 0),
(1270, 5, 1, 1, 0, 0, 0, 0, 0),
(1271, 5, 1, 19, 0, 1, 1, 1, 1),
(1272, 5, 1, 20, 0, 1, 1, 1, 1),
(1273, 5, 1, 21, 0, 1, 1, 1, 0),
(1274, 5, 5, 0, 0, 0, 0, 0, 0),
(1284, 1, 5, 0, 0, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Productos`
--

CREATE TABLE IF NOT EXISTS `Productos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Idcat` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Valor` double NOT NULL,
  `Muestra` int(11) NOT NULL,
  `Mostrar` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Idcat` (`Idcat`),
  KEY `Id` (`Id`),
  KEY `Nombre` (`Nombre`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=345 ;

--
-- Volcado de datos para la tabla `Productos`
--

INSERT INTO `Productos` (`Id`, `Idcat`, `Nombre`, `Valor`, `Muestra`, `Mostrar`) VALUES
(1, 26, 'TABLA DE CARNES CURADAS Y QUESO', 21000, 0, 0),
(27, 1, 'CREMA DE TOMATE CASERA', 5000, 1, 0),
(3, 3, 'QUESO FRITO', 8500, 0, 0),
(4, 3, 'PAPAS RÚSTICAS', 7500, 0, 0),
(5, 26, 'CRIOLLITAS FRITAS', 9000, 0, 0),
(6, 26, 'TORTILLA  CON CANTIMPALO', 10000, 0, 0),
(7, 3, 'ACEITUNAS', 5500, 0, 0),
(8, 3, 'NUESTRAS CROQUETAS', 10000, 0, 0),
(9, 3, 'BERENJENAS CRUJIENTES', 6500, 0, 0),
(10, 3, 'JULIANAS DE POLLO CRUJIENTE', 11000, 0, 0),
(11, 26, 'TOMATES RELLENOS', 10000, 0, 0),
(12, 26, 'CALAMARES A LA ROMANA', 15000, 0, 0),
(13, 26, 'ALBÓNDIGAS NAPOLITANAS GRATINADAS', 11000, 0, 0),
(14, 26, 'ALBÓNDIGAS SICILIANAS DE POLLO', 11000, 0, 0),
(15, 2, 'SANDWICH TINTERO', 12000, 0, 0),
(16, 2, 'SÁNDWICH ÍNDIGO', 14500, 0, 0),
(17, 2, 'SÁNDWICH VEGETAL', 12000, 0, 0),
(18, 2, 'SÁNDWICH - CRAQUEÉ MONSIEUR', 12000, 0, 0),
(19, 1, 'CREMA DE TOMATE CASERA', 6000, 0, 0),
(20, 1, 'CREMA MARINERA', 10000, 1, 0),
(21, 1, 'CREMA VERDE', 5000, 1, 0),
(22, 1, 'SALMOREJO', 9000, 1, 0),
(23, 5, 'ENSALADA DE CAMARONES Y AGUACATE', 16000, 0, 0),
(24, 5, 'PARRILLADA DE VERDURA CON ACEITE DE OLIVA', 10000, 0, 0),
(25, 5, 'ENSALADA CESAR AL ESTILO AULA', 14000, 0, 0),
(26, 5, 'ENSALADA CABRITA', 15000, 0, 0),
(28, 1, 'CREMA MARINERA', 10000, 1, 0),
(29, 1, 'CREMA VERDE', 6000, 0, 0),
(30, 1, 'SALMOREJO', 9000, 0, 0),
(31, 6, 'HAMBURGUESA AULA', 19500, 0, 0),
(32, 6, 'HAMBURGUESA GABO', 16900, 0, 0),
(33, 6, 'HAMBURGUESA GAUDÍ', 16900, 0, 0),
(34, 6, 'HAMBURGUESA DA VINCI', 13900, 0, 0),
(35, 6, 'HAMBURGUESA KANDINSKY', 14900, 0, 0),
(36, 6, 'HAMBURGUESA LE CORBUSIER', 16900, 0, 0),
(37, 6, 'HAMBURGUESA CERVANTES', 12500, 0, 0),
(38, 6, 'HAMBURGUESA FRIDA KAHLO', 16500, 0, 0),
(39, 7, 'CARNE A LA PIEDRA', 38000, 0, 0),
(40, 7, 'CILINDRO DE RABO DE TERNERA', 14000, 0, 0),
(41, 7, 'LASAGNE DI MIA MAMMA', 13000, 0, 0),
(42, 7, 'SOLOMILLO DE CERDO A LA PIMIENTA', 20000, 0, 0),
(43, 7, 'SOLOMILLO DE RES AL WHISKY', 28000, 0, 0),
(44, 7, 'MAGRO CON TOMATE', 14000, 0, 0),
(45, 7, 'POLLO AL CURRY', 18000, 0, 0),
(46, 7, 'PAELLA MIXTA', 23000, 0, 0),
(47, 8, 'TARTA DE QUESO', 8000, 0, 0),
(48, 8, 'TIRAMISÚ', 8000, 0, 0),
(49, 8, 'TORTA PASIÓN', 8000, 0, 0),
(50, 8, 'GENOVESA DE LULO', 6000, 1, 0),
(51, 9, 'GASEOSAS', 2800, 0, 0),
(52, 9, 'SODA MICHELADA', 3500, 0, 0),
(53, 9, 'AGUA', 2700, 0, 0),
(54, 9, 'TÉ HELADO', 3500, 0, 0),
(55, 9, 'JUGOS NATURALES - AGUA', 4000, 0, 0),
(56, 9, 'JUGOS NATURALES - LECHE', 4500, 0, 0),
(57, 9, 'JUGOS ESPECIALES Y LIMONADAS', 5500, 0, 0),
(58, 10, 'PARA LOS OLVIDADIZOS', 6500, 0, 0),
(59, 10, 'PARA LOS AGRIPADOS', 7000, 0, 0),
(60, 10, 'PARA LOS ESTRESADOS', 6500, 0, 0),
(61, 10, 'PARA LOS CUIDADOSOS', 6500, 0, 0),
(62, 10, 'PARA LOS CANSADOS', 6500, 0, 0),
(63, 10, 'PARA LAS DIETAS', 7000, 0, 0),
(64, 11, 'ÁGUILA LIGHT, ÁGUILA, ÁGUILA ZERO, PILSEN Y COSTEÑA', 3600, 1, 0),
(65, 11, 'CLUB COLOMBIA (DORADA, NEGRA O ROJA)', 4500, 0, 0),
(66, 11, 'CLUB COLOMBIA NEGRA O  AZUL', 4600, 1, 0),
(67, 11, 'CORONA', 7000, 0, 0),
(68, 11, 'STELLA ARTOIS', 7500, 0, 0),
(69, 11, 'PERONI', 5500, 0, 0),
(70, 11, 'HELLRIEGUEL', 7500, 0, 0),
(71, 11, 'VASO MICHELADO', 1000, 0, 0),
(72, 12, 'TINTO - PATA NEGRA “TEMPRANILLO”', 34000, 0, 0),
(73, 12, 'TINTO - CORINTO “MERLOT”', 37000, 0, 0),
(74, 12, 'TINTO - LAS MORAS “CABERNET SAUVIGNON”', 39000, 0, 0),
(75, 12, 'TINTO  - LA CONSULTA “MALBEC”', 40000, 0, 0),
(76, 12, 'TINTO - FAMILIA ZUCCARDI “MALBEC RESERVA”', 66000, 0, 0),
(77, 12, 'TINTO - PATA NEGRA “TEMPRANILLO” - COPA', 6000, 0, 0),
(78, 12, 'BLANCO - COUSIÑO MACUL“SAUVIGNON BLANC” - COPA', 6000, 0, 0),
(79, 12, 'BLANCO - COUSIÑO MACUL “SAUVIGNON BLANC”', 36000, 0, 0),
(80, 12, 'BLANCO - LA CONSULTA “CHARDONNAY”', 42000, 0, 0),
(81, 12, 'BLANCO - GRAN VERANO “SAUVIGNON BLANC”', 62000, 1, 0),
(82, 12, 'ROSADO - LA CONSULTA ROBLE ROSADO', 40000, 0, 0),
(83, 12, 'ROSADO - J.P CHENET ROSÉ', 60000, 1, 0),
(84, 12, 'ROSADO - GRAN VERANO “CARMENERE ROSE”', 62000, 1, 0),
(85, 13, 'SANGRÍA ROJA', 35000, 0, 0),
(86, 13, 'SANGRÍA ROSADA', 35000, 0, 0),
(87, 13, 'SANGRÍA BLANCA', 35000, 0, 0),
(88, 13, 'AGUA DE VALENCIA', 35000, 0, 0),
(89, 13, 'TINTO DE VERANO', 28000, 0, 0),
(90, 14, 'AGUARDIENTE ROJO - TRAGO', 3500, 0, 0),
(91, 14, 'AGUARDIENTE ROJO - MEDIA', 30000, 0, 0),
(92, 14, 'AGUARDIENTE AZUL - TRAGO', 3500, 0, 0),
(93, 14, 'AGUARDIENTE AZUL - MEDIA', 30000, 0, 0),
(94, 14, 'RON MEDELLÍN 3 AÑOS - TRAGO', 4000, 0, 0),
(95, 14, 'RON MEDELLÍN 3 AÑOS - MEDIA', 35000, 0, 0),
(96, 14, 'RON MEDELLÍN 8 AÑOS - TRAGO', 6000, 0, 0),
(97, 14, 'RON MEDELLÍN 8 AÑOS - MEDIA', 46000, 0, 0),
(98, 14, 'RON BACARDI - TRAGO', 7000, 0, 0),
(99, 14, 'RON BACARDI - BOTELLA', 65800, 0, 0),
(100, 14, 'TEQUILA JOSE CUERVO - TRAGO', 6500, 0, 0),
(101, 14, 'TEQUILA JOSE CUERVO - BOTELLA', 96000, 0, 0),
(102, 14, 'WHISKY OLD PARR - TRAGO', 8000, 0, 0),
(103, 14, 'WHISKY OLD PARR - MEDIA', 80000, 0, 0),
(104, 14, 'WHISKY OLD PARR - BOTELLA', 145000, 0, 0),
(105, 14, 'WHISKY BUCHANANS - TRAGO', 8000, 0, 0),
(106, 14, 'WHISKY BUCHANANS - BOTELLA', 145000, 0, 0),
(107, 14, 'VODKA ABSOLUT - TRAGO', 6500, 0, 0),
(108, 14, 'VODKA ABSOLUT - BOTELLA', 110000, 0, 0),
(109, 14, 'GINEBRA BOMBAY SAPHIRE - TRAGO', 9000, 0, 0),
(110, 14, 'GINEBRA BOMBAY SAPHIRE - BOTELLA', 160000, 0, 0),
(111, 14, 'GINEBRA BULLDOG - TRAGO', 9500, 0, 0),
(112, 14, 'GINEBRA BULLDOG - BOTELLA', 180000, 0, 0),
(113, 14, 'BAILEYS - TRAGO', 6000, 0, 0),
(114, 14, 'BAILEYS - BOTELLA', 80000, 0, 0),
(115, 15, 'TES E INFUSIONES', 5500, 0, 0),
(116, 15, 'PARA DOS - TABLA 1', 20000, 1, 0),
(117, 15, 'PARA DOS - TABLA 2', 25000, 1, 0),
(118, 16, 'CALIENTES - EXPRESO', 2200, 0, 0),
(119, 16, 'CALIENTES - AMÉRICANO', 2000, 0, 0),
(120, 16, 'CALIENTES - CARAJILLO', 5000, 0, 0),
(121, 16, 'CALIENTES - CAFÉ TRIFÁSICO', 5500, 0, 0),
(122, 16, 'CALIENTES - CAPPUCCINO SIN LICOR', 5500, 0, 0),
(123, 16, 'CALIENTES - CAPPUCCINO CON AMARETTO Y CARAMELO', 6500, 0, 0),
(124, 16, 'CALIENTES - PARÍS', 7500, 0, 0),
(125, 16, 'CALIENTES - NUTELLA', 7500, 0, 0),
(126, 16, 'FRIOS - FRAPUCCINO', 7000, 0, 0),
(127, 16, 'FRIOS - CAFÉ MOCCA HELADO', 8000, 0, 0),
(128, 16, 'FRIOS - FRAPPE OREO', 9000, 0, 0),
(129, 16, 'FRIOS - DELICIA TURCA', 9000, 0, 0),
(130, 16, 'FRIOS - CAFÉ CON LECHE HELADO', 4500, 1, 0),
(131, 16, 'FRIOS - CARIBEÑO', 5500, 1, 0),
(132, 16, 'FRIOS - CAFÉ HELADO IRLANDÉS', 9000, 1, 0),
(133, 17, 'MARGARITA DEL AULA “EL TRADICIONAL”', 12500, 0, 0),
(134, 17, 'GIN TONIC “EL SIBARITA”', 15500, 0, 0),
(135, 17, 'BOMBAY SAPHIRE', 20000, 0, 0),
(136, 17, 'CHOCOLATE MARTINI “EL DULCE”', 13000, 1, 0),
(137, 14, 'CROCODILE “EL AFRUTADO”', 12000, 1, 0),
(138, 17, 'CROCODILE “EL AFRUTADO”', 12000, 1, 0),
(139, 17, 'EL APRENDIZ “EL COLORIDO”', 14000, 1, 0),
(140, 17, 'AULA “EL CORTO”', 8000, 0, 0),
(141, 17, 'EL DIRECTOR “EL ELEGANTE”', 12000, 0, 0),
(142, 17, 'WHITE RUSIAN “EL BICOLOR”', 9000, 0, 0),
(143, 17, 'LONG ISLAND “EL PODEROSO”', 18000, 0, 0),
(144, 17, 'AGUA DE VALENCIA “ EL SUAVE”', 11000, 0, 0),
(145, 17, 'CERVEZA CON LIMONADA FRAPPE', 9500, 0, 0),
(146, 17, 'MICHELADA DEL AULA', 9000, 0, 0),
(147, 17, 'TINTO DE VERANO', 9000, 0, 0),
(148, 11, 'AGUILA LIGHT', 3900, 0, 0),
(149, 11, 'ÁGUILA', 3900, 0, 0),
(150, 11, 'ÁGUILA ZERO', 3900, 0, 0),
(151, 11, 'PILSEN', 3600, 0, 0),
(152, 11, 'COSTEÑA', 3900, 0, 0),
(153, 18, 'MENU DEL DIA', 12000, 0, 0),
(154, 18, 'MENU DEL DIA CON DESCUENTO', 10000, 0, 0),
(155, 19, 'SOPA DE MENU', 2000, 1, 0),
(156, 20, 'MARLBORO ROJO PAQUETE', 4900, 0, 0),
(157, 20, 'MARLBORO ICE MEDIO', 3000, 0, 0),
(158, 8, 'ALFAJOR', 800, 1, 0),
(159, 18, 'EXTRA JUGO MENU', 1500, 0, 0),
(160, 19, 'POSTRE MENU', 3000, 1, 0),
(161, 18, 'MENU FAMILIA', 6000, 1, 0),
(162, 19, 'CAPUCCINO RICARDO', 3250, 1, 0),
(163, 19, 'OREO DESCUENTO', 4500, 1, 0),
(164, 18, 'PROMOCION DEL DIA', 17000, 1, 0),
(165, 21, 'CERVEZA 0', 1800, 1, 0),
(166, 21, 'OREO DESCUENTO', 4500, 0, 0),
(167, 21, 'MENU', 6000, 0, 0),
(168, 17, 'LIMONADA ESPECIAL', 8500, 0, 0),
(169, 16, 'CALIENTE-ASIATICO', 7500, 1, 0),
(170, 21, 'SANDWICH CRAQUEE', 5750, 0, 0),
(171, 21, 'GASEOSA PERSONAL', 1500, 1, 0),
(172, 16, 'CALIENTE- EXPRESO DOBLE', 3400, 0, 0),
(173, 16, 'CAFE CON LECHE CALIENTE', 3500, 0, 0),
(174, 3, 'PALITO DE QUESO', 2500, 1, 0),
(175, 26, 'TORTILLA ESPAÑOLA CON CALABACIN', 9000, 0, 0),
(176, 9, 'BEBIDA DE CUMPLEAÑOS', 2000, 1, 0),
(177, 9, 'BEBIDA CUMPLEAÑOS 1', 2000, 1, 0),
(178, 20, 'MEDIO BOSTON', 2700, 0, 0),
(179, 19, 'ADICIÓN QUESO HAMBURGUESA', 1500, 1, 0),
(180, 21, 'CRIOLLITAS', 4000, 1, 0),
(181, 19, 'ALFAJOR', 500, 1, 0),
(182, 19, 'PAPAS RUSTICAS ACOMPAÑAMIENTO', 4000, 0, 0),
(183, 21, 'HAMBURGUESA GAUDI', 8000, 1, 0),
(184, 15, 'TÉ EN LECHE', 5500, 0, 0),
(185, 21, 'MALBORO  DESCUENTO', 2000, 0, 0),
(186, 16, 'CAPUCCINO MEDIANO SIN LICOR', 5000, 1, 0),
(187, 5, 'ENSALADA DE LA CASA', 5000, 0, 0),
(188, 8, 'VOLCAN DE CHOCOLATE', 8000, 0, 0),
(189, 13, 'SANGRIA  ROJA 1/2 JARRA', 25000, 0, 0),
(190, 6, 'HAMBURGUESA CERVANTES SENCILLA', 10000, 1, 0),
(191, 15, 'AROMATICA', 2000, 0, 0),
(192, 12, 'VINO CALIENTE', 7000, 0, 0),
(193, 18, 'SOPA DEL DIA', 5000, 0, 0),
(194, 12, 'LA CONSULTA ROBLE ROSADO - COPA', 6000, 0, 0),
(195, 21, 'TORTILLA ESPAÑOLA SOLA', 3000, 0, 0),
(196, 21, 'CAFE HELADO MOCCA', 3800, 1, 0),
(197, 24, 'ALFAJOR', 700, 0, 0),
(198, 21, 'CAPUCHINO SIN LICOR', 3000, 1, 0),
(199, 21, 'CAFE CON LECHE', 1000, 1, 0),
(200, 18, 'MENU SIN SOPA', 10000, 0, 0),
(201, 9, 'JUGO PEQUEÑO ', 2500, 0, 0),
(202, 22, 'CATA CERVEZA HELLRIEGEL', 15000, 0, 0),
(203, 3, 'QUESO FRITO', 3800, 1, 0),
(204, 21, 'HAMBURGUESA AULA', 10000, 1, 0),
(205, 21, 'QUESO FRITO', 3800, 1, 0),
(206, 18, 'REFRIGERIO', 4500, 0, 0),
(207, 14, 'GINEBRA', 8000, 0, 0),
(208, 18, 'PORCION DE ARROZ', 2500, 0, 0),
(209, 3, 'BERENGENAS CRUJIENTES 1/2 PORCION', 4000, 1, 0),
(210, 8, 'BOLA DE HELADO ', 2000, 0, 0),
(211, 23, 'AMOR PERFECTO LATA 250 GR', 23000, 0, 0),
(212, 23, 'AMOR PERFECTO PAQUETE LIBRA', 30000, 1, 0),
(213, 7, 'CHURRASCO', 20000, 0, 0),
(214, 3, 'PAPAS CHIPS', 5500, 1, 0),
(215, 9, 'LECHE VASO', 2000, 0, 0),
(216, 13, 'REFAJO', 25000, 0, 0),
(217, 21, 'PAPAS RUSTICAS', 3500, 0, 0),
(218, 18, 'MENU ESPECIAL MADRES', 50000, 0, 0),
(219, 8, 'GENOVESA AMARETO', 8000, 1, 0),
(220, 8, 'TORTA MANZANA Y NUECES', 5500, 1, 0),
(221, 14, 'DESCORCHE BOTELLA', 12000, 1, 0),
(222, 12, ' PIBA - RIOJA', 17000, 0, 0),
(223, 8, 'BROWNIE', 3000, 1, 0),
(224, 18, 'SUMINISTRO DE ALMUERZOS PARA SEMINARIO UNIVERSIDAD NACIONAL', 12000, 0, 0),
(225, 3, 'PORCIÓN HUEVOS VEGETARIANOS', 6000, 0, 0),
(226, 25, 'COMBO PAELLA', 26000, 0, 0),
(227, 24, 'MUFFIN DE QUESO, TOMATE Y OREGANO', 2500, 1, 0),
(228, 8, 'ENSALADA DE FRUTA', 3000, 1, 0),
(229, 24, 'PORCION DE PAN ( 6 TROZOS)', 2000, 0, 0),
(230, 18, 'MENU LINA', 9500, 1, 0),
(231, 9, 'JARRA JUGO', 12000, 1, 0),
(232, 8, 'TARTA DE QUESO COMPLETA', 40000, 0, 0),
(233, 18, 'PAELLA DE CARNES ', 12000, 0, 0),
(234, 12, 'GRAN VERANO OFERTA', 55000, 1, 0),
(235, 24, 'TORTA DE ZANAHORIA, NARANJA Y NUECES.', 4500, 0, 0),
(236, 3, 'TAPA ', 1000, 1, 0),
(237, 18, 'CENA', 15000, 1, 0),
(238, 24, 'ROLLO DE PESTO', 4000, 1, 0),
(239, 20, 'MARLBORO ROJO MEDIO', 3000, 0, 0),
(240, 24, 'CROISANT ALMENDRA', 3600, 1, 0),
(241, 8, 'BROWNIEW CON HELADO', 5500, 1, 0),
(242, 22, 'CATA DE VINOS', 15000, 0, 0),
(243, 15, 'AROMATICA DE JENGIBRE', 2500, 0, 0),
(244, 24, 'CROSTATA DE FRUTOS ROJOS', 5000, 1, 0),
(245, 19, 'BOLA DE HELADO', 2000, 1, 0),
(246, 23, 'CAFE BOLSA POR 250 G', 20000, 1, 0),
(247, 12, ' PIBA LAS MORAS', 17000, 0, 0),
(248, 8, 'TRUFAS', 3500, 0, 0),
(249, 7, 'PIZZA', 15000, 1, 0),
(250, 25, 'COMBO PIZZA', 19000, 1, 0),
(251, 14, 'RON MEDELLIN 3 AÑOS TRAGO DOBLE', 7500, 0, 0),
(252, 15, 'TE E INFUSIONES PARA LLEVAR', 4000, 1, 0),
(253, 18, 'MENU ESPECIAL PADRES', 40000, 0, 0),
(254, 24, 'PALITO DE QUESO', 2500, 1, 0),
(255, 18, 'POSTRE EXTRA MENU', 2000, 0, 0),
(256, 25, 'CILINDRO+TINTO', 16000, 1, 0),
(257, 25, 'LASAÑA+TINTO', 16000, 0, 0),
(258, 25, 'MAGRO+TINTO', 17000, 0, 0),
(259, 25, 'PIZZA+TINTO', 18000, 0, 0),
(260, 19, 'ADICION', 2000, 1, 0),
(261, 8, 'TORTA EVENTO', 3000, 1, 0),
(262, 5, 'ENSALADA CASA PEQ', 5000, 1, 0),
(263, 15, 'AROMATICA DOBLE', 3000, 0, 0),
(264, 16, 'MOCACCINO', 5500, 0, 0),
(265, 3, 'PAN TUMACA QUESO', 8000, 1, 0),
(266, 12, 'DESCORCHE BOTELLA DE VINO', 15000, 0, 0),
(267, 24, 'TORTA ZANAHORIA ENTERA', 36000, 0, 0),
(268, 24, 'GALLETA DE AVENA', 1200, 0, 0),
(269, 25, 'CLASES ', 2000, 1, 0),
(270, 19, 'ADICION', 2000, 0, 0),
(271, 26, 'JAMON SERRANO CON PAN TUMACA ', 17000, 0, 0),
(272, 19, 'PORCIÓN POLLO AL CURRY', 10000, 0, 0),
(273, 25, 'COMBO CERVEZA ARTESANAL', 17000, 1, 0),
(274, 18, 'SUMINISTRO  DE ALIMENTACION  UNAL', 12000, 0, 0),
(275, 14, 'RON MEDELLIN 8 AÑOS ( TRAGO DOBLE)', 11000, 0, 0),
(276, 19, 'ADICION POLLO', 4000, 0, 0),
(277, 11, 'HELLRIEGUEL FERIA', 15000, 1, 0),
(278, 19, 'ZUMO DE NARANJA', 1500, 0, 0),
(279, 8, 'COPA DE HELADO', 5500, 0, 0),
(280, 12, 'TINTO - CONSULTA MALBEC 1/2', 27000, 0, 0),
(281, 18, 'CENA ', 20350, 1, 0),
(282, 2, 'SANDWICH ', 13000, 0, 0),
(283, 14, 'WHISKY OLD PARR DOBLE', 15000, 0, 0),
(284, 3, 'MEDIA TABLA DE QUESO', 15000, 1, 0),
(285, 12, 'DESCORCHE 1/2 VINO', 8000, 0, 0),
(286, 18, 'POSTRE GRANDE MENU', 5000, 0, 0),
(287, 14, 'AGUARDIENTE TAPA AZUL- TRAGO DOBLE', 6000, 0, 0),
(288, 19, 'CARNE VEGETARIANA', 4000, 0, 0),
(289, 12, 'LA CONSULTA 1/2', 24000, 1, 0),
(290, 3, 'TAPA ANTIPASTO (2PX)', 5000, 0, 0),
(291, 19, 'ADICION CARNE', 5000, 0, 0),
(292, 14, 'BRANDY DOMECQ- TRAGO', 6000, 0, 0),
(293, 16, 'CHOCOLATE CALIENTE', 5500, 0, 0),
(294, 3, 'TABLA DE QUESOS', 18000, 0, 0),
(295, 8, 'ESPONJADO DE LIMON', 8000, 0, 0),
(296, 8, 'MOUSE DE CAFE MOCCA CON OREO', 8000, 0, 0),
(297, 9, 'JUGO CUMPLEAÑOS', 2500, 0, 0),
(298, 9, 'GASEOSA CUMPLEAÑOS', 2000, 1, 0),
(299, 8, 'HELADO CUMPLEAÑOS', 3000, 1, 0),
(300, 25, 'COMBO ARROZ MIXTO- TINTO VERANO', 14000, 0, 0),
(301, 8, 'BARQUILLO', 2500, 1, 0),
(302, 11, 'HELLRIEGUEL PUMKING', 7500, 0, 0),
(303, 11, 'CERVEZA EDICION ESPECIAL', 7500, 0, 0),
(304, 9, 'LIMONADA LYCHE', 6000, 1, 0),
(305, 14, 'VODKA ABSOLUT TRAGO DOBLE', 12000, 0, 0),
(306, 16, 'CAFE LECHE  GRANDE', 4000, 0, 0),
(307, 19, 'ADICION QUESO BRIE', 3800, 1, 0),
(308, 12, 'VINO SEGU', 4000, 0, 0),
(309, 17, 'CERVEZA HELRIEGEL CON LIMONADA FRAPPE', 12000, 0, 0),
(310, 19, 'ADICION QUESO PARMESANO', 1000, 1, 0),
(311, 16, ' CALIENTE- MACCIATO', 3000, 0, 0),
(312, 19, 'ADICION CARNE AULA', 8000, 0, 0),
(313, 19, 'ADICION AGUACATE', 1000, 1, 0),
(314, 14, 'TEQUILA JOSE CUERVO- TRAGO DOBLE', 12000, 0, 0),
(315, 20, 'GREEN LIGTH MEDIO', 2800, 0, 0),
(316, 18, 'MENU COMUNION', 25000, 0, 0),
(317, 18, 'MENU ESPECIAL', 20000, 0, 0),
(318, 7, 'PUNTA DE ANCA', 20000, 0, 0),
(319, 18, 'CENA CUMPLEAÑOS', 15000, 1, 0),
(320, 24, ' PALITO,CROISANT, GRISINIS, PAN  CHOCOLATE SIN AZUCAR', 3600, 0, 0),
(321, 24, 'TORTAS INTEGRALES SIN AZUCAR', 3200, 0, 0),
(322, 24, 'GALLETAS INTEGRALES SIN AZUCAR', 1500, 0, 0),
(323, 24, 'CROISANT DE QUESO CON MERMELADA', 3800, 0, 0),
(324, 24, 'ALFAJOR X 6', 3500, 0, 0),
(325, 24, 'DULCE CARDAMOMO', 4000, 0, 0),
(326, 24, 'TORTA  DE FRUTOS ROJOS', 4800, 0, 0),
(327, 24, 'PAN MOLDE', 8200, 0, 0),
(328, 19, 'ZUMO LIMON', 700, 0, 0),
(329, 23, 'AMOR PERFECTO - BOLSA 250 GR', 20000, 0, 0),
(330, 1, 'VICHYSSOISE', 8000, 0, 0),
(331, 26, 'ALBONDIGAS VEGETARIANAS GRATINADAS', 11000, 0, 0),
(332, 12, 'TINTO-COUSIÑO MACUL "MERLOT"', 36000, 0, 0),
(333, 12, 'ROSADO- COUSIÑO MACUL " GRIS"', 36000, 0, 0),
(334, 17, 'DRY MARTINI ', 12500, 0, 0),
(335, 17, 'CUBA LIBRE', 7000, 0, 0),
(336, 17, 'MOJITO', 1100, 1, 0),
(337, 17, 'MOJITO', 10000, 0, 0),
(338, 12, 'TINTO -DADA 1 MALBEC', 55000, 0, 0),
(339, 12, 'TINTO -DADA 1 MALBEC', 55000, 0, 0),
(340, 5, 'ENSALADA DE QUESO FRITO', 15000, 0, 0),
(341, 9, 'MALTEADAS', 9000, 0, 0),
(342, 32, 'PRUEBA', 26, 0, 0),
(343, 250, 'FFF', 0, 0, 0),
(344, 1, 'SOPA DE GATO', 1000, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipouser`
--

CREATE TABLE IF NOT EXISTS `Tipouser` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Muestra` int(11) NOT NULL,
  `Pos` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `Tipouser`
--

INSERT INTO `Tipouser` (`Id`, `Nombre`, `Muestra`, `Pos`) VALUES
(1, 'ADMINISTRADOR', 0, 0),
(2, 'OTRO', 0, 0),
(3, 'EMPLEADO', 0, 0),
(4, 'PRUEBA', 1, 0),
(5, 'TEST', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE IF NOT EXISTS `Usuarios` (
  `Id` int(6) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Cedula` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Contrasena` varchar(255) NOT NULL,
  `Foto` text NOT NULL,
  `Soporte` varchar(255) NOT NULL,
  `Conectado` int(11) NOT NULL,
  `Muestra` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`Id`, `Nombre`, `Cedula`, `Email`, `Tipo`, `Contrasena`, `Foto`, `Soporte`, `Conectado`, `Muestra`) VALUES
(5, 'Juancho', '123456', 'juancho@hotmail.com', 3, '123456', 'http://img06.deviantart.net/a24f/i/2013/083/f/1/facebook_avatar_by_twentyone182-d5z4vej.jpg', 'SI', 0, 0),
(4, 'Mateo Guzmán', '1234988775', 'mateo@webevolution.com.co', 1, '123456', '4.jpg', 'SI', 2, 0),
(3, 'Juan Alejandro Zapata', '71216799', 'juan@webevolution.com.co', 1, '123456', '3.png', 'NO', 2, 0),
(7, 'Santiago', '135655248', 'santiago@dechile.com', 1, '123456', '', '0', 0, 1),
(8, 'PRUEBA', '6506560260', 'prueba@gmail.com', 2, '123456', '', '', 0, 0),
(9, 'Pro', '1234999', 'prueba@gmail.com', 5, '123456', '', '', 0, 0),
(10, 'PRUEBA', '52745', 'mateo.guzmanalvarez@gmail.com', 3, '123456', '10.jpg', '', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
