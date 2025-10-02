-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-03-2025 a las 21:35:08
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
-- Base de datos: `libreria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `cedulaautor` int(20) NOT NULL,
  `nombreautor` varchar(40) NOT NULL,
  `fechanacimientoautor` date NOT NULL,
  `ciudadnacimientoautor` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`cedulaautor`, `nombreautor`, `fechanacimientoautor`, `ciudadnacimientoautor`) VALUES
(1001, 'Gabriel García Márquez', '1927-03-06', 'Aracataca'),
(1002, 'Mario Vargas Llosa', '1936-03-28', 'Arequipa'),
(1003, 'Isabel Allende', '1942-08-02', 'Lima'),
(1004, 'Julio Cortázar', '1914-08-26', 'Bruselas'),
(1005, 'Jorge Luis Borges', '1899-08-24', 'Buenos Aires'),
(1006, 'Carlos Fuentes', '1928-11-11', 'Panamá'),
(1007, 'Laura Restrepo', '1950-03-01', 'Bogotá'),
(1008, 'Pablo Neruda', '1904-07-12', 'Parral'),
(1009, 'Miguel de Cervantes', '1547-09-29', 'Alcalá de Henares'),
(1010, 'Federico García Lorca', '1898-06-05', 'Fuente Vaqueros'),
(1011, 'José Saramago', '1922-11-16', 'Azinhaga'),
(1012, 'Roberto Bolaño', '1953-04-28', 'Santiago de Chile'),
(1013, 'Ernesto Sabato', '1911-06-24', 'Rojas'),
(1014, 'Juan Rulfo', '1917-05-16', 'Sayula'),
(1015, 'Rosa Montero', '1951-01-03', 'Madrid'),
(1016, 'Haruki Murakami', '1949-01-12', 'Kioto'),
(1017, 'Kazuo Ishiguro', '1954-11-08', 'Nagasaki'),
(1018, 'Margaret Atwood', '1939-11-18', 'Ottawa'),
(1019, 'Umberto Eco', '1932-01-05', 'Alessandria'),
(1020, 'Ray Bradbury', '1920-08-22', 'Waukegan'),
(1021, 'Toni Morrison', '1931-02-18', 'Lorain'),
(1022, 'Chinua Achebe', '1930-11-16', 'Ogidi'),
(1023, 'Virginia Woolf', '1882-01-25', 'Londres'),
(1024, 'Hermann Hesse', '1877-07-02', 'Calw'),
(1025, 'Franz Kafka', '1883-07-03', 'Praga'),
(1026, 'James Joyce', '1882-02-02', 'Dublín'),
(1027, 'George Orwell', '1903-06-25', 'Motihari'),
(1028, 'Aldous Huxley', '1894-07-26', 'Godalming'),
(1029, 'Leo Tolstoy', '1828-09-09', 'Yásnaya Poliana'),
(1030, 'Fyodor Dostoevsky', '1821-11-11', 'Moscú');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autoreslibros`
--

CREATE TABLE `autoreslibros` (
  `idautoreslibros` int(11) NOT NULL,
  `isbn` int(11) NOT NULL,
  `cedulaautor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autoreslibros`
--

INSERT INTO `autoreslibros` (`idautoreslibros`, `isbn`, `cedulaautor`) VALUES
(1, 2001, 1001),
(2, 2002, 1002),
(3, 2003, 1003),
(4, 2004, 1004),
(5, 2005, 1005),
(6, 2006, 1006),
(7, 2007, 1007),
(8, 2008, 1008),
(9, 2009, 1009),
(10, 2010, 1010),
(11, 2011, 1011),
(12, 2012, 1012),
(13, 2013, 1013),
(14, 2014, 1014),
(15, 2015, 1001),
(16, 2016, 1001),
(17, 2017, 1015),
(18, 2018, 1016),
(19, 2019, 1017),
(20, 2020, 1018),
(25, 2025, 1003),
(26, 2026, 1004),
(27, 2027, 1005),
(28, 2028, 1006),
(29, 2029, 1007),
(30, 2030, 1008),
(31, 2031, 1009),
(32, 2032, 1010),
(33, 2033, 1011),
(34, 2034, 1012),
(35, 2035, 1013),
(36, 2036, 1014),
(37, 2037, 1015),
(38, 2038, 1016),
(39, 2039, 1017),
(40, 2040, 1018);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cedulacliente` int(11) NOT NULL,
  `nombrecliente` varchar(40) NOT NULL,
  `fechanacimientocliente` date NOT NULL,
  `ciudadnacimientocliente` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cedulacliente`, `nombrecliente`, `fechanacimientocliente`, `ciudadnacimientocliente`) VALUES
(2001, 'Juan Pérez', '1985-05-15', 'Bogotá'),
(2002, 'María López', '1990-09-23', 'Medellín'),
(2003, 'Carlos Rodríguez', '1982-11-30', 'Cali'),
(2004, 'Ana Gómez', '1995-07-19', 'Barranquilla'),
(2005, 'Luis Fernández', '1988-03-25', 'Cartagena'),
(2006, 'Sofía Ramírez', '1992-12-10', 'Bucaramanga'),
(2007, 'Diego Castro', '1980-06-05', 'Pereira'),
(2008, 'Elena Vargas', '1987-08-14', 'Manizales'),
(2009, 'Andrés Gutiérrez', '1993-04-21', 'Santa Marta'),
(2010, 'Gabriela Herrera', '1991-02-17', 'Cúcuta'),
(2011, 'Fernando Méndez', '1984-10-29', 'Ibagué'),
(2012, 'Paula Ríos', '1996-05-12', 'Neiva'),
(2013, 'Ricardo Salazar', '1989-07-08', 'Villavicencio'),
(2014, 'Natalia Ortega', '1994-11-03', 'Pasto'),
(2015, 'Hugo Peña', '1981-09-27', 'Armenia'),
(2016, 'Camila Suárez', '1997-01-16', 'Tunja'),
(2017, 'Alberto Morales', '1986-06-24', 'Sincelejo'),
(2018, 'Daniela Pineda', '1998-08-31', 'Valledupar'),
(2019, 'Esteban Cárdenas', '1990-04-05', 'Montería'),
(2020, 'Lorena Espinosa', '1983-12-22', 'Florencia'),
(2021, 'Javier Marín', '1985-07-09', 'Quibdó'),
(2022, 'Tatiana Benítez', '1992-10-15', 'Leticia'),
(2023, 'Germán Figueroa', '1987-05-03', 'Popayán'),
(2024, 'Patricia Silva', '1999-11-26', 'San Andrés'),
(2025, 'Rodrigo Mendoza', '1980-03-18', 'Riohacha'),
(2026, 'Verónica Calle', '1991-06-30', 'Yopal'),
(2027, 'Fabián Jiménez', '1984-08-07', 'Puerto Carreño'),
(2028, 'Luisa Castellanos', '1993-09-12', 'Inírida'),
(2029, 'Oscar Quintero', '1986-02-22', 'Mitú'),
(2030, 'Daniel Chaves', '1995-04-09', 'Mocoa'),
(2031, 'Laura Ríos', '1989-11-25', 'Pereira'),
(2032, 'Hugo Ramírez', '1995-04-18', 'Cúcuta'),
(2033, 'Elena Castro', '1982-09-09', 'Cartagena'),
(2034, 'Martín Peña', '1997-07-30', 'Manizales'),
(2035, 'Gabriela Muñoz', '1993-06-12', 'Villavicencio'),
(2036, 'Daniel Espinosa', '1988-05-14', 'Montería'),
(2037, 'Isabela Gómez', '1996-12-03', 'Neiva'),
(2038, 'Samuel Rojas', '1984-02-19', 'Bucaramanga'),
(2039, 'Patricia Díaz', '1991-08-22', 'Pasto'),
(2040, 'Javier Quintero', '1999-10-08', 'Sincelejo'),
(2042, 'José Alba', '1985-05-01', 'Manizales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editoriales`
--

CREATE TABLE `editoriales` (
  `ideditorial` int(11) NOT NULL,
  `nombreeditorial` varchar(40) NOT NULL,
  `paiseditorial` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `editoriales`
--

INSERT INTO `editoriales` (`ideditorial`, `nombreeditorial`, `paiseditorial`) VALUES
(1, 'Editorial Sudamericana', 'Argentina'),
(2, 'Plaza & Janés', 'España'),
(3, 'Alfaguara', 'España'),
(4, 'Emecé Editores', 'Argentina'),
(5, 'Fondo de Cultura Económica', 'México'),
(6, 'Seix Barral', 'España'),
(7, 'Anagrama', 'España'),
(8, 'Lumen', 'España'),
(9, 'Tusquets Editores', 'España'),
(10, 'Kodansha', 'Japón'),
(11, 'Companhia das Letras', 'Brasil'),
(12, 'Planeta', 'España'),
(13, 'Cátedra', 'España'),
(14, 'Penguin Books', 'Reino Unido'),
(15, 'Random House', 'Estados Unidos'),
(16, 'Salamandra', 'España'),
(17, 'HarperCollins', 'Estados Unidos'),
(18, 'Simon & Schuster', 'Estados Unidos'),
(19, 'Macmillan Publishers', 'Reino Unido'),
(20, 'Oxford University Press', 'Reino Unido'),
(21, 'Hoyos Editores', 'Colombia'),
(22, 'Hermanos H y M', 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `isbn` int(11) NOT NULL,
  `nombrelibro` varchar(40) NOT NULL,
  `fechapublicacion` date NOT NULL,
  `valorlibro` double NOT NULL,
  `ideditorial` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`isbn`, `nombrelibro`, `fechapublicacion`, `valorlibro`, `ideditorial`) VALUES
(2001, 'Cien años de soledad', '1967-05-30', 45000, 1),
(2002, 'La casa de los espíritus', '1982-01-01', 38000, 2),
(2003, 'Rayuela', '1963-06-28', 42000, 3),
(2004, 'Ficciones', '1944-01-01', 36000, 4),
(2005, 'El Aleph', '1949-01-01', 37000, 5),
(2006, 'Pedro Páramo', '1955-01-01', 30000, 6),
(2007, 'El túnel', '1948-01-01', 28000, 7),
(2008, 'Sobre héroes y tumbas', '1961-01-01', 35000, 8),
(2009, '2666', '2004-11-25', 50000, 9),
(2010, 'Los detectives salvajes', '1998-01-01', 47000, 10),
(2011, 'El nombre de la rosa', '1980-01-01', 48000, 11),
(2012, 'Nunca me abandones', '2005-01-01', 32000, 12),
(2013, 'Tokio Blues', '1987-01-01', 34000, 10),
(2014, '1Q84', '2009-01-01', 56000, 13),
(2015, 'El amor en los tiempos del cólera', '1985-01-01', 39000, 1),
(2016, 'Crónica de una muerte anunciada', '1981-01-01', 31000, 1),
(2017, 'Ensayo sobre la ceguera', '1995-01-01', 42000, 14),
(2018, 'La sombra del viento', '2001-01-01', 45000, 15),
(2019, 'Don Quijote de la Mancha', '1605-01-01', 55000, 16),
(2020, 'Fahrenheit 451', '1953-01-01', 29000, 17),
(2021, '1984', '1949-01-01', 40000, 18),
(2022, 'Rebelión en la granja', '1945-01-01', 33000, 19),
(2023, 'La carretera', '2006-01-01', 31000, 20),
(2024, 'El cuento de la criada', '1985-01-01', 37000, 2),
(2025, 'Los juegos del hambre', '2008-01-01', 38000, 3),
(2026, 'Divergente', '2011-01-01', 36000, 4),
(2027, 'Maze Runner', '2009-01-01', 34000, 5),
(2028, 'Drácula', '1897-01-01', 32000, 6),
(2029, 'Frankenstein', '1818-01-01', 31000, 7),
(2030, 'Matar a un ruiseñor', '1960-01-01', 38000, 8),
(2031, 'Orgullo y prejuicio', '1813-01-01', 35000, 9),
(2032, 'Crimen y castigo', '1866-01-01', 39000, 10),
(2033, 'Guerra y paz', '1869-01-01', 45000, 11),
(2034, 'El principito', '1943-01-01', 25000, 12),
(2035, 'Alicia en el país de las maravillas', '1865-01-01', 27000, 13),
(2036, 'Las aventuras de Sherlock Holmes', '1892-01-01', 30000, 14),
(2037, 'El hobbit', '1937-01-01', 42000, 15),
(2038, 'El señor de los anillos', '1954-01-01', 60000, 16),
(2039, 'Dune', '1965-01-01', 52000, 17),
(2040, 'Fundación', '1951-01-01', 49000, 18),
(2041, 'La metamorfosis', '1915-01-01', 28000, NULL),
(2042, 'Los miserables', '1862-01-01', 50000, NULL),
(2043, 'Madame Bovary', '1856-01-01', 35000, NULL),
(2044, 'El retrato de Dorian Gray', '1890-01-01', 39000, NULL),
(2045, 'Dr. Jekyll y Mr. Hyde', '1886-01-01', 31000, NULL),
(2046, 'Los hermanos Karamazov', '1880-01-01', 45000, NULL),
(2047, 'La divina comedia', '1320-01-01', 52000, NULL),
(2048, 'El ruido y la furia', '1929-01-01', 48000, NULL),
(2049, 'Cumbres borrascosas', '1847-01-01', 40000, NULL),
(2050, 'Ulises', '1922-01-01', 60000, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `librosventas`
--

CREATE TABLE `librosventas` (
  `idlibrosventas` int(11) NOT NULL,
  `isbn` int(11) NOT NULL,
  `ideventa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `librosventas`
--

INSERT INTO `librosventas` (`idlibrosventas`, `isbn`, `ideventa`) VALUES
(1, 2001, 4001),
(2, 2002, 4002),
(3, 2003, 4003),
(4, 2004, 4004),
(5, 2005, 4005),
(6, 2006, 4006),
(7, 2007, 4007),
(8, 2008, 4008),
(9, 2009, 4009),
(10, 2010, 4010),
(11, 2011, 4011),
(12, 2012, 4012),
(13, 2013, 4013),
(14, 2014, 4014),
(15, 2015, 4015),
(16, 2016, 4016),
(17, 2017, 4017),
(18, 2018, 4018),
(19, 2019, 4019),
(20, 2020, 4020),
(21, 2021, 4021),
(22, 2022, 4022),
(23, 2023, 4023),
(24, 2024, 4024),
(25, 2025, 4025),
(26, 2026, 4026),
(27, 2027, 4027),
(28, 2028, 4028),
(29, 2029, 4029),
(30, 2030, 4030),
(31, 2031, 4031),
(32, 2032, 4032),
(33, 2033, 4033),
(34, 2034, 4034),
(35, 2035, 4035),
(36, 2036, 4036),
(37, 2037, 4037),
(38, 2038, 4038),
(39, 2039, 4039),
(40, 2040, 4040),
(41, 2001, 4041),
(42, 2002, 4042),
(43, 2003, 4043),
(44, 2004, 4044),
(45, 2005, 4045),
(46, 2006, 4046),
(47, 2007, 4047),
(48, 2008, 4048),
(49, 2009, 4049),
(50, 2010, 4050),
(51, 2011, 4051),
(52, 2012, 4052),
(53, 2013, 4053),
(54, 2014, 4054),
(55, 2015, 4055),
(56, 2016, 4056),
(57, 2017, 4057),
(58, 2018, 4058),
(59, 2019, 4059),
(60, 2020, 4060),
(61, 2021, 4001),
(62, 2022, 4002),
(63, 2023, 4003),
(64, 2024, 4001),
(65, 2025, 4015),
(66, 2026, 4006),
(67, 2027, 4017),
(68, 2028, 4053),
(69, 2029, 4053),
(70, 2030, 4060),
(71, 2031, 4060),
(72, 2032, 4060),
(73, 2033, 4013),
(74, 2034, 4014),
(75, 2035, 4015),
(76, 2036, 4016),
(77, 2037, 4017),
(78, 2038, 4018),
(79, 2039, 4018),
(80, 2040, 4018),
(81, 2001, 4018),
(82, 2002, 4018),
(83, 2003, 4023),
(84, 2004, 4024),
(85, 2005, 4025),
(86, 2006, 4025),
(87, 2007, 4025),
(88, 2008, 4028),
(89, 2009, 4028),
(90, 2010, 4028),
(91, 2011, 4031),
(92, 2012, 4032),
(93, 2013, 4032),
(94, 2014, 4032),
(95, 2015, 4032),
(96, 2016, 4036),
(97, 2017, 4037),
(98, 2018, 4038),
(99, 2019, 4039),
(100, 2020, 4040),
(101, 2021, 4041),
(102, 2022, 4041),
(103, 2023, 4041),
(104, 2024, 4041),
(105, 2025, 4045),
(106, 2026, 4046),
(107, 2027, 4047),
(108, 2028, 4048),
(109, 2029, 4049),
(110, 2030, 4050),
(111, 2031, 4050),
(112, 2032, 4050),
(113, 2033, 4053),
(114, 2034, 4054),
(115, 2035, 4055),
(116, 2036, 4055),
(117, 2037, 4055),
(118, 2038, 4055),
(119, 2039, 4055),
(120, 2040, 4060);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `cedulavendedor` int(11) NOT NULL,
  `nombrevendedor` varchar(40) NOT NULL,
  `fechanacimientovendedor` date NOT NULL,
  `ciudadnacimientovendedor` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`cedulavendedor`, `nombrevendedor`, `fechanacimientovendedor`, `ciudadnacimientovendedor`) VALUES
(3001, 'Andrés López', '1980-02-15', 'Bogotá'),
(3002, 'Beatriz Sánchez', '1985-06-22', 'Medellín'),
(3003, 'Carlos Herrera', '1990-09-12', 'Cali'),
(3004, 'Diana Gómez', '1983-04-08', 'Barranquilla'),
(3005, 'Esteban Ríos', '1978-11-25', 'Cartagena'),
(3006, 'Fernanda Castro', '1992-07-19', 'Bucaramanga'),
(3007, 'Gustavo Ramírez', '1987-05-30', 'Pereira'),
(3008, 'Hilda Vargas', '1995-03-10', 'Manizales'),
(3009, 'Iván Gutiérrez', '1981-08-27', 'Santa Marta'),
(3010, 'Juliana Méndez', '1989-12-05', 'Cúcuta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idventa` int(11) NOT NULL,
  `fechaventa` date NOT NULL,
  `ciudadventa` varchar(40) NOT NULL,
  `cedulavendedor` int(11) DEFAULT NULL,
  `cedulacliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idventa`, `fechaventa`, `ciudadventa`, `cedulavendedor`, `cedulacliente`) VALUES
(4001, '2024-01-05', 'Bogotá', 3001, NULL),
(4002, '2024-01-10', 'Medellín', 3002, 2002),
(4003, '2024-01-15', 'Cali', 3003, 2003),
(4004, '2024-01-20', 'Barranquilla', 3004, 2004),
(4005, '2024-01-25', 'Cartagena', 3005, 2005),
(4006, '2024-01-30', 'Bucaramanga', 3006, 2006),
(4007, '2024-02-05', 'Pereira', 3007, 2007),
(4008, '2024-02-10', 'Manizales', 3008, 2008),
(4009, '2024-02-15', 'Santa Marta', 3009, 2009),
(4010, '2024-02-20', 'Cúcuta', 3010, 2010),
(4011, '2024-02-25', 'Bogotá', 3001, 2011),
(4012, '2024-03-01', 'Medellín', NULL, 2012),
(4013, '2024-03-05', 'Cali', 3003, 2013),
(4014, '2024-03-10', 'Barranquilla', 3004, 2014),
(4015, '2024-03-15', 'Cartagena', 3005, 2015),
(4016, '2024-03-20', 'Bucaramanga', 3006, 2016),
(4017, '2024-03-25', 'Pereira', 3007, NULL),
(4018, '2024-03-30', 'Manizales', 3008, 2018),
(4019, '2024-04-05', 'Santa Marta', 3009, 2019),
(4020, '2024-04-10', 'Cúcuta', 3010, 2020),
(4021, '2024-04-15', 'Bogotá', 3001, 2021),
(4022, '2024-04-20', 'Medellín', 3002, 2022),
(4023, '2024-04-25', 'Cali', 3003, 2023),
(4024, '2024-04-30', 'Barranquilla', 3004, NULL),
(4025, '2024-05-05', 'Cartagena', 3005, 2025),
(4026, '2024-05-10', 'Bucaramanga', 3006, NULL),
(4027, '2024-05-15', 'Pereira', 3007, NULL),
(4028, '2024-05-20', 'Manizales', 3008, NULL),
(4029, '2024-05-25', 'Santa Marta', 3009, 2029),
(4030, '2024-05-30', 'Cúcuta', 3010, 2030),
(4031, '2024-06-05', 'Bogotá', NULL, 2001),
(4032, '2024-06-10', 'Medellín', 3002, 2002),
(4033, '2024-06-15', 'Cali', 3003, 2003),
(4034, '2024-06-20', 'Barranquilla', 3004, 2004),
(4035, '2024-06-25', 'Cartagena', 3005, 2005),
(4036, '2024-06-30', 'Bucaramanga', 3006, 2006),
(4037, '2024-07-05', 'Pereira', 3007, 2007),
(4038, '2024-07-10', 'Manizales', 3008, 2008),
(4039, '2024-07-15', 'Santa Marta', NULL, 2009),
(4040, '2024-07-20', 'Cúcuta', 3010, 2010),
(4041, '2024-07-25', 'Bogotá', 3001, 2011),
(4042, '2024-07-30', 'Medellín', NULL, 2012),
(4043, '2024-08-05', 'Cali', 3003, 2013),
(4044, '2024-08-10', 'Barranquilla', 3004, NULL),
(4045, '2024-08-15', 'Cartagena', 3005, 2015),
(4046, '2024-08-20', 'Bucaramanga', 3006, 2016),
(4047, '2024-08-25', 'Pereira', 3007, 2017),
(4048, '2024-08-30', 'Manizales', 3008, 2018),
(4049, '2024-09-05', 'Santa Marta', 3009, 2019),
(4050, '2024-09-10', 'Cúcuta', 3010, 2020),
(4051, '2024-09-15', 'Bogotá', 3001, 2021),
(4052, '2024-09-20', 'Medellín', 3002, 2022),
(4053, '2024-09-25', 'Cali', 3003, 2023),
(4054, '2024-09-30', 'Barranquilla', NULL, 2024),
(4055, '2024-10-05', 'Cartagena', 3005, 2025),
(4056, '2024-10-10', 'Bucaramanga', 3006, 2026),
(4057, '2024-10-15', 'Pereira', 3007, NULL),
(4058, '2024-10-20', 'Manizales', 3008, 2028),
(4059, '2024-10-25', 'Santa Marta', 3009, 2029),
(4060, '2024-10-30', 'Cúcuta', 3010, 2030);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`cedulaautor`);

--
-- Indices de la tabla `autoreslibros`
--
ALTER TABLE `autoreslibros`
  ADD PRIMARY KEY (`idautoreslibros`),
  ADD KEY `isbn` (`isbn`),
  ADD KEY `cedulaautor` (`cedulaautor`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cedulacliente`);

--
-- Indices de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  ADD PRIMARY KEY (`ideditorial`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `ideditorial` (`ideditorial`);

--
-- Indices de la tabla `librosventas`
--
ALTER TABLE `librosventas`
  ADD PRIMARY KEY (`idlibrosventas`),
  ADD KEY `isbn` (`isbn`),
  ADD KEY `ideventa` (`ideventa`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`cedulavendedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idventa`),
  ADD KEY `cedulavendedor` (`cedulavendedor`),
  ADD KEY `cedulacliente` (`cedulacliente`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autoreslibros`
--
ALTER TABLE `autoreslibros`
  ADD CONSTRAINT `autoreslibros_ibfk_1` FOREIGN KEY (`cedulaautor`) REFERENCES `autores` (`cedulaautor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `autoreslibros_ibfk_2` FOREIGN KEY (`isbn`) REFERENCES `libros` (`isbn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`ideditorial`) REFERENCES `editoriales` (`ideditorial`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `librosventas`
--
ALTER TABLE `librosventas`
  ADD CONSTRAINT `librosventas_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `libros` (`isbn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `librosventas_ibfk_2` FOREIGN KEY (`ideventa`) REFERENCES `ventas` (`idventa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cedulacliente`) REFERENCES `clientes` (`cedulacliente`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`cedulavendedor`) REFERENCES `vendedores` (`cedulavendedor`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
