-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.28-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para uninventory
CREATE DATABASE IF NOT EXISTS `uninventory` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `uninventory`;

-- Volcando estructura para tabla uninventory.categorías
CREATE TABLE IF NOT EXISTS `categorías` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla uninventory.categorías: ~3 rows (aproximadamente)
INSERT INTO `categorías` (`id_categoria`, `nombre_categoria`) VALUES
	(1, 'Computadoras'),
	(2, 'Proyectores'),
	(3, 'Impresoras');

-- Volcando estructura para tabla uninventory.equipos
CREATE TABLE IF NOT EXISTS `equipos` (
  `id_equipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_equipo` varchar(100) NOT NULL,
  `serial` varchar(15) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `estado` enum('disponible','en préstamo','en reparación','retrasado') DEFAULT 'disponible',
  `ubicación` varchar(100) DEFAULT NULL,
  `fecha_ingreso` timestamp NULL DEFAULT current_timestamp(),
  `descripcion` varchar(50) NOT NULL,
  `imagen` longtext DEFAULT NULL,
  PRIMARY KEY (`id_equipo`),
  UNIQUE KEY `Índice 2` (`serial`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla uninventory.equipos: ~25 rows (aproximadamente)
INSERT INTO `equipos` (`id_equipo`, `nombre_equipo`, `serial`, `tipo`, `marca`, `modelo`, `estado`, `ubicación`, `fecha_ingreso`, `descripcion`, `imagen`) VALUES
	(1, 'Laptop Delag', '1a', 'Computadora', 'Dell', 'XPS 13as', 'disponible', 'Laboratorio A', '2024-01-10 05:00:00', 'Lorem ipsum dolor sit amet, consectetuer adipiscin', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(2, 'Proyector Epson', '2a', 'Proyector', 'Epson', 'EB-X41', 'disponible', 'Sala de Conferencias', '2024-02-15 05:00:00', 'Lorem ipsum dolor sit amet, consectetuer adipiscin', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(3, 'Impresora HP', '3a', 'Impresora', 'HP', 'LaserJet Pro', 'disponible', 'Oficina Administrativa', '2024-03-20 05:00:00', 'Lorem ipsum dolor sit amet, consectetuer adipiscin', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(4, 'Laptop', '4a', 'Electrónica', 'Dell', 'XPS 13', 'disponible', 'Sala 101', '2024-09-11 16:58:03', 'Lorem ipsum dolor sit amet, consectetuer adipiscin', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(5, 'Pc', '5a', 'a', 'a', 'a', 'disponible', 'a', '2024-09-11 16:58:58', 'Lorem ipsum dolor sit amet, consectetuer adipiscin', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(6, 'asd', '6a', 'asd', 'asd', 'asd', 'disponible', 'asd', '2024-09-11 16:59:29', 'Lorem ipsum dolor sit amet, consectetuer adipiscin', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(7, 'ff', '7a', 'ff', 'ff', 'f', 'disponible', 'ff', '2024-09-11 16:59:56', 'Lorem ipsum dolor sit amet, consectetuer adipiscin', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(8, 'asd', '8a', 'asd', 'asd', 'asd', 'disponible', 'asd', '2024-09-11 17:01:18', 'Lorem ipsum dolor sit amet, consectetuer adipiscin', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(9, 'asdasd', '9a', 'fe', 'fe', 'fe', 'disponible', 'fe', '2024-09-11 17:45:52', 'Lorem ipsum dolor sit amet, consectetuer adipiscin', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(10, 'asdasd', '01a', 'ss', 'ss', 'ss', 'disponible', 'ss', '2024-09-11 17:46:51', 'Lorem ipsum dolor sit amet, consectetuer adipiscin', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(11, 'Laptop Della', '02a', 'a', 'a', 'a', 'disponible', 'a', '2024-09-11 17:47:31', 'Lorem ipsum dolor sit amet, consectetuer adipiscin', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(12, 'asd', '03a', 'asda', 'a', 'a', 'disponible', 'a', '2024-09-11 17:49:19', '', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(13, 'f', '04a', 'f', 'f', 'e', 'disponible', '3', '2024-09-11 17:50:30', '', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(14, 'Laptop Dell XPS', '05a', 'Portátil', 'Dell', 'XPS 13', 'disponible', 'Laboratorio A', '2023-09-02 05:00:00', '', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(15, 'Proyector BenQ', '06a', 'Proyector', 'BenQ', 'MS527', 'disponible', 'Sala de Conferencias', '2023-08-16 05:00:00', '', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(16, 'Multímetro Uni-T', 'a07', 'Instrumento', 'Uni-T', 'UT61E', 'disponible', 'Laboratorio B', '2023-07-26 05:00:00', '', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(17, 'Osciloscopio Rigol', 'a08', 'Instrumento', 'Rigol', 'DS1054Z', 'disponible', 'Laboratorio C', '2023-09-11 05:00:00', '', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(18, 'Router TP-Link', 'a09', 'Red', 'TP-Link', 'Archer C7', 'disponible', 'Laboratorio Redes', '2023-06-19 05:00:00', '', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(19, 'Impresora Brother', '0a1', 'Impresora', 'Brother', 'HL-L2350DW', 'disponible', 'Oficina Principal', '2023-05-13 05:00:00', '', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(20, 'Monitor LG', '0a2', 'Monitor', 'LG', '27UL500-W', 'disponible', 'Laboratorio D', '2023-04-23 05:00:00', '', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(21, 'Servidor HPE ProLiant', '0a3', 'Servidor', 'HPE', 'DL380', 'disponible', 'Data Center', '2023-08-02 05:00:00', 'descripcion', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(22, 'campo1', 'a1as', 'comp', 'dell', 'ss', 'disponible', 'laboratorio caja 2', '2024-09-28 17:49:42', '', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(23, 'try', 'a22', 'comp', 'comp', 'comp', 'disponible', 'caja 3', '2024-09-28 17:52:27', '', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(24, 'Protoboard', '1a31', 'Pc', 'Dell', 'ax4', 'disponible', 'Caja1', '2024-10-22 03:35:09', '', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(36, 'img', 'img', 'img', 'img', 'img', 'disponible', 'a', '2024-10-22 20:34:17', 'awo', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(37, 'asd', 'asd', 'asd', 'asd', 'asd', 'disponible', 'ad', '2024-10-22 21:10:24', 'asd', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(38, 'img', '1223', 'asd', 'asd', 'asd', 'disponible', 'ff', '2024-10-22 21:31:04', 'producto para aplicar tales sque tin', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(39, 'pruebaimg', 'pruebaimg', 'pruebaimg', 'pruebaimg', 'pruebaimg', 'disponible', 'pruebaimg', '2024-10-24 18:17:17', 'pruebaimg', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729630819/image_2024-10-22_160020237_qdswin.png'),
	(40, 'imgpru', 'imgpru', 'imgpru', 'imgpru', 'imgpru', 'disponible', 'imgpru', '2024-11-02 00:40:20', 'imgpru', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1730507997/GYw8am3WAAkYOj5_zkve8d.jpg');

-- Volcando estructura para tabla uninventory.historialpréstamos
CREATE TABLE IF NOT EXISTS `historialpréstamos` (
  `id_historial` int(11) NOT NULL AUTO_INCREMENT,
  `id_prestamo` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_equipo` int(11) DEFAULT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_historial`),
  KEY `id_prestamo` (`id_prestamo`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_equipo` (`id_equipo`),
  KEY `fk_serial_historial` (`serial`),
  CONSTRAINT `fk_serial_historial` FOREIGN KEY (`serial`) REFERENCES `equipos` (`serial`),
  CONSTRAINT `historialpréstamos_ibfk_1` FOREIGN KEY (`id_prestamo`) REFERENCES `préstamos` (`id_prestamo`),
  CONSTRAINT `historialpréstamos_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `historialpréstamos_ibfk_3` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla uninventory.historialpréstamos: ~11 rows (aproximadamente)
INSERT INTO `historialpréstamos` (`id_historial`, `id_prestamo`, `id_usuario`, `id_equipo`, `fecha_prestamo`, `fecha_devolucion`, `serial`) VALUES
	(14, 30, 2, 1, '2024-10-07', '2024-10-07', '1a'),
	(15, 33, 2, 2, '2024-10-09', '2024-10-11', '2a'),
	(16, 34, 2, 7, '2024-10-09', '2024-10-10', '7a'),
	(17, 35, 2, 9, '2024-10-09', '2024-10-14', '9a'),
	(18, 36, 2, 4, '2024-10-09', '2024-10-09', '4a'),
	(19, 37, 2, 3, '2024-10-09', '2024-10-09', '3a'),
	(20, 38, 2, 1, '2024-10-14', '2024-10-15', '1a'),
	(21, 39, 2, 7, '2024-10-14', '2024-10-17', '7a'),
	(22, 40, 2, 1, '2024-10-15', '2024-10-15', '1a'),
	(23, 41, 2, 1, '2024-10-15', '2024-10-15', '1a'),
	(24, 42, 2, 1, '2024-10-15', '2024-10-17', '1a'),
	(25, 43, 2, 2, '2024-10-15', '2024-10-17', '2a'),
	(26, 44, 2, 3, '2024-10-15', '2024-10-19', '3a'),
	(27, 45, 2, 1, '2024-10-24', '2024-10-25', '1a'),
	(28, 46, 2, 2, '2024-11-05', '2024-11-06', '2a'),
	(29, 47, 2, 1, '2024-11-05', '2024-11-06', '1a');

-- Volcando estructura para tabla uninventory.incidencias
CREATE TABLE IF NOT EXISTS `incidencias` (
  `id_incidencia` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) DEFAULT NULL,
  `descripcion` text NOT NULL,
  `fecha_reporte` date NOT NULL,
  `estado_incidencia` enum('pendiente','en_proceso','resuelto') DEFAULT 'pendiente',
  PRIMARY KEY (`id_incidencia`),
  KEY `id_equipo` (`id_equipo`),
  CONSTRAINT `incidencias_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla uninventory.incidencias: ~2 rows (aproximadamente)
INSERT INTO `incidencias` (`id_incidencia`, `id_equipo`, `descripcion`, `fecha_reporte`, `estado_incidencia`) VALUES
	(1, 3, 'La impresora no enciende.', '2024-06-01', 'pendiente'),
	(2, 2, 'El proyector está en mal estado.', '2024-07-01', 'en_proceso');

-- Volcando estructura para tabla uninventory.notificaciones
CREATE TABLE IF NOT EXISTS `notificaciones` (
  `id_notificacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `mensaje` text NOT NULL,
  `fecha_envio` timestamp NOT NULL DEFAULT current_timestamp(),
  `Columna 5` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_notificacion`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `notificaciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla uninventory.notificaciones: ~1 rows (aproximadamente)

-- Volcando estructura para tabla uninventory.préstamos
CREATE TABLE IF NOT EXISTS `préstamos` (
  `id_prestamo` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_equipo` int(11) DEFAULT NULL,
  `serial` varchar(50) NOT NULL,
  `fecha_prestamo` datetime NOT NULL,
  `fecha_devolucion` datetime DEFAULT NULL,
  `estado_prestamo` enum('en préstamo','en reparación','retrasado','devuelto') DEFAULT 'en préstamo',
  PRIMARY KEY (`id_prestamo`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_equipo` (`id_equipo`),
  KEY `fk_serial_prestamos` (`serial`),
  CONSTRAINT `fk_serial_prestamos` FOREIGN KEY (`serial`) REFERENCES `equipos` (`serial`),
  CONSTRAINT `préstamos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `préstamos_ibfk_2` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla uninventory.préstamos: ~19 rows (aproximadamente)
INSERT INTO `préstamos` (`id_prestamo`, `id_usuario`, `id_equipo`, `serial`, `fecha_prestamo`, `fecha_devolucion`, `estado_prestamo`) VALUES
	(15, 1, 1, '', '2024-09-20 00:00:00', '2024-10-07 00:00:00', 'devuelto'),
	(16, 2, 5, '', '2024-09-20 00:00:00', '2024-10-03 00:00:00', 'devuelto'),
	(17, 2, 1, '', '2024-09-20 00:00:00', '2024-09-25 00:00:00', 'devuelto'),
	(18, 2, 2, '', '2024-09-20 00:00:00', '2024-09-27 00:00:00', 'devuelto'),
	(30, 2, 1, '1a', '2024-10-07 00:00:00', '2024-10-08 00:00:00', 'devuelto'),
	(33, 2, 2, '2a', '2024-10-09 00:00:00', '2024-10-11 00:00:00', 'devuelto'),
	(34, 2, 7, '7a', '2024-11-09 00:00:00', '2024-11-30 00:00:00', 'devuelto'),
	(35, 2, 9, '9a', '2024-10-09 00:00:00', '2024-11-14 00:00:00', 'retrasado'),
	(36, 2, 4, '4a', '2024-11-30 00:00:00', '2024-10-09 00:00:00', 'devuelto'),
	(37, 2, 3, '3a', '2024-10-09 00:00:00', '2024-10-09 00:00:00', 'devuelto'),
	(38, 2, 1, '1a', '2024-10-14 00:00:00', '2024-10-15 00:00:00', 'devuelto'),
	(39, 2, 7, '7a', '2024-11-14 00:00:00', '2024-11-15 00:00:00', 'devuelto'),
	(40, 2, 1, '1a', '2024-10-15 00:00:00', '2024-10-15 00:00:00', 'devuelto'),
	(41, 2, 1, '1a', '2024-10-15 00:00:00', '2024-10-15 00:00:00', 'devuelto'),
	(42, 2, 1, '1a', '2024-10-15 00:00:00', '2024-10-17 00:00:00', 'devuelto'),
	(43, 2, 2, '2a', '2024-10-15 00:00:00', '2024-11-15 00:00:00', 'devuelto'),
	(44, 2, 3, '3a', '2024-10-15 00:00:00', '2024-11-17 00:00:00', 'devuelto'),
	(45, 2, 1, '1a', '2024-11-05 00:00:00', '2024-11-05 09:00:00', 'devuelto'),
	(46, 2, 2, '2a', '2024-11-05 00:00:00', '2024-11-06 00:00:00', 'devuelto'),
	(47, 2, 1, '1a', '2024-11-05 10:45:03', '2024-11-05 10:45:00', 'devuelto');

-- Volcando estructura para tabla uninventory.préstamosinternos
CREATE TABLE IF NOT EXISTS `préstamosinternos` (
  `id_prestamo` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL DEFAULT 0,
  `Nombre` varchar(50) NOT NULL DEFAULT '',
  `Apellido` varchar(50) NOT NULL DEFAULT '',
  `id_equip` int(11) DEFAULT NULL,
  `serial` varchar(50) NOT NULL,
  `fecha_prestamo` datetime NOT NULL,
  `fecha_devolucion` datetime DEFAULT NULL,
  `estado_prestamo` enum('en préstamo','en reparación','retrasado','devuelto') DEFAULT 'en préstamo',
  PRIMARY KEY (`id_prestamo`),
  KEY `FK_préstamosinternos_equipos` (`id_equip`),
  KEY `FK_préstamosinternos_equipos_2` (`serial`),
  CONSTRAINT `FK_préstamosinternos_equipos` FOREIGN KEY (`id_equip`) REFERENCES `equipos` (`id_equipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_préstamosinternos_equipos_2` FOREIGN KEY (`serial`) REFERENCES `equipos` (`serial`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla uninventory.préstamosinternos: ~3 rows (aproximadamente)
INSERT INTO `préstamosinternos` (`id_prestamo`, `id_usuario`, `Nombre`, `Apellido`, `id_equip`, `serial`, `fecha_prestamo`, `fecha_devolucion`, `estado_prestamo`) VALUES
	(19, 22423222, 'Juan felipe ', 'fefe', 15, '06a', '2024-11-05 11:16:35', '2024-11-05 19:30:00', 'devuelto'),
	(20, 22423222, 'Juan felipe ', 'fefe', 14, '05a', '2024-11-05 11:17:30', '2024-11-05 09:40:00', 'devuelto'),
	(21, 22423222, 'Juan felipe ', 'fefe', 11, '02a', '2024-11-05 14:36:54', '2024-11-05 17:20:00', 'devuelto'),
	(22, 22423222, 'Juan felipe ', 'fefe', 14, '05a', '2024-11-07 09:39:40', '2024-11-07 10:30:00', 'devuelto'),
	(23, 22423222, 'fefe', 'maria', 1, '1a', '2024-11-11 10:55:57', '2024-11-11 11:30:00', 'devuelto'),
	(24, 123, 'ana', 'maria', 11, '02a', '2024-11-13 15:06:15', '2024-11-13 17:10:00', 'devuelto');

-- Volcando estructura para tabla uninventory.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `rol` enum('admin','docente','estudiante') NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `imagen` longtext NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `documento` (`documento`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla uninventory.usuarios: ~12 rows (aproximadamente)
INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `tipo_documento`, `documento`, `correo_electronico`, `telefono`, `rol`, `contraseña`, `fecha_registro`, `imagen`) VALUES
	(1, 'Juan', 'peperez', 'CC', '12345678A', 'admin', '555-1234', 'admin', '$2a$12$38CtLUsop4mgijKcO7LFM.WVji88CdEV56AVWvCPA.0KmYsnziT9q', '2024-09-11 04:02:43', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729698957/image_2024-10-23_105558318_caixie.png'),
	(2, 'Cristian', 'Martinez', 'C.C', '3333', 'user1', '3152', 'estudiante', '$2a$12$38CtLUsop4mgijKcO7LFM.WVji88CdEV56AVWvCPA.0KmYsnziT9q', '2024-09-11 04:02:43', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1731612200/GYw8am3WAAkYOj5_zw9bbw.jpg'),
	(3, 'Luis', 'Martínez', 'CC', '11223344C', 'luis.martinez@example.com', '555-9101', 'admin', 'admin789', '2024-09-11 04:02:43', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729698957/image_2024-10-23_105558318_caixie.png'),
	(4, 'Juan', 'Pérez', 'CC', '123456789', 'newuser', '555-1234', 'admin', 'password123', '2024-09-11 05:49:51', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729698957/image_2024-10-23_105558318_caixie.png'),
	(5, 'pepe', 'perez', 'C.C', '1112148344', 'asdsa', '3152773311', 'admin', 'Cristian1514', '2024-09-11 05:51:49', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729698957/image_2024-10-23_105558318_caixie.png'),
	(11, 'asd', 'asd', 'C.C', 'asd', 'asd', '31342', 'admin', '3m5ueARRcXQjjex', '2024-09-24 22:02:32', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729698957/image_2024-10-23_105558318_caixie.png'),
	(12, 'felipe', 'martinez', 'T.I', '12341', 'ffff', '31342', 'estudiante', '3m5ueARRcXQjjex', '2024-09-24 22:03:03', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729698957/image_2024-10-23_105558318_caixie.png'),
	(19, 'Cristian', 'perez', 'CC', '11121433', 'cristian@gmail.com', '3152773311', 'estudiante', 'peperez', '2024-10-07 20:50:31', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729698957/image_2024-10-23_105558318_caixie.png'),
	(24, 'Cristian', 'perez', 'CC', '55123221', 'cristiana@gmail.com', '3152773311', 'estudiante', 'peperez', '2024-10-07 20:52:48', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729698957/image_2024-10-23_105558318_caixie.png'),
	(25, 'pepe', 'perez', 'C.C', '12311123', 'test@gmail.com', '3152773311', 'estudiante', 'tutifruti112', '2024-10-07 20:55:48', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729698957/image_2024-10-23_105558318_caixie.png'),
	(26, 'Brandon', 'vasquez', 'C.C', '3152773312', 'soyunboludo5421', '3152773312', 'estudiante', 'Cristian1514', '2024-10-28 21:28:14', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729698957/image_2024-10-23_105558318_caixie.png'),
	(27, 'pepito', 'perez', 'C.C', '9876543', 'peperez2122@gmail.com', '92832', 'estudiante', 'tutifruti12', '2024-10-28 23:04:50', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729698957/image_2024-10-23_105558318_caixie.png'),
	(28, 'a', 'a', 'C.C', '3321', 'test3@gmail.com', '312322', 'estudiante', 'Tutifruti12', '2024-10-28 23:09:09', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729698957/image_2024-10-23_105558318_caixie.png'),
	(29, 'Cristian Martinez', 'perez', 'C.C', '94326244', 'cristianpepe@gmail.com', '3152774411', 'admin', '$2b$10$5m3qqmZAKzw.5BC1whQHo.EMCMGCPBvUtrjLgviCgPSHQLrVCBGb.', '2024-11-24 18:17:33', 'https://res.cloudinary.com/ds6fxjeak/image/upload/v1729698957/image_2024-10-23_105558318_caixie.png');

-- Volcando estructura para tabla uninventory.usuariostokens
CREATE TABLE IF NOT EXISTS `usuariostokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `correo_electronico` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiration_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla uninventory.usuariostokens: ~5 rows (aproximadamente)
INSERT INTO `usuariostokens` (`id`, `correo_electronico`, `token`, `expiration_time`) VALUES
	(8, 'cristianmartineztez@gmail.com', 'ee0e1b77c9fd46fdecb00c6bd6a7c4ab74d7a33e395d42c8579435a6b5f02e68', '2024-10-14 12:41:23'),
	(9, 'cristianmartineztez@gmail.com', '215e31f23742cd43ab03f559a3dead1b81cbdb9074809f2f0a06d77d4bec4a20', '2024-10-14 12:44:10'),
	(11, 'cristianmartineztez@gmail.com', 'ee1972ad254feabfae106b9eecc422f68953329e4cc065db460603955ffe9f46', '2024-10-14 12:51:16'),
	(12, 'cristianmartineztez@gmail.com', 'a9d03af30833289f67c1c1f96a397a6584debf0b226436839978ad72a10b032a', '2024-10-15 16:55:42'),
	(13, 'cristianmartineztez@gmail.com', 'c832630ccf1edf0a3a336afad70b4b3924bd5087586a8a5df846054cbdc9b13c', '2024-10-15 17:00:29');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
