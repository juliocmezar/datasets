-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 26-09-2025 a las 22:45:31
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
-- Base de datos: `agenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(11) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `nombres`, `apellidos`, `telefono`, `direccion`, `email`) VALUES
(14, 'Juan', 'Pérez', '3104567890', 'Cra 10 #12-34, Bogotá', 'juan.perez@correo.com'),
(15, 'María', 'Gómez', '3209876543', 'Cl 45 #67-89, Medellín', 'maria.gomez@correo.com'),
(16, 'Carlos', 'Rodríguez', '3112345678', 'Cra 7 #45-10, Cali', 'carlos.rodriguez@correo.com'),
(17, 'Ana', 'Martínez', '3005678912', 'Cl 12 #34-56, Barranquilla', 'ana.martinez@correo.com'),
(18, 'Luis', 'Hernández', '3016789456', 'Cra 25 #40-20, Cartagena', 'luis.hernandez@correo.com'),
(19, 'Laura', 'López', '3224567891', 'Cl 50 #12-40, Bucaramanga', 'laura.lopez@correo.com'),
(20, 'Andrés', 'Díaz', '3102345671', 'Cra 15 #23-45, Pereira', 'andres.diaz@correo.com'),
(21, 'Camila', 'Torres', '3159871234', 'Cl 80 #22-11, Manizales', 'camila.torres@correo.com'),
(22, 'Felipe', 'Ramírez', '3124567890', 'Cra 32 #56-78, Cúcuta', 'felipe.ramirez@correo.com'),
(23, 'Paola', 'Moreno', '3006789123', 'Cl 100 #30-25, Ibagué', 'paola.moreno@correo.com'),
(24, 'Santiago', 'Rojas', '3014567890', 'Cra 18 #20-40, Armenia', 'santiago.rojas@correo.com'),
(25, 'Valentina', 'Jiménez', '3109876541', 'Cl 60 #45-22, Pasto', 'valentina.jimenez@correo.com'),
(26, 'David', 'Castro', '3203456789', 'Cra 12 #10-50, Montería', 'david.castro@correo.com'),
(27, 'Isabella', 'García', '3136789123', 'Cl 75 #30-15, Neiva', 'isabella.garcia@correo.com'),
(28, 'Mateo', 'Suárez', '3117896543', 'Cra 28 #44-70, Villavicencio', 'mateo.suarez@correo.com'),
(29, 'Sofía', 'Castaño', '3002345678', 'Cl 90 #12-44, Tunja', 'sofia.castano@correo.com'),
(30, 'Daniel', 'Ortiz', '3145678932', 'Cra 8 #23-33, Popayán', 'daniel.ortiz@correo.com'),
(31, 'Gabriela', 'Vargas', '3227896541', 'Cl 30 #25-50, Santa Marta', 'gabriela.vargas@correo.com'),
(32, 'Miguel', 'Reyes', '3105678123', 'Cra 14 #60-20, Sincelejo', 'miguel.reyes@correo.com'),
(33, 'Natalia', 'Fernández', '3012345678', 'Cl 22 #40-15, Valledupar', 'natalia.fernandez@correo.com'),
(34, 'Juliana', 'Mejía', '3204567812', 'Cra 11 #25-30, Medellín', 'juliana.mejia@correo.com'),
(35, 'Esteban', 'Cárdenas', '3106789451', 'Cl 44 #18-22, Bogotá', 'esteban.cardenas@correo.com'),
(36, 'Diana', 'Patiño', '3117896542', 'Cra 6 #15-45, Cali', 'diana.patino@correo.com'),
(37, 'Sebastián', 'Giraldo', '3009876541', 'Cl 20 #45-70, Manizales', 'sebastian.giraldo@correo.com'),
(38, 'Lucía', 'Salazar', '3132345678', 'Cra 22 #60-15, Armenia', 'lucia.salazar@correo.com'),
(39, 'Ricardo', 'Mendoza', '3014567823', 'Cl 19 #50-20, Cartagena', 'ricardo.mendoza@correo.com'),
(40, 'Fernanda', 'Quintero', '3207896542', 'Cra 33 #12-40, Pereira', 'fernanda.quintero@correo.com'),
(41, 'Julián', 'Cortés', '3126789012', 'Cl 77 #18-33, Bucaramanga', 'julian.cortes@correo.com'),
(42, 'Carolina', 'Valencia', '3102345679', 'Cra 40 #25-10, Cúcuta', 'carolina.valencia@correo.com'),
(43, 'Tomás', 'Zapata', '3154567891', 'Cl 82 #30-44, Montería', 'tomas.zapata@correo.com'),
(44, 'Martina', 'Mora', '3223456789', 'Cra 12 #44-55, Pasto', 'martina.mora@correo.com'),
(45, 'Nicolás', 'Aguilar', '3146789123', 'Cl 55 #20-15, Villavicencio', 'nicolas.aguilar@correo.com'),
(46, 'Daniela', 'Ospina', '3015678934', 'Cra 8 #33-20, Barranquilla', 'daniela.ospina@correo.com'),
(47, 'Felipe', 'Guerrero', '3201234567', 'Cl 70 #40-60, Santa Marta', 'felipe.guerrero@correo.com'),
(48, 'Mariana', 'Luna', '3113456789', 'Cra 17 #15-12, Neiva', 'mariana.luna@correo.com'),
(49, 'Samuel', 'Calderón', '3127896540', 'Cl 25 #22-30, Tunja', 'samuel.calderon@correo.com'),
(50, 'Sara', 'Navarro', '3004567891', 'Cra 21 #77-18, Popayán', 'sara.navarro@correo.com'),
(51, 'Jorge', 'Bermúdez', '3135678901', 'Cl 90 #33-25, Valledupar', 'jorge.bermudez@correo.com'),
(52, 'Elena', 'Peña', '3106789123', 'Cra 13 #28-40, Sincelejo', 'elena.pena@correo.com'),
(53, 'Cristian', 'Parra', '3224567890', 'Cl 48 #12-11, Ibagué', 'cristian.parra@correo.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
