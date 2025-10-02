-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-03-2025 a las 21:34:00
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
-- Base de datos: `magisterio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cedula`
--

CREATE TABLE `cedula` (
  `numcedula` int(11) NOT NULL,
  `lugarexp` varchar(40) NOT NULL,
  `fechaexp` date NOT NULL,
  `lugarnacimiento` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cedula`
--

INSERT INTO `cedula` (`numcedula`, `lugarexp`, `fechaexp`, `lugarnacimiento`) VALUES
(1, 'Manizales', '2019-05-09', 'Manizales'),
(2, 'Manizales', '2015-02-09', 'Manizales'),
(3, 'Pereira', '2015-05-27', 'Manizales'),
(4, 'Armenia', '2019-11-18', 'Pereira'),
(5, 'Pereira', '2018-12-17', 'Pereira'),
(6, 'Armenia', '2020-02-18', 'Armenia'),
(7, 'Bogotá', '2016-02-15', 'Bogotá'),
(8, 'Bogotá', '1985-04-14', 'Bogotá'),
(9, 'Armenia', '2000-06-14', 'Armenia'),
(10, 'Armenia', '2015-01-13', 'Armenia'),
(11, 'Cali', '2017-05-18', 'Manizales'),
(12, 'Cali', '2020-08-18', 'Cali'),
(13, 'Cali', '2007-10-17', 'Pereira'),
(14, 'Manizales', '2007-11-12', 'Armenia'),
(15, 'Cali', '1999-03-18', 'Cali'),
(16, 'Cali', '1976-11-22', 'Cali'),
(17, 'Pereira', '2006-03-22', 'Bogotá'),
(18, 'Pereira', '1975-01-15', 'Pereira'),
(19, 'Pereira', '2016-03-10', 'Pereira'),
(20, 'Medellín', '1996-12-25', 'Medellín');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio`
--

CREATE TABLE `colegio` (
  `idcolegio` int(11) NOT NULL,
  `nombrecol` varchar(40) NOT NULL,
  `ciudadcol` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `colegio`
--

INSERT INTO `colegio` (`idcolegio`, `nombrecol`, `ciudadcol`) VALUES
(1, 'San Benito', 'Manizales'),
(2, 'Santa Marta', 'Bogotá'),
(3, 'Americano', 'Pereira'),
(4, 'Peruano', 'Armenia'),
(5, 'Don José', 'Manizales'),
(6, 'Boliviano', 'Pereira'),
(7, 'Irlandés', 'Cali'),
(8, 'Liceo Norte', 'Cali'),
(9, 'Tecnológico', 'Medellín'),
(10, 'Monterrey', 'Medellín'),
(11, 'San Nicolás', 'Armenia'),
(12, 'San Luis Rey', 'Medellín');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `idmateria` int(11) NOT NULL,
  `nombremateria` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`idmateria`, `nombremateria`) VALUES
(1, 'Sociales'),
(2, 'Matemática'),
(3, 'Filisofía'),
(4, 'Lenguaje'),
(5, 'Tecnología'),
(6, 'Cálculo'),
(7, 'Biología'),
(8, 'Física');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiascolegio`
--

CREATE TABLE `materiascolegio` (
  `idcursocol` int(11) NOT NULL,
  `idmateria` int(11) NOT NULL,
  `idcolegio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materiascolegio`
--

INSERT INTO `materiascolegio` (`idcursocol`, `idmateria`, `idcolegio`) VALUES
(1, 3, 6),
(2, 4, 3),
(3, 4, 6),
(4, 1, 1),
(5, 2, 2),
(6, 1, 4),
(7, 3, 5),
(8, 4, 5),
(9, 5, 9),
(10, 5, 1),
(19, 6, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiasprofesor`
--

CREATE TABLE `materiasprofesor` (
  `idcursospro` int(11) NOT NULL,
  `idprofesor` int(11) NOT NULL,
  `idmateria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materiasprofesor`
--

INSERT INTO `materiasprofesor` (`idcursospro`, `idprofesor`, `idmateria`) VALUES
(1, 4, 3),
(2, 1, 1),
(3, 3, 2),
(4, 2, 4),
(5, 4, 1),
(6, 2, 3),
(7, 5, 2),
(8, 7, 6),
(9, 8, 5),
(10, 6, 1),
(11, 5, 1),
(12, 6, 3),
(15, 6, 4),
(16, 4, 4),
(17, 9, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `idprofesor` int(11) NOT NULL,
  `nombrepro` varchar(40) NOT NULL,
  `telefonopro` varchar(40) NOT NULL,
  `numcedula` int(11) NOT NULL,
  `idcolegio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`idprofesor`, `nombrepro`, `telefonopro`, `numcedula`, `idcolegio`) VALUES
(1, 'Juan Pérez', '6067866', 1, 1),
(2, 'Salvador Motoa', '2343454', 2, 3),
(3, 'Martha Ríos', '23453456', 5, 2),
(4, 'Alexandra Ocampo', '985674', 3, 5),
(5, 'Raúl Misas', '354758', 11, 4),
(6, 'Elsa Díaz', '23434', 12, 6),
(7, 'Oscar Alves', '9868754', 13, 3),
(8, 'Julián Buitrago', '437864', 14, 5),
(9, 'Carlos Parra', '74452', 17, 1),
(10, 'Andrés Castaño', '857522', 18, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rector`
--

CREATE TABLE `rector` (
  `idrector` int(11) NOT NULL,
  `nombrerec` varchar(40) NOT NULL,
  `telefonorec` varchar(40) NOT NULL,
  `idcolegio` int(11) DEFAULT NULL,
  `numcedula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rector`
--

INSERT INTO `rector` (`idrector`, `nombrerec`, `telefonorec`, `idcolegio`, `numcedula`) VALUES
(1, 'Luz Moreno', '678345', 3, 4),
(2, 'Melissa Montes', '34456456', 6, 6),
(3, 'Carmen Loaiza', '346835', 1, 7),
(4, 'Alfredo Roa', '85676456', 2, 8),
(5, 'Magola Ocampo', '23534', 4, 9),
(6, 'Luisa Aguirre', '47645', 5, 10),
(7, 'Jorge Villegas', '78432', 8, 15),
(8, 'Antonio Guerra', '745337', NULL, 19);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cedula`
--
ALTER TABLE `cedula`
  ADD PRIMARY KEY (`numcedula`),
  ADD UNIQUE KEY `numcedula` (`numcedula`),
  ADD UNIQUE KEY `numcedula_2` (`numcedula`);

--
-- Indices de la tabla `colegio`
--
ALTER TABLE `colegio`
  ADD PRIMARY KEY (`idcolegio`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`idmateria`);

--
-- Indices de la tabla `materiascolegio`
--
ALTER TABLE `materiascolegio`
  ADD PRIMARY KEY (`idcursocol`),
  ADD KEY `idmateria` (`idmateria`),
  ADD KEY `idcolegio` (`idcolegio`);

--
-- Indices de la tabla `materiasprofesor`
--
ALTER TABLE `materiasprofesor`
  ADD PRIMARY KEY (`idcursospro`),
  ADD KEY `idprofesor` (`idprofesor`),
  ADD KEY `idmateria` (`idmateria`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`idprofesor`),
  ADD UNIQUE KEY `numcedula_2` (`numcedula`),
  ADD UNIQUE KEY `numcedula_3` (`numcedula`),
  ADD UNIQUE KEY `numcedula_4` (`numcedula`),
  ADD UNIQUE KEY `numcedula_5` (`numcedula`),
  ADD UNIQUE KEY `numcedula_6` (`numcedula`),
  ADD KEY `numcedula` (`numcedula`),
  ADD KEY `idcolegio` (`idcolegio`);

--
-- Indices de la tabla `rector`
--
ALTER TABLE `rector`
  ADD PRIMARY KEY (`idrector`),
  ADD UNIQUE KEY `numcedula_2` (`numcedula`),
  ADD KEY `idcolegio` (`idcolegio`),
  ADD KEY `numcedula` (`numcedula`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `materiascolegio`
--
ALTER TABLE `materiascolegio`
  ADD CONSTRAINT `materiascolegio_ibfk_1` FOREIGN KEY (`idmateria`) REFERENCES `materias` (`idmateria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materiascolegio_ibfk_2` FOREIGN KEY (`idcolegio`) REFERENCES `colegio` (`idcolegio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `materiasprofesor`
--
ALTER TABLE `materiasprofesor`
  ADD CONSTRAINT `materiasprofesor_ibfk_1` FOREIGN KEY (`idmateria`) REFERENCES `materias` (`idmateria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materiasprofesor_ibfk_2` FOREIGN KEY (`idprofesor`) REFERENCES `profesor` (`idprofesor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`numcedula`) REFERENCES `cedula` (`numcedula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profesor_ibfk_2` FOREIGN KEY (`idcolegio`) REFERENCES `colegio` (`idcolegio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rector`
--
ALTER TABLE `rector`
  ADD CONSTRAINT `rector_ibfk_1` FOREIGN KEY (`numcedula`) REFERENCES `cedula` (`numcedula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rector_ibfk_2` FOREIGN KEY (`idcolegio`) REFERENCES `colegio` (`idcolegio`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
