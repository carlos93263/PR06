-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2016 a las 15:06:30
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bills`
--

CREATE TABLE IF NOT EXISTS `tbl_bills` (
  `bill_id` int(9) NOT NULL,
  `bill_import` int(20) NOT NULL,
  `bLane_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_blane`
--

CREATE TABLE IF NOT EXISTS `tbl_blane` (
  `bLane_id` int(9) NOT NULL,
  `user_id` int(9) NOT NULL,
  `prod_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_prodtype`
--

CREATE TABLE IF NOT EXISTS `tbl_prodtype` (
  `pType_id` int(11) NOT NULL,
  `pType_name` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `prod_price` int(9) NOT NULL,
  `prod_stock` tinyint(1) NOT NULL,
  `prod_desc` text COLLATE utf8_bin NOT NULL,
  `pType` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indices de la tabla `tbl_bills`
--
ALTER TABLE `tbl_bills`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `bLane_id` (`bLane_id`);

--
-- Indices de la tabla `tbl_blane`
--
ALTER TABLE `tbl_blane`
  ADD PRIMARY KEY (`bLane_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `prod_id` (`prod_id`);

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
  ADD KEY `pType` (`pType`);

--
-- Indices de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_bills`
--
ALTER TABLE `tbl_bills`
  MODIFY `bill_id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_blane`
--
ALTER TABLE `tbl_blane`
  MODIFY `bLane_id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_prodtype`
--
ALTER TABLE `tbl_prodtype`
  MODIFY `pType_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_bills`
--
ALTER TABLE `tbl_bills`
  ADD CONSTRAINT `tbl_bills_ibfk_1` FOREIGN KEY (`bLane_id`) REFERENCES `tbl_blane` (`bLane_id`);

--
-- Filtros para la tabla `tbl_blane`
--
ALTER TABLE `tbl_blane`
  ADD CONSTRAINT `tbl_blane_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Filtros para la tabla `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`pType`) REFERENCES `tbl_prodtype` (`pType_id`),
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `tbl_blane` (`prod_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
