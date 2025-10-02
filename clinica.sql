-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-03-2025 a las 21:34:27
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
-- Base de datos: `clinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE `consulta` (
  `idconsulta` int(11) NOT NULL,
  `fechaconsulta` date DEFAULT NULL,
  `motivoconsulta` varchar(255) DEFAULT NULL,
  `costoconsulta` decimal(10,2) DEFAULT NULL,
  `cedulapaciente` int(11) DEFAULT NULL,
  `idconsultorio` int(11) DEFAULT NULL,
  `cedulamedico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consulta`
--

INSERT INTO `consulta` (`idconsulta`, `fechaconsulta`, `motivoconsulta`, `costoconsulta`, `cedulapaciente`, `idconsultorio`, `cedulamedico`) VALUES
(1, '2024-01-10', 'Dolor de cabeza', 50000.00, 201, 301, 101),
(2, '2024-02-15', 'Chequeo general', 70000.00, 201, 302, 102),
(3, '2024-03-05', 'Tos persistente', 55000.00, 202, 303, 103),
(4, '2024-01-20', 'Dolor de estómago', 60000.00, 202, 304, 104),
(5, '2024-02-28', 'Control de presión arterial', 75000.00, 203, 305, 105),
(6, '2024-01-18', 'Chequeo general', 70000.00, 204, 306, 106),
(7, '2024-03-07', 'Alergia en la piel', 62000.00, 205, 301, 107),
(8, '2024-02-12', 'Dolor lumbar', 58000.00, 206, 302, 108),
(9, '2024-01-22', 'Mareos frecuentes', 54000.00, 207, 303, 109),
(10, '2024-02-19', 'Gripe fuerte', 50000.00, 208, 304, 110),
(11, '2024-03-12', 'Chequeo preoperatorio', 90000.00, 209, 305, 111),
(12, '2024-01-25', 'Control de diabetes', 85000.00, 210, 306, 112),
(13, '2024-02-10', 'Fractura de brazo', 120000.00, 211, 301, 113),
(14, '2024-03-14', 'Chequeo general', 70000.00, 212, 302, 114),
(15, '2024-01-15', 'Lesión en la rodilla', 110000.00, 213, 303, 115),
(16, '2024-02-07', 'Alergia respiratoria', 62000.00, 214, 304, 114),
(17, '2024-03-01', 'Chequeo general', 70000.00, 215, 305, 102),
(18, '2024-01-28', 'Dolor muscular', 65000.00, 216, 306, 102),
(19, '2024-02-20', 'Fatiga extrema', 69000.00, 217, 301, 103),
(20, '2024-03-09', 'Dolor de muelas', 45000.00, 218, 302, 114),
(171, '2024-02-01', 'Chequeo general', 70000.00, 225, 301, 101),
(172, '2024-03-02', 'Tensión alta', 80000.00, 221, 302, 102),
(173, '2024-01-27', 'Dolor de oído', 55000.00, 215, 303, 103),
(174, '2024-02-14', 'Chequeo de embarazo', 90000.00, 216, 304, 104),
(175, '2024-03-06', 'Fatiga crónica', 75000.00, 217, 305, 105),
(176, '2024-01-10', 'Dolor de articulaciones', 70000.00, 211, 306, 106),
(177, '2024-02-22', 'Fractura en tobillo', 120000.00, 224, 301, 107),
(178, '2024-03-13', 'Chequeo cardiovascular', 95000.00, 223, 302, 108),
(179, '2024-01-29', 'Fiebre persistente', 60000.00, 209, 303, 109),
(180, '2024-02-17', 'Dolor de espalda', 65000.00, 208, 304, 110),
(181, '2024-04-02', 'Chequeo postoperatorio', 90000.00, 202, 301, 101),
(182, '2024-05-12', 'Dolor en el pecho', 120000.00, 224, 302, 102),
(183, '2024-06-05', 'Revisión dermatológica', 75000.00, 211, 303, 103),
(184, '2024-04-25', 'Control de peso', 68000.00, 223, 304, 104),
(185, '2024-07-07', 'Revisión de presión arterial', 72000.00, 204, 305, 105),
(186, '2024-08-14', 'Dolor de cuello', 64000.00, 205, 306, 106),
(187, '2024-09-10', 'Problemas digestivos', 80000.00, 206, 301, 107),
(188, '2024-10-20', 'Control de tiroides', 85000.00, 207, 302, 108),
(189, '2024-11-02', 'Chequeo ginecológico', 95000.00, 208, 303, 109),
(190, '2024-12-15', 'Control de colesterol', 77000.00, 209, 304, 110),
(191, '2024-04-18', 'Chequeo cardiológico', 110000.00, 210, 305, 111),
(192, '2024-05-22', 'Consulta por insomnio', 72000.00, 211, 306, 112),
(193, '2024-06-08', 'Control de diabetes', 86000.00, 212, 301, 113),
(194, '2024-07-30', 'Consulta psiquiátrica', 98000.00, 213, 302, 114),
(195, '2024-08-05', 'Rehabilitación física', 92000.00, 214, 303, 115),
(196, '2024-09-12', 'Chequeo oftalmológico', 73000.00, 215, 304, 113),
(197, '2024-10-25', 'Dolor en las articulaciones', 81000.00, 216, 305, 111),
(198, '2024-11-14', 'Chequeo prenatal', 97000.00, 217, 306, 108),
(199, '2024-12-03', 'Fatiga y debilidad', 75000.00, 218, 301, 109),
(200, '2024-04-22', 'Dolor en la espalda baja', 67000.00, 219, 302, 101),
(201, '2024-05-30', 'Consulta por migraña', 76000.00, 220, 303, 101),
(202, '2024-06-10', 'Chequeo general', 70000.00, 221, 304, 102),
(203, '2024-07-20', 'Revisión post-quimioterapia', 115000.00, 222, 305, 103),
(204, '2024-08-18', 'Tratamiento para acné', 74000.00, 223, 306, 104),
(205, '2024-09-05', 'Evaluación psicológica', 99000.00, 224, 301, 105),
(206, '2024-10-12', 'Control post-infarto', 120000.00, 225, 302, 106),
(207, '2024-11-09', 'Consulta por vértigo', 82000.00, 216, 303, 107),
(208, '2024-12-28', 'Revisión por hipertensión', 85000.00, 217, 304, 108),
(209, '2024-04-15', 'Terapia del sueño', 78000.00, 218, 305, 109),
(210, '2024-05-25', 'Evaluación para cirugía', 125000.00, 219, 306, 110),
(211, '2025-03-10', 'Dolor de cabeza persistente', 75000.00, 201, 301, 101),
(212, '2025-03-11', 'Revisión anual', 50000.00, 202, 302, 102),
(213, '2025-03-12', 'Fractura de muñeca', 120000.00, 203, 303, 103),
(214, '2025-03-13', 'Alergia estacional', 68000.00, 204, 304, 104),
(215, '2025-03-14', 'Infección urinaria', 85000.00, 205, 305, 105),
(216, '2025-03-15', 'Chequeo preoperatorio', 95000.00, 206, 306, 106),
(217, '2025-03-16', 'Dificultad respiratoria', 110000.00, 207, 301, 107),
(218, '2025-03-17', 'Fiebre alta sin causa aparente', 78000.00, 208, 302, 108),
(219, '2025-03-18', 'Esguince de tobillo', 87000.00, 209, 303, 109),
(220, '2025-03-19', 'Revisión de control de presión', 60000.00, 210, 304, 110),
(221, '2025-03-20', 'Evaluación dermatológica', 72000.00, 211, 305, 111),
(222, '2025-03-21', 'Molestia en la rodilla', 88000.00, 212, 306, 112),
(223, '2025-03-22', 'Consulta postoperatoria', 70000.00, 213, 301, 113),
(224, '2025-03-23', 'Fatiga crónica', 91000.00, 214, 302, 114),
(225, '2025-03-24', 'Dolor abdominal agudo', 105000.00, 215, 303, 115),
(226, '2025-03-25', 'Mareo y náuseas', 76000.00, 216, 304, 101),
(227, '2025-03-26', 'Irritación ocular', 55000.00, 217, 305, 102),
(228, '2025-03-27', 'Seguimiento de diabetes', 65000.00, 218, 306, 103),
(229, '2025-03-28', 'Control de tiroides', 80000.00, 219, 301, 104),
(230, '2025-03-29', 'Evaluación post-infarto', 115000.00, 220, 302, 105);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultorio`
--

CREATE TABLE `consultorio` (
  `idconsultorio` int(11) NOT NULL,
  `numeroconsultorio` int(11) DEFAULT NULL,
  `sedeconsultorio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consultorio`
--

INSERT INTO `consultorio` (`idconsultorio`, `numeroconsultorio`, `sedeconsultorio`) VALUES
(301, 101, 'Sede Norte'),
(302, 102, 'Sede Centro'),
(303, 103, 'Sede Norte'),
(304, 104, 'Sede Centro'),
(305, 105, 'Sede Principal'),
(306, 106, 'Sede Principal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagnostico`
--

CREATE TABLE `diagnostico` (
  `iddiagnostico` int(11) NOT NULL,
  `nombrediagnostico` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `diagnostico`
--

INSERT INTO `diagnostico` (`iddiagnostico`, `nombrediagnostico`) VALUES
(1, 'Migraña'),
(2, 'Hipertensión'),
(3, 'Gastritis'),
(4, 'Infección urinaria'),
(5, 'Bronquitis'),
(6, 'Diabetes'),
(7, 'Alergia'),
(8, 'Insomnio'),
(9, 'Dolor articular'),
(10, 'Asma'),
(11, 'Dermatitis'),
(12, 'Anemia'),
(13, 'Resfriado común'),
(14, 'Sinusitis'),
(15, 'Fatiga crónica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagnostico_consulta`
--

CREATE TABLE `diagnostico_consulta` (
  `iddigcon` int(11) NOT NULL,
  `iddiagnostico` int(11) DEFAULT NULL,
  `idconsulta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `diagnostico_consulta`
--

INSERT INTO `diagnostico_consulta` (`iddigcon`, `iddiagnostico`, `idconsulta`) VALUES
(1, 1, 1),
(2, 3, 2),
(3, 5, 3),
(4, 7, 4),
(5, 2, 5),
(6, 8, 6),
(7, 4, 7),
(8, 10, 8),
(9, 12, 9),
(10, 6, 10),
(11, 9, 11),
(12, 13, 12),
(13, 1, 13),
(14, 3, 14),
(15, 5, 15),
(16, 11, 16),
(17, 7, 17),
(18, 14, 18),
(19, 2, 19),
(20, 10, 20),
(171, 9, 171),
(172, 12, 172),
(173, 5, 229),
(174, 14, 174),
(175, 15, 175),
(211, 9, 230),
(212, 12, 225),
(213, 5, 173),
(214, 14, 193),
(215, 15, 219),
(216, 1, 176),
(217, 3, 218),
(219, 6, 178),
(220, 8, 179),
(221, 13, 181),
(222, 4, 182),
(223, 7, 183),
(224, 2, 184),
(225, 11, 185),
(226, 5, 186),
(227, 9, 187),
(228, 15, 188),
(229, 12, 189),
(230, 14, 190);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `idespecialidad` int(11) NOT NULL,
  `especialidaddelmedico` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`idespecialidad`, `especialidaddelmedico`) VALUES
(1, 'Cardiología'),
(2, 'Pediatría'),
(3, 'Dermatología'),
(4, 'Neurología'),
(5, 'Ortopedia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidadmedico`
--

CREATE TABLE `especialidadmedico` (
  `idesme` int(11) NOT NULL,
  `idespecialidad` int(11) DEFAULT NULL,
  `cedulamedico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especialidadmedico`
--

INSERT INTO `especialidadmedico` (`idesme`, `idespecialidad`, `cedulamedico`) VALUES
(1, 1, 101),
(2, 3, 101),
(3, 2, 102),
(4, 4, 102),
(5, 5, 103),
(6, 1, 104),
(7, 2, 104),
(8, 3, 104),
(9, 4, 105),
(10, 2, 106),
(11, 3, 107),
(12, 5, 107),
(13, 1, 108),
(14, 2, 108),
(15, 4, 109),
(16, 5, 109),
(17, 1, 110),
(18, 3, 110),
(19, 2, 111),
(20, 3, 112),
(21, 4, 113),
(22, 5, 114),
(23, 1, 115),
(24, 4, 115);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `cedulamedico` int(11) NOT NULL,
  `nombremedico` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`cedulamedico`, `nombremedico`) VALUES
(101, 'Dr. Carlos Mendoza'),
(102, 'Dra. Laura Fernández'),
(103, 'Dr. Andrés Rojas'),
(104, 'Dra. Mariana López'),
(105, 'Dr. Javier Ramírez'),
(106, 'Dra. Sofía Herrera'),
(107, 'Dr. Ricardo Torres'),
(108, 'Dra. Paula Gómez'),
(109, 'Dr. Alejandro Silva'),
(110, 'Dra. Natalia Castro'),
(111, 'Dr. Esteban Morales'),
(112, 'Dra. Juliana Pérez'),
(113, 'Dr. Mateo Vargas'),
(114, 'Dra. Valentina Ruiz'),
(115, 'Dr. Sebastián Ortega');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `cedulapaciente` int(11) NOT NULL,
  `nombrepaciente` varchar(100) DEFAULT NULL,
  `direccionpaciente` varchar(200) DEFAULT NULL,
  `fechanacimientopaciente` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`cedulapaciente`, `nombrepaciente`, `direccionpaciente`, `fechanacimientopaciente`) VALUES
(201, 'Juan Pérez', 'Calle 10 #45-67, Bogotá', '1990-05-15'),
(202, 'María Gómez', 'Carrera 15 #23-89, Medellín', '1985-08-22'),
(203, 'Carlos Ramírez', 'Avenida 7 #12-34, Cali', '1992-12-10'),
(204, 'Ana Torres', 'Diagonal 32 #18-55, Barranquilla', '1988-04-18'),
(205, 'Pedro Rojas', 'Calle 50 #30-22, Bucaramanga', '1995-07-25'),
(206, 'Laura Sánchez', 'Carrera 8 #45-90, Cartagena', '1983-03-30'),
(207, 'Jorge Herrera', 'Calle 20 #5-17, Pereira', '1978-06-14'),
(208, 'Sofía Mendoza', 'Carrera 12 #89-45, Manizales', '1999-09-21'),
(209, 'Andrés Castro', 'Calle 90 #45-78, Pasto', '1991-11-02'),
(210, 'Daniela Ruiz', 'Carrera 33 #22-67, Cúcuta', '1986-02-28'),
(211, 'Fernando López', 'Calle 77 #21-45, Bogotá', '1994-10-15'),
(212, 'Gabriela Díaz', 'Carrera 5 #44-12, Medellín', '1980-12-05'),
(213, 'Ricardo Muñoz', 'Calle 100 #30-50, Cali', '1993-01-22'),
(214, 'Isabela Pardo', 'Carrera 27 #14-55, Barranquilla', '1987-05-11'),
(215, 'Luis Fernández', 'Calle 65 #32-40, Bucaramanga', '1996-08-19'),
(216, 'Natalia Ospina', 'Carrera 19 #56-22, Cartagena', '1992-03-08'),
(217, 'Camilo Vargas', 'Calle 42 #98-34, Pereira', '1981-07-03'),
(218, 'Valeria Guzmán', 'Carrera 15 #67-78, Manizales', '2000-09-14'),
(219, 'Santiago Ríos', 'Calle 28 #33-45, Pasto', '1997-06-20'),
(220, 'Paula Trujillo', 'Carrera 78 #22-88, Cúcuta', '1984-11-29'),
(221, 'Manuel Benítez', 'Calle 39 #12-90, Bogotá', '1989-07-07'),
(222, 'Andrea Mejía', 'Carrera 11 #44-56, Medellín', '1998-02-14'),
(223, 'José Pineda', 'Calle 23 #98-11, Cali', '1977-04-09'),
(224, 'Mariana Vargas', 'Carrera 14 #65-21, Barranquilla', '1990-01-18'),
(225, 'Rodrigo Acosta', 'Calle 12 #33-60, Bucaramanga', '1995-03-27'),
(226, 'Mónica Castaño', 'Carrera 56 #12-34, Cartagena', '1993-12-25'),
(227, 'Felipe Gutiérrez', 'Calle 100 #78-90, Pereira', '1986-09-12'),
(228, 'Cristina Soto', 'Carrera 9 #88-22, Manizales', '1992-05-06'),
(229, 'Samuel Torres', 'Calle 55 #34-44, Pasto', '1998-08-23'),
(230, 'Juliana Medina', 'Carrera 18 #22-55, Cúcuta', '1983-10-17'),
(231, 'Óscar Herrera', 'Calle 42 #67-23, Bogotá', '1991-11-30'),
(232, 'Elena Montoya', 'Carrera 21 #99-11, Medellín', '1989-06-05'),
(233, 'Sebastián Álvarez', 'Calle 33 #45-78, Cali', '1994-01-14'),
(234, 'Daniela Figueroa', 'Carrera 78 #22-33, Barranquilla', '1987-07-22'),
(235, 'Martín Ramírez', 'Calle 18 #65-44, Bucaramanga', '1999-04-18'),
(236, 'Liliana Rojas', 'Carrera 14 #90-55, Cartagena', '1992-09-07'),
(237, 'Carlos Bermúdez', 'Calle 100 #23-76, Pereira', '1993-05-25'),
(238, 'Adriana Guzmán', 'Carrera 8 #44-11, Manizales', '1985-08-30'),
(239, 'Luis Salgado', 'Calle 56 #23-77, Pasto', '1990-12-12'),
(240, 'Verónica Suárez', 'Carrera 22 #67-99, Cúcuta', '1984-02-08'),
(241, 'Hugo Méndez', 'Calle 11 #44-77, Bogotá', '1988-05-21'),
(242, 'Rocío Rodríguez', 'Carrera 33 #12-65, Medellín', '1996-07-09'),
(243, 'Nicolás García', 'Calle 22 #88-34, Cali', '1979-11-04'),
(244, 'Patricia Rivera', 'Carrera 90 #67-32, Barranquilla', '1997-06-22'),
(245, 'Esteban Pérez', 'Calle 15 #44-78, Bucaramanga', '1993-08-10'),
(246, 'María Camila Ríos', 'Carrera 67 #11-44, Cartagena', '1986-10-30'),
(247, 'Diego López', 'Calle 100 #44-88, Pereira', '1991-09-15'),
(248, 'Paola Giraldo', 'Carrera 23 #78-55, Manizales', '1994-02-17'),
(249, 'Tomás Velásquez', 'Calle 44 #12-77, Pasto', '1983-12-09'),
(250, 'Luciana Vargas', 'Carrera 33 #11-99, Cúcuta', '1992-07-01'),
(251, 'Emilio Castaño', 'Calle 11 #67-88, Bogotá', '1989-04-14'),
(252, 'Natalia Franco', 'Carrera 88 #99-12, Medellín', '1995-05-19'),
(253, 'Juan Esteban Moreno', 'Calle 55 #44-21, Cali', '1987-06-29'),
(254, 'Elisa Ramírez', 'Carrera 22 #77-33, Barranquilla', '1996-08-25'),
(255, 'Roberto Aguilar', 'Calle 90 #23-56, Bucaramanga', '1994-12-03'),
(256, 'Carolina Torres', 'Carrera 12 #55-77, Cartagena', '1983-03-17'),
(257, 'Javier Márquez', 'Calle 33 #99-88, Pereira', '1991-11-22'),
(258, 'Cecilia Ortiz', 'Carrera 78 #11-44, Manizales', '1988-09-05'),
(259, 'Alejandro Ríos', 'Calle 55 #77-22, Pasto', '1997-02-28'),
(260, 'Victoria Medina', 'Carrera 22 #33-44, Cúcuta', '1985-10-11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`idconsulta`),
  ADD KEY `cedulapaciente` (`cedulapaciente`),
  ADD KEY `idconsultorio` (`idconsultorio`),
  ADD KEY `cedulamedico` (`cedulamedico`);

--
-- Indices de la tabla `consultorio`
--
ALTER TABLE `consultorio`
  ADD PRIMARY KEY (`idconsultorio`);

--
-- Indices de la tabla `diagnostico`
--
ALTER TABLE `diagnostico`
  ADD PRIMARY KEY (`iddiagnostico`);

--
-- Indices de la tabla `diagnostico_consulta`
--
ALTER TABLE `diagnostico_consulta`
  ADD PRIMARY KEY (`iddigcon`),
  ADD KEY `iddiagnostico` (`iddiagnostico`),
  ADD KEY `idconsulta` (`idconsulta`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`idespecialidad`);

--
-- Indices de la tabla `especialidadmedico`
--
ALTER TABLE `especialidadmedico`
  ADD PRIMARY KEY (`idesme`),
  ADD KEY `idespecialidad` (`idespecialidad`),
  ADD KEY `cedulamedico` (`cedulamedico`);

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`cedulamedico`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`cedulapaciente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consulta`
--
ALTER TABLE `consulta`
  MODIFY `idconsulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT de la tabla `diagnostico_consulta`
--
ALTER TABLE `diagnostico_consulta`
  MODIFY `iddigcon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT de la tabla `especialidadmedico`
--
ALTER TABLE `especialidadmedico`
  MODIFY `idesme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`cedulapaciente`) REFERENCES `paciente` (`cedulapaciente`),
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`idconsultorio`) REFERENCES `consultorio` (`idconsultorio`),
  ADD CONSTRAINT `consulta_ibfk_3` FOREIGN KEY (`cedulamedico`) REFERENCES `medico` (`cedulamedico`);

--
-- Filtros para la tabla `diagnostico_consulta`
--
ALTER TABLE `diagnostico_consulta`
  ADD CONSTRAINT `diagnostico_consulta_ibfk_1` FOREIGN KEY (`iddiagnostico`) REFERENCES `diagnostico` (`iddiagnostico`),
  ADD CONSTRAINT `diagnostico_consulta_ibfk_2` FOREIGN KEY (`idconsulta`) REFERENCES `consulta` (`idconsulta`);

--
-- Filtros para la tabla `especialidadmedico`
--
ALTER TABLE `especialidadmedico`
  ADD CONSTRAINT `especialidadmedico_ibfk_1` FOREIGN KEY (`idespecialidad`) REFERENCES `especialidad` (`idespecialidad`),
  ADD CONSTRAINT `especialidadmedico_ibfk_2` FOREIGN KEY (`cedulamedico`) REFERENCES `medico` (`cedulamedico`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
