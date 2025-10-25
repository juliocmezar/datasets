-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-10-2025 a las 18:29:42
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `banco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE `auditoria` (
  `id` int(11) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `tabla` varchar(40) NOT NULL,
  `accion` varchar(40) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auditoria`
--

INSERT INTO `auditoria` (`id`, `usuario`, `tabla`, `accion`, `fecha`) VALUES
(1, 'root@localhost', 'cajero', 'insertar', '2025-10-21 16:26:13'),
(2, 'root@localhost', 'cajero', 'insertar', '2025-10-21 16:26:13'),
(3, 'root@localhost', 'cajero', 'insertar', '2025-10-21 16:26:13'),
(4, 'root@localhost', 'clientes', 'insertar', '2025-10-21 16:27:43'),
(5, 'root@localhost', 'clientes', 'insertar', '2025-10-21 16:27:43'),
(6, 'root@localhost', 'clientes', 'insertar', '2025-10-21 16:27:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajeros`
--

CREATE TABLE `cajeros` (
  `id` int(11) NOT NULL,
  `ndiez` int(11) NOT NULL,
  `nveinte` int(11) NOT NULL,
  `ncincuenta` int(11) NOT NULL,
  `ncien` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cajeros`
--

INSERT INTO `cajeros` (`id`, `ndiez`, `nveinte`, `ncincuenta`, `ncien`, `estado`) VALUES
(1, 45, 78, 23, 90, 0),
(2, 12, 0, 56, 34, 0),
(3, 100, 65, 80, 10, 0);

--
-- Disparadores `cajeros`
--
DELIMITER $$
CREATE TRIGGER `editar` BEFORE UPDATE ON `cajeros` FOR EACH ROW INSERT INTO auditoria(id,usuario,tabla,accion,fecha) VALUES (null,USER(),'cajero','editar',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `eliminar` BEFORE DELETE ON `cajeros` FOR EACH ROW INSERT INTO auditoria(id,usuario,tabla,accion,fecha) VALUES (null,USER(),'cajero','eliminar',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insertar` BEFORE INSERT ON `cajeros` FOR EACH ROW INSERT INTO auditoria(id,usuario,tabla,accion,fecha) VALUES (null,USER(),'cajero','insertar',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `ciudad` varchar(40) NOT NULL,
  `ncuenta` int(11) NOT NULL,
  `saldo` double NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `telefono`, `ciudad`, `ncuenta`, `saldo`, `estado`) VALUES
(1, 'María', 'García', '3104567890', 'Manizales', 1001, 2540000, 0),
(2, 'Carlos', 'Pérez', '3119876543', 'Pereira', 1002, 785000, 0),
(3, 'Luisa', 'Rodríguez', '3123456789', 'Armenia', 1003, 125000, 0);

--
-- Disparadores `clientes`
--
DELIMITER $$
CREATE TRIGGER `editarcli` BEFORE UPDATE ON `clientes` FOR EACH ROW INSERT INTO auditoria(id,usuario,tabla,accion,fecha) VALUES (null,USER(),'clientes','editar',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `eliminarcli` BEFORE DELETE ON `clientes` FOR EACH ROW INSERT INTO auditoria(id,usuario,tabla,accion,fecha) VALUES (null,USER(),'clientes','eliminar',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insertarcli` BEFORE INSERT ON `clientes` FOR EACH ROW INSERT INTO auditoria(id,usuario,tabla,accion,fecha) VALUES (null,USER(),'clientes','insertar',NOW())
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajeros`
--
ALTER TABLE `cajeros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cajeros`
--
ALTER TABLE `cajeros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
