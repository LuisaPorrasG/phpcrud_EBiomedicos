-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-02-2024 a las 06:25:35
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
-- Base de datos: `equipos_biomedicos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_biomedico`
--

CREATE TABLE `equipo_biomedico` (
  `serie` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `marca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `equipo_biomedico`
--

INSERT INTO `equipo_biomedico` (`serie`, `nombre`, `modelo`, `estado`, `marca`) VALUES
('132', 'Bascula', 'LVU', 1, 'Mindray'),
('20193k', 'monitor signos', 'hk4', 1, 'simens'),
('2019483', 'desfibrilador', 'M11', 1, 'drager'),
('23480', 'Ecografo', 'das', 1, 'mindray'),
('456738', 'Tensiometro', 'lOw', 1, 'TENSER'),
('asdsda24', 'Termometro', 'laser', 1, 'Philips');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingeniero_biomedico`
--

CREATE TABLE `ingeniero_biomedico` (
  `documentoB` int(20) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `ingeniero_biomedico`
--

INSERT INTO `ingeniero_biomedico` (`documentoB`, `nombre`) VALUES
(344902, 'Andres Perez'),
(13475839, 'Laura'),
(100085565, 'Luisa Porras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `serie` varchar(20) NOT NULL,
  `cod_servicio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefe`
--

CREATE TABLE `jefe` (
  `documento_jefe` int(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `jefe`
--

INSERT INTO `jefe` (`documento_jefe`, `nombre`, `apellido`) VALUES
(324729, 'Jose', 'Lopez'),
(495830, 'Laura', 'Osorio'),
(8659404, 'Andres', 'Rojas'),
(10234593, 'Claudia', 'Salcedo'),
(83745834, 'Jorge', 'Posada'),
(342879832, 'Alejandra', 'Valencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento_prev`
--

CREATE TABLE `mantenimiento_prev` (
  `documentoB` int(20) NOT NULL,
  `cod_repuesto` int(20) NOT NULL,
  `serie` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `mantenimiento_prev`
--

INSERT INTO `mantenimiento_prev` (`documentoB`, `cod_repuesto`, `serie`, `fecha`, `hora`, `descripcion`) VALUES
(100085565, 98, 'asdsda24', '2023-08-03', '10:10', 'Se realiza mantenimi'),
(100085565, 98, 'asdsda24', '2023-08-03', '10:10', 'Se realiza mantenimi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `record`
--

CREATE TABLE `record` (
  `documento_jefe` int(20) NOT NULL,
  `cod_servicio` varchar(20) NOT NULL,
  `f_inicio` date NOT NULL,
  `f_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `record`
--

INSERT INTO `record` (`documento_jefe`, `cod_servicio`, `f_inicio`, `f_fin`) VALUES
(342879832, '001', '2023-08-02', '2023-08-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repuestos`
--

CREATE TABLE `repuestos` (
  `marca` varchar(20) NOT NULL,
  `cod_repuesto` int(20) NOT NULL,
  `modelo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `repuestos`
--

INSERT INTO `repuestos` (`marca`, `cod_repuesto`, `modelo`) VALUES
('Steris', 12, 'RED09'),
('Molte', 45, 'MotorDC'),
('mindray', 56, 'brazalete pediatrico'),
('drager', 98, 'm12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_hospitalario`
--

CREATE TABLE `servicio_hospitalario` (
  `nombre` varchar(20) NOT NULL,
  `cod_servicio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `servicio_hospitalario`
--

INSERT INTO `servicio_hospitalario` (`nombre`, `cod_servicio`) VALUES
('Pediatria', '001'),
('UCI', '002'),
('Urgencias', '003'),
('Intermedio', '008');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipo_biomedico`
--
ALTER TABLE `equipo_biomedico`
  ADD PRIMARY KEY (`serie`);

--
-- Indices de la tabla `ingeniero_biomedico`
--
ALTER TABLE `ingeniero_biomedico`
  ADD PRIMARY KEY (`documentoB`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD KEY `serie` (`serie`),
  ADD KEY `cod_servicio` (`cod_servicio`);

--
-- Indices de la tabla `jefe`
--
ALTER TABLE `jefe`
  ADD PRIMARY KEY (`documento_jefe`);

--
-- Indices de la tabla `mantenimiento_prev`
--
ALTER TABLE `mantenimiento_prev`
  ADD KEY `documentoB` (`documentoB`),
  ADD KEY `cod_repuesto` (`cod_repuesto`),
  ADD KEY `serie` (`serie`);

--
-- Indices de la tabla `record`
--
ALTER TABLE `record`
  ADD KEY `documento` (`documento_jefe`),
  ADD KEY `cod_servicio` (`cod_servicio`),
  ADD KEY `documento_jefe` (`documento_jefe`);

--
-- Indices de la tabla `repuestos`
--
ALTER TABLE `repuestos`
  ADD PRIMARY KEY (`cod_repuesto`);

--
-- Indices de la tabla `servicio_hospitalario`
--
ALTER TABLE `servicio_hospitalario`
  ADD PRIMARY KEY (`cod_servicio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`serie`) REFERENCES `equipo_biomedico` (`serie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`cod_servicio`) REFERENCES `servicio_hospitalario` (`cod_servicio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mantenimiento_prev`
--
ALTER TABLE `mantenimiento_prev`
  ADD CONSTRAINT `mantenimiento_prev_ibfk_1` FOREIGN KEY (`documentoB`) REFERENCES `ingeniero_biomedico` (`documentoB`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mantenimiento_prev_ibfk_2` FOREIGN KEY (`cod_repuesto`) REFERENCES `repuestos` (`cod_repuesto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mantenimiento_prev_ibfk_3` FOREIGN KEY (`serie`) REFERENCES `equipo_biomedico` (`serie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`documento_jefe`) REFERENCES `jefe` (`documento_jefe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`cod_servicio`) REFERENCES `servicio_hospitalario` (`cod_servicio`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
