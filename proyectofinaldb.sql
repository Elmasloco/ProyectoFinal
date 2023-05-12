-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 12-05-2023 a las 01:59:14
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectofinaldb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `apellido` varchar(25) DEFAULT NULL,
  `cargo` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `nombre`, `apellido`, `cargo`) VALUES
(11, 'Romoncio', 'PatiÃ±o', 'Organizador principal'),
(12, 'Natalia', 'Paris', 'Presentador'),
(13, 'Tatiana', 'Coy', 'Presentador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `nombres` varchar(25) DEFAULT NULL,
  `apellidos` varchar(25) DEFAULT NULL,
  `evento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `nombres`, `apellidos`, `evento`) VALUES
(1, 'Don Marcos', 'Marcos', 'Actividad \"Sembrando miarbolito\"');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `edad` int(11) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `documento` int(11) NOT NULL,
  `tipoDoc` varchar(15) NOT NULL,
  `Rol` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `nombre`, `apellido`, `edad`, `genero`, `documento`, `tipoDoc`, `Rol`) VALUES
(1, 'Samuel', 'Tarazona', 19, 'Masculino', 12312312, 'cc', 'Admin'),
(2, 'Samuel', 'Tarazona', 15, 'masculino', 1478546521, 'T.I.', 'Admin'),
(3, 'Dani', 'Tarazona', 12, 'masculino', 155845654, 'T.I.', 'User'),
(5, 'koki', 'Tarazona', 60, 'masculino', 58484515, 'C.C.', 'User'),
(6, 'Sandra', 'Arciniegas', 49, 'femenino', 1258895, 'C.C.', 'Admin'),
(7, 'Sandra', 'Arciniegas', 19, 'femenino', 1478546521, 'C.C.', 'User'),
(8, 'Dani', 'Tarazona', 7, 'masculino', 48845584, 'T.I.', 'User'),
(9, 'Nico', 'Tarazona', 26, 'masculino', 4866248, 'C.C.', 'User'),
(10, 'Maria', 'Martinez', 22, 'femenino', 5886664, 'C.C.', 'User'),
(11, 'Samuel Leonardo', 'Tarazona Arciniegas', 22, 'masculino', 12443443, 'C.C.', 'User'),
(19, 'Natalia', 'Paris', 58, 'femenino', 87432321, 'C.C.', 'Admin'),
(20, 'Camila', 'Aponte', 19, 'femenino', 34252111, 'T.I.', 'Admin'),
(21, 'Larry', 'Saloca', 19, 'masculino', 253141, 'Otro', 'Admin'),
(22, 'Marina', 'Martin', 30, 'femenino', 58840668, 'Otro', 'Admin'),
(23, 'Bob', 'PatiÃ±o', 25, 'masculino', 4788511, 'Otro', 'Admin'),
(24, 'Paola', 'Santana', 20, 'femenino', 998741, 'C.C.', 'Admin'),
(25, 'Jack', 'Sparrow', 100, 'masculino', 9987100, 'Otro', 'Admin'),
(27, 'Natalia', 'Paris', 50, 'femenino', 88555, 'C.C.', 'Admin'),
(28, 'Sara', 'PatiÃ±o', 19, 'femenino', 69874, 'T.I.', 'User'),
(29, 'Marcos', 'Alonso', 31, 'masculino', 1250041, 'C.C.', 'User'),
(30, 'Mamma', 'Mia', 25, 'femenino', 10100048, 'T.I.', 'User'),
(31, 'Sara', 'Coy', 21, 'femenino', 198481, 'C.C.', 'User'),
(33, 'Cristiano', 'Ronaldo', 38, 'masculino', 55534332, 'C.C.', 'User'),
(34, 'Pedro', 'Carrascal', 16, 'masculino', 1234545, 'T.I.', 'User'),
(35, 'Marina', 'Garcia', 19, 'femenino', 4432111, 'C.C.', 'User'),
(36, 'Peggy', 'Ramirez', 25, 'femenino', 98166373, 'Otro', 'User'),
(37, 'Don Marcos', 'Marcos', 55, 'masculino', 23555, 'Otro', 'User');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
