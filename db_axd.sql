-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2025 a las 01:20:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_axd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_habitaciones`
--

CREATE TABLE `tbl_habitaciones` (
  `ID_HABITACION` int(11) NOT NULL,
  `HAB_TIPO` varchar(28) NOT NULL,
  `HAB_NUMERO_PERSONAS` int(11) NOT NULL,
  `HAB_PRECIO_ALTA` varchar(28) NOT NULL,
  `HAB_PRECIO_BAJA` varchar(28) NOT NULL,
  `HAB_CANTIDAD_DISPONIBLE` int(11) NOT NULL,
  `HAB_FK_ID_HOTEL` int(11) NOT NULL,
  `HAB_FECHA_REGISTRO` datetime NOT NULL DEFAULT current_timestamp(),
  `HAB_ESTADO` varchar(11) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_habitaciones`
--

INSERT INTO `tbl_habitaciones` (`ID_HABITACION`, `HAB_TIPO`, `HAB_NUMERO_PERSONAS`, `HAB_PRECIO_ALTA`, `HAB_PRECIO_BAJA`, `HAB_CANTIDAD_DISPONIBLE`, `HAB_FK_ID_HOTEL`, `HAB_FECHA_REGISTRO`, `HAB_ESTADO`) VALUES
(1, 'Premiun', 6, '450000', '250000', 20, 1, '2025-06-12 16:11:48', 'Activo'),
(2, 'Estandar', 6, '420000', '220000', 20, 2, '2025-06-12 16:11:48', 'Activo'),
(3, 'VIP', 6, '550000', '350000', 2, 1, '2025-06-12 16:11:48', 'Activo'),
(4, 'Premiun', 6, '470000', '270000', 20, 2, '2025-06-12 16:11:48', 'Activo'),
(5, 'VIP', 6, '570000', '370000', 2, 2, '2025-06-12 16:11:48', 'Activo'),
(6, 'Estandar', 8, '350000', '250000', 10, 3, '2025-06-12 16:11:48', 'Activo'),
(7, 'Premiun', 8, '550000', '450000', 1, 3, '2025-06-12 16:11:48', 'Activo'),
(8, 'Estandar', 4, '330000', '430000', 30, 4, '2025-06-12 16:11:48', 'Activo'),
(9, 'Premiun', 4, '430000', '530000', 3, 4, '2025-06-12 16:11:48', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_hoteles`
--

CREATE TABLE `tbl_hoteles` (
  `ID_HOTEL` int(11) NOT NULL,
  `HOT_NOMBRE` varchar(92) DEFAULT NULL,
  `HOT_UBICACION` varchar(92) DEFAULT NULL,
  `HOT_FECHA_REGISTRO` datetime DEFAULT current_timestamp(),
  `HOT_ESTADO` varchar(11) DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_hoteles`
--

INSERT INTO `tbl_hoteles` (`ID_HOTEL`, `HOT_NOMBRE`, `HOT_UBICACION`, `HOT_FECHA_REGISTRO`, `HOT_ESTADO`) VALUES
(1, 'Hotel Hilton Cali', 'Cali', '2025-06-12 00:00:00', 'Activo'),
(2, 'Hotel Tequendama', 'Bogotá', '2025-06-12 00:00:00', 'Activo'),
(3, 'Hotel Luxury', 'Cartagena', '2025-06-12 00:00:00', 'Activo'),
(4, 'Hotel Majestic', 'Barranquilla', '2025-06-12 00:00:00', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reservaciones`
--

CREATE TABLE `tbl_reservaciones` (
  `ID_RESERVACION` int(11) NOT NULL,
  `RES_NOMBRE_HUESPED` varchar(92) DEFAULT NULL,
  `RES_FECHA_INICIO` date DEFAULT NULL,
  `RES_FECHA_FINAL` date DEFAULT NULL,
  `RES_FK_ID_HABITACION` int(11) DEFAULT NULL,
  `RES_ESTADO` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_habitaciones`
--
ALTER TABLE `tbl_habitaciones`
  ADD PRIMARY KEY (`ID_HABITACION`);

--
-- Indices de la tabla `tbl_hoteles`
--
ALTER TABLE `tbl_hoteles`
  ADD PRIMARY KEY (`ID_HOTEL`);

--
-- Indices de la tabla `tbl_reservaciones`
--
ALTER TABLE `tbl_reservaciones`
  ADD PRIMARY KEY (`ID_RESERVACION`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_habitaciones`
--
ALTER TABLE `tbl_habitaciones`
  MODIFY `ID_HABITACION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tbl_hoteles`
--
ALTER TABLE `tbl_hoteles`
  MODIFY `ID_HOTEL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_reservaciones`
--
ALTER TABLE `tbl_reservaciones`
  MODIFY `ID_RESERVACION` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
