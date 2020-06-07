-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2020 a las 05:45:42
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tomadesiciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id_Actividad` int(11) NOT NULL,
  `Nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_grupo`
--

CREATE TABLE `actividad_grupo` (
  `id_Grupo` int(11) NOT NULL,
  `id_Actividad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_Cliente` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Paterno` varchar(50) DEFAULT NULL,
  `Materno` varchar(50) DEFAULT NULL,
  `Genero` varchar(50) DEFAULT NULL,
  `FechaNacimiento` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Contrasena` varchar(50) DEFAULT NULL,
  `id_Test_Personalidad` int(11) NOT NULL,
  `id_Test_Actitudes` int(11) NOT NULL,
  `id_Experiencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_grupo`
--

CREATE TABLE `cliente_grupo` (
  `id_Cliente` int(11) NOT NULL,
  `id_Grupo` int(11) NOT NULL,
  `Rol_Equipo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `id_Experiencia` int(11) NOT NULL,
  `Nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_trabajo`
--

CREATE TABLE `grupo_trabajo` (
  `id_Grupo` int(11) NOT NULL,
  `Nombre` varchar(250) NOT NULL,
  `numero_Integrantes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencias`
--

CREATE TABLE `sugerencias` (
  `id_Sugerencias` int(11) NOT NULL,
  `Nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencias_grupo`
--

CREATE TABLE `sugerencias_grupo` (
  `id_Grupo` int(11) NOT NULL,
  `id_Sugerencias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test_actitudes`
--

CREATE TABLE `test_actitudes` (
  `id_Test_Actitudes` int(11) NOT NULL,
  `pregunta1` varchar(250) DEFAULT NULL,
  `pregunta2` varchar(250) DEFAULT NULL,
  `pregunta3` varchar(250) DEFAULT NULL,
  `pregunta4` varchar(250) DEFAULT NULL,
  `pregunta5` varchar(250) DEFAULT NULL,
  `pregunta6` varchar(250) DEFAULT NULL,
  `pregunta7` varchar(250) DEFAULT NULL,
  `pregunta8` varchar(250) DEFAULT NULL,
  `pregunta9` varchar(250) DEFAULT NULL,
  `pregunta10` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test_grupo`
--

CREATE TABLE `test_grupo` (
  `id_Grupo` int(11) NOT NULL,
  `id_Test_Rendimiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test_personalidad`
--

CREATE TABLE `test_personalidad` (
  `id_Test_Personalidad` int(11) NOT NULL,
  `pregunta1` varchar(250) DEFAULT NULL,
  `pregunta2` varchar(250) DEFAULT NULL,
  `pregunta3` varchar(250) DEFAULT NULL,
  `pregunta4` varchar(250) DEFAULT NULL,
  `pregunta5` varchar(250) DEFAULT NULL,
  `pregunta6` varchar(250) DEFAULT NULL,
  `pregunta7` varchar(250) DEFAULT NULL,
  `pregunta8` varchar(250) DEFAULT NULL,
  `pregunta9` varchar(250) DEFAULT NULL,
  `pregunta10` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test_rendimiento`
--

CREATE TABLE `test_rendimiento` (
  `id_Test_Rendimiento` int(11) NOT NULL,
  `pregunta1` varchar(250) DEFAULT NULL,
  `pregunta2` varchar(250) DEFAULT NULL,
  `pregunta3` varchar(250) DEFAULT NULL,
  `pregunta4` varchar(250) DEFAULT NULL,
  `pregunta5` varchar(250) DEFAULT NULL,
  `pregunta6` varchar(250) DEFAULT NULL,
  `pregunta7` varchar(250) DEFAULT NULL,
  `pregunta8` varchar(250) DEFAULT NULL,
  `pregunta9` varchar(250) DEFAULT NULL,
  `pregunta10` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id_Actividad`);

--
-- Indices de la tabla `actividad_grupo`
--
ALTER TABLE `actividad_grupo`
  ADD KEY `id_Actividad` (`id_Actividad`),
  ADD KEY `id_Grupo` (`id_Grupo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_Cliente`),
  ADD KEY `id_Test_Personalidad` (`id_Test_Personalidad`),
  ADD KEY `id_Test_Actitudes` (`id_Test_Actitudes`),
  ADD KEY `id_Experiencia` (`id_Experiencia`);

--
-- Indices de la tabla `cliente_grupo`
--
ALTER TABLE `cliente_grupo`
  ADD KEY `id_Cliente` (`id_Cliente`),
  ADD KEY `id_Grupo` (`id_Grupo`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id_Experiencia`);

--
-- Indices de la tabla `grupo_trabajo`
--
ALTER TABLE `grupo_trabajo`
  ADD PRIMARY KEY (`id_Grupo`);

--
-- Indices de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  ADD PRIMARY KEY (`id_Sugerencias`);

--
-- Indices de la tabla `sugerencias_grupo`
--
ALTER TABLE `sugerencias_grupo`
  ADD KEY `id_Sugerencias` (`id_Sugerencias`),
  ADD KEY `id_Grupo` (`id_Grupo`);

--
-- Indices de la tabla `test_actitudes`
--
ALTER TABLE `test_actitudes`
  ADD PRIMARY KEY (`id_Test_Actitudes`);

--
-- Indices de la tabla `test_grupo`
--
ALTER TABLE `test_grupo`
  ADD KEY `id_Test_Rendimiento` (`id_Test_Rendimiento`),
  ADD KEY `id_Grupo` (`id_Grupo`);

--
-- Indices de la tabla `test_personalidad`
--
ALTER TABLE `test_personalidad`
  ADD PRIMARY KEY (`id_Test_Personalidad`);

--
-- Indices de la tabla `test_rendimiento`
--
ALTER TABLE `test_rendimiento`
  ADD PRIMARY KEY (`id_Test_Rendimiento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id_Actividad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_Cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id_Experiencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grupo_trabajo`
--
ALTER TABLE `grupo_trabajo`
  MODIFY `id_Grupo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  MODIFY `id_Sugerencias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `test_actitudes`
--
ALTER TABLE `test_actitudes`
  MODIFY `id_Test_Actitudes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `test_personalidad`
--
ALTER TABLE `test_personalidad`
  MODIFY `id_Test_Personalidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `test_rendimiento`
--
ALTER TABLE `test_rendimiento`
  MODIFY `id_Test_Rendimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad_grupo`
--
ALTER TABLE `actividad_grupo`
  ADD CONSTRAINT `actividad_grupo_ibfk_1` FOREIGN KEY (`id_Actividad`) REFERENCES `actividades` (`id_Actividad`),
  ADD CONSTRAINT `actividad_grupo_ibfk_2` FOREIGN KEY (`id_Grupo`) REFERENCES `grupo_trabajo` (`id_Grupo`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_Test_Personalidad`) REFERENCES `test_personalidad` (`id_Test_Personalidad`),
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`id_Test_Actitudes`) REFERENCES `test_actitudes` (`id_Test_Actitudes`),
  ADD CONSTRAINT `cliente_ibfk_3` FOREIGN KEY (`id_Experiencia`) REFERENCES `experiencia` (`id_Experiencia`);

--
-- Filtros para la tabla `cliente_grupo`
--
ALTER TABLE `cliente_grupo`
  ADD CONSTRAINT `cliente_grupo_ibfk_1` FOREIGN KEY (`id_Cliente`) REFERENCES `cliente` (`id_Cliente`),
  ADD CONSTRAINT `cliente_grupo_ibfk_2` FOREIGN KEY (`id_Grupo`) REFERENCES `grupo_trabajo` (`id_Grupo`);

--
-- Filtros para la tabla `sugerencias_grupo`
--
ALTER TABLE `sugerencias_grupo`
  ADD CONSTRAINT `sugerencias_grupo_ibfk_1` FOREIGN KEY (`id_Sugerencias`) REFERENCES `sugerencias` (`id_Sugerencias`),
  ADD CONSTRAINT `sugerencias_grupo_ibfk_2` FOREIGN KEY (`id_Grupo`) REFERENCES `grupo_trabajo` (`id_Grupo`);

--
-- Filtros para la tabla `test_grupo`
--
ALTER TABLE `test_grupo`
  ADD CONSTRAINT `test_grupo_ibfk_1` FOREIGN KEY (`id_Test_Rendimiento`) REFERENCES `test_rendimiento` (`id_Test_Rendimiento`),
  ADD CONSTRAINT `test_grupo_ibfk_2` FOREIGN KEY (`id_Grupo`) REFERENCES `grupo_trabajo` (`id_Grupo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
