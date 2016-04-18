-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-04-2016 a las 13:20:07
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_shop`
--
CREATE DATABASE IF NOT EXISTS `bd_shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `bd_shop`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admin_id` int(9) NOT NULL,
  `admin_user` varchar(20) COLLATE utf8_bin NOT NULL,
  `admin_pass` varchar(12) COLLATE utf8_bin NOT NULL,
  `admin_mail` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_user`, `admin_pass`, `admin_mail`) VALUES
(1, 'admin', '1234', 'admin@fje.edu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bill`
--

CREATE TABLE IF NOT EXISTS `tbl_bill` (
  `bill_id` int(11) NOT NULL,
  `bill_data` date NOT NULL,
  `bill_import` int(11) NOT NULL,
  `usu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_blane`
--

CREATE TABLE IF NOT EXISTS `tbl_blane` (
  `bLane_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `blane_cant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_prodtype`
--

CREATE TABLE IF NOT EXISTS `tbl_prodtype` (
  `pType_id` int(11) NOT NULL,
  `pType_name` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tbl_prodtype`
--

INSERT INTO `tbl_prodtype` (`pType_id`, `pType_name`) VALUES
(1, 'Cosa'),
(2, 'Cosita');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_desc` varchar(100) COLLATE utf8_bin NOT NULL,
  `tprod_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tbl_product`
--

INSERT INTO `tbl_product` (`prod_id`, `prod_name`, `prod_price`, `prod_desc`, `tprod_id`) VALUES
(1, 'Cosa', 50, 'Cosa secreta', 1),
(2, 'Cosita', 25, 'Cosita secreta', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `user_surname` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_mail` varchar(40) COLLATE utf8_bin NOT NULL,
  `user_pass` varchar(12) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_surname`, `user_mail`, `user_pass`) VALUES
(1, 'Carlos', 'Sánchez', 'carlos@fje.edu', '1234'),
(2, 'dani', 'lorenzo', 'dani@fje.edu', '1234'),
(3, 'Alvaro', 'Camacho', 'alvaro@fje.edu', '1234'),
(4, 'Sergio', 'Jimenez', 'sergio@fje.edu', '1234'),
(5, 'Raul', 'Perez', 'raul@fje.edu', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indices de la tabla `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `usu_id` (`usu_id`);

--
-- Indices de la tabla `tbl_blane`
--
ALTER TABLE `tbl_blane`
  ADD PRIMARY KEY (`bLane_id`),
  ADD KEY `prod_id` (`prod_id`),
  ADD KEY `bill_id` (`bill_id`);

--
-- Indices de la tabla `tbl_prodtype`
--
ALTER TABLE `tbl_prodtype`
  ADD PRIMARY KEY (`pType_id`),
  ADD KEY `pType_id` (`pType_id`);

--
-- Indices de la tabla `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `tprod_id` (`tprod_id`);

--
-- Indices de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_mail` (`user_mail`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tbl_bill`
--
ALTER TABLE `tbl_bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_blane`
--
ALTER TABLE `tbl_blane`
  MODIFY `bLane_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_prodtype`
--
ALTER TABLE `tbl_prodtype`
  MODIFY `pType_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD CONSTRAINT `tbl_bill_ibfk_1` FOREIGN KEY (`usu_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Filtros para la tabla `tbl_blane`
--
ALTER TABLE `tbl_blane`
  ADD CONSTRAINT `tbl_blane_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `tbl_bill` (`bill_id`),
  ADD CONSTRAINT `tbl_blane_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `tbl_product` (`prod_id`);

--
-- Filtros para la tabla `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`tprod_id`) REFERENCES `tbl_prodtype` (`pType_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
