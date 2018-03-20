-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-03-2018 a las 02:45:43
-- Versión del servidor: 5.6.38
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cosamalo_transp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administracion`
--

CREATE TABLE `administracion` (
  `id` int(11) NOT NULL,
  `representante` varchar(255) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_termino` date NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administracion`
--

INSERT INTO `administracion` (`id`, `representante`, `fecha_inicio`, `fecha_termino`, `created_at`, `updated_at`) VALUES
(1, 'DRA. ADRIANA IMELDA MAASS MICHEL', '2014-01-01', '2017-12-31', NULL, '2017-11-28 10:13:14'),
(2, 'Lic. Raúl Hermida Salto', '2018-01-01', '2021-12-31', '2018-02-06 13:27:56', '2018-02-06 13:27:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administracion_has_fraccion`
--

CREATE TABLE `administracion_has_fraccion` (
  `administracion_id` int(11) NOT NULL,
  `fraccion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administracion_has_fraccion`
--

INSERT INTO `administracion_has_fraccion` (`administracion_id`, `fraccion_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(2, 70),
(2, 71),
(2, 72),
(2, 73),
(2, 74),
(2, 75),
(2, 76),
(2, 77),
(2, 78),
(2, 79),
(2, 80),
(2, 81),
(2, 82),
(2, 83),
(2, 84),
(2, 85),
(2, 86),
(2, 87),
(2, 88),
(2, 89),
(2, 90),
(2, 91),
(2, 92),
(2, 93),
(2, 94),
(2, 95),
(2, 96),
(2, 97),
(2, 98),
(2, 99),
(2, 100),
(2, 101),
(2, 102),
(2, 103),
(2, 104),
(2, 105),
(2, 106),
(2, 107),
(2, 108),
(2, 109),
(2, 110),
(2, 111),
(2, 112),
(2, 113),
(2, 114),
(2, 115),
(2, 116),
(2, 117),
(2, 118),
(2, 119),
(2, 120),
(2, 121),
(2, 122),
(2, 123),
(2, 124),
(2, 125),
(2, 126),
(2, 127),
(2, 128),
(2, 129),
(2, 130),
(2, 131),
(2, 132),
(2, 133),
(2, 134),
(2, 135),
(2, 136),
(2, 137),
(2, 138),
(2, 139);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Administración', 'Departamento de administración', NULL, NULL),
(4, 'Contraloría Interna', 'Contraloría Interna', '2018-02-06 13:26:38', '2018-02-06 13:26:38'),
(6, 'Secretaria', '', '2018-03-13 13:24:21', '2018-03-13 13:24:21'),
(7, 'Unidad de Transparencia', '', '2018-03-13 13:25:03', '2018-03-13 13:25:03'),
(8, 'Limpia Publica', '', '2018-03-13 13:28:32', '2018-03-13 13:28:32'),
(9, 'Comandancia', 'Comandancia municipal', '2018-03-13 13:29:12', '2018-03-13 14:07:09'),
(10, 'Tesorería Municipal', '', '2018-03-13 13:31:28', '2018-03-13 13:31:28'),
(11, 'Obras Publicas', '', '2018-03-13 13:33:10', '2018-03-13 13:33:10'),
(12, 'Regidoria Primera y Quinta', '', '2018-03-13 13:39:21', '2018-03-13 13:39:21'),
(13, 'Recursos Humanos', '', '2018-03-13 13:44:20', '2018-03-13 13:44:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elemento`
--

CREATE TABLE `elemento` (
  `id` int(11) NOT NULL,
  `tipo` enum('enlace','archivo') NOT NULL,
  `enlace` text,
  `descripcion` text NOT NULL,
  `filename` text,
  `mime` varchar(100) DEFAULT NULL,
  `path` text,
  `seccion_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `elemento`
--

INSERT INTO `elemento` (`id`, `tipo`, `enlace`, `descripcion`, `filename`, `mime`, `path`, `seccion_id`, `created_at`, `updated_at`) VALUES
(1, 'archivo', 'uploads/transparencia/5a74e0206f189493b7a4a6ac89c2368c.xlsx', 'ESTADO FINASIERO', '5a74e0206f189493b7a4a6ac89c2368c.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'uploads/transparencia', 92, '2017-11-28 10:42:59', '2017-11-28 10:42:59'),
(2, 'enlace', 'http://52.171.217.230/~cosamalo/', 'REPORTE MENSUAL', NULL, NULL, NULL, 93, '2017-11-28 10:45:33', '2017-11-28 10:45:33'),
(29, 'archivo', 'uploads/transparencia/c5babcb06d3955f63411b13cd41ef989.pdf', 'estado de cambios en la situacion enero2017', 'c5babcb06d3955f63411b13cd41ef989.pdf', 'application/pdf', 'uploads/transparencia', 101, '2017-11-28 15:38:31', '2017-11-28 15:38:31'),
(30, 'archivo', 'uploads/transparencia/d60a36014ac2a757c8c7f06ffabcd9c7.pdf', 'estado de cambios en la situacion financierafebrero2017', 'd60a36014ac2a757c8c7f06ffabcd9c7.pdf', 'application/pdf', 'uploads/transparencia', 101, '2017-11-28 15:40:34', '2017-11-28 15:40:34'),
(31, 'archivo', 'uploads/transparencia/9873c0641d19f7eb6374f9806cc65e2c.pdf', 'estado de cambios en la situación financiera mayo2017', '9873c0641d19f7eb6374f9806cc65e2c.pdf', 'application/pdf', 'uploads/transparencia', 101, '2017-11-28 15:42:54', '2017-11-28 15:42:54'),
(32, 'archivo', 'uploads/transparencia/808bca6c9f39f8b90d19bfc3c50e45e8.pdf', 'estado de cambios en la situacion financiera junio 2017', '808bca6c9f39f8b90d19bfc3c50e45e8.pdf', 'application/pdf', 'uploads/transparencia', 101, '2017-11-28 15:47:01', '2017-11-28 15:47:01'),
(33, 'archivo', 'uploads/transparencia/9075651e9006fbfee084ca5a3c0292b1.pdf', 'estado de cambios en la  situacion financiera julio2017', '9075651e9006fbfee084ca5a3c0292b1.pdf', 'application/pdf', 'uploads/transparencia', 101, '2017-11-28 15:49:15', '2017-11-28 15:49:15'),
(34, 'archivo', 'uploads/transparencia/4e8c913f29049556696da2f5e1fe7c41.pdf', 'estado de cambios en la  situacion financiera agosto2017', '4e8c913f29049556696da2f5e1fe7c41.pdf', 'application/pdf', 'uploads/transparencia', 101, '2017-11-28 15:52:04', '2017-11-28 15:52:04'),
(35, 'archivo', 'uploads/transparencia/ae50a5ea818b43c7e0c2a74a41711e76.pdf', 'estado de cambios en la  situacion financiera septiembre2017', 'ae50a5ea818b43c7e0c2a74a41711e76.pdf', 'application/pdf', 'uploads/transparencia', 101, '2017-11-28 15:54:40', '2017-11-28 15:54:40'),
(152, 'archivo', 'uploads/transparencia/f41779c6f334734548af2366928c892d.pdf', 'LEY DE INGRESOS 2017', 'f41779c6f334734548af2366928c892d.pdf', 'application/pdf', 'uploads/transparencia', 129, '2017-11-29 16:08:32', '2017-11-29 16:08:32'),
(153, 'archivo', 'uploads/transparencia/59a4461104db1fa267b7bf68c9dda8b9.pdf', 'LEY  681', '59a4461104db1fa267b7bf68c9dda8b9.pdf', 'application/pdf', 'uploads/transparencia', 130, '2017-11-29 16:20:15', '2017-11-29 16:20:15'),
(154, 'archivo', 'uploads/transparencia/e462f9a87fd9dba7aec96524e4f10776.pdf', 'LEY  681 INGRESOS 2016', 'e462f9a87fd9dba7aec96524e4f10776.pdf', 'application/pdf', 'uploads/transparencia', 131, '2017-11-29 16:31:33', '2017-11-29 16:31:33'),
(162, 'archivo', 'uploads/transparencia/542c31bc4bac23c67c0dff3f5a54cb3c.pdf', 'estado de variacion en la hacienda publica', '542c31bc4bac23c67c0dff3f5a54cb3c.pdf', 'application/pdf', 'uploads/transparencia', 135, '2017-11-30 13:06:39', '2017-11-30 13:06:39'),
(163, 'archivo', 'uploads/transparencia/a7ce5190f15d7a9e46f1cb02d7d999f5.pdf', 'ESTADO DE CAMBIOS EN LA SITUACION FINANCIERA', 'a7ce5190f15d7a9e46f1cb02d7d999f5.pdf', 'application/pdf', 'uploads/transparencia', 135, '2017-11-30 13:08:39', '2017-11-30 13:08:39'),
(166, 'archivo', 'uploads/transparencia/2bdee5f0176563170d46861b0938cfc5.pdf', 'ESTADO ANALITICO DEL ACTIVO', '2bdee5f0176563170d46861b0938cfc5.pdf', 'application/pdf', 'uploads/transparencia', 135, '2017-11-30 13:11:49', '2017-11-30 16:01:58'),
(168, 'archivo', 'uploads/transparencia/90630d8345e79f666562b3d4c9ce59e6.pdf', 'estado de situacion financiera', '90630d8345e79f666562b3d4c9ce59e6.pdf', 'application/pdf', 'uploads/transparencia', 136, '2017-11-30 14:14:08', '2017-12-28 12:46:36'),
(169, 'archivo', 'uploads/transparencia/bde7d39465e70e0b88a4c9ee662f5c61.pdf', 'estado de variacion en la hacienda publica', 'bde7d39465e70e0b88a4c9ee662f5c61.pdf', 'application/pdf', 'uploads/transparencia', 136, '2017-11-30 14:18:02', '2017-11-30 14:18:02'),
(170, 'archivo', 'uploads/transparencia/f5b3bee30c1dd3a41714502db57b3866.pdf', 'ESTADO DE CAMBIOS EN LA SITUACION FINANCIERA', 'f5b3bee30c1dd3a41714502db57b3866.pdf', 'application/pdf', 'uploads/transparencia', 136, '2017-11-30 14:22:01', '2017-11-30 14:22:01'),
(171, 'archivo', 'uploads/transparencia/a0b9cd46f47048b45e77e865f70522b0.pdf', 'notas a los estados financieros', 'a0b9cd46f47048b45e77e865f70522b0.pdf', 'application/pdf', 'uploads/transparencia', 136, '2017-11-30 14:28:44', '2017-11-30 14:28:44'),
(172, 'archivo', 'uploads/transparencia/2b801f9b4df0313c22a3b6a72b593bcc.pdf', 'Estado Analitico del Activo', '2b801f9b4df0313c22a3b6a72b593bcc.pdf', 'application/pdf', 'uploads/transparencia', 136, '2017-11-30 14:54:26', '2017-11-30 14:54:26'),
(174, 'archivo', 'uploads/transparencia/43ae40be21e8f8a9d553016700a026b5.jpg', 'text', '43ae40be21e8f8a9d553016700a026b5.jpg', 'image/jpeg', 'uploads/transparencia', 24, '2017-11-30 15:29:01', '2017-11-30 15:29:01'),
(175, 'archivo', 'uploads/transparencia/28ecd088ab2ce0ccc2941da5367a82bd.pdf', 'Estado de Actividades', '28ecd088ab2ce0ccc2941da5367a82bd.pdf', 'application/pdf', 'uploads/transparencia', 151, '2017-11-30 15:41:31', '2017-11-30 15:41:31'),
(176, 'archivo', 'uploads/transparencia/276b55d40beb168ab7f68061cd3920c8.pdf', 'Estado de Situación Financiera', '276b55d40beb168ab7f68061cd3920c8.pdf', 'application/pdf', 'uploads/transparencia', 151, '2017-11-30 15:42:47', '2017-12-28 12:51:23'),
(177, 'archivo', 'uploads/transparencia/61800d641de500906e3d05f1422c8a7f.pdf', 'Estado de Variacion  en la Hacienda Publica', '61800d641de500906e3d05f1422c8a7f.pdf', 'application/pdf', 'uploads/transparencia', 151, '2017-11-30 15:51:00', '2017-11-30 15:51:00'),
(178, 'archivo', 'uploads/transparencia/b0e0dbc4deef118dcf37c634a0beb7c7.pdf', 'Estado de Cambios  en la Situación Financiera', 'b0e0dbc4deef118dcf37c634a0beb7c7.pdf', 'application/pdf', 'uploads/transparencia', 151, '2017-11-30 15:54:49', '2017-11-30 15:54:49'),
(179, 'archivo', 'uploads/transparencia/58ac8d56c704b2b0f4d5c0c162ead056.pdf', 'Estado de Flujos de Efectivo', '58ac8d56c704b2b0f4d5c0c162ead056.pdf', 'application/pdf', 'uploads/transparencia', 151, '2017-11-30 16:10:09', '2017-11-30 16:10:09'),
(180, 'archivo', 'uploads/transparencia/32409ec6eb4b1f97e9a924200d88ce35.pdf', 'Estado de Actividades', '32409ec6eb4b1f97e9a924200d88ce35.pdf', 'application/pdf', 'uploads/transparencia', 154, '2017-11-30 16:26:52', '2017-11-30 16:26:52'),
(181, 'archivo', 'uploads/transparencia/131ff94c9ba967e92be5b05a07806f48.pdf', 'Estado de Situación Financiera ', '131ff94c9ba967e92be5b05a07806f48.pdf', 'application/pdf', 'uploads/transparencia', 154, '2017-11-30 16:28:16', '2017-11-30 16:28:16'),
(182, 'archivo', 'uploads/transparencia/c5d0672cd2d29a4f62fa9d821b39d4aa.pdf', 'Estado de Variación en la Hacienda Publica ', 'c5d0672cd2d29a4f62fa9d821b39d4aa.pdf', 'application/pdf', 'uploads/transparencia', 154, '2017-11-30 16:30:02', '2017-11-30 16:30:02'),
(183, 'archivo', 'uploads/transparencia/454dc41144e3646656da3dff65cd65bc.pdf', 'Estado de Flujo de Efectivo', '454dc41144e3646656da3dff65cd65bc.pdf', 'application/pdf', 'uploads/transparencia', 154, '2017-11-30 16:32:57', '2017-12-28 13:20:39'),
(184, 'archivo', 'uploads/transparencia/10d4e34d9c7b39ff391672abb900dfdd.pdf', 'Notas a los Estados Financieros', '10d4e34d9c7b39ff391672abb900dfdd.pdf', 'application/pdf', 'uploads/transparencia', 151, '2017-11-30 16:34:30', '2017-11-30 16:34:30'),
(185, 'archivo', 'uploads/transparencia/381fa2a27d8d613dffe590505c8e96f0.pdf', 'Estado Analítico del Activo', '381fa2a27d8d613dffe590505c8e96f0.pdf', 'application/pdf', 'uploads/transparencia', 151, '2017-11-30 16:36:09', '2017-11-30 16:36:09'),
(186, 'archivo', 'uploads/transparencia/', 'Notas a los Estados Financieros', NULL, NULL, 'uploads/transparencia', 154, '2017-11-30 16:38:13', '2017-11-30 16:38:13'),
(187, 'archivo', 'uploads/transparencia/840ec33d18751b2dfdc03a859c5c7bee.pdf', 'Estado de Actividades', '840ec33d18751b2dfdc03a859c5c7bee.pdf', 'application/pdf', 'uploads/transparencia', 155, '2017-11-30 16:43:29', '2017-11-30 16:43:29'),
(189, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera ', NULL, NULL, 'uploads/transparencia', 156, '2017-11-30 16:45:05', '2017-11-30 16:45:05'),
(190, 'archivo', 'uploads/transparencia/72274369aaf4d57a329fa654e7d098e7.pdf', 'Estado de Situación Financiera', '72274369aaf4d57a329fa654e7d098e7.pdf', 'application/pdf', 'uploads/transparencia', 155, '2017-11-30 16:45:40', '2017-12-28 12:52:25'),
(191, 'archivo', 'uploads/transparencia/', 'Estado de Variación en la Hacienda Pública', NULL, NULL, 'uploads/transparencia', 156, '2017-11-30 16:47:12', '2017-11-30 16:47:12'),
(192, 'archivo', 'uploads/transparencia/38836f2043ac6568e455f70acf7da03b.pdf', 'Estado de Variación en la Hacienda Publica', '38836f2043ac6568e455f70acf7da03b.pdf', 'application/pdf', 'uploads/transparencia', 155, '2017-11-30 16:47:26', '2017-11-30 16:47:26'),
(193, 'archivo', 'uploads/transparencia/', 'Estados de Flujos de Efectivo', NULL, NULL, 'uploads/transparencia', 156, '2017-11-30 16:49:39', '2017-11-30 16:49:39'),
(194, 'archivo', 'uploads/transparencia/519a3dd201b404570f3dd28a9ccdda4e.pdf', 'Estado de Cambios  en la Situación Financiera', '519a3dd201b404570f3dd28a9ccdda4e.pdf', 'application/pdf', 'uploads/transparencia', 155, '2017-11-30 16:49:46', '2017-11-30 16:49:46'),
(195, 'archivo', 'uploads/transparencia/a1d7dc2d8951c56dc6e2592a434000c6.pdf', 'Estado de Flujos de Efectivo', 'a1d7dc2d8951c56dc6e2592a434000c6.pdf', 'application/pdf', 'uploads/transparencia', 155, '2017-11-30 16:52:49', '2017-11-30 16:52:49'),
(196, 'archivo', 'uploads/transparencia/', 'Notas a los Estados Financieros', NULL, NULL, 'uploads/transparencia', 156, '2017-11-30 16:54:21', '2017-11-30 16:54:21'),
(197, 'archivo', 'uploads/transparencia/', 'Estado de Actividades', NULL, NULL, 'uploads/transparencia', 157, '2017-11-30 16:56:24', '2017-11-30 16:56:24'),
(198, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera ', NULL, NULL, 'uploads/transparencia', 157, '2017-11-30 16:58:12', '2017-11-30 16:58:12'),
(199, 'archivo', 'uploads/transparencia/', 'Estado de Variación en la Hacienda Publica ', NULL, NULL, 'uploads/transparencia', 157, '2017-11-30 16:58:44', '2017-11-30 16:58:44'),
(201, 'archivo', 'uploads/transparencia/702680b0e596c2989577d9267c3de76f.pdf', 'Estado de Flujos de Efectivo', '702680b0e596c2989577d9267c3de76f.pdf', 'application/pdf', 'uploads/transparencia', 157, '2017-11-30 17:00:41', '2017-12-28 13:22:22'),
(202, 'archivo', 'uploads/transparencia/', 'Notas a los Estados Financieros', NULL, NULL, 'uploads/transparencia', 157, '2017-11-30 17:02:08', '2017-11-30 17:02:08'),
(203, 'archivo', 'uploads/transparencia/', 'Estado Analítico del Activo', NULL, NULL, 'uploads/transparencia', 157, '2017-11-30 17:03:13', '2017-11-30 17:03:13'),
(204, 'archivo', 'uploads/transparencia/b463abcea7efa372bc7275ce4a3e883b.pdf', 'Nota a los Estados de Cambio ', 'b463abcea7efa372bc7275ce4a3e883b.pdf', 'application/pdf', 'uploads/transparencia', 155, '2017-11-30 17:03:22', '2017-11-30 17:03:22'),
(205, 'archivo', 'uploads/transparencia/60f986029b6cb00fb27a6b0ad0c56580.pdf', 'Estado Analítico del Activo', '60f986029b6cb00fb27a6b0ad0c56580.pdf', 'application/pdf', 'uploads/transparencia', 155, '2017-11-30 17:04:45', '2017-11-30 17:04:45'),
(206, 'archivo', 'uploads/transparencia/', 'Estado de Actividades', NULL, NULL, 'uploads/transparencia', 158, '2017-11-30 17:06:01', '2017-11-30 17:06:01'),
(207, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera ', NULL, NULL, 'uploads/transparencia', 158, '2017-11-30 17:06:45', '2017-11-30 17:06:45'),
(208, 'archivo', 'uploads/transparencia/', 'Estado de Variación en la Hacienda Publica ', NULL, NULL, 'uploads/transparencia', 158, '2017-11-30 17:07:31', '2017-11-30 17:07:31'),
(209, 'archivo', 'uploads/transparencia/fcb65d9ea9cfb8dbce92056085cbf4d7.pdf', 'Estado de Actividades', 'fcb65d9ea9cfb8dbce92056085cbf4d7.pdf', 'application/pdf', 'uploads/transparencia', 159, '2017-11-30 17:07:44', '2017-11-30 17:07:44'),
(210, 'archivo', 'uploads/transparencia/', 'Estado de Flujos de Efectivo', NULL, NULL, 'uploads/transparencia', 158, '2017-11-30 17:08:48', '2017-11-30 17:08:48'),
(211, 'archivo', 'uploads/transparencia/', 'Notas a los Estados Financieros', NULL, NULL, 'uploads/transparencia', 158, '2017-11-30 17:10:15', '2017-11-30 17:10:15'),
(212, 'archivo', 'uploads/transparencia/e01c897f4ef6121f66125264b18bd040.pdf', 'Estado de Situacion Financiera', 'e01c897f4ef6121f66125264b18bd040.pdf', 'application/pdf', 'uploads/transparencia', 159, '2017-11-30 17:11:04', '2017-12-28 12:52:50'),
(213, 'archivo', 'uploads/transparencia/', 'Estado de Actividades', NULL, NULL, 'uploads/transparencia', 160, '2017-11-30 17:11:37', '2017-11-30 17:11:37'),
(214, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera ', NULL, NULL, 'uploads/transparencia', 160, '2017-11-30 17:12:51', '2017-11-30 17:12:51'),
(215, 'archivo', 'uploads/transparencia/f4cc3fac9346801ac76316b3ee3528c2.pdf', 'Estado de Variacion  en la Hacienda Publica', 'f4cc3fac9346801ac76316b3ee3528c2.pdf', 'application/pdf', 'uploads/transparencia', 159, '2017-11-30 17:13:10', '2017-11-30 17:13:10'),
(216, 'archivo', 'uploads/transparencia/', 'Estado de Variación en la Hacienda Publica ', NULL, NULL, 'uploads/transparencia', 160, '2017-11-30 17:13:25', '2017-11-30 17:13:25'),
(217, 'archivo', 'uploads/transparencia/abae2e278bb5d0d811cfa5c67f996842.pdf', 'Estado de Flujos de Efectivo', 'abae2e278bb5d0d811cfa5c67f996842.pdf', 'application/pdf', 'uploads/transparencia', 160, '2017-11-30 17:14:36', '2017-12-28 13:23:40'),
(218, 'archivo', 'uploads/transparencia/', 'Notas a los Estados Financieros', NULL, NULL, 'uploads/transparencia', 160, '2017-11-30 17:15:59', '2017-11-30 17:15:59'),
(219, 'archivo', 'uploads/transparencia/69acb49a7507ddaa29a6072a9a27ced7.pdf', 'Estado de Cambios  en la Situación Financiera', '69acb49a7507ddaa29a6072a9a27ced7.pdf', 'application/pdf', 'uploads/transparencia', 159, '2017-11-30 17:16:01', '2017-11-30 17:16:01'),
(220, 'archivo', 'uploads/transparencia/', 'Estado de Actividades', NULL, NULL, 'uploads/transparencia', 161, '2017-11-30 17:18:25', '2017-11-30 17:18:25'),
(221, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera ', NULL, NULL, 'uploads/transparencia', 161, '2017-11-30 17:19:05', '2017-11-30 17:19:05'),
(222, 'archivo', 'uploads/transparencia/', 'Estado de Variación en la Hacienda Publica ', NULL, NULL, 'uploads/transparencia', 161, '2017-11-30 17:19:38', '2017-11-30 17:19:38'),
(223, 'archivo', 'uploads/transparencia/95d37d5c98a69454af406015e57c4dc1.pdf', 'Estado de Flujos de Efectivo', '95d37d5c98a69454af406015e57c4dc1.pdf', 'application/pdf', 'uploads/transparencia', 161, '2017-11-30 17:20:07', '2017-12-28 13:27:23'),
(224, 'archivo', 'uploads/transparencia/14334173a4c4cba5b15d5cc632b95d99.pdf', 'Estado de Flujos de Efectivo', '14334173a4c4cba5b15d5cc632b95d99.pdf', 'application/pdf', 'uploads/transparencia', 159, '2017-11-30 17:21:30', '2017-11-30 17:21:30'),
(225, 'archivo', 'uploads/transparencia/', 'Notas a los Estados Financieros', NULL, NULL, 'uploads/transparencia', 161, '2017-11-30 17:21:37', '2017-11-30 17:21:37'),
(226, 'archivo', 'uploads/transparencia/', 'Estado de Actividades', NULL, NULL, 'uploads/transparencia', 162, '2017-11-30 17:23:28', '2017-11-30 17:23:28'),
(227, 'archivo', 'uploads/transparencia/4e0b867a50ad21c722938afeec1cbdc8.pdf', 'Informe de Pasivos Contingentes', '4e0b867a50ad21c722938afeec1cbdc8.pdf', 'application/pdf', 'uploads/transparencia', 159, '2017-11-30 17:23:37', '2017-11-30 17:23:37'),
(228, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera ', NULL, NULL, 'uploads/transparencia', 162, '2017-11-30 17:24:05', '2017-11-30 17:24:05'),
(229, 'archivo', 'uploads/transparencia/3415986a478b6312ee9d0d58a810105d.pdf', 'Notas a los Estados Financieros', '3415986a478b6312ee9d0d58a810105d.pdf', 'application/pdf', 'uploads/transparencia', 159, '2017-11-30 17:24:26', '2017-11-30 17:24:26'),
(230, 'archivo', 'uploads/transparencia/', 'Estado de Variación en la Hacienda Publica ', NULL, NULL, 'uploads/transparencia', 162, '2017-11-30 17:24:30', '2017-11-30 17:24:30'),
(231, 'archivo', 'uploads/transparencia/', 'Estado de Flujos de Efectivo', NULL, NULL, 'uploads/transparencia', 162, '2017-11-30 17:25:16', '2017-11-30 17:25:16'),
(232, 'archivo', 'uploads/transparencia/77d74a04fb77b781a506be1a8c3cd889.pdf', 'Estado Analítico del Activo', '77d74a04fb77b781a506be1a8c3cd889.pdf', 'application/pdf', 'uploads/transparencia', 159, '2017-11-30 17:25:23', '2017-11-30 17:25:23'),
(233, 'archivo', 'uploads/transparencia/', 'Notas a los Estados Financieros', NULL, NULL, 'uploads/transparencia', 162, '2017-11-30 17:26:30', '2017-11-30 17:26:30'),
(234, 'archivo', 'uploads/transparencia/88aa7a26014089f0921098693d31b8f3.pdf', 'Estado de Actividades', '88aa7a26014089f0921098693d31b8f3.pdf', 'application/pdf', 'uploads/transparencia', 163, '2017-11-30 17:27:20', '2017-11-30 17:27:20'),
(235, 'archivo', 'uploads/transparencia/67335fbb20505badc722408898d5e4c4.pdf', 'Estado de Situación Financiera', '67335fbb20505badc722408898d5e4c4.pdf', 'application/pdf', 'uploads/transparencia', 163, '2017-11-30 17:28:22', '2017-12-28 12:53:14'),
(236, 'archivo', 'uploads/transparencia/90a8ceb7890acea0b479280acbdeca26.pdf', 'Estado de Variacion en la Hacienda Publica', '90a8ceb7890acea0b479280acbdeca26.pdf', 'application/pdf', 'uploads/transparencia', 163, '2017-11-30 17:30:11', '2017-11-30 17:30:11'),
(237, 'archivo', 'uploads/transparencia/665126c74f31d0537eeac88f92b5ac32.pdf', 'Estado de Cambios  en la Situación Financiera', '665126c74f31d0537eeac88f92b5ac32.pdf', 'application/pdf', 'uploads/transparencia', 163, '2017-11-30 17:31:10', '2017-11-30 17:31:10'),
(238, 'archivo', 'uploads/transparencia/ff63fb0ceb806a86dd4f825acac8784a.pdf', 'Estado de Flujos de Efectivo', 'ff63fb0ceb806a86dd4f825acac8784a.pdf', 'application/pdf', 'uploads/transparencia', 163, '2017-11-30 17:32:08', '2017-11-30 17:32:08'),
(239, 'archivo', 'uploads/transparencia/6709052596a09b6b1a6fb6c57c18e99d.pdf', 'Informe Sobre Pasivos Contigentes', '6709052596a09b6b1a6fb6c57c18e99d.pdf', 'application/pdf', 'uploads/transparencia', 163, '2017-11-30 17:33:39', '2017-11-30 17:33:39'),
(240, 'archivo', 'uploads/transparencia/6769e682ec5fda2641c2d332e3af8dcf.pdf', 'Notas a los Estados Financieros', '6769e682ec5fda2641c2d332e3af8dcf.pdf', 'application/pdf', 'uploads/transparencia', 163, '2017-11-30 17:35:39', '2017-11-30 17:35:39'),
(241, 'archivo', 'uploads/transparencia/23ee80f2a7d2d2289eb2726420afd37a.pdf', 'Estado Analitico del Activo', '23ee80f2a7d2d2289eb2726420afd37a.pdf', 'application/pdf', 'uploads/transparencia', 163, '2017-11-30 17:36:27', '2017-11-30 17:36:27'),
(242, 'archivo', 'uploads/transparencia/83b081bb520698c69d4d175dc4d3fefe.pdf', 'Estado de Actividades', '83b081bb520698c69d4d175dc4d3fefe.pdf', 'application/pdf', 'uploads/transparencia', 165, '2017-11-30 17:38:17', '2017-11-30 17:38:17'),
(243, 'archivo', 'uploads/transparencia/67704c6e44dacb0ace749864dd6b89b0.pdf', 'Estado de Situación Financiera', '67704c6e44dacb0ace749864dd6b89b0.pdf', 'application/pdf', 'uploads/transparencia', 165, '2017-11-30 17:39:27', '2017-12-28 12:53:39'),
(244, 'archivo', 'uploads/transparencia/8c15cd5663cc10867fa280bb6d7601df.pdf', 'Estado de Variacion  en la Hacienda Publica', '8c15cd5663cc10867fa280bb6d7601df.pdf', 'application/pdf', 'uploads/transparencia', 165, '2017-11-30 17:41:31', '2017-11-30 17:41:31'),
(245, 'archivo', 'uploads/transparencia/4b0284f531b592d9ff0794a9e17d841b.pdf', 'Estado de Cambios  en la Situación Financiera', '4b0284f531b592d9ff0794a9e17d841b.pdf', 'application/pdf', 'uploads/transparencia', 165, '2017-11-30 17:42:30', '2017-11-30 17:42:30'),
(246, 'archivo', 'uploads/transparencia/3f619a2166b68d4c926dfafda0c46ad0.pdf', 'Estado de Flujos de Efectivo', '3f619a2166b68d4c926dfafda0c46ad0.pdf', 'application/pdf', 'uploads/transparencia', 165, '2017-11-30 17:43:19', '2017-11-30 17:43:19'),
(247, 'archivo', 'uploads/transparencia/7abb61b9f20c55e4ebfe7cd07b995b8a.pdf', 'Informe de Pasivos Contingentes', '7abb61b9f20c55e4ebfe7cd07b995b8a.pdf', 'application/pdf', 'uploads/transparencia', 165, '2017-11-30 17:44:39', '2017-11-30 17:44:39'),
(248, 'archivo', 'uploads/transparencia/6bb5396b80cd3703bb0984ba19a62fb9.pdf', 'Notas a los Estados Financieros', '6bb5396b80cd3703bb0984ba19a62fb9.pdf', 'application/pdf', 'uploads/transparencia', 165, '2017-11-30 17:46:42', '2017-11-30 17:46:42'),
(249, 'archivo', 'uploads/transparencia/d8f631f330efef4bd141c5da0a5ff81d.pdf', 'Estado Analítico del Activo', 'd8f631f330efef4bd141c5da0a5ff81d.pdf', 'application/pdf', 'uploads/transparencia', 165, '2017-11-30 17:47:37', '2017-11-30 17:47:37'),
(250, 'archivo', 'uploads/transparencia/f84f278143adddb41768376fb9bd0323.pdf', 'Estado de Actividades', 'f84f278143adddb41768376fb9bd0323.pdf', 'application/pdf', 'uploads/transparencia', 166, '2017-11-30 17:49:28', '2017-11-30 17:49:28'),
(251, 'archivo', 'uploads/transparencia/bf2b9dec2b5f5047648096ba90fd0fd6.pdf', 'Estado de Situación Financiera', 'bf2b9dec2b5f5047648096ba90fd0fd6.pdf', 'application/pdf', 'uploads/transparencia', 166, '2017-11-30 17:50:30', '2017-12-28 12:54:09'),
(252, 'archivo', 'uploads/transparencia/bfba4659bd944857b392a07f0919a0f2.pdf', 'Estado de Variacion  en la Hacienda Publica', 'bfba4659bd944857b392a07f0919a0f2.pdf', 'application/pdf', 'uploads/transparencia', 166, '2017-11-30 17:51:18', '2017-11-30 17:51:18'),
(253, 'archivo', 'uploads/transparencia/132a97a4c8a70ed52dae8d2f41b7ed9e.pdf', 'Estado de Cambios  en la Situación Financiera', '132a97a4c8a70ed52dae8d2f41b7ed9e.pdf', 'application/pdf', 'uploads/transparencia', 166, '2017-11-30 17:52:08', '2017-11-30 17:52:08'),
(254, 'archivo', 'uploads/transparencia/3fbe24cc61f6818c5139a100a8b8daf9.pdf', 'Estado de Flujos de Efectivo', '3fbe24cc61f6818c5139a100a8b8daf9.pdf', 'application/pdf', 'uploads/transparencia', 166, '2017-11-30 17:52:58', '2017-11-30 17:52:58'),
(255, 'archivo', 'uploads/transparencia/7235a913d01180bdd68294c96febccbb.pdf', 'Informe de Pasivos Contingentes', '7235a913d01180bdd68294c96febccbb.pdf', 'application/pdf', 'uploads/transparencia', 166, '2017-11-30 17:53:56', '2017-11-30 17:53:56'),
(256, 'archivo', 'uploads/transparencia/18f739b02c5944ff81e736d380729364.pdf', 'Notas a los Estados Financieros', '18f739b02c5944ff81e736d380729364.pdf', 'application/pdf', 'uploads/transparencia', 166, '2017-11-30 17:55:04', '2017-11-30 17:55:04'),
(257, 'archivo', 'uploads/transparencia/0579ecf0ace3a4d62d5a0469d9dd1401.pdf', 'Estado Analítico del Activo', '0579ecf0ace3a4d62d5a0469d9dd1401.pdf', 'application/pdf', 'uploads/transparencia', 166, '2017-11-30 17:55:45', '2017-11-30 17:55:45'),
(258, 'archivo', 'uploads/transparencia/b7871ea666f6e42aaf891d655b31d2f7.pdf', 'Estado de Situación Financiera', 'b7871ea666f6e42aaf891d655b31d2f7.pdf', 'application/pdf', 'uploads/transparencia', 168, '2017-11-30 18:06:18', '2017-11-30 18:06:18'),
(259, 'archivo', 'uploads/transparencia/99f2eacef36d1ac6557a14a4251b6db4.pdf', 'Estado de Variación  en la Hacienda Publica', '99f2eacef36d1ac6557a14a4251b6db4.pdf', 'application/pdf', 'uploads/transparencia', 168, '2017-11-30 18:07:21', '2017-11-30 18:07:21'),
(260, 'archivo', 'uploads/transparencia/0aefc3c2075a16321a73a61e1d4052d2.pdf', 'Estado de Cambios  en la Situación Financiera', '0aefc3c2075a16321a73a61e1d4052d2.pdf', 'application/pdf', 'uploads/transparencia', 168, '2017-11-30 18:09:31', '2017-11-30 18:09:31'),
(261, 'archivo', 'uploads/transparencia/e8abaf9549b5a6cf78b92f861156997d.pdf', 'Estado de Flujos de Efectivo', 'e8abaf9549b5a6cf78b92f861156997d.pdf', 'application/pdf', 'uploads/transparencia', 168, '2017-11-30 18:12:05', '2017-11-30 18:12:05'),
(262, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera', NULL, NULL, 'uploads/transparencia', 169, '2017-11-30 18:16:04', '2017-11-30 18:16:04'),
(263, 'archivo', 'uploads/transparencia/', 'Estado de Variacion  en la Hacienda Publica', NULL, NULL, 'uploads/transparencia', 169, '2017-11-30 18:16:51', '2017-11-30 18:16:51'),
(264, 'archivo', 'uploads/transparencia/', 'Estado de Cambios  en la Situación Financiera', NULL, NULL, 'uploads/transparencia', 169, '2017-11-30 18:17:58', '2017-11-30 18:17:58'),
(265, 'archivo', 'uploads/transparencia/', 'Estado de Flujos de Efectivo', NULL, NULL, 'uploads/transparencia', 169, '2017-11-30 18:19:33', '2017-11-30 18:19:33'),
(266, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera', NULL, NULL, 'uploads/transparencia', 170, '2017-11-30 18:23:20', '2017-11-30 18:23:20'),
(268, 'archivo', 'uploads/transparencia/', 'Estado de Actividades', NULL, NULL, 'uploads/transparencia', 172, '2017-11-30 18:27:05', '2017-11-30 18:27:05'),
(269, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera ', NULL, NULL, 'uploads/transparencia', 172, '2017-11-30 18:29:12', '2017-11-30 18:29:12'),
(270, 'archivo', 'uploads/transparencia/', 'Estado de Variacion  en la Hacienda Publica', NULL, NULL, 'uploads/transparencia', 170, '2017-11-30 18:40:52', '2017-11-30 18:40:52'),
(271, 'archivo', 'uploads/transparencia/', 'Estado de Cambios  en la Situación Financiera', NULL, NULL, 'uploads/transparencia', 170, '2017-11-30 18:42:35', '2017-11-30 18:42:35'),
(272, 'archivo', 'uploads/transparencia/', 'Estado de Flujos de Efectivo', NULL, NULL, 'uploads/transparencia', 170, '2017-11-30 18:47:36', '2017-11-30 18:47:36'),
(273, 'archivo', 'uploads/transparencia/b3aa12be312bb5f8ea18fe45b7d6934a.pdf', 'Estado de Actividades', 'b3aa12be312bb5f8ea18fe45b7d6934a.pdf', 'application/pdf', 'uploads/transparencia', 173, '2017-11-30 18:49:59', '2017-11-30 18:49:59'),
(274, 'archivo', 'uploads/transparencia/6863e9851a1b13b50b678a1cb375056f.pdf', 'Estado de Situacion Financiera', '6863e9851a1b13b50b678a1cb375056f.pdf', 'application/pdf', 'uploads/transparencia', 173, '2017-11-30 18:51:42', '2017-11-30 18:51:42'),
(275, 'archivo', 'uploads/transparencia/', 'Estado de Variación  en la Hacienda Publica', NULL, NULL, 'uploads/transparencia', 174, '2017-11-30 18:51:57', '2017-11-30 18:51:57'),
(276, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera', NULL, NULL, 'uploads/transparencia', 174, '2017-11-30 18:54:43', '2017-11-30 18:54:43'),
(277, 'archivo', 'uploads/transparencia/78b1228d3063b22a4b4f5cf585081831.pdf', 'Estado de Variacion en la Hacienda Publica', '78b1228d3063b22a4b4f5cf585081831.pdf', 'application/pdf', 'uploads/transparencia', 173, '2017-11-30 18:55:21', '2017-11-30 18:55:21'),
(278, 'archivo', 'uploads/transparencia/ffbfea1863244b989a646e52acc569a9.pdf', 'Estado de Cambios en la Situacion Financiera', 'ffbfea1863244b989a646e52acc569a9.pdf', 'application/pdf', 'uploads/transparencia', 173, '2017-11-30 18:57:53', '2017-11-30 18:57:53'),
(279, 'archivo', 'uploads/transparencia/eebd0516bf4d4c1b97d0c15358c6cca2.pdf', 'Estado de Flujos de Efectivo', 'eebd0516bf4d4c1b97d0c15358c6cca2.pdf', 'application/pdf', 'uploads/transparencia', 173, '2017-11-30 19:00:03', '2017-12-28 13:30:04'),
(280, 'archivo', 'uploads/transparencia/', 'Estado de Cambios  en la Situación Financiera', NULL, NULL, 'uploads/transparencia', 174, '2017-11-30 19:01:24', '2017-11-30 19:01:24'),
(281, 'archivo', 'uploads/transparencia/', 'Estado de Flujos de Efectivo', NULL, NULL, 'uploads/transparencia', 174, '2017-11-30 19:02:34', '2017-11-30 19:02:34'),
(283, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera', NULL, NULL, 'uploads/transparencia', 177, '2017-11-30 19:13:43', '2017-11-30 19:13:43'),
(284, 'archivo', 'uploads/transparencia/', 'Estado de Variacion  en la Hacienda Publica', NULL, NULL, 'uploads/transparencia', 177, '2017-11-30 19:14:30', '2017-11-30 19:14:30'),
(286, 'archivo', 'uploads/transparencia/', 'Estado de Cambios  en la Situación Financiera', NULL, NULL, 'uploads/transparencia', 177, '2017-11-30 19:15:45', '2017-11-30 19:15:45'),
(287, 'archivo', 'uploads/transparencia/', 'Estado de Cambios  en la Situación Financiera', NULL, NULL, 'uploads/transparencia', 177, '2017-11-30 19:21:25', '2017-11-30 19:21:25'),
(288, 'archivo', 'uploads/transparencia/2bd0753a0ef997befb577bfa30b1923c.pdf', 'Estado Analitico de Ingresos', '2bd0753a0ef997befb577bfa30b1923c.pdf', 'application/pdf', 'uploads/transparencia', 176, '2017-11-30 19:32:30', '2017-11-30 19:32:30'),
(289, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera', NULL, NULL, 'uploads/transparencia', 178, '2017-11-30 19:36:50', '2017-11-30 19:36:50'),
(290, 'archivo', 'uploads/transparencia/', 'Estado de Variacion  en la Hacienda Publica', NULL, NULL, 'uploads/transparencia', 178, '2017-11-30 19:37:37', '2017-11-30 19:37:37'),
(291, 'archivo', 'uploads/transparencia/', 'Estado de Cambios  en la Situación Financiera', NULL, NULL, 'uploads/transparencia', 178, '2017-11-30 19:39:03', '2017-11-30 19:39:03'),
(292, 'archivo', 'uploads/transparencia/8c466210a6a4bf47f86561fa86aa8d72.pdf', 'Estado Analitico Del Ejercicio Del Presupuesto de Egresos Clasificados Administrativa', '8c466210a6a4bf47f86561fa86aa8d72.pdf', 'application/pdf', 'uploads/transparencia', 176, '2017-11-30 19:40:44', '2017-11-30 19:40:44'),
(293, 'archivo', 'uploads/transparencia/', 'Estado de Flujos de Efectivo', NULL, NULL, 'uploads/transparencia', 178, '2017-11-30 19:41:36', '2017-11-30 19:41:36'),
(294, 'archivo', 'uploads/transparencia/a5395001784b2a2a86e5b58e305a0393.pdf', 'Estado analitico del Ejercicio del Presupuesto de Egresos Clasificacion Economica ( Por Tipo de gasto)', 'a5395001784b2a2a86e5b58e305a0393.pdf', 'application/pdf', 'uploads/transparencia', 176, '2017-11-30 19:47:22', '2017-11-30 19:47:22'),
(295, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera', NULL, NULL, 'uploads/transparencia', 180, '2017-11-30 19:50:47', '2017-11-30 19:50:47'),
(296, 'archivo', 'uploads/transparencia/6ef0a030cf0664287561b6474544486a.pdf', 'Estado analitico del Ejercicio del Presupuesto de Egresos Clasificados por Objeto del Gasto', '6ef0a030cf0664287561b6474544486a.pdf', 'application/pdf', 'uploads/transparencia', 176, '2017-11-30 19:54:40', '2017-11-30 19:54:40'),
(297, 'archivo', 'uploads/transparencia/', 'Estado de Variacion  en la Hacienda Publica', NULL, NULL, 'uploads/transparencia', 180, '2017-11-30 19:55:55', '2017-11-30 19:55:55'),
(298, 'archivo', 'uploads/transparencia/', 'Estado de Cambios  en la Situación Financiera', NULL, NULL, 'uploads/transparencia', 180, '2017-11-30 19:56:54', '2017-11-30 19:56:54'),
(299, 'archivo', 'uploads/transparencia/', 'Estado de Flujos de Efectivo', NULL, NULL, 'uploads/transparencia', 180, '2017-11-30 19:58:31', '2017-11-30 19:58:31'),
(300, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera', NULL, NULL, 'uploads/transparencia', 181, '2017-11-30 20:04:25', '2017-11-30 20:04:25'),
(301, 'archivo', 'uploads/transparencia/', 'Estado de Variacion  en la Hacienda Publica', NULL, NULL, 'uploads/transparencia', 181, '2017-11-30 20:05:25', '2017-11-30 20:05:25'),
(302, 'archivo', 'uploads/transparencia/b10f56f2c824e3e82059c126cf2fc459.pdf', 'Estado analitico del Ejercicio del Presupuesto de Egreso Clasificacion Funcional ( Finalidad y Funcion)', 'b10f56f2c824e3e82059c126cf2fc459.pdf', 'application/pdf', 'uploads/transparencia', 176, '2017-11-30 20:05:29', '2017-11-30 20:05:29'),
(303, 'archivo', 'uploads/transparencia/', 'Estados de Cambios en la Situciacon', NULL, NULL, 'uploads/transparencia', 181, '2017-11-30 20:14:04', '2017-11-30 20:14:04'),
(304, 'archivo', 'uploads/transparencia/ef5bfc6ac426ebd4867e24a61e39f39b.pdf', 'Estado Analitico de Ingresos', 'ef5bfc6ac426ebd4867e24a61e39f39b.pdf', 'application/pdf', 'uploads/transparencia', 183, '2017-11-30 20:14:39', '2017-11-30 20:14:39'),
(305, 'archivo', 'uploads/transparencia/', 'Estado de Flujos de Efectivo', NULL, NULL, 'uploads/transparencia', 181, '2017-11-30 20:18:28', '2017-11-30 20:18:28'),
(306, 'archivo', 'uploads/transparencia/80732ea5b21f0e3dea1a63cf72b46cd0.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificacion Administrativa', '80732ea5b21f0e3dea1a63cf72b46cd0.pdf', 'application/pdf', 'uploads/transparencia', 183, '2017-11-30 20:18:55', '2017-11-30 20:18:55'),
(307, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera', NULL, NULL, 'uploads/transparencia', 184, '2017-11-30 20:23:00', '2017-11-30 20:23:00'),
(308, 'archivo', 'uploads/transparencia/fb14139ba48b31ffa4ecde1ceb36c010.pdf', 'Estado analitico del Ejercicio del Presupuesto de Egresos Clasificacion Economica ( por Tipo de gasto)', 'fb14139ba48b31ffa4ecde1ceb36c010.pdf', 'application/pdf', 'uploads/transparencia', 183, '2017-11-30 20:23:33', '2017-11-30 20:23:33'),
(309, 'archivo', 'uploads/transparencia/', 'Estado de Variacion  en la Hacienda Publica', NULL, NULL, 'uploads/transparencia', 184, '2017-11-30 20:24:59', '2017-11-30 20:24:59'),
(310, 'archivo', 'uploads/transparencia/', 'Estados de Cambios en la Situciacon', NULL, NULL, 'uploads/transparencia', 184, '2017-11-30 20:26:30', '2017-11-30 20:26:30'),
(311, 'archivo', 'uploads/transparencia/', 'Estado de Flujos de Efectivo', NULL, NULL, 'uploads/transparencia', 184, '2017-11-30 20:27:53', '2017-11-30 20:27:53'),
(312, 'archivo', 'uploads/transparencia/d2dd7f686365cb18d951d8ee00bece6c.pdf', 'Estado analitico del Ejercicio del Presupuesto de Egresos Clasificacion por Objeto del Gasto', 'd2dd7f686365cb18d951d8ee00bece6c.pdf', 'application/pdf', 'uploads/transparencia', 183, '2017-11-30 20:28:02', '2017-11-30 20:28:02'),
(313, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera', NULL, NULL, 'uploads/transparencia', 185, '2017-11-30 20:31:50', '2017-11-30 20:31:50'),
(314, 'archivo', 'uploads/transparencia/', 'Estado de Variacion  en la Hacienda Publica', NULL, NULL, 'uploads/transparencia', 185, '2017-11-30 20:32:44', '2017-11-30 20:32:44'),
(315, 'archivo', 'uploads/transparencia/dd92760ea36f65adb7795485535cae10.pdf', 'Estado analitico del Ejercicio del Presupuesto de Egresos Clasificacion Funcional ( Finalidad y Funcion)', 'dd92760ea36f65adb7795485535cae10.pdf', 'application/pdf', 'uploads/transparencia', 183, '2017-11-30 20:33:31', '2017-11-30 20:33:31'),
(316, 'archivo', 'uploads/transparencia/', 'Estado de Cambios  en la Situación Financiera', NULL, NULL, 'uploads/transparencia', 185, '2017-11-30 20:34:02', '2017-11-30 20:34:02'),
(317, 'archivo', 'uploads/transparencia/963a550ef4fbd75225e726d28476d8fc.pdf', 'Estado Analitico de Ingresos', '963a550ef4fbd75225e726d28476d8fc.pdf', 'application/pdf', 'uploads/transparencia', 187, '2017-11-30 20:49:35', '2017-11-30 20:49:35'),
(318, 'archivo', 'uploads/transparencia/', 'Estado de Flujos de Efectivo', NULL, NULL, 'uploads/transparencia', 185, '2017-11-30 20:50:36', '2017-11-30 20:50:36'),
(319, 'archivo', 'uploads/transparencia/23f0069d22c2a57d7815e1615033ab54.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificacion Administrativa', '23f0069d22c2a57d7815e1615033ab54.pdf', 'application/pdf', 'uploads/transparencia', 187, '2017-11-30 20:52:44', '2017-11-30 20:52:44'),
(320, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera', NULL, NULL, 'uploads/transparencia', 188, '2017-11-30 20:54:15', '2017-11-30 20:54:15'),
(321, 'archivo', 'uploads/transparencia/', 'Estado de Variacion  en la Hacienda Publica', NULL, NULL, 'uploads/transparencia', 188, '2017-11-30 20:55:02', '2017-11-30 20:55:02'),
(322, 'archivo', 'uploads/transparencia/644d6cb455ec732b42854d61bd84ef76.pdf', 'Estado analitico del Ejercicio del Presupuesto de Egresos Clacificacion Economica (por Tipo de gasto)', '644d6cb455ec732b42854d61bd84ef76.pdf', 'application/pdf', 'uploads/transparencia', 187, '2017-11-30 20:56:31', '2017-11-30 20:56:31'),
(323, 'archivo', 'uploads/transparencia/', 'Estado de Cambios  en la Situación Financiera', NULL, NULL, 'uploads/transparencia', 188, '2017-11-30 20:57:17', '2017-11-30 20:57:17'),
(324, 'archivo', 'uploads/transparencia/', 'Estado de Flujos de Efectivo', NULL, NULL, 'uploads/transparencia', 188, '2017-11-30 20:58:59', '2017-11-30 20:58:59'),
(325, 'archivo', 'uploads/transparencia/5d977a385b5516fb4d870d4b8cd2871b.pdf', 'Estado analitico del Ejercicio del Presupuesto de Egresos Clasificacion por Objeto del Gasto', '5d977a385b5516fb4d870d4b8cd2871b.pdf', 'application/pdf', 'uploads/transparencia', 187, '2017-11-30 20:59:58', '2017-11-30 20:59:58'),
(326, 'archivo', 'uploads/transparencia/', 'Estado de Situación Financiera', NULL, NULL, 'uploads/transparencia', 189, '2017-11-30 21:01:33', '2017-11-30 21:01:33'),
(327, 'archivo', 'uploads/transparencia/4da8e0cc28f18f6debb1f15e21f603c6.pdf', 'Estado analitico del Ejercicio del Presupuesto de Egresos Clasificacion Funcional ( Finalidad y funcion)', '4da8e0cc28f18f6debb1f15e21f603c6.pdf', 'application/pdf', 'uploads/transparencia', 187, '2017-11-30 21:03:10', '2017-11-30 21:03:10'),
(329, 'archivo', 'uploads/transparencia/7c3251bac38600b8155b0e36c466a5a7.pdf', 'Estado de Actividades', '7c3251bac38600b8155b0e36c466a5a7.pdf', 'application/pdf', 'uploads/transparencia', 191, '2017-11-30 21:32:57', '2017-11-30 21:32:57'),
(330, 'archivo', 'uploads/transparencia/', 'Estado de Variacion  en la Hacienda Publica', NULL, NULL, 'uploads/transparencia', 189, '2017-11-30 21:33:58', '2017-11-30 21:33:58'),
(331, 'archivo', 'uploads/transparencia/7e1ace4ecf56cdbc6584e72fe9dfe55c.pdf', 'Estado de Situacion Financiera', '7e1ace4ecf56cdbc6584e72fe9dfe55c.pdf', 'application/pdf', 'uploads/transparencia', 191, '2017-11-30 21:35:08', '2017-11-30 21:35:08'),
(332, 'archivo', 'uploads/transparencia/', 'Estado de Cambios  en la Situación Financiera', NULL, NULL, 'uploads/transparencia', 189, '2017-11-30 21:35:29', '2017-11-30 21:35:29'),
(333, 'archivo', 'uploads/transparencia/', 'Estado de Flujos de Efectivo', NULL, NULL, 'uploads/transparencia', 189, '2017-11-30 21:37:05', '2017-11-30 21:37:05'),
(334, 'archivo', 'uploads/transparencia/4895bc44f915061eeb22a9844e28d2ac.pdf', 'Estado de Variacion en la Hacienda Publica', '4895bc44f915061eeb22a9844e28d2ac.pdf', 'application/pdf', 'uploads/transparencia', 191, '2017-11-30 21:37:30', '2017-11-30 21:37:30'),
(335, 'archivo', 'uploads/transparencia/ac4fb3dc6dcb6123119e650ea4f6a050.pdf', 'Estado de Flujos de Efectivo', 'ac4fb3dc6dcb6123119e650ea4f6a050.pdf', 'application/pdf', 'uploads/transparencia', 191, '2017-11-30 21:41:12', '2017-11-30 21:41:12'),
(336, 'archivo', 'uploads/transparencia/67adf1fcd29da779bd02a68eb7882a8c.pdf', 'Estado Analitico del Activo', '67adf1fcd29da779bd02a68eb7882a8c.pdf', 'application/pdf', 'uploads/transparencia', 191, '2017-11-30 21:43:05', '2017-11-30 21:43:05'),
(337, 'archivo', 'uploads/transparencia/aa18b4f43d663129fa4a2dda8e3c5d2d.pdf', 'Estado de Actividades', 'aa18b4f43d663129fa4a2dda8e3c5d2d.pdf', 'application/pdf', 'uploads/transparencia', 192, '2017-11-30 21:46:23', '2017-11-30 21:46:23'),
(338, 'archivo', 'uploads/transparencia/e6ce47aa0408e42274adc870c7350e60.pdf', 'Estado de Situacion Financiera', 'e6ce47aa0408e42274adc870c7350e60.pdf', 'application/pdf', 'uploads/transparencia', 192, '2017-11-30 21:48:02', '2017-11-30 21:48:02'),
(339, 'archivo', 'uploads/transparencia/3a25b5185612862685fbe54a78abc297.pdf', 'Estado de Variacion en la Hacienda Publica', '3a25b5185612862685fbe54a78abc297.pdf', 'application/pdf', 'uploads/transparencia', 192, '2017-11-30 21:49:52', '2017-11-30 21:49:52'),
(340, 'archivo', 'uploads/transparencia/f0cf35ecf033b1fff91b797ce68fb004.pdf', 'Estado de Flujos de Efectivo', 'f0cf35ecf033b1fff91b797ce68fb004.pdf', 'application/pdf', 'uploads/transparencia', 192, '2017-11-30 21:51:46', '2017-11-30 21:51:46'),
(341, 'archivo', 'uploads/transparencia/493b9a409ed3fbc972bade33b98a887c.pdf', 'Estado Analitico de Ingresos', '493b9a409ed3fbc972bade33b98a887c.pdf', 'application/pdf', 'uploads/transparencia', 194, '2017-11-30 21:52:26', '2017-11-30 21:52:26'),
(342, 'archivo', 'uploads/transparencia/08755c043b2d1fc493c49db34d47759a.pdf', 'Estado Analitico del Activo', '08755c043b2d1fc493c49db34d47759a.pdf', 'application/pdf', 'uploads/transparencia', 192, '2017-11-30 21:53:17', '2017-11-30 21:53:17'),
(343, 'archivo', 'uploads/transparencia/5a290e590c054bcb3880eb8ef8c1b9a4.pdf', 'Estado de Actividades', '5a290e590c054bcb3880eb8ef8c1b9a4.pdf', 'application/pdf', 'uploads/transparencia', 195, '2017-11-30 21:59:07', '2017-11-30 21:59:07'),
(344, 'archivo', 'uploads/transparencia/91fc517455a8fb3ca045e18242095e55.pdf', 'Estado de Situacion Financiera', '91fc517455a8fb3ca045e18242095e55.pdf', 'application/pdf', 'uploads/transparencia', 195, '2017-11-30 22:01:27', '2017-11-30 22:01:27'),
(345, 'archivo', 'uploads/transparencia/bbd5382d77d222b1eb0297283cca4189.pdf', 'Estado de Variacion en la Hacienda Publica', 'bbd5382d77d222b1eb0297283cca4189.pdf', 'application/pdf', 'uploads/transparencia', 195, '2017-11-30 22:02:59', '2017-11-30 22:02:59'),
(346, 'archivo', 'uploads/transparencia/49b31efd56e47002c90a869c6ea88029.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificacion Economica ', '49b31efd56e47002c90a869c6ea88029.pdf', 'application/pdf', 'uploads/transparencia', 194, '2017-11-30 22:04:26', '2017-11-30 22:04:26'),
(347, 'archivo', 'uploads/transparencia/c89dd61a8032a29bbaf8763f7b733e79.pdf', 'Estado de cambios en la Situacion Financiera', 'c89dd61a8032a29bbaf8763f7b733e79.pdf', 'application/pdf', 'uploads/transparencia', 195, '2017-11-30 22:05:14', '2017-11-30 22:05:14'),
(348, 'archivo', 'uploads/transparencia/76dfcc4523bcd96920571f24f320e085.pdf', 'Estado de flujos de Efectivo', '76dfcc4523bcd96920571f24f320e085.pdf', 'application/pdf', 'uploads/transparencia', 195, '2017-11-30 22:06:17', '2017-11-30 22:06:17'),
(349, 'archivo', 'uploads/transparencia/c1fa62b7e2986a5710296eae923d841f.pdf', 'notas a los Estados Financieros', 'c1fa62b7e2986a5710296eae923d841f.pdf', 'application/pdf', 'uploads/transparencia', 195, '2017-11-30 22:08:26', '2017-11-30 22:08:26'),
(350, 'archivo', 'uploads/transparencia/75a18a1224e7a355dbcdac2936140da3.pdf', 'Estado Analitico del Activo', '75a18a1224e7a355dbcdac2936140da3.pdf', 'application/pdf', 'uploads/transparencia', 195, '2017-11-30 22:09:57', '2017-11-30 22:09:57'),
(351, 'archivo', 'uploads/transparencia/5c16861247422176fee41a8aa657d296.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificada por Objeto del Gasto', '5c16861247422176fee41a8aa657d296.pdf', 'application/pdf', 'uploads/transparencia', 194, '2017-11-30 22:10:21', '2017-11-30 22:10:21'),
(353, 'archivo', 'uploads/transparencia/b1e58ab67b580c2b6502e70816febd4e.pdf', 'Estado de Actividades', 'b1e58ab67b580c2b6502e70816febd4e.pdf', 'application/pdf', 'uploads/transparencia', 197, '2017-11-30 22:23:31', '2017-11-30 22:23:31'),
(354, 'archivo', 'uploads/transparencia/bc6d36afa754f444d764e0363bcfce5e.pdf', 'Estado de Situacion Financiera', 'bc6d36afa754f444d764e0363bcfce5e.pdf', 'application/pdf', 'uploads/transparencia', 197, '2017-11-30 22:25:52', '2017-11-30 22:25:52'),
(356, 'archivo', 'uploads/transparencia/2968222ad3e49e953d655fda922a57a4.pdf', 'Estado de Variacion en la Hacienda Publica', '2968222ad3e49e953d655fda922a57a4.pdf', 'application/pdf', 'uploads/transparencia', 197, '2017-11-30 22:27:37', '2017-11-30 22:27:37'),
(357, 'archivo', 'uploads/transparencia/662e18931b27c00488a1c8cf32258b2a.pdf', 'Estado de Cambios en la Situacion Financiera', '662e18931b27c00488a1c8cf32258b2a.pdf', 'application/pdf', 'uploads/transparencia', 197, '2017-11-30 22:29:27', '2017-11-30 22:29:27'),
(358, 'archivo', 'uploads/transparencia/0ba4a821ead6c92b24fc795c811c3204.pdf', 'Estado de Flujos de Efectivo', '0ba4a821ead6c92b24fc795c811c3204.pdf', 'application/pdf', 'uploads/transparencia', 197, '2017-11-30 22:30:48', '2017-11-30 22:30:48'),
(360, 'archivo', 'uploads/transparencia/fa2942b36b610d2b8548d898806b479b.pdf', 'Nota a los Estados Financieros', 'fa2942b36b610d2b8548d898806b479b.pdf', 'application/pdf', 'uploads/transparencia', 197, '2017-11-30 22:33:23', '2017-11-30 22:33:23'),
(361, 'archivo', 'uploads/transparencia/dfc805581123e4d926d72aa6f7af5a23.pdf', 'Estado Analitico del Activo', 'dfc805581123e4d926d72aa6f7af5a23.pdf', 'application/pdf', 'uploads/transparencia', 197, '2017-11-30 22:34:41', '2017-11-30 22:34:41'),
(362, 'archivo', 'uploads/transparencia/ac4ce89b3b1bd658da93bba937336c94.pdf', 'Estado Analitico de Ingresos', 'ac4ce89b3b1bd658da93bba937336c94.pdf', 'application/pdf', 'uploads/transparencia', 199, '2017-11-30 22:35:30', '2017-11-30 22:35:30'),
(363, 'archivo', 'uploads/transparencia/bc3470d01bfe363bd32a92a4986f6fdc.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificacion Economica', 'bc3470d01bfe363bd32a92a4986f6fdc.pdf', 'application/pdf', 'uploads/transparencia', 199, '2017-11-30 22:44:48', '2017-11-30 22:44:48'),
(364, 'archivo', 'uploads/transparencia/6e277a74b9874f3f459fe9234e51b371.pdf', 'Estado de Actividades', '6e277a74b9874f3f459fe9234e51b371.pdf', 'application/pdf', 'uploads/transparencia', 200, '2017-11-30 22:48:47', '2017-11-30 22:48:47'),
(365, 'archivo', 'uploads/transparencia/f1bec44eda8f2f02966927390f2e5686.pdf', 'Estado de Situacion Financiera', 'f1bec44eda8f2f02966927390f2e5686.pdf', 'application/pdf', 'uploads/transparencia', 200, '2017-11-30 22:50:15', '2017-11-30 22:50:15'),
(366, 'archivo', 'uploads/transparencia/70938fdf3a0c34f5113580639852c936.pdf', 'Estado de Variacion en la Hacienda Publica', '70938fdf3a0c34f5113580639852c936.pdf', 'application/pdf', 'uploads/transparencia', 200, '2017-11-30 22:51:48', '2017-11-30 22:51:48'),
(367, 'archivo', 'uploads/transparencia/23820204c074f47bd971a58b8c948d01.pdf', 'Estado de Flujos de Efectivo', '23820204c074f47bd971a58b8c948d01.pdf', 'application/pdf', 'uploads/transparencia', 200, '2017-11-30 22:53:41', '2017-11-30 22:53:41'),
(368, 'archivo', 'uploads/transparencia/c962264ee354ce3c3c90b45fcce55b07.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificada por Objeto del Gasto', 'c962264ee354ce3c3c90b45fcce55b07.pdf', 'application/pdf', 'uploads/transparencia', 199, '2017-11-30 22:53:53', '2017-11-30 22:53:53'),
(369, 'archivo', 'uploads/transparencia/3d74a94ed77885221ae3d1dfabb5bd40.pdf', 'Estado Analitico del Activo', '3d74a94ed77885221ae3d1dfabb5bd40.pdf', 'application/pdf', 'uploads/transparencia', 200, '2017-11-30 22:55:01', '2017-11-30 22:55:01'),
(370, 'archivo', 'uploads/transparencia/d92c2a28f2bdd368a5eefc63d173e651.pdf', 'Estado de Actividades', 'd92c2a28f2bdd368a5eefc63d173e651.pdf', 'application/pdf', 'uploads/transparencia', 201, '2017-11-30 22:59:14', '2017-11-30 22:59:14'),
(371, 'archivo', 'uploads/transparencia/4af94739653036ec1624a19c05ec701f.pdf', 'Estado de Situacion Financiera', '4af94739653036ec1624a19c05ec701f.pdf', 'application/pdf', 'uploads/transparencia', 201, '2017-11-30 23:00:44', '2017-11-30 23:00:44'),
(372, 'archivo', 'uploads/transparencia/37ee009ed061b9cac99f1d292439332f.pdf', 'Estado de Variacion en la Hacienda Publica', '37ee009ed061b9cac99f1d292439332f.pdf', 'application/pdf', 'uploads/transparencia', 201, '2017-11-30 23:02:12', '2017-11-30 23:02:12'),
(373, 'archivo', 'uploads/transparencia/884f5377eb9f10babc1c5850c3dbd0b7.pdf', 'Estado de Cambios en la Situacion Financiera', '884f5377eb9f10babc1c5850c3dbd0b7.pdf', 'application/pdf', 'uploads/transparencia', 201, '2017-11-30 23:03:47', '2017-11-30 23:03:47'),
(374, 'archivo', 'uploads/transparencia/51678fb4e558f951b6ab79ececfe1801.pdf', 'Estado de Flujos de Efectivo', '51678fb4e558f951b6ab79ececfe1801.pdf', 'application/pdf', 'uploads/transparencia', 201, '2017-11-30 23:04:55', '2017-11-30 23:04:55'),
(375, 'archivo', 'uploads/transparencia/1a9aacb9499405652a9f0c35d9858522.pdf', 'Estado Analitico del Activo', '1a9aacb9499405652a9f0c35d9858522.pdf', 'application/pdf', 'uploads/transparencia', 201, '2017-11-30 23:06:07', '2017-11-30 23:06:07'),
(376, 'archivo', 'uploads/transparencia/528c2320548cc66e82ed4e8bb561ec11.pdf', 'Estado Analitico de Ingresos', '528c2320548cc66e82ed4e8bb561ec11.pdf', 'application/pdf', 'uploads/transparencia', 202, '2017-11-30 23:08:42', '2017-11-30 23:08:42'),
(377, 'archivo', 'uploads/transparencia/dc03178774d210186efe740125f346d3.pdf', 'Estado de Actividades', 'dc03178774d210186efe740125f346d3.pdf', 'application/pdf', 'uploads/transparencia', 203, '2017-11-30 23:09:23', '2017-11-30 23:09:23'),
(378, 'archivo', 'uploads/transparencia/e055b886ac9f0b57cd32cfa5b29eb4d4.pdf', 'Estado de Situacion Financiera', 'e055b886ac9f0b57cd32cfa5b29eb4d4.pdf', 'application/pdf', 'uploads/transparencia', 203, '2017-11-30 23:10:37', '2017-11-30 23:10:37'),
(379, 'archivo', 'uploads/transparencia/bff8d5c4604ef8b24f4dfd13e7c16546.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificacion Economica', 'bff8d5c4604ef8b24f4dfd13e7c16546.pdf', 'application/pdf', 'uploads/transparencia', 202, '2017-11-30 23:11:32', '2017-11-30 23:11:32'),
(380, 'archivo', 'uploads/transparencia/6fa3031deaa04d5e082d37e1d52dfd83.pdf', 'Estado de Variacion en la Hacienda Publica', '6fa3031deaa04d5e082d37e1d52dfd83.pdf', 'application/pdf', 'uploads/transparencia', 203, '2017-11-30 23:11:58', '2017-11-30 23:11:58'),
(381, 'archivo', 'uploads/transparencia/5a0aa9f45a964bd87e76b6afc8b0f4e7.pdf', 'Estado de Flujos de Efectivos', '5a0aa9f45a964bd87e76b6afc8b0f4e7.pdf', 'application/pdf', 'uploads/transparencia', 203, '2017-11-30 23:13:43', '2017-11-30 23:13:43'),
(382, 'archivo', 'uploads/transparencia/85ea4b17790f7f5774f57273e1edd152.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificada por Objeto del Gasto', '85ea4b17790f7f5774f57273e1edd152.pdf', 'application/pdf', 'uploads/transparencia', 202, '2017-11-30 23:14:55', '2017-11-30 23:14:55');
INSERT INTO `elemento` (`id`, `tipo`, `enlace`, `descripcion`, `filename`, `mime`, `path`, `seccion_id`, `created_at`, `updated_at`) VALUES
(383, 'archivo', 'uploads/transparencia/b1e78a1cc59e2c68f646de4831304b27.pdf', 'Notas a los Estados Financieros', 'b1e78a1cc59e2c68f646de4831304b27.pdf', 'application/pdf', 'uploads/transparencia', 203, '2017-11-30 23:15:18', '2017-11-30 23:15:18'),
(384, 'archivo', 'uploads/transparencia/66fdd0f5fa721f844df94ea8ab3dc89c.pdf', 'Estado Analitico del Activo', '66fdd0f5fa721f844df94ea8ab3dc89c.pdf', 'application/pdf', 'uploads/transparencia', 203, '2017-11-30 23:16:33', '2017-11-30 23:16:33'),
(385, 'archivo', 'uploads/transparencia/1f6fd5ac9e6abf2bf8fee9794bef7572.pdf', 'Estado de Actividades', '1f6fd5ac9e6abf2bf8fee9794bef7572.pdf', 'application/pdf', 'uploads/transparencia', 205, '2017-11-30 23:18:58', '2017-11-30 23:18:58'),
(387, 'archivo', 'uploads/transparencia/a3f4f9593e676de2e45f8215687c090d.pdf', 'Estado de Situacion Financiera', 'a3f4f9593e676de2e45f8215687c090d.pdf', 'application/pdf', 'uploads/transparencia', 205, '2017-11-30 23:20:35', '2017-11-30 23:20:35'),
(388, 'archivo', 'uploads/transparencia/8623feb700582977366c22df105e4c58.pdf', 'Estado de Variacion en la Hacienda Publica', '8623feb700582977366c22df105e4c58.pdf', 'application/pdf', 'uploads/transparencia', 205, '2017-11-30 23:22:10', '2017-11-30 23:22:10'),
(389, 'archivo', 'uploads/transparencia/c7700ad2644f5027ac085b6a178fdc6f.pdf', 'Estado Analitico de Ingresos', 'c7700ad2644f5027ac085b6a178fdc6f.pdf', 'application/pdf', 'uploads/transparencia', 204, '2017-11-30 23:22:35', '2017-11-30 23:22:35'),
(390, 'archivo', 'uploads/transparencia/7489e07348d4a7eb4fbe32c8055e9030.pdf', 'Estado de Flujos de Efectivo', '7489e07348d4a7eb4fbe32c8055e9030.pdf', 'application/pdf', 'uploads/transparencia', 205, '2017-11-30 23:23:42', '2017-11-30 23:23:42'),
(391, 'archivo', 'uploads/transparencia/087791c40cd1a9328751672a11104b7c.pdf', 'Notas a los Estados Financieros', '087791c40cd1a9328751672a11104b7c.pdf', 'application/pdf', 'uploads/transparencia', 205, '2017-11-30 23:25:29', '2017-11-30 23:25:29'),
(392, 'archivo', 'uploads/transparencia/e92adc4b3440e07009f7caf586b2c971.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificacion Economica', 'e92adc4b3440e07009f7caf586b2c971.pdf', 'application/pdf', 'uploads/transparencia', 204, '2017-11-30 23:25:51', '2017-11-30 23:25:51'),
(393, 'archivo', 'uploads/transparencia/63e3d54ae86b3e6a0fef098600db816f.pdf', 'Estado Analitico del Activo', '63e3d54ae86b3e6a0fef098600db816f.pdf', 'application/pdf', 'uploads/transparencia', 205, '2017-11-30 23:26:32', '2017-11-30 23:26:32'),
(394, 'archivo', 'uploads/transparencia/791bde45485245bfd13d0e4aaa631a1e.pdf', 'Estado de Actividades', '791bde45485245bfd13d0e4aaa631a1e.pdf', 'application/pdf', 'uploads/transparencia', 206, '2017-11-30 23:29:23', '2017-11-30 23:29:23'),
(395, 'archivo', 'uploads/transparencia/d42880a7e5f20557472bca63fa3ed7f4.pdf', 'Estado de Situacion Financiera', 'd42880a7e5f20557472bca63fa3ed7f4.pdf', 'application/pdf', 'uploads/transparencia', 206, '2017-11-30 23:30:39', '2017-11-30 23:30:39'),
(396, 'archivo', 'uploads/transparencia/ba3ea3cf99a1c1da0638d17f8dab3c4f.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificada por Objeto del Gasto', 'ba3ea3cf99a1c1da0638d17f8dab3c4f.pdf', 'application/pdf', 'uploads/transparencia', 204, '2017-11-30 23:30:56', '2017-11-30 23:30:56'),
(397, 'archivo', 'uploads/transparencia/fae1e7cf50592678900fd62d79e8a40f.pdf', 'Estado de Variacion en la Hacienda Publica', 'fae1e7cf50592678900fd62d79e8a40f.pdf', 'application/pdf', 'uploads/transparencia', 206, '2017-11-30 23:31:56', '2017-11-30 23:31:56'),
(398, 'archivo', 'uploads/transparencia/782978e6c755aacb7e5e937541941fe7.pdf', 'Estados de Flujos de Efectivos', '782978e6c755aacb7e5e937541941fe7.pdf', 'application/pdf', 'uploads/transparencia', 206, '2017-11-30 23:33:09', '2017-11-30 23:33:09'),
(399, 'archivo', 'uploads/transparencia/2e49b2cf67190aaf06cb75a4ba89c7c5.pdf', 'Estado Analitico del Activo', '2e49b2cf67190aaf06cb75a4ba89c7c5.pdf', 'application/pdf', 'uploads/transparencia', 206, '2017-11-30 23:34:21', '2017-11-30 23:34:21'),
(400, 'archivo', 'uploads/transparencia/0a1716573dd07c79b46a77fb1abe5619.pdf', 'Estado de Actividades', '0a1716573dd07c79b46a77fb1abe5619.pdf', 'application/pdf', 'uploads/transparencia', 135, '2017-11-30 23:37:33', '2017-11-30 23:37:33'),
(401, 'archivo', 'uploads/transparencia/68401e399f6d10830d14a5dea662716d.pdf', 'Estado de Actividades', '68401e399f6d10830d14a5dea662716d.pdf', 'application/pdf', 'uploads/transparencia', 208, '2017-11-30 23:38:47', '2017-11-30 23:38:47'),
(402, 'archivo', 'uploads/transparencia/b6999ca568fc15cd772fe2f0db36e739.pdf', 'Estado de Situación Financiera', 'b6999ca568fc15cd772fe2f0db36e739.pdf', 'application/pdf', 'uploads/transparencia', 135, '2017-11-30 23:39:42', '2017-12-28 12:44:17'),
(403, 'archivo', 'uploads/transparencia/8e3360a0b97ff7db70d424a4cfa822c9.pdf', 'Estado de Situacion Financiera', '8e3360a0b97ff7db70d424a4cfa822c9.pdf', 'application/pdf', 'uploads/transparencia', 208, '2017-11-30 23:39:57', '2017-11-30 23:39:57'),
(404, 'archivo', 'uploads/transparencia/93d653940424ec083c6684197096afaf.pdf', 'Estado de Variacion en la Hacienda Publica', '93d653940424ec083c6684197096afaf.pdf', 'application/pdf', 'uploads/transparencia', 208, '2017-11-30 23:41:16', '2017-11-30 23:41:16'),
(405, 'archivo', 'uploads/transparencia/f0a217bd67b707331371718018a88a85.pdf', 'Estado de Flujos de Efectivo', 'f0a217bd67b707331371718018a88a85.pdf', 'application/pdf', 'uploads/transparencia', 135, '2017-11-30 23:42:07', '2017-11-30 23:42:07'),
(406, 'archivo', 'uploads/transparencia/fb303de7761f965a6cf38aca61ddd221.pdf', 'Estado de Cambios en la Situacion Financiera', 'fb303de7761f965a6cf38aca61ddd221.pdf', 'application/pdf', 'uploads/transparencia', 208, '2017-11-30 23:43:22', '2017-11-30 23:43:22'),
(407, 'archivo', 'uploads/transparencia/dcde92c994a834a0eeba326904c56d6b.pdf', 'Estado de Flujos de Efectivo', 'dcde92c994a834a0eeba326904c56d6b.pdf', 'application/pdf', 'uploads/transparencia', 208, '2017-11-30 23:44:32', '2017-11-30 23:44:32'),
(408, 'archivo', 'uploads/transparencia/ab51c327fa05d34c67b382fa912ef576.pdf', 'Estado de Flujos de Efectivo', 'ab51c327fa05d34c67b382fa912ef576.pdf', 'application/pdf', 'uploads/transparencia', 136, '2017-11-30 23:45:14', '2017-11-30 23:45:14'),
(409, 'archivo', 'uploads/transparencia/f4a8f3b2c2a1aaf9c329754450045a53.pdf', 'Estado Analitico del Activo', 'f4a8f3b2c2a1aaf9c329754450045a53.pdf', 'application/pdf', 'uploads/transparencia', 208, '2017-11-30 23:46:41', '2017-11-30 23:46:41'),
(410, 'archivo', 'uploads/transparencia/59cc83572940994425f1923efaf5ab0b.pdf', 'Estado Analitico de Ingresos', '59cc83572940994425f1923efaf5ab0b.pdf', 'application/pdf', 'uploads/transparencia', 210, '2017-11-30 23:51:10', '2017-11-30 23:51:10'),
(411, 'archivo', 'uploads/transparencia/6c8896fad16fc40693e4a86c81b8938f.pdf', 'Estado de Actividades', '6c8896fad16fc40693e4a86c81b8938f.pdf', 'application/pdf', 'uploads/transparencia', 136, '2017-11-30 23:51:33', '2017-11-30 23:51:33'),
(416, 'archivo', 'uploads/transparencia/edaaf5c708c0c3ba0cb24a208dfb9f29.pdf', 'Estado analitico del Ejercicio del Presupuesto de Egreso Clasificacion Economica ( por tipo de gasto)', 'edaaf5c708c0c3ba0cb24a208dfb9f29.pdf', 'application/pdf', 'uploads/transparencia', 210, '2017-12-01 00:15:39', '2017-12-01 00:15:39'),
(418, 'archivo', 'uploads/transparencia/31b58c34f44583ba4851423f938771bc.pdf', 'Estado analitico del Ejercicio del Presupuesto de Egresos Clasificacion Funcional ( Finalidad y Funcion)', '31b58c34f44583ba4851423f938771bc.pdf', 'application/pdf', 'uploads/transparencia', 210, '2017-12-01 00:19:19', '2017-12-01 00:19:19'),
(420, 'archivo', 'uploads/transparencia/713c4ea20c79e3a562ef628da559f02f.pdf', 'Estado analitico del Ejercicio del Presupuesto de Egresos Clasificacion por Objeto del Gasto', '713c4ea20c79e3a562ef628da559f02f.pdf', 'application/pdf', 'uploads/transparencia', 210, '2017-12-01 00:25:02', '2017-12-01 00:25:02'),
(424, 'archivo', 'uploads/transparencia/e99247741f521649efb1d8ad3f88b637.pdf', 'Estado analitico del Ejercicio del Presupuesto de Egresos Clasificacion Economica (por Tipo de gasto)', 'e99247741f521649efb1d8ad3f88b637.pdf', 'application/pdf', 'uploads/transparencia', 211, '2017-12-01 00:36:08', '2017-12-01 00:36:08'),
(426, 'archivo', 'uploads/transparencia/65631c3a5936c78ac8bd35e488dffebb.pdf', 'Estado analitico del Ejercicio del Presupuesto de Egresos Clacificacion Funcional ( Finalidad y Funcion)', '65631c3a5936c78ac8bd35e488dffebb.pdf', 'application/pdf', 'uploads/transparencia', 211, '2017-12-01 00:39:30', '2017-12-01 00:39:30'),
(428, 'archivo', 'uploads/transparencia/cfdc202c442fa862f0da0e9293dfe23b.pdf', 'Estado Analitico del Ingreso', 'cfdc202c442fa862f0da0e9293dfe23b.pdf', 'application/pdf', 'uploads/transparencia', 211, '2017-12-01 00:42:15', '2017-12-01 00:42:15'),
(430, 'archivo', 'uploads/transparencia/a30de7b478509a7927e419266c84a0c3.pdf', 'Estado analitico del Ejercicio del Presupuesto de Egresos Clasificacion por Objeto de Gasto', 'a30de7b478509a7927e419266c84a0c3.pdf', 'application/pdf', 'uploads/transparencia', 211, '2017-12-01 00:48:05', '2017-12-01 00:48:05'),
(434, 'archivo', 'uploads/transparencia/b824a500c5df76bd0f4f1417b73b6aba.pdf', 'Estado Analitico  de Ingresos', 'b824a500c5df76bd0f4f1417b73b6aba.pdf', 'application/pdf', 'uploads/transparencia', 212, '2017-12-01 01:05:08', '2017-12-01 01:05:08'),
(435, 'archivo', 'uploads/transparencia/389f0fcf840f38a0f7bcc4ca550ed282.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificacion Economica', '389f0fcf840f38a0f7bcc4ca550ed282.pdf', 'application/pdf', 'uploads/transparencia', 212, '2017-12-01 01:07:55', '2017-12-01 01:07:55'),
(436, 'archivo', 'uploads/transparencia/6187eb894ec5c102cffe4621e769f7be.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificacion por el objeto del gasto', '6187eb894ec5c102cffe4621e769f7be.pdf', 'application/pdf', 'uploads/transparencia', 212, '2017-12-01 01:10:20', '2017-12-01 01:10:20'),
(437, 'archivo', 'uploads/transparencia/1b108cf289907976c6d637971b7ac3ea.pdf', 'Estado Analitico del Ejercicio del presupuesto de Egresos Clasificacion Funcional ', '1b108cf289907976c6d637971b7ac3ea.pdf', 'application/pdf', 'uploads/transparencia', 212, '2017-12-01 01:12:37', '2017-12-01 01:12:37'),
(438, 'archivo', 'uploads/transparencia/d42df6e21e0e03152d12712abd15a0e1.pdf', 'Estado Analitico de Ingresos ', 'd42df6e21e0e03152d12712abd15a0e1.pdf', 'application/pdf', 'uploads/transparencia', 213, '2017-12-01 01:17:01', '2017-12-01 01:17:01'),
(439, 'archivo', 'uploads/transparencia/c0ee0ae5013d4526ee8f147ece432dde.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificacion Economica', 'c0ee0ae5013d4526ee8f147ece432dde.pdf', 'application/pdf', 'uploads/transparencia', 213, '2017-12-01 01:19:04', '2017-12-01 01:19:04'),
(440, 'archivo', 'uploads/transparencia/630748d3484f1a0610e5d87426ce743a.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificacion por Objeto del Gasto', '630748d3484f1a0610e5d87426ce743a.pdf', 'application/pdf', 'uploads/transparencia', 213, '2017-12-01 01:21:17', '2017-12-01 01:21:17'),
(441, 'archivo', 'uploads/transparencia/a026259b7d69ad684ea5877b9f865b8a.pdf', 'Estados Analitico  del Ejercicio del presupuesto de Egresos Clasificion Funcional', 'a026259b7d69ad684ea5877b9f865b8a.pdf', 'application/pdf', 'uploads/transparencia', 213, '2017-12-01 01:24:35', '2017-12-01 01:24:35'),
(447, 'archivo', 'uploads/transparencia/517c568e70d13ab95b6674eef73b169e.pdf', 'Primer Trimestre', '517c568e70d13ab95b6674eef73b169e.pdf', 'application/pdf', 'uploads/transparencia', 216, '2017-12-01 17:38:24', '2017-12-01 17:38:24'),
(452, 'archivo', 'uploads/transparencia/32f21ec1cc65e7b0347750d046f6b99e.pdf', 'estados e informes presupuestarios', '32f21ec1cc65e7b0347750d046f6b99e.pdf', 'application/pdf', 'uploads/transparencia', 153, '2017-12-01 19:38:47', '2017-12-01 19:38:47'),
(453, 'archivo', 'uploads/transparencia/ef81399935063e519f9219970f7c8004.pdf', 'estados e informes presupuestarios', 'ef81399935063e519f9219970f7c8004.pdf', 'application/pdf', 'uploads/transparencia', 217, '2017-12-01 19:39:51', '2017-12-01 19:39:51'),
(454, 'archivo', 'uploads/transparencia/3ea7a76c46c8cb565b53ca44f8686666.pdf', 'estados e informes presupuestarios', '3ea7a76c46c8cb565b53ca44f8686666.pdf', 'application/pdf', 'uploads/transparencia', 218, '2017-12-01 19:41:24', '2017-12-01 19:41:24'),
(455, 'archivo', 'uploads/transparencia/98ecb12959c365620d1a021b30d3ea1d.pdf', 'estados e informes presupuestarios', '98ecb12959c365620d1a021b30d3ea1d.pdf', 'application/pdf', 'uploads/transparencia', 219, '2017-12-01 19:42:32', '2017-12-01 19:42:32'),
(456, 'archivo', 'uploads/transparencia/706c6535c7e9ff5bee7c082ed083d92f.pdf', 'estados e informes presupuestarios', '706c6535c7e9ff5bee7c082ed083d92f.pdf', 'application/pdf', 'uploads/transparencia', 139, '2017-12-01 19:47:37', '2017-12-01 19:47:37'),
(457, 'archivo', 'uploads/transparencia/4b8cb37fe098701c714ad649f9df6377.pdf', 'estados e informes presupuestarios', '4b8cb37fe098701c714ad649f9df6377.pdf', 'application/pdf', 'uploads/transparencia', 140, '2017-12-01 19:48:24', '2017-12-01 19:48:24'),
(458, 'archivo', 'uploads/transparencia/5d62d11883e420e8e05cfef974c30a9a.pdf', 'estados e informes presupuestarios', '5d62d11883e420e8e05cfef974c30a9a.pdf', 'application/pdf', 'uploads/transparencia', 141, '2017-12-01 19:48:59', '2017-12-01 19:48:59'),
(459, 'archivo', 'uploads/transparencia/a2d15a8cf606112a877c70e7aa2077ca.pdf', 'informacion adicional de la ley de ingresos', 'a2d15a8cf606112a877c70e7aa2077ca.pdf', 'application/pdf', 'uploads/transparencia', 221, '2017-12-01 20:07:24', '2017-12-01 20:07:24'),
(460, 'archivo', 'uploads/transparencia/44ce2ef8155ba96fb778b7fbc6cbff8a.pdf', 'informacion adicional del proyecto del presupuesto de egresos', '44ce2ef8155ba96fb778b7fbc6cbff8a.pdf', 'application/pdf', 'uploads/transparencia', 221, '2017-12-01 20:08:33', '2017-12-01 20:08:33'),
(461, 'archivo', 'uploads/transparencia/a88667c032c6550b85456e239c77978b.pdf', 'calendario de egresos base mensual', 'a88667c032c6550b85456e239c77978b.pdf', 'application/pdf', 'uploads/transparencia', 221, '2017-12-01 20:10:17', '2017-12-01 20:10:17'),
(462, 'archivo', 'uploads/transparencia/a40b6c70921ba713b8ceebfbe891ad0d.pdf', 'proyecto del presupuesto de egresos', 'a40b6c70921ba713b8ceebfbe891ad0d.pdf', 'application/pdf', 'uploads/transparencia', 221, '2017-12-01 20:11:39', '2017-12-01 20:11:39'),
(463, 'archivo', 'uploads/transparencia/c401e921208556e3e8b4ed1bdd3f1586.JPG', 'difucion a la ciudadania respecto de la ley de ingresos y del presupuesto de egresos', 'c401e921208556e3e8b4ed1bdd3f1586.JPG', 'image/jpeg', 'uploads/transparencia', 221, '2017-12-01 20:24:41', '2017-12-01 20:24:41'),
(464, 'archivo', 'uploads/transparencia/ee1f009c64d8472b104b111fbc02e124.xlsx', 'Inventario de Muebles', 'ee1f009c64d8472b104b111fbc02e124.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'uploads/transparencia', 78, '2017-12-01 20:27:05', '2017-12-01 20:40:26'),
(465, 'archivo', 'uploads/transparencia/dfd5e94f6388fccede12f71851ef4e3c.pdf', 'aplicacion de recurso fismdf', 'dfd5e94f6388fccede12f71851ef4e3c.pdf', 'application/pdf', 'uploads/transparencia', 230, '2017-12-01 20:28:01', '2017-12-01 20:28:01'),
(466, 'archivo', 'uploads/transparencia/18e779f1471855f90549af9c0b23134d.pdf', 'aplicacion del recurso fortamundf', '18e779f1471855f90549af9c0b23134d.pdf', 'application/pdf', 'uploads/transparencia', 230, '2017-12-01 20:28:45', '2017-12-01 20:28:45'),
(467, 'archivo', 'uploads/transparencia/65667beae906e684dfd792c284a4b1ad.pdf', 'ejercicio y destino de ingresos extraordinarios por convenios federales', '65667beae906e684dfd792c284a4b1ad.pdf', 'application/pdf', 'uploads/transparencia', 230, '2017-12-01 20:29:44', '2017-12-01 20:29:44'),
(468, 'archivo', 'uploads/transparencia/cdb6219ed1dd344780948ed393073a24.pdf', 'programas con recursos federales por orden de gobierno', 'cdb6219ed1dd344780948ed393073a24.pdf', 'application/pdf', 'uploads/transparencia', 230, '2017-12-01 20:30:46', '2017-12-01 20:30:46'),
(470, 'archivo', 'uploads/transparencia/cfaadea404c73350275b913de278640f.pdf', 'aplicacion de recursos fismdf', 'cfaadea404c73350275b913de278640f.pdf', 'application/pdf', 'uploads/transparencia', 231, '2017-12-01 20:32:07', '2017-12-01 20:32:07'),
(471, 'archivo', 'uploads/transparencia/b95571d9659b46a7b1cb5d719370ce4b.pdf', 'aplicacion del recurso fortamundf', 'b95571d9659b46a7b1cb5d719370ce4b.pdf', 'application/pdf', 'uploads/transparencia', 231, '2017-12-01 20:32:46', '2017-12-01 20:32:46'),
(472, 'archivo', 'uploads/transparencia/da20d220c528a32ecea572129421e23f.pdf', 'ejercicio y destino de ingresos extraordinarios por convenios federales', 'da20d220c528a32ecea572129421e23f.pdf', 'application/pdf', 'uploads/transparencia', 231, '2017-12-01 20:33:20', '2017-12-01 20:33:20'),
(473, 'archivo', 'uploads/transparencia/205ec4d0574614780ea9e430333791a3.pdf', 'programas con recursos federales por orden de gobierno', '205ec4d0574614780ea9e430333791a3.pdf', 'application/pdf', 'uploads/transparencia', 231, '2017-12-01 20:33:47', '2017-12-01 20:33:47'),
(475, 'archivo', 'uploads/transparencia/703938ab4edbb7587a99682f529b515a.xlsx', 'Inventario de Muebles', '703938ab4edbb7587a99682f529b515a.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'uploads/transparencia', 81, '2017-12-01 20:38:26', '2017-12-01 20:38:26'),
(476, 'archivo', 'uploads/transparencia/96246219c08e0602a4dca3bd2d8c3492.xlsx', 'Inventario de Muebles', '96246219c08e0602a4dca3bd2d8c3492.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'uploads/transparencia', 84, '2017-12-01 20:44:14', '2017-12-01 20:44:14'),
(478, 'archivo', 'uploads/transparencia/e029420ff3f25de980d9c451acce52df.pdf', 'Estado Analitico de Ingresos', 'e029420ff3f25de980d9c451acce52df.pdf', 'application/pdf', 'uploads/transparencia', 125, '2017-12-05 17:02:46', '2017-12-05 17:02:46'),
(479, 'archivo', 'uploads/transparencia/9e09503a24c37a8e90527979f3ef98d2.pdf', 'estado analitico del ejercicio del presupuesto de egresos clasificacion administrativa', '9e09503a24c37a8e90527979f3ef98d2.pdf', 'application/pdf', 'uploads/transparencia', 125, '2017-12-05 17:05:57', '2017-12-05 17:05:57'),
(480, 'archivo', 'uploads/transparencia/c23f5e73f50526baed86018ad03d4126.pdf', 'Estado Analitica del Ejercicio del Presupuesto de Egresos  Clasificacion Economica por tipo de Gasto ', 'c23f5e73f50526baed86018ad03d4126.pdf', 'application/pdf', 'uploads/transparencia', 125, '2017-12-05 17:09:23', '2017-12-05 17:09:23'),
(481, 'archivo', 'uploads/transparencia/f6247212a9952eecc4d3333357c2ec63.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificiacion Funcional', 'f6247212a9952eecc4d3333357c2ec63.pdf', 'application/pdf', 'uploads/transparencia', 125, '2017-12-05 17:11:38', '2017-12-05 17:11:38'),
(482, 'archivo', 'uploads/transparencia/da08c645b0c4917126ac7a7e795a4e7a.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificada por Objeto del Gasto', 'da08c645b0c4917126ac7a7e795a4e7a.pdf', 'application/pdf', 'uploads/transparencia', 125, '2017-12-05 17:14:01', '2017-12-05 17:14:01'),
(484, 'archivo', 'uploads/transparencia/4bde28ee5e0aa5b4e5bf6ef1840eec72.pdf', 'Estado Analitico de Ingresos', '4bde28ee5e0aa5b4e5bf6ef1840eec72.pdf', 'application/pdf', 'uploads/transparencia', 124, '2017-12-07 16:29:49', '2017-12-07 16:29:49'),
(485, 'archivo', 'uploads/transparencia/485e3ae7a4e1e3a97750ab0825da3928.pdf', 'Estado Analico del Ejercicio del Presupuesto de Egresos Clasificacion  Administrativa', '485e3ae7a4e1e3a97750ab0825da3928.pdf', 'application/pdf', 'uploads/transparencia', 124, '2017-12-07 16:33:10', '2017-12-07 16:33:10'),
(486, 'archivo', 'uploads/transparencia/d531ad3ebfd03c58fe572095d53d4a7c.pdf', 'Estado Analitico del ejercicio de Presupue de Egresos  Clasificacion Economica', 'd531ad3ebfd03c58fe572095d53d4a7c.pdf', 'application/pdf', 'uploads/transparencia', 124, '2017-12-07 16:35:33', '2017-12-07 16:35:33'),
(487, 'archivo', 'uploads/transparencia/2419c1a3e6d34cff410603f3cba42e66.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificiacion Funcional', '2419c1a3e6d34cff410603f3cba42e66.pdf', 'application/pdf', 'uploads/transparencia', 124, '2017-12-07 16:38:38', '2017-12-07 16:38:38'),
(488, 'archivo', 'uploads/transparencia/3fd01379cf62bacc4e6c54f27c7f5370.pdf', 'Estado de Analitco del ejercicio del Presupuesto de Egresos Clasificacion por Objeto del Gasto', '3fd01379cf62bacc4e6c54f27c7f5370.pdf', 'application/pdf', 'uploads/transparencia', 124, '2017-12-07 16:42:38', '2017-12-07 16:42:38'),
(489, 'archivo', 'uploads/transparencia/303935c8623b6266a96aa150441bbebf.pdf', 'Estado Analitico de Ingresos', '303935c8623b6266a96aa150441bbebf.pdf', 'application/pdf', 'uploads/transparencia', 119, '2017-12-07 16:45:28', '2017-12-07 16:45:28'),
(490, 'archivo', 'uploads/transparencia/93e99b83a7bafec419a8d43676ce5f55.pdf', 'Estado Analitica del Ejercicio del Presuouesto de Egresos Clasificacion  Econocmica', '93e99b83a7bafec419a8d43676ce5f55.pdf', 'application/pdf', 'uploads/transparencia', 119, '2017-12-07 16:47:12', '2017-12-07 16:47:12'),
(491, 'archivo', 'uploads/transparencia/3337eea37370d3b6b82dc5351281395f.pdf', 'estado analitico del ejercicio del presupuesto de egresos clasificacion adminitrativa', '3337eea37370d3b6b82dc5351281395f.pdf', 'application/pdf', 'uploads/transparencia', 119, '2017-12-07 16:48:40', '2017-12-07 16:48:40'),
(492, 'archivo', 'uploads/transparencia/c8bb4729e3978a005847e0d33f1c28b9.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificiacion Funcional', 'c8bb4729e3978a005847e0d33f1c28b9.pdf', 'application/pdf', 'uploads/transparencia', 119, '2017-12-07 16:49:41', '2017-12-07 16:49:41'),
(493, 'archivo', 'uploads/transparencia/860335eeb4a1447943fc2bdf8adc4a7a.pdf', 'Estado Analitico del Ejercicio del Presupuesto de Egresos Clasificada por Objeto del Gasto', '860335eeb4a1447943fc2bdf8adc4a7a.pdf', 'application/pdf', 'uploads/transparencia', 119, '2017-12-07 16:53:28', '2017-12-07 16:53:28'),
(495, 'archivo', 'uploads/transparencia/34af7c7245ffb26dfb433c32fc602bee.pdf', 'Cuenta Publica', '34af7c7245ffb26dfb433c32fc602bee.pdf', 'application/pdf', 'uploads/transparencia', 233, '2017-12-08 13:10:55', '2017-12-08 13:10:55'),
(496, 'archivo', 'uploads/transparencia/6bc728ad325ef851efc8c74d74d23b9f.pdf', 'Norma para Establecer la Estructura de Informacion de la Relacion de las Cuentas Bancarias productivas Especificas  que se Presentan en la Cuenta publica en las cuentas  cuales se Depositen los recursis federales Transferidos', '6bc728ad325ef851efc8c74d74d23b9f.pdf', 'application/pdf', 'uploads/transparencia', 221, '2017-12-08 14:53:15', '2017-12-08 14:53:15'),
(497, 'archivo', 'uploads/transparencia/a4fc609c3c9f7f8a62f748777da0a28d.pdf', 'Norma para establecer el formato para la difusión de los resultados de las evaluciones de los recursos federales ministrados a las entidades federativas', 'a4fc609c3c9f7f8a62f748777da0a28d.pdf', 'application/pdf', 'uploads/transparencia', 221, '2017-12-08 15:02:19', '2017-12-08 15:02:19'),
(498, 'archivo', 'uploads/transparencia/9b40856a8eb8f00dd9762dc13f0bd7a7.pdf', 'Inventario de bienes  inmuebles', '9b40856a8eb8f00dd9762dc13f0bd7a7.pdf', 'application/pdf', 'uploads/transparencia', 88, '2017-12-08 15:10:25', '2017-12-08 15:10:25'),
(499, 'archivo', 'uploads/transparencia/4fff66bfb54e209bdb6d09d956037c91.xlsx', 'Norma para la difuncion a la ciudadana de la ley ingresos y del presupuesto de Egresos', '4fff66bfb54e209bdb6d09d956037c91.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'uploads/transparencia', 221, '2017-12-08 15:54:35', '2017-12-08 15:54:35'),
(500, 'archivo', 'uploads/transparencia/19c8385245bf410446bde00e055142e0.pdf', 'Norma para establecer la Estructura de Información del formato de programas con recursos  federales por orden del gobierno', '19c8385245bf410446bde00e055142e0.pdf', 'application/pdf', 'uploads/transparencia', 231, '2017-12-11 18:30:49', '2017-12-11 18:30:49'),
(501, 'archivo', 'uploads/transparencia/d26d9a5aba4f19f4b76d2683a4274d6a.pdf', 'Norma para establecer la estructura de información del formato de aplicación de recursos del fondo de Aportaciones para el Fortalecimiento de los Municipios y de las Demarcaciones  Territoriales del Distrito nFederal ', 'd26d9a5aba4f19f4b76d2683a4274d6a.pdf', 'application/pdf', 'uploads/transparencia', 231, '2017-12-11 18:40:36', '2017-12-11 18:40:36'),
(502, 'archivo', 'uploads/transparencia/dbbf62fcf131f133c654e2338730b7d5.pdf', 'Norma para establecer la esctructura de Informacion del formato de Programas con recursos federales por orden de gobierno', 'dbbf62fcf131f133c654e2338730b7d5.pdf', 'application/pdf', 'uploads/transparencia', 232, '2017-12-11 18:45:26', '2017-12-11 18:45:26'),
(503, 'archivo', 'uploads/transparencia/30a11b9bd00944d676c4bbe083886ba6.pdf', 'Norma para establecer la estructura de informacion del formato de aplicación de recursos del fondo de Aportaciones para el Fortalecimiento de los Municipios  y de las Demarcaciones territoriales del Distrito Federal', '30a11b9bd00944d676c4bbe083886ba6.pdf', 'application/pdf', 'uploads/transparencia', 232, '2017-12-11 18:49:31', '2017-12-11 18:49:31'),
(504, 'archivo', 'uploads/transparencia/958256db92ef6cd4be60f6cc051cef2e.pdf', 'Estado de Actividades', '958256db92ef6cd4be60f6cc051cef2e.pdf', 'application/pdf', 'uploads/transparencia', 156, '2017-12-14 17:33:55', '2017-12-14 17:33:55'),
(505, 'archivo', 'uploads/transparencia/c3b8fb697d15f2c84460eb9f15ab9116.pdf', 'Estado de Situación financiera', 'c3b8fb697d15f2c84460eb9f15ab9116.pdf', 'application/pdf', 'uploads/transparencia', 149, '2017-12-28 12:49:20', '2017-12-28 12:49:20'),
(506, 'archivo', 'uploads/transparencia/7456eaf01e6dfa8af5784aacbbd36d4b.pdf', 'Estado de Situación Financiera', '7456eaf01e6dfa8af5784aacbbd36d4b.pdf', 'application/pdf', 'uploads/transparencia', 150, '2017-12-28 12:50:24', '2017-12-28 12:50:24'),
(507, 'archivo', 'uploads/transparencia/2f1ee5d0eca487000d24551edf803c9b.pdf', 'Estado de Flujos de Efectivo', '2f1ee5d0eca487000d24551edf803c9b.pdf', 'application/pdf', 'uploads/transparencia', 172, '2017-12-28 13:28:39', '2017-12-28 13:28:39'),
(508, 'archivo', 'uploads/transparencia/0facf8598546cb631650064f02b31dbb.jpg', 'Información Adicional a la Iniciativa de la Ley de Ingresos', '0facf8598546cb631650064f02b31dbb.jpg', 'image/jpeg', 'uploads/transparencia', 235, '2017-12-28 16:39:07', '2017-12-28 16:39:07'),
(509, 'archivo', 'uploads/transparencia/dc160d03594ec022b7140bf84b7c4255.jpg', 'Información Adicional del proyecto de Presupuesto de Egresos', 'dc160d03594ec022b7140bf84b7c4255.jpg', 'image/jpeg', 'uploads/transparencia', 235, '2017-12-28 16:40:01', '2017-12-28 16:40:01'),
(510, 'archivo', 'uploads/transparencia/e4f66f61456466c47e6ee78c13fc63e9.pdf', 'prueba', 'e4f66f61456466c47e6ee78c13fc63e9.pdf', 'application/pdf', 'uploads/transparencia', 328, '2018-02-28 14:46:01', '2018-02-28 14:46:01'),
(511, 'archivo', 'uploads/transparencia/e71d25c5a0a4ae832eb7b30062bbb1d2.pdf', 'ESTADO DE SITUACIÓN FINANCIERA', 'e71d25c5a0a4ae832eb7b30062bbb1d2.pdf', 'application/pdf', 'uploads/transparencia', 329, '2018-03-01 01:13:03', '2018-03-01 01:13:03'),
(512, 'archivo', 'uploads/transparencia/e7438a67b51e7db95425c903078c1d88.pdf', 'ESTADO DE ACTIVIDADES', 'e7438a67b51e7db95425c903078c1d88.pdf', 'application/pdf', 'uploads/transparencia', 329, '2018-03-02 00:32:04', '2018-03-02 00:32:04'),
(513, 'archivo', 'uploads/transparencia/e7128f3101840744c710169fef7540f0.pdf', 'ESTADO DE VARIACION EN LA HACIENDA PUBLICA', 'e7128f3101840744c710169fef7540f0.pdf', 'application/pdf', 'uploads/transparencia', 329, '2018-03-07 15:41:29', '2018-03-07 15:41:29'),
(514, 'archivo', 'uploads/transparencia/ccdb432c8c7b02ca26fb0c689567d1e2.pdf', 'ESTADO DE CAMBIOS EN LA SITUACIÓN FINANCIERA', 'ccdb432c8c7b02ca26fb0c689567d1e2.pdf', 'application/pdf', 'uploads/transparencia', 329, '2018-03-07 15:42:01', '2018-03-07 15:42:01'),
(515, 'archivo', 'uploads/transparencia/3070583f4c455d10974638ed225e87fb.pdf', 'NOTAS A LOS ESTADOS FINANCIEROS', '3070583f4c455d10974638ed225e87fb.pdf', 'application/pdf', 'uploads/transparencia', 329, '2018-03-07 15:43:00', '2018-03-07 15:43:00'),
(516, 'archivo', 'uploads/transparencia/065084c8dfd279458280519b6ba7d0d3.pdf', 'ESTADO ANALITICO DEL ACTIVO', '065084c8dfd279458280519b6ba7d0d3.pdf', 'application/pdf', 'uploads/transparencia', 329, '2018-03-07 15:43:32', '2018-03-07 15:43:32'),
(517, 'archivo', 'uploads/transparencia/be40769600e96c2c9f35d802a88f9260.pdf', 'ESTADO DE FLUJOS DE EFECTIVO', 'be40769600e96c2c9f35d802a88f9260.pdf', 'application/pdf', 'uploads/transparencia', 329, '2018-03-07 15:46:18', '2018-03-07 15:46:18'),
(519, 'archivo', 'uploads/transparencia/508eabe0ab30e600a2eda1968c2f1522.pdf', 'ESTADO ANALITICO DE INGRESOS', '508eabe0ab30e600a2eda1968c2f1522.pdf', 'application/pdf', 'uploads/transparencia', 332, '2018-03-07 16:05:37', '2018-03-07 16:05:37'),
(520, 'archivo', 'uploads/transparencia/634666966ed03e50edf7c9bb3de7afbc.pdf', 'EJERCICIO DEL PRESUPUESTO CLASIFICACIÓN ADMINISTRATIVA', '634666966ed03e50edf7c9bb3de7afbc.pdf', 'application/pdf', 'uploads/transparencia', 332, '2018-03-07 16:15:19', '2018-03-07 16:15:19'),
(521, 'archivo', 'uploads/transparencia/645186c2625958db6b4f6161debeb0f1.pdf', 'EJERCICIO DEL PRESUPUESTO CLASIFICACIÓN ECONOMICA', '645186c2625958db6b4f6161debeb0f1.pdf', 'application/pdf', 'uploads/transparencia', 332, '2018-03-07 16:15:52', '2018-03-07 16:15:52'),
(522, 'archivo', 'uploads/transparencia/af558fedb39a5076d52380c4ebe5ab6d.pdf', 'EJERCICIO DEL PRESUPUESTO CLASIFICACIÓN POR OBJETO DEL GASTO', 'af558fedb39a5076d52380c4ebe5ab6d.pdf', 'application/pdf', 'uploads/transparencia', 332, '2018-03-07 16:16:24', '2018-03-07 16:16:24'),
(523, 'archivo', 'uploads/transparencia/102b15ce2667b35494c72b3cbc540c26.pdf', 'EJERCICIO DEL PRESUPUESTO CLASIFICACIÓN FUNCIONAL', '102b15ce2667b35494c72b3cbc540c26.pdf', 'application/pdf', 'uploads/transparencia', 332, '2018-03-07 16:23:44', '2018-03-07 16:23:44'),
(524, 'archivo', 'uploads/transparencia/a087fecb083256da7c2a855142d7a5ef.pdf', 'INFORMACIÓN ADICIONAL A LA INICIATIVA DE LA LEY DE INGRESOS', 'a087fecb083256da7c2a855142d7a5ef.pdf', 'application/pdf', 'uploads/transparencia', 333, '2018-03-08 00:18:26', '2018-03-08 00:18:26'),
(525, 'archivo', 'uploads/transparencia/0426cc6a316515afcab5ef4902016ac1.pdf', 'INFORMACIÓN ADICIONAL DEL PROYECTO DEL PRESUPUESTO DE EGRESOS', '0426cc6a316515afcab5ef4902016ac1.pdf', 'application/pdf', 'uploads/transparencia', 333, '2018-03-08 01:03:32', '2018-03-08 01:03:32'),
(526, 'archivo', 'uploads/transparencia/2cbe17ea167b793006ca21c3ac56fb37.pdf', 'NORMA PARA  DIFUSIÓN A LA CIUDADANÍA DE LA LEY DE INGRESOS Y DEL PRESUPUESTO DE EGRESOS', '2cbe17ea167b793006ca21c3ac56fb37.pdf', 'application/pdf', 'uploads/transparencia', 333, '2018-03-11 17:49:24', '2018-03-11 21:09:44'),
(527, 'archivo', 'uploads/transparencia/11b91b803c95dfb083432fc12f87b68d.pdf', 'INICIATIVA DE LEY DE INGRESOS 2018 TERMINOS DEL 63 DE LA LGCG', '11b91b803c95dfb083432fc12f87b68d.pdf', 'application/pdf', 'uploads/transparencia', 333, '2018-03-11 21:06:21', '2018-03-11 21:06:21'),
(528, 'archivo', 'uploads/transparencia/1135a3ca0debe73e07d29bb9b7118ba1.pdf', 'PRESUPUESTO DE EGRESOS EN TÉRMINOS DEL 63 LGCG', '1135a3ca0debe73e07d29bb9b7118ba1.pdf', 'application/pdf', 'uploads/transparencia', 333, '2018-03-11 21:43:48', '2018-03-11 21:43:48'),
(529, 'archivo', 'uploads/transparencia/f0ea5888bab0bfbd33a2e8dbb65826f6.pdf', 'CALENDARIO DE INGRESOS DE BASE MENSUAL', 'f0ea5888bab0bfbd33a2e8dbb65826f6.pdf', 'application/pdf', 'uploads/transparencia', 333, '2018-03-11 21:48:41', '2018-03-11 21:48:41'),
(530, 'archivo', 'uploads/transparencia/1b89fd42d728d747da82496b21aead6f.pdf', 'CALENDARIO DE EGRESOS DE BASE MENSUAL', '1b89fd42d728d747da82496b21aead6f.pdf', 'application/pdf', 'uploads/transparencia', 333, '2018-03-11 22:03:36', '2018-03-11 22:03:36'),
(531, 'archivo', 'uploads/transparencia/5480c4598955ed90b0a0c6e8e4550b2d.pdf', 'INFORMACION DE MONTOS PAGADOS POR AYUDAS Y SUBSIDIOS', '5480c4598955ed90b0a0c6e8e4550b2d.pdf', 'application/pdf', 'uploads/transparencia', 334, '2018-03-11 22:28:10', '2018-03-11 22:28:10'),
(532, 'archivo', 'uploads/transparencia/78f2f2f186b8256a8e91824c3c934d86.pdf', 'PROGRAMAS CON RECURSOS FEDERALES POR ORDEN DE GOBIERNO', '78f2f2f186b8256a8e91824c3c934d86.pdf', 'application/pdf', 'uploads/transparencia', 334, '2018-03-11 22:31:27', '2018-03-11 22:31:27'),
(533, 'archivo', 'uploads/transparencia/bb6b41b033e859d300bbf553861d9043.pdf', 'RELACION DE CUENTAS BANCARIAS PRODUCTIVAS', 'bb6b41b033e859d300bbf553861d9043.pdf', 'application/pdf', 'uploads/transparencia', 334, '2018-03-11 22:43:41', '2018-03-11 22:43:41'),
(534, 'archivo', 'uploads/transparencia/7fb216639cac60aa9881b6506aa5e2e7.pdf', 'FORMATO DE APLICACIÓN DE RECURSOS DEL FORTAMUN', '7fb216639cac60aa9881b6506aa5e2e7.pdf', 'application/pdf', 'uploads/transparencia', 334, '2018-03-11 22:46:25', '2018-03-11 22:46:25'),
(535, 'archivo', 'uploads/transparencia/f7ee998ba13badc8590449e790422a0a.pdf', 'CUENTA PUBLICA 2017', 'f7ee998ba13badc8590449e790422a0a.pdf', 'application/pdf', 'uploads/transparencia', 333, '2018-03-12 00:02:09', '2018-03-12 00:02:09'),
(536, 'archivo', 'uploads/transparencia/2c0bd45373e0860e619d342fc5f20701.pdf', 'OBLIGACIONES PAGADAS O GARANTIZADAS CON FONDOS FEDERALES', '2c0bd45373e0860e619d342fc5f20701.pdf', 'application/pdf', 'uploads/transparencia', 334, '2018-03-12 00:44:35', '2018-03-12 00:44:35'),
(537, 'archivo', 'uploads/transparencia/41715a93f7337fc26f09ed48044390c9.pdf', 'EJERCICIO Y DESTINO DE GASTO FEDERALIZADO Y REINTEGROS', '41715a93f7337fc26f09ed48044390c9.pdf', 'application/pdf', 'uploads/transparencia', 334, '2018-03-12 00:56:46', '2018-03-12 00:56:46'),
(538, 'archivo', 'uploads/transparencia/db05d19fdd0f346f6eda2247a438ae05.pdf', 'PUBLICAR LEY DE INGRESOS APROBADA EN TERMINOS DEL ARTICULO 65 DE LA LEY', 'db05d19fdd0f346f6eda2247a438ae05.pdf', 'application/pdf', 'uploads/transparencia', 333, '2018-03-12 01:01:58', '2018-03-12 01:01:58'),
(539, 'archivo', 'uploads/transparencia/9e3d78a4a980f1773467c81cc51567ee.pdf', 'PRESUPUESTO DE EGRESOS APROBADO EN TÉRMINOS DEL 65', '9e3d78a4a980f1773467c81cc51567ee.pdf', 'application/pdf', 'uploads/transparencia', 333, '2018-03-12 01:11:20', '2018-03-12 01:11:20'),
(540, 'archivo', 'uploads/transparencia/11f46d1ea991460403a60215112b7739.pdf', 'PROGRAMA ANUAL DE EVALUACIONES', '11f46d1ea991460403a60215112b7739.pdf', 'application/pdf', 'uploads/transparencia', 333, '2018-03-12 02:12:27', '2018-03-12 02:12:27'),
(541, 'archivo', 'uploads/transparencia/a436936d36783ab5401c9ae3e5934de6.pdf', 'FORMATO PARA LA DIFUSION DE RESULTADOS DE LAS EVALUACIONES DE LOS RECURSOS FEDERALES', 'a436936d36783ab5401c9ae3e5934de6.pdf', 'application/pdf', 'uploads/transparencia', 333, '2018-03-12 02:40:27', '2018-03-12 02:40:27'),
(542, 'archivo', 'uploads/transparencia/6ea0f5bf90e3c837a005ee257b1b29b0.pdf', 'ACTA NUMERO 1', '6ea0f5bf90e3c837a005ee257b1b29b0.pdf', 'application/pdf', 'uploads/transparencia', 335, '2018-03-12 12:22:08', '2018-03-12 12:22:08'),
(543, 'archivo', 'uploads/transparencia/6f0d424861f173e2820e5787f26d5e69.pdf', 'INVENTARIO', '6f0d424861f173e2820e5787f26d5e69.pdf', 'application/pdf', 'uploads/transparencia', 338, '2018-03-12 13:04:52', '2018-03-12 13:27:50'),
(544, 'archivo', 'uploads/transparencia/b82ffb97de0ca013333cd3a0b5fd4ab6.pdf', 'PRESUPUESTO DE EGRESOS APROBADO EN TÉRMINOS DEL 65', 'b82ffb97de0ca013333cd3a0b5fd4ab6.pdf', 'application/pdf', 'uploads/transparencia', 264, '2018-03-12 13:12:04', '2018-03-12 13:12:04'),
(545, 'archivo', 'uploads/transparencia/10664fb77e37b9d3bd482f1d012267be.pdf', 'APLICACION DEL FISM', '10664fb77e37b9d3bd482f1d012267be.pdf', 'application/pdf', 'uploads/transparencia', 334, '2018-03-12 14:20:58', '2018-03-12 14:20:58'),
(546, 'archivo', 'uploads/transparencia/397beb49902d1fcefc70fa81c90a4004.pdf', 'Formatos 7a), 7b), 7c), 7d): Proyecciones y Resultados de Ingresos y Egresos.', '397beb49902d1fcefc70fa81c90a4004.pdf', 'application/pdf', 'uploads/transparencia', 339, '2018-03-12 16:51:57', '2018-03-12 16:51:57'),
(547, 'archivo', 'uploads/transparencia/9f172f5a12fe161062cef644d5a6d8a1.pdf', 'Acta Extraordinaria N° 16', '9f172f5a12fe161062cef644d5a6d8a1.pdf', 'application/pdf', 'uploads/transparencia', 337, '2018-03-13 14:44:01', '2018-03-13 14:44:01'),
(548, 'archivo', 'uploads/transparencia/98c4d0eb142d71ca7b360db995a5e13f.pdf', 'Acta Ordinaria Nº 1', '98c4d0eb142d71ca7b360db995a5e13f.pdf', 'application/pdf', 'uploads/transparencia', 336, '2018-03-14 10:57:48', '2018-03-14 10:57:48'),
(549, 'archivo', 'uploads/transparencia/fd06bd3aa913f8dbe90ceebeefb2f03d.pdf', 'Acta ordinaria Nº 2', 'fd06bd3aa913f8dbe90ceebeefb2f03d.pdf', 'application/pdf', 'uploads/transparencia', 336, '2018-03-14 11:03:16', '2018-03-14 11:03:16'),
(550, 'archivo', 'uploads/transparencia/09bc3dbf23d427c8f51335d47775af5c.pdf', 'Acta ordinaria Nº 2 Bis', '09bc3dbf23d427c8f51335d47775af5c.pdf', 'application/pdf', 'uploads/transparencia', 336, '2018-03-14 11:06:14', '2018-03-14 11:06:14'),
(551, 'archivo', 'uploads/transparencia/b3353ff9fb92dbeed589e617c72b83be.pdf', 'Acta ordinaria Nº 3', 'b3353ff9fb92dbeed589e617c72b83be.pdf', 'application/pdf', 'uploads/transparencia', 336, '2018-03-14 11:09:25', '2018-03-14 11:09:25'),
(552, 'archivo', 'uploads/transparencia/9356ffe2415cbc65cd2162bae068ca96.pdf', 'Acta ordinaria Nº 4', '9356ffe2415cbc65cd2162bae068ca96.pdf', 'application/pdf', 'uploads/transparencia', 336, '2018-03-14 11:15:17', '2018-03-14 11:15:17'),
(553, 'archivo', 'uploads/transparencia/7223f60a42346d184fde67672e9ace00.pdf', 'Acta ordinaria Nº 6', '7223f60a42346d184fde67672e9ace00.pdf', 'application/pdf', 'uploads/transparencia', 336, '2018-03-14 11:17:19', '2018-03-14 11:17:19'),
(554, 'archivo', 'uploads/transparencia/894d61e821b774431aa5a0b1b2f6eeb5.pdf', 'Acta extraordinaria Nº1', '894d61e821b774431aa5a0b1b2f6eeb5.pdf', 'application/pdf', 'uploads/transparencia', 337, '2018-03-14 11:26:56', '2018-03-14 11:26:56'),
(555, 'archivo', 'uploads/transparencia/c69106752c45bd31be4b2ec143f46c29.pdf', 'Acta extraordinaria Nº 2', 'c69106752c45bd31be4b2ec143f46c29.pdf', 'application/pdf', 'uploads/transparencia', 337, '2018-03-14 11:30:45', '2018-03-14 11:30:45'),
(556, 'archivo', 'uploads/transparencia/485b0aec222cade8860d93b46a4977aa.pdf', 'Acta extraordinaria Nº 3', '485b0aec222cade8860d93b46a4977aa.pdf', 'application/pdf', 'uploads/transparencia', 337, '2018-03-14 11:35:43', '2018-03-14 11:35:43'),
(557, 'archivo', 'uploads/transparencia/713a83a09dd32217fc83d90c06655c0a.pdf', 'Acta extraordinaria Nº 4', '713a83a09dd32217fc83d90c06655c0a.pdf', 'application/pdf', 'uploads/transparencia', 337, '2018-03-14 11:38:32', '2018-03-14 11:38:32'),
(558, 'archivo', 'uploads/transparencia/e789c362f702aa4795388fadbe2f1941.pdf', 'Acta extraordinaria Nº 5', 'e789c362f702aa4795388fadbe2f1941.pdf', 'application/pdf', 'uploads/transparencia', 337, '2018-03-14 11:50:23', '2018-03-14 11:50:23'),
(559, 'archivo', 'uploads/transparencia/bee6a5005723f2defc740a770a1efa11.pdf', 'Acta extraordinaria Nº 6', 'bee6a5005723f2defc740a770a1efa11.pdf', 'application/pdf', 'uploads/transparencia', 337, '2018-03-14 11:52:25', '2018-03-14 11:52:25'),
(560, 'archivo', 'uploads/transparencia/78e8d75a36b55574920aaa0abd4a88d8.pdf', 'Acta extraordinaria Nº 7', '78e8d75a36b55574920aaa0abd4a88d8.pdf', 'application/pdf', 'uploads/transparencia', 337, '2018-03-14 11:53:10', '2018-03-14 11:53:10'),
(561, 'archivo', 'uploads/transparencia/3cb50cf36bfa872e229e71bf60b5255c.pdf', 'Acta extraordinaria Nº 8', '3cb50cf36bfa872e229e71bf60b5255c.pdf', 'application/pdf', 'uploads/transparencia', 337, '2018-03-14 11:57:12', '2018-03-14 11:57:12'),
(562, 'archivo', 'uploads/transparencia/22600f5c6ec203c92d50ad150b3f3f86.pdf', 'Acta extraordinaria Nº 9', '22600f5c6ec203c92d50ad150b3f3f86.pdf', 'application/pdf', 'uploads/transparencia', 337, '2018-03-14 11:59:14', '2018-03-14 11:59:14'),
(563, 'archivo', 'uploads/transparencia/a87d3c5c17ec4ecabd891a2a2a4724a7.pdf', 'Acta extraordinaria Nº 10', 'a87d3c5c17ec4ecabd891a2a2a4724a7.pdf', 'application/pdf', 'uploads/transparencia', 337, '2018-03-14 12:00:36', '2018-03-14 12:00:36'),
(564, 'archivo', 'uploads/transparencia/6a58e11584bd5499acffcce0a164b2a9.pdf', 'Acta extraordinaria Nº 11', '6a58e11584bd5499acffcce0a164b2a9.pdf', 'application/pdf', 'uploads/transparencia', 337, '2018-03-14 12:02:04', '2018-03-14 12:02:04'),
(565, 'archivo', 'uploads/transparencia/4507be3f091efddc49470fbcd45a5490.pdf', 'Acta extraordinaria Nº 13', '4507be3f091efddc49470fbcd45a5490.pdf', 'application/pdf', 'uploads/transparencia', 337, '2018-03-14 12:03:51', '2018-03-14 12:03:51'),
(566, 'archivo', 'uploads/transparencia/e697c3bd44678e525f880eb27bb7b852.pdf', 'Acta extraordinaria Nº 14', 'e697c3bd44678e525f880eb27bb7b852.pdf', 'application/pdf', 'uploads/transparencia', 337, '2018-03-14 12:04:44', '2018-03-14 12:04:44'),
(567, 'archivo', 'uploads/transparencia/37ad1f975afda690aaa7f7be10e39faa.pdf', 'Acta extraordinaria Nº 15', '37ad1f975afda690aaa7f7be10e39faa.pdf', 'application/pdf', 'uploads/transparencia', 337, '2018-03-14 12:05:48', '2018-03-14 12:05:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_encryption` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` text NOT NULL,
  `smtp_pass` text NOT NULL,
  `mailtype` text,
  `charset` text NOT NULL,
  `from` text NOT NULL,
  `from_name` text NOT NULL,
  `to` text NOT NULL,
  `cc` text,
  `reply_to` text,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '3',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 MAX_ROWS=1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fraccion`
--

CREATE TABLE `fraccion` (
  `id` int(11) NOT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `descripcion` text NOT NULL,
  `order` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tipo_id` int(11) DEFAULT NULL,
  `fecha_validacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fraccion`
--

INSERT INTO `fraccion` (`id`, `numero`, `descripcion`, `order`, `created_at`, `updated_at`, `tipo_id`, `fecha_validacion`) VALUES
(1, 'I', 'Marco Normativo', 0, NULL, '2017-10-24 11:04:16', 1, NULL),
(2, 'II', 'Estructura Organica completa', 0, NULL, '2017-10-24 11:04:16', 1, NULL),
(3, 'III', 'Facultades de las áreas administrativas', 0, NULL, '2017-10-24 11:04:16', 1, NULL),
(4, 'IV', 'Metas y objetivos de las áreas administrativas', 0, NULL, '2017-10-24 11:04:16', 1, NULL),
(5, 'V', 'Indicadores de gestión de interés público o trascendencia social', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(6, 'VI', 'Indicadores de objetivos y resultados', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(7, 'VII', 'Directorio de servidores públicos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(8, 'VIII', 'Remuneración bruta y neta de todos los Servidores Públicos de base o de confianza', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(9, 'IX', 'Gastos de representación y viáticos e informes de comisiones', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(10, 'X', 'Número total de plazas del personal de base y de confianza', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(11, 'XI', 'Contrataciones de servicios profesionales por honorarios', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(12, 'XII', 'Versiones públicas de las declaraciones patrimoniales', 0, NULL, '2017-02-17 14:56:37', 1, NULL),
(13, 'XIII', 'Domicilio de la unidad de transparencia', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(14, 'XIV', 'Convocatorias a concursos para ocupar cargos públicos ', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(15, 'XV', 'Programas de subsidios, estímulos y apoyos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(16, 'XVI', 'Condiciones generales de trabajo, contratos o convenios que regulen las relaciones laborales del personal de base o de confianza ', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(17, 'XVII', 'Información curricular', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(18, 'XVIII', 'Listado de Servidores Públicos con sanciones administrativas definitivas', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(19, 'XIX', 'Servicios que ofrecen', 0, NULL, '2017-02-17 15:16:21', 1, NULL),
(20, 'XX', 'Trámites, requisitos y formatos ofrecidos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(21, 'XXI', 'Información financiera sobre el presupuesto asignado', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(22, 'XXII', 'Información relativa a la deuda pública', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(23, 'XXIII', 'Montos destinados a gastos relativos a comunicación social y publicidad oficial', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(24, 'XXIV', 'Informes de resultado y aclaraciones de las auditorías al ejercicio presupuestal de cada sujeto obligado ', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(25, 'XXV', 'Resultados de dictaminación de los restados financieros', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(26, 'XXVI', 'Montos, criterios, convocatorias y listado de personas físicas o morales con acceso a recursos públicos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(27, 'XXVII', 'Concesiones, contratos, convenios, permisos, licencias o autorizaciones otorgados', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(28, 'XXVIII', 'Resultados sobre procedimientos de adjudicación directa, invitación restringida y licitación de cualquier naturaleza, incluyendo la versión pública del expediente respectivo y los contratos celebrados', 0, NULL, '2017-02-17 15:18:10', 1, NULL),
(29, 'XXIX', 'Informes de los sujetos obligados generados por disposición legal', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(30, 'XXX', 'Estadísticas generadas en cumplimentos de sus facultades, competencias o funciones', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(31, 'XXXI', 'Informe de avances programáticos o presupuestales, balances generales y su estado financiero', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(32, 'XXXII', 'Padrón de proveedores y contratistas', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(33, 'XXXIII', 'Convenios de coordinación de concertación con los sectores social y privado', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(34, 'XXXIV', 'Inventario de bienes muebles e inmuebles en posesión y propiedad', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(35, 'XXXV', 'Recomendaciones emitidas por los órganos públicos del Estado mexicano u organismos internacionales garantes de los derechos humanos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(36, 'XXXVI', 'Resoluciones y laudos emitidos en procesos o procedimientos seguidos en forma de juicio', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(37, 'XXXVII', 'Mecanismos de participación ciudadana', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(38, 'XXXVIII', 'Programas disponibles', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(39, 'XXXIX', 'Actas y resoluciones del Comité de Transparencia de los sujetos obligados', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(40, 'XL', 'Evaluaciones y encuestas de los sujetos obligados sobre programas financiados con recursos públicos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(41, 'XLI', 'Estudios financiados con recursos públicos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(42, 'XLII', 'Listado de jubilados y pensionados y el monto que reciben', 0, NULL, '2017-02-17 14:57:19', 1, NULL),
(43, 'XLIII', 'Ingresos recibidos por cualquier concepto', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(44, 'XLIV', 'Donaciones hechas a terceros en dinero o en especie', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(45, 'XLV', 'Catálogo de disposición y guía de archivo documental', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(46, 'XLVI', 'Actas de sesiones ordinarias y extraordinarias', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(47, 'XLVIII', 'Información útil o relevante', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(48, 'XLIX', 'Cuentas públicas municipales', 0, NULL, '2017-03-31 10:20:13', 1, NULL),
(49, 'LI', 'Relación de los servidores públicos comisionados por cualquier causa', 0, NULL, '2017-03-31 10:20:13', 1, NULL),
(50, 'LII', 'Índices de expedientes clasificados como reservados, elaborados semestralmente y por rubros temáticos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(51, 'LIV', 'Información útil o relevante', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(52, 'a', 'Plan Municipal de Desarrollo ', 0, '2017-02-17 14:52:27', '2017-04-04 12:48:29', 2, NULL),
(53, 'b', 'Los objetivos, metas y acciones contenidas en sus programas', 0, '2017-02-17 15:00:11', '2017-04-04 12:48:29', 2, NULL),
(54, 'c', 'Ley de ingresos y presupuesto de egresos ', 0, '2017-02-17 15:00:45', '2017-04-04 12:48:29', 2, NULL),
(55, 'd', 'El nombre, denominación o razón social y RFC de los contribuyentes a los que se les hubiera cancelado o condonado algún crédito fiscal, así como los montos respectivos. Asimismo la información estadística sobre las exenciones fiscales', 0, '2017-02-17 15:03:21', '2017-04-04 12:48:39', 2, NULL),
(56, 'e', 'Planes de desarrollo urbano, ordenamiento territorial y ecológico, tipos y usos de suelo, licencias de uso y construcción otorgadas por los gobiernos municipales. ', 0, '2017-02-17 15:04:55', '2017-04-04 12:49:19', 2, NULL),
(57, 'f', 'Disposiciones administrativas, directamente o a través de autoridad competente, con el plazo de anticipación que prevean las disposiciones aplicables, salvo que su difusión comprometa su efectos o se trate de situaciones de emergencia.', 0, '2017-02-17 15:07:11', '2017-04-04 12:49:19', 2, NULL),
(58, 'g', 'Gacetas municipales o publicaciones que difundan las actividades del ayuntamiento y en las que deberán estar comprendidos los resolutivos y acuerdos aprobados por el mismo.', 0, '2017-02-17 15:08:13', '2017-04-04 12:49:19', 2, NULL),
(59, 'h', 'Actas de sesiones de Cabildo y anexos, controles de asistencia de los integrantes del Ayuntamiento a las sesiones del cabildo y el sentido de su votación sobre iniciativas y acuerdos', 0, '2017-02-17 15:09:00', '2017-04-04 12:49:19', 2, NULL),
(60, 'i', 'Estadísticas e indicadores del desempeño de los cuerpos de policía municipal, salvo el caso de que exista convenio con el Estado.', 0, '2017-02-17 15:10:07', '2017-04-04 12:49:19', 2, NULL),
(61, 'j', 'Cantidades recibidas por concepto de multas, así como el uso o aplicación que se les dé', 0, '2017-02-17 15:10:44', '2017-04-04 12:49:19', 2, NULL),
(62, 'k', 'Calendario con las actividades culturales, deportivas y recreativas, a realizar', 0, '2017-02-17 15:11:18', '2017-04-04 12:49:19', 2, NULL),
(63, 'l', 'El calendario con horarios, número de unidad y teléfonos de servicio de recolección de basura', 0, '2017-02-17 15:11:47', '2017-04-04 12:49:19', 2, NULL),
(64, 'I', 'Presupuesto Aprobado', 0, '2017-03-23 10:36:22', '2017-09-08 14:27:41', 3, NULL),
(65, 'II', 'Estado e Información Contable', 0, '2017-03-23 11:32:31', '2017-09-08 14:27:41', 3, NULL),
(66, 'III', 'Estados e Informes Presupuestarios', 0, '2017-03-29 18:01:50', '2017-09-08 14:27:35', 3, NULL),
(67, 'IV', 'Estados e Informes Programáticos', 0, '2017-03-29 18:02:19', '2017-09-08 14:27:35', 3, NULL),
(68, 'V', 'Información Relacionada con el Título V de la LGCG', 0, '2017-03-29 18:02:45', '2017-09-08 14:27:35', 3, NULL),
(69, 'VI', 'Inventario Físico de Bienes Muebles e Inmuebles', 0, '2017-03-29 18:03:17', '2017-09-08 14:27:35', 3, NULL),
(70, 'I', 'Marco Normativo', 0, NULL, '2017-10-24 11:04:16', 1, NULL),
(71, 'II', 'Estructura Organica completa', 0, NULL, '2017-10-24 11:04:16', 1, NULL),
(72, 'III', 'Facultades de las áreas administrativas', 0, NULL, '2017-10-24 11:04:16', 1, NULL),
(73, 'IV', 'Metas y objetivos de las áreas administrativas', 0, NULL, '2017-10-24 11:04:16', 1, NULL),
(74, 'V', 'Indicadores de gestión de interés público o trascendencia social', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(75, 'VI', 'Indicadores de objetivos y resultados', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(76, 'VII', 'Directorio de servidores públicos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(77, 'VIII', 'Remuneración bruta y neta de todos los Servidores Públicos de base o de confianza', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(78, 'IX', 'Gastos de representación y viáticos e informes de comisiones', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(79, 'X', 'Número total de plazas del personal de base y de confianza', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(80, 'XI', 'Contrataciones de servicios profesionales por honorarios', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(81, 'XII', 'Versiones públicas de las declaraciones patrimoniales', 0, NULL, '2017-02-17 14:56:37', 1, NULL),
(82, 'XIII', 'Domicilio de la unidad de transparencia', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(83, 'XIV', 'Convocatorias a concursos para ocupar cargos públicos ', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(84, 'XV', 'Programas de subsidios, estímulos y apoyos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(85, 'XVI', 'Condiciones generales de trabajo, contratos o convenios que regulen las relaciones laborales del personal de base o de confianza ', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(86, 'XVII', 'Información curricular', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(87, 'XVIII', 'Listado de Servidores Públicos con sanciones administrativas definitivas', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(88, 'XIX', 'Servicios que ofrecen', 0, NULL, '2017-02-17 15:16:21', 1, NULL),
(89, 'XX', 'Trámites, requisitos y formatos ofrecidos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(90, 'XXI', 'Información financiera sobre el presupuesto asignado', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(91, 'XXII', 'Información relativa a la deuda pública', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(92, 'XXIII', 'Montos destinados a gastos relativos a comunicación social y publicidad oficial', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(93, 'XXIV', 'Informes de resultado y aclaraciones de las auditorías al ejercicio presupuestal de cada sujeto obligado ', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(94, 'XXV', 'Resultados de dictaminación de los restados financieros', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(95, 'XXVI', 'Montos, criterios, convocatorias y listado de personas físicas o morales con acceso a recursos públicos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(96, 'XXVII', 'Concesiones, contratos, convenios, permisos, licencias o autorizaciones otorgados', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(97, 'XXVIII', 'Resultados sobre procedimientos de adjudicación directa, invitación restringida y licitación de cualquier naturaleza, incluyendo la versión pública del expediente respectivo y los contratos celebrados', 0, NULL, '2017-02-17 15:18:10', 1, NULL),
(98, 'XXIX', 'Informes de los sujetos obligados generados por disposición legal', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(99, 'XXX', 'Estadísticas generadas en cumplimentos de sus facultades, competencias o funciones', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(100, 'XXXI', 'Informe de avances programáticos o presupuestales, balances generales y su estado financiero', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(101, 'XXXII', 'Padrón de proveedores y contratistas', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(102, 'XXXIII', 'Convenios de coordinación de concertación con los sectores social y privado', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(103, 'XXXIV', 'Inventario de bienes muebles e inmuebles en posesión y propiedad', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(104, 'XXXV', 'Recomendaciones emitidas por los órganos públicos del Estado mexicano u organismos internacionales garantes de los derechos humanos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(105, 'XXXVI', 'Resoluciones y laudos emitidos en procesos o procedimientos seguidos en forma de juicio', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(106, 'XXXVII', 'Mecanismos de participación ciudadana', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(107, 'XXXVIII', 'Programas disponibles', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(108, 'XXXIX', 'Actas y resoluciones del Comité de Transparencia de los sujetos obligados', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(109, 'XL', 'Evaluaciones y encuestas de los sujetos obligados sobre programas financiados con recursos públicos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(110, 'XLI', 'Estudios financiados con recursos públicos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(111, 'XLII', 'Listado de jubilados y pensionados y el monto que reciben', 0, NULL, '2017-02-17 14:57:19', 1, NULL),
(112, 'XLIII', 'Ingresos recibidos por cualquier concepto', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(113, 'XLIV', 'Donaciones hechas a terceros en dinero o en especie', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(114, 'XLV', 'Catálogo de disposición y guía de archivo documental', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(115, 'XLVI', 'Actas de sesiones ordinarias y extraordinarias', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(116, 'XLVIII', 'Información útil o relevante', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(117, 'XLIX', 'Cuentas públicas municipales', 0, NULL, '2017-03-31 10:20:13', 1, NULL),
(118, 'LI', 'Relación de los servidores públicos comisionados por cualquier causa', 0, NULL, '2017-03-31 10:20:13', 1, NULL),
(119, 'LII', 'Índices de expedientes clasificados como reservados, elaborados semestralmente y por rubros temáticos', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(120, 'LIV', 'Información útil o relevante', 0, NULL, '2017-02-16 10:43:48', 1, NULL),
(121, 'a', 'Plan Municipal de Desarrollo ', 0, '2017-02-17 14:52:27', '2017-04-04 12:48:29', 2, NULL),
(122, 'b', 'Los objetivos, metas y acciones contenidas en sus programas', 0, '2017-02-17 15:00:11', '2017-04-04 12:48:29', 2, NULL),
(123, 'c', 'Ley de ingresos y presupuesto de egresos ', 0, '2017-02-17 15:00:45', '2017-04-04 12:48:29', 2, NULL),
(124, 'd', 'El nombre, denominación o razón social y RFC de los contribuyentes a los que se les hubiera cancelado o condonado algún crédito fiscal, así como los montos respectivos. Asimismo la información estadística sobre las exenciones fiscales', 0, '2017-02-17 15:03:21', '2017-04-04 12:48:39', 2, NULL),
(125, 'e', 'Planes de desarrollo urbano, ordenamiento territorial y ecológico, tipos y usos de suelo, licencias de uso y construcción otorgadas por los gobiernos municipales. ', 0, '2017-02-17 15:04:55', '2017-04-04 12:49:19', 2, NULL),
(126, 'f', 'Disposiciones administrativas, directamente o a través de autoridad competente, con el plazo de anticipación que prevean las disposiciones aplicables, salvo que su difusión comprometa su efectos o se trate de situaciones de emergencia.', 0, '2017-02-17 15:07:11', '2017-04-04 12:49:19', 2, NULL),
(127, 'g', 'Gacetas municipales o publicaciones que difundan las actividades del ayuntamiento y en las que deberán estar comprendidos los resolutivos y acuerdos aprobados por el mismo.', 0, '2017-02-17 15:08:13', '2017-04-04 12:49:19', 2, NULL),
(128, 'h', 'Actas de sesiones de Cabildo y anexos, controles de asistencia de los integrantes del Ayuntamiento a las sesiones del cabildo y el sentido de su votación sobre iniciativas y acuerdos', 0, '2017-02-17 15:09:00', '2017-04-04 12:49:19', 2, NULL),
(129, 'i', 'Estadísticas e indicadores del desempeño de los cuerpos de policía municipal, salvo el caso de que exista convenio con el Estado.', 0, '2017-02-17 15:10:07', '2017-04-04 12:49:19', 2, NULL),
(130, 'j', 'Cantidades recibidas por concepto de multas, así como el uso o aplicación que se les dé', 0, '2017-02-17 15:10:44', '2017-04-04 12:49:19', 2, NULL),
(131, 'k', 'Calendario con las actividades culturales, deportivas y recreativas, a realizar', 0, '2017-02-17 15:11:18', '2017-04-04 12:49:19', 2, NULL),
(132, 'l', 'El calendario con horarios, número de unidad y teléfonos de servicio de recolección de basura', 0, '2017-02-17 15:11:47', '2017-04-04 12:49:19', 2, NULL),
(133, 'I', 'Presupuesto Aprobado', 0, '2017-03-23 10:36:22', '2017-09-08 14:27:41', 3, NULL),
(134, 'II', 'Estado e Información Contable', 2, '2017-03-23 11:32:31', '2018-03-07 15:55:20', 3, NULL),
(135, 'III', 'Estados e Informes Presupuestarios', 1, '2017-03-29 18:01:50', '2018-03-07 15:55:20', 3, NULL),
(136, 'IV', 'Estados e Informes Programáticos', 3, '2017-03-29 18:02:19', '2018-03-07 15:55:20', 3, NULL),
(137, 'V', 'Información Relacionada con el Título V de la LGCG', 4, '2017-03-29 18:02:45', '2018-03-07 15:55:20', 3, NULL),
(138, 'VI', 'Inventario Físico de Bienes Muebles e Inmuebles', 5, '2017-03-29 18:03:17', '2018-03-07 15:55:20', 3, NULL),
(139, 'LDF', 'formatos 7a), 7b), 7c), 7d): Proyecciones y Resultados de Ingresos y Egresos.', 6, '2018-03-12 16:50:38', '2018-03-12 16:50:38', 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fraccion_has_departamento`
--

CREATE TABLE `fraccion_has_departamento` (
  `fraccion_id` int(11) NOT NULL,
  `departamento_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fraccion_has_departamento`
--

INSERT INTO `fraccion_has_departamento` (`fraccion_id`, `departamento_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-11-27 15:09:39', '2017-11-27 15:09:39'),
(2, 1, '2017-11-27 15:09:39', '2017-11-27 15:09:39'),
(3, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(4, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(5, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(6, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(7, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(8, 1, '2018-02-27 23:29:14', '2018-02-27 23:29:14'),
(9, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(10, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(11, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(12, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(13, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(14, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(15, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(16, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(17, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(18, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(19, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(20, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(21, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(22, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(23, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(24, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(25, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(26, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(27, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(28, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(29, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(30, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(31, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(32, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(33, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(34, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(35, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(36, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(37, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(38, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(39, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(40, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(41, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(42, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(43, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(44, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(45, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(46, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(47, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(48, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(49, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(50, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(51, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(52, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(53, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(54, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(55, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(56, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(57, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(58, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(59, 1, '2018-03-13 14:15:10', '2018-03-13 14:15:10'),
(60, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(61, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(62, 1, '2017-11-27 15:09:40', '2017-11-27 15:09:40'),
(63, 1, '2017-11-27 15:09:41', '2017-11-27 15:09:41'),
(64, 1, '2017-11-27 15:09:41', '2017-11-27 15:09:41'),
(65, 1, '2017-11-27 15:09:41', '2017-11-27 15:09:41'),
(66, 1, '2017-11-27 15:09:41', '2017-11-27 15:09:41'),
(67, 1, '2017-11-27 15:09:41', '2017-11-27 15:09:41'),
(68, 1, '2017-11-27 15:09:41', '2017-11-27 15:09:41'),
(69, 1, '2017-11-27 15:09:41', '2017-11-27 15:09:41'),
(70, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(71, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(72, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(73, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(74, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(75, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(76, 6, '2018-03-13 14:18:18', '2018-03-13 14:18:18'),
(77, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(78, 10, '2018-03-13 13:45:35', '2018-03-13 13:45:35'),
(79, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(80, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(81, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(82, 7, '2018-03-13 13:27:51', '2018-03-13 13:27:51'),
(83, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(84, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(85, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(86, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(87, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(88, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(89, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(90, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(91, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(92, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(93, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(94, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(95, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(96, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(97, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(98, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(99, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(100, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(101, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(102, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(103, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(104, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(105, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(106, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(107, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(108, 7, '2018-03-13 13:25:20', '2018-03-13 13:25:20'),
(109, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(110, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(111, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(112, 1, '2018-02-06 13:28:35', '2018-02-06 13:28:35'),
(113, 1, '2018-02-06 13:28:36', '2018-02-06 13:28:36'),
(114, 1, '2018-02-06 13:28:36', '2018-02-06 13:28:36'),
(115, 6, '2018-03-13 13:24:27', '2018-03-13 13:24:27'),
(116, 1, '2018-02-06 13:28:36', '2018-02-06 13:28:36'),
(117, 10, '2018-03-13 14:18:05', '2018-03-13 14:18:05'),
(118, 1, '2018-02-06 13:28:36', '2018-02-06 13:28:36'),
(119, 1, '2018-02-06 13:28:36', '2018-02-06 13:28:36'),
(120, 1, '2018-02-06 13:28:36', '2018-02-06 13:28:36'),
(121, 1, '2018-02-06 13:28:36', '2018-02-06 13:28:36'),
(122, 1, '2018-02-06 13:28:36', '2018-02-06 13:28:36'),
(123, 10, '2018-03-13 13:41:44', '2018-03-13 13:41:44'),
(124, 10, '2018-03-13 13:42:59', '2018-03-13 13:42:59'),
(125, 11, '2018-03-13 13:33:16', '2018-03-13 13:33:16'),
(126, 13, '2018-03-13 13:44:24', '2018-03-13 13:44:24'),
(127, 1, '2018-02-06 13:28:36', '2018-02-06 13:28:36'),
(128, 6, '2018-03-13 14:17:40', '2018-03-13 14:17:40'),
(129, 9, '2018-03-13 13:29:17', '2018-03-13 13:29:17'),
(130, 9, '2018-03-13 13:37:51', '2018-03-13 13:37:51'),
(131, 12, '2018-03-13 13:39:26', '2018-03-13 13:39:26'),
(132, 8, '2018-03-13 13:28:36', '2018-03-13 13:28:36'),
(133, 10, '2018-03-13 13:33:49', '2018-03-13 13:33:49'),
(134, 10, '2018-03-13 13:34:47', '2018-03-13 13:34:47'),
(135, 10, '2018-03-13 13:35:01', '2018-03-13 13:35:01'),
(136, 10, '2018-03-13 13:35:16', '2018-03-13 13:35:16'),
(137, 10, '2018-03-13 13:35:30', '2018-03-13 13:35:30'),
(138, 10, '2018-03-13 13:35:45', '2018-03-13 13:35:45'),
(139, 10, '2018-03-13 13:31:34', '2018-03-13 13:31:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `mensaje` text NOT NULL,
  `direccion` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `declarativa` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 MAX_ROWS=1;

--
-- Volcado de datos para la tabla `home`
--

INSERT INTO `home` (`id`, `titulo`, `mensaje`, `direccion`, `created_at`, `updated_at`, `declarativa`) VALUES
(1, 'Portal&nbsp; de Transparencia&nbsp; del Municipio de Cosamaloapan&nbsp;', '<div align=\"justify\">En cumplimiento  a lo establecido por los artículos 12, 13 y 15 de la Ley Número 875 de Transparencia y Acceso a la Información Pública para el Estado de Veracruz de Ignacio de la Llave, el H. Ayuntamiento de<b> <span style=\"background-color: rgb(239, 239, 239);\">Cosamaloapan,</span></b><b>&nbsp;</b>Ver. pone a su disposición la siguiente información pública:</div><div align=\"justify\"><br></div>', '<p>Calle Belisario Dominguez&nbsp; No. 401, Esq. Av. José María Morelos&nbsp; C.P. 95400, Cosamaloapan&nbsp; Veracruz.<br><b>Conmutador</b>: 01 (2888821174)&nbsp;<b>Unidad Técnica Responsable de la Página</b>: Coordinación de Servicios Informáticos<br></p><div style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Tahoma; vertical-align: baseline; color: rgb(33, 33, 33);\"><br></div>', NULL, '2018-02-06 13:31:38', '<p align=\"center\"><font color=\"#397B21\"><b><span style=\"font-size: 18px;\">Opciones para el aviso de privacidad</span></b></font></p><p>Esta ventana le permite modificar su aviso de privacidad, usando las siguientes opciones:</p><p>Para texto:</p><ul><li>Puede usar palabras en <b>negritas</b></li><li>Puede usar palabras en <i>cursiva</i></li><li>Puede usar palbras <u>subrayadas</u> </li><li>Puede cambiar el <span style=\"font-size: 18px;\">tamaño </span>de la fuente</li><li>Puede cambiar el <font color=\"#00FF00\">color </font>de la fuente</li><li>Puede tachar el <strike>texto</strike></li><li>Puede cambiar el <font face=\"Courier New\">estilo </font>de la fuente<strike><br></strike></li><li>Además, puede alinear los parrafos a la izquierda, al centro, y a la derecha</li></ul><p align=\"left\">Incluso es posible copiar y pegar imagenes, debe considerar solo imagenes pequeñas de no mas de 500KB, ya que podría no guardarse su aviso de privacidad.</p><p><img style=\"width: 181px; float: left;\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALUAAAAyCAYAAAAa5prJAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAACBpJREFUeNrsXV1S4zgQFq68xzeIOUHMw+5rzAV2fAPCCQi1+z7mfapiToA5wYQTYF73ZcINwgk2nCCrZtqUMLbVkmVbMukqFcwQJ1L3179qKSeHw4F9++fPiP0mn4+Qj83Dj3+37EhHcpBO/vr7j4T//F7xt2s+Mg7uvYsL44oKyhmhkgY1L4O1gfLmfJ35EQ6DySpAWUUNsgL5bLmcNhRQRyjcuALcD3wkLlltziBYByjqXPHRVz5SGFRFRsVJDU09RznkKvzmc1jyH8uu+MnnEpU+T6b8ALwVce4RymphUk6TwkKhtnz6XD52fKwcADOEThnOWYemqNRLUAwisHxFgTTRQljLCwqO4ikDg3NQmmdLecH6rlrIaQUKXWW5PcG6ZTVvEjsC6LwFoEWawXuhFR6KYA5rsHoDz6MTWfGx1QR0Gdw/0VN9BjW6r2kdg4VE0lbKNcINGcNyCwA1s2QeJik1LKu7Mj4LUMtcbYbW0EbNTwwzSQR2ZsESYR4bW/mvke9cdPDWH+Tk8Q9a1VQ/qiyGbxmTAsLc29C8yr0NZLFXzH1Ku+IP4vjdUu+oAgaLYRmTEuLr7vk440nFCQz++ykfN5hJm/qMOnqqGc+K77N0Gc1opWeEysYtH+fCuCbK6R3UE4xHn4ku3LbYjpLEXnIgf3BP/N+gyAln9AbXP5VYgVC3rFkuiVUkuDFasCnBGunO48kCWVHysqhifRAhZIS8CfgTgGyhpLfHbJQC6tQizQ8JQHgqA7oEuC3G5GuC8hiv1WO5LkP+54T1hDrzaFKsHklmEO/rFBYxCpb4kaA4WZEoBgPHRF1pfkoQeEpwb52CAoVJ4W3A3CUZqHMJj+DvLxT+eIIleiA8FDnEJEbZUqUwtKewa8PGTTIvRMntthQ5eYV55yMmJEU2bcTIrJZKHClj1rTryg8xVo5GDPrQgJz8d1BDgI17+jIXGFtU1jO5NbwzxPQj6ZOxkqUnbDEvKlzES4ULWTrCpNwwqH3H1mQbyUqYM0zaW9MEhVVXP9xX/C0aOmEcaNs47DLurWkoGxOB4ZBV2L6Dka3r8uP/nxBC5LfwoxynvQqaVQXebxbssvkjFHpIBIarRDUIV1DibKPkHlrjd2VA5p4j2OvAezemJhtLDghQkvDccVC/El8LFn0rbn2rgnqLYL6BCgjsyICQcWOgySLa3mRjGgCdVR7Q88kafZ5xJ9RVw7FXDFshf1vDrq8qzibIqLgmxmvclkTtiwbgEcVLJOhN3nbtMB6zirBlkgJo1iaP4Z9z0Hz03KQXAxlgD4hKV+XbQZW6AwF1iaIsY50LoUkZ6As4wUA9vtNzTL0QNL4xAekYuAcDb9O43e8YRUy9/704EAAYXMpOA3kNWgVhCFg66Gg7xc2ZusDehfj6ytEKwwNz4PSRYhgSMfUuRdFqx1qgLoF7J3EbqUNWwiUwn2Oes2cjIgHYDxqPF1Y71QY1ERALS5rpZeSSpQZ+R2M48VIHbPT+1y08b+XBFRKoMaGRuUAXXKRL1YPi1PRubIdvS+AGi3vG5M10dXnTJ2B7ClZjRniN7ZQ7KPfiEHAwYmBDWRkU917j8XlZrhMFMMjOAkInW2TxTUe3A9V5b2rCoIDRm7IA2AnT77u5sd2zYZy9xNNIGZO3qn4ANvSNFGVbKqi3yBgZsEOLrOGzEEOnQ9WpZZ+LuQjlOFfc1Rwss9ob9EobptaJCWVb2I/YeVQtQsbcSmKfNZ4n65oovccrPmcfR2KxEDNi6Db9Ak1PIt4ijSQyUap+YEnvihBbX/SQ2FBKXOEAitQmpqTEk18C1BVJJLVnJFYJP1RB8ouPk4F54isobGhIkdoQWOyLMYKTeJHmqur0Dx6ODhhtFxK8WahSp14pLsSlXTAbasFjPs5VXKTZNHxJEhkTLXaoUqeeKi7kJxbHjYciA1VYOq0EjG3X0LQyYuWKdOJ+oiBQ6oU3IoEG/uLAFisSicIp774Y6Q8N6iORCHAjvWaOWv0ompuq9uofmFrz99u+vYGbVJ8NAFUlX9gfMTVskk29ncpTfN8l+11mOS1Ahfv3quEAVFEeW/aL7AgKRKXAFEOPpG0QjIWpnqKmQP0wxfgGLO2ZkETeanz+qkXDjhRkCsmqzGs8WwKOaMSg9gnyDI2DugLgWyGI13HPcyZs/eIt8wHxWYp3iInAnxn4rCO183KxoddsPYNzh8xU53bNNVZJADj/MeKpY2IF5KLJWqOXSA0p0JGaSYaNeVOehVZ61Suoi61NvP/5XKNKshAWRw1JKE3mkJh+CnOQgTnBSr/2VK35CpUL6WvKeRZ67yWj3Qr7djh50tEC2lYKqI1RYGUpX160Ro/wJCSGM4PC6It8x0EtuzIZQAvXb9y1iBaY19ECkpbPk3YvMQRRCXkKj0AF9Cvr92spZI3yc1cRjXnXfZe8Kw4ndwXqXcvn4RaojJg0UrdPdWjZ806flG+On4JZdSmr1tUPghsQrc69RhJ5QQlBhEOcppl1OUAsvVcRnoPWuktZ5Z2CGl1NcX0ZfIHQkuk1uZNuwsSSkUlmXQ50zwal9LV0+TCuYVm9VsnK61Ir8fqyraClOjHVXoFZQcu47QmVMBtI5hRQ2/L9jm2BDbK6bfE2IOewSlYnh8Oh1wVhKe1R4RFlq4mxeIxD9oVHTwim7LgV3j8J31BWyGrWkEQXX/i0aTpv2juocSEJuqBAsggAc2oiWUPmFUnWzuXLFr8I0AtZbVXlPwioK7TUL7netzr10XIeSYf+F2AA7ydmvlYFZ9oAAAAASUVORK5CYII=\" data-filename=\"orfis-verde.png\"><img><br><br></p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `fraccion_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `seccion_id` int(11) DEFAULT NULL,
  `fecha_validacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`id`, `nombre`, `descripcion`, `fraccion_id`, `created_at`, `updated_at`, `seccion_id`, `fecha_validacion`) VALUES
(1, 'Normatividad Federal', 'Normatividad Federal', 1, '2017-02-16 10:21:48', '2017-02-16 10:21:48', NULL, NULL),
(2, 'Normatividad Estatal', 'Normatividad Estatal', 1, '2017-02-16 10:33:18', '2017-02-16 10:33:18', NULL, NULL),
(3, 'Normatividad local', 'Normatividad local', 1, '2017-02-24 14:37:26', '2017-02-24 14:37:26', NULL, NULL),
(4, 'Manuales', 'Manuales', 1, '2017-04-06 11:16:56', '2017-04-06 11:16:56', NULL, NULL),
(5, 'Directorio', 'Directorio', 7, '2017-03-23 14:11:44', '2017-03-23 14:11:44', NULL, NULL),
(6, '2016', '2016', 13, '2017-04-25 13:28:48', '2017-04-25 13:28:48', NULL, NULL),
(7, 'Enero', 'Enero', NULL, '2017-04-25 13:30:05', '2017-04-25 13:30:05', 6, NULL),
(8, 'Febrero', 'Febrero', NULL, '2017-04-25 13:30:46', '2017-04-25 13:30:46', 6, NULL),
(9, '2016', '2016', 21, '2017-10-24 11:00:02', '2017-10-24 11:00:02', NULL, NULL),
(10, '2017', '2017', 21, '2017-10-24 11:00:19', '2017-10-24 11:00:19', NULL, NULL),
(11, 'Enero', 'Enero', NULL, '2017-10-24 11:00:41', '2017-10-24 11:00:41', 10, NULL),
(12, 'Febrero', 'Febrero', NULL, '2017-10-24 11:01:12', '2017-10-24 11:01:12', 10, NULL),
(13, '2017', '2017', 30, '2017-10-24 10:19:07', '2017-10-24 10:19:07', NULL, NULL),
(14, 'Enero', 'Enero', NULL, '2017-10-24 10:19:32', '2017-10-24 10:19:32', 13, NULL),
(15, 'Febrero', 'Febrero', NULL, '2017-10-24 10:20:03', '2017-10-24 10:20:03', 13, NULL),
(16, 'Actas', 'Actas', 46, '2017-06-20 13:21:27', '2017-06-20 13:21:27', NULL, NULL),
(17, 'cuenta municipal', 'cuenta municipal', 48, '2017-04-04 14:29:48', '2017-04-04 14:29:48', NULL, NULL),
(18, '2017', '2017', 55, '2017-09-08 14:02:17', '2017-09-08 14:02:17', NULL, NULL),
(19, '2016', '2016', 55, '2017-09-08 14:18:40', '2017-09-08 14:18:40', NULL, NULL),
(20, '2017', '2017', 57, '2017-05-03 12:19:42', '2017-05-03 12:19:42', NULL, NULL),
(21, 'Enero', 'Enero', NULL, '2017-05-03 12:20:33', '2017-05-03 12:20:33', 20, NULL),
(22, 'Febrero', 'Febrero', NULL, '2017-05-03 12:22:30', '2017-05-03 12:22:30', 20, NULL),
(23, '2016', '2016', 59, '2017-04-21 10:12:02', '2017-04-21 10:12:02', NULL, NULL),
(24, 'Enero', 'Enero', NULL, '2017-04-21 10:14:06', '2017-04-21 10:14:06', 23, NULL),
(25, 'Febrero', 'Febrero', NULL, '2017-04-21 10:19:34', '2017-04-21 10:19:34', 23, NULL),
(26, '2016', '2016', 61, '2017-04-24 14:13:23', '2017-04-24 14:13:23', NULL, NULL),
(27, 'Enero', 'Enero', NULL, '2017-04-24 14:14:15', '2017-04-24 14:14:15', 26, NULL),
(28, 'Febrero', 'Febrero', NULL, '2017-04-24 14:17:31', '2017-04-24 14:17:31', 26, NULL),
(78, '2014', '2014', 69, '2017-03-30 08:32:41', '2017-03-30 08:32:41', NULL, NULL),
(81, '2015', '2015', 69, '2017-03-30 08:32:47', '2017-03-30 08:32:47', NULL, NULL),
(84, '2016', '2016', 69, '2017-03-30 08:32:59', '2017-03-30 08:32:59', NULL, NULL),
(88, '2017', '2017', 69, '2017-03-30 08:33:08', '2017-03-30 08:33:08', NULL, NULL),
(91, '2016', '2016', 63, '2017-11-28 10:37:05', '2017-11-28 10:37:05', NULL, NULL),
(92, 'PRIMER SEMTRES', 'ENERO AL JULIO', NULL, '2017-11-28 10:38:47', '2017-11-28 10:38:47', 91, NULL),
(93, '2015', 'REPORTE SEMESTRAL', 63, '2017-11-28 10:40:24', '2017-11-28 10:40:24', NULL, NULL),
(101, '2017', 'estado de cambios en la  situacion financiera 2017', 41, '2017-11-28 15:35:43', '2017-11-28 15:35:43', NULL, NULL),
(118, '2017', '2017', 66, '2017-11-29 13:58:33', '2017-11-29 17:24:58', NULL, NULL),
(119, 'Primer Trimestre', 'Primer Trimestre', NULL, '2017-11-29 13:59:20', '2017-11-29 13:59:20', 118, NULL),
(124, 'Segundo Trimestre', 'Segundo Trimestre', NULL, '2017-11-29 14:02:27', '2017-11-29 14:02:27', 118, NULL),
(125, 'Tercer Trimestre', 'Tercer Trimestre', NULL, '2017-11-29 14:02:39', '2017-11-29 14:02:39', 118, NULL),
(126, 'Cuarto Trimestre', 'Cuarto Trimestre', NULL, '2017-11-29 14:02:55', '2017-11-29 14:02:55', 118, NULL),
(129, 'LEY DE INGRESOS 2017', 'LI2017', 54, '2017-11-29 16:03:48', '2017-11-29 16:03:48', NULL, NULL),
(130, 'LEY 681', 'LEY681 2017', NULL, '2017-11-29 16:19:05', '2017-11-29 16:19:05', 129, NULL),
(131, 'LEY 681', 'LEY DE INGRESOS 2016', 54, '2017-11-29 16:28:56', '2017-11-29 16:28:56', NULL, NULL),
(134, '2017', '2017', 65, '2017-11-29 17:10:14', '2017-11-29 17:21:45', NULL, NULL),
(135, 'Enero', 'Enero', NULL, '2017-11-29 17:10:31', '2017-11-29 17:10:31', 134, NULL),
(136, 'Febrero', 'Febrero', NULL, '2017-11-29 17:10:43', '2017-11-29 17:10:43', 134, NULL),
(138, '2017', '2017', 67, '2017-11-29 17:34:27', '2017-11-29 17:34:27', NULL, NULL),
(139, 'Primer Trimestre', 'Primer Trimestre', NULL, '2017-11-29 17:34:53', '2017-11-29 17:34:53', 138, NULL),
(140, 'Segundo Trimestre', 'Segundo Trimestre', NULL, '2017-11-29 17:35:04', '2017-11-29 17:35:04', 138, NULL),
(141, 'Tercer Trimestre', 'Tercer Trimestre', NULL, '2017-11-29 17:35:14', '2017-11-29 17:35:14', 138, NULL),
(142, 'Cuarto Trimestre', 'Cuarto Trimestre', NULL, '2017-11-29 17:35:24', '2017-11-29 17:35:24', 138, NULL),
(143, '2017', '2017', 68, '2017-11-29 17:36:04', '2017-11-29 17:36:04', NULL, NULL),
(149, 'Marzo', 'Marzo', NULL, '2017-11-30 15:37:36', '2017-11-30 15:37:36', 134, NULL),
(150, 'Abril', 'Abril', NULL, '2017-11-30 15:38:08', '2017-11-30 15:38:08', 134, NULL),
(151, 'Mayo', 'Mayo', NULL, '2017-11-30 15:38:52', '2017-11-30 15:38:52', 134, NULL),
(152, '2016', '2016', 65, '2017-11-30 16:05:13', '2017-11-30 16:05:13', NULL, NULL),
(153, '2016', '2016', 67, '2017-11-30 16:18:20', '2017-11-30 16:18:20', NULL, NULL),
(154, 'Enero', 'Enero', NULL, '2017-11-30 16:21:26', '2017-11-30 16:21:26', 152, NULL),
(155, 'Junio', 'Junio', NULL, '2017-11-30 16:39:02', '2017-11-30 16:39:02', 134, NULL),
(156, 'Febrero', 'Febrero', NULL, '2017-11-30 16:41:06', '2017-11-30 16:41:06', 152, NULL),
(157, 'Marzo', 'Marzo', NULL, '2017-11-30 16:55:40', '2017-11-30 16:55:40', 152, NULL),
(158, 'Abril', 'Abril', NULL, '2017-11-30 17:05:09', '2017-11-30 17:05:09', 152, NULL),
(159, 'Julio', 'Julio', NULL, '2017-11-30 17:05:31', '2017-11-30 17:05:31', 134, NULL),
(160, 'Mayo', 'Mayo', NULL, '2017-11-30 17:10:42', '2017-11-30 17:10:42', 152, NULL),
(161, 'Junio', 'Junio', NULL, '2017-11-30 17:17:30', '2017-11-30 17:17:30', 152, NULL),
(162, 'Julio', 'Julio', NULL, '2017-11-30 17:22:44', '2017-11-30 17:22:44', 152, NULL),
(163, 'Agosto', 'Agosto', NULL, '2017-11-30 17:26:18', '2017-11-30 17:26:18', 134, NULL),
(164, 'Agosto', 'Agosto', NULL, '2017-11-30 17:27:09', '2017-11-30 17:27:09', 152, NULL),
(165, 'septiembre', 'septiembre', NULL, '2017-11-30 17:37:07', '2017-11-30 17:37:07', 134, NULL),
(166, 'Octubre', 'Octubre', NULL, '2017-11-30 17:48:16', '2017-11-30 17:48:16', 134, NULL),
(167, '2014', '2014', 65, '2017-11-30 17:58:37', '2017-11-30 17:58:37', NULL, NULL),
(168, 'enero', 'enero', NULL, '2017-11-30 18:00:09', '2017-11-30 18:00:09', 167, NULL),
(169, 'Febrero', 'Febrero', NULL, '2017-11-30 18:13:38', '2017-11-30 18:13:38', 167, NULL),
(170, 'Marzo', 'Marzo', NULL, '2017-11-30 18:20:47', '2017-11-30 18:20:47', 167, NULL),
(171, 'Septiembre', 'Septiembre', NULL, '2017-11-30 18:21:37', '2017-11-30 18:21:37', 152, NULL),
(172, 'Octubre', 'Octubre', NULL, '2017-11-30 18:24:43', '2017-11-30 18:24:43', 152, NULL),
(173, 'Diciembre', 'Diciembre', NULL, '2017-11-30 18:47:18', '2017-11-30 18:47:18', 152, NULL),
(174, 'Abril', 'Abril', NULL, '2017-11-30 18:48:36', '2017-11-30 18:48:36', 167, NULL),
(175, '2016', '2016', 66, '2017-11-30 19:04:16', '2017-11-30 19:04:16', NULL, NULL),
(176, 'Primer Trimestre', 'Primer Trimestre', NULL, '2017-11-30 19:05:23', '2017-11-30 19:05:23', 175, NULL),
(177, 'Mayo', 'Mayo', NULL, '2017-11-30 19:09:54', '2017-11-30 19:09:54', 167, NULL),
(178, 'Junio', 'Junio', NULL, '2017-11-30 19:24:37', '2017-11-30 19:24:37', 167, NULL),
(180, 'Julio', 'Julio', NULL, '2017-11-30 19:48:24', '2017-11-30 19:48:24', 167, NULL),
(181, 'Agosto', 'Agosto', NULL, '2017-11-30 20:02:27', '2017-11-30 20:02:27', 167, NULL),
(183, 'Segundo Trimestre', 'Segundo Trimestre', NULL, '2017-11-30 20:10:38', '2017-11-30 20:10:38', 175, NULL),
(184, 'Septiembre', 'Septiembre', NULL, '2017-11-30 20:21:59', '2017-11-30 20:21:59', 167, NULL),
(185, 'Octubre', 'Octubre', NULL, '2017-11-30 20:28:49', '2017-11-30 20:28:49', 167, NULL),
(186, 'Tercer Trimestre', 'Tercer Trimestre', NULL, '2017-11-30 20:37:16', '2017-11-30 20:37:16', 175, NULL),
(187, 'Cuarto Trimestre', 'Cuarto Trimestre', NULL, '2017-11-30 20:45:53', '2017-11-30 20:45:53', 175, NULL),
(188, 'Noviembre', 'Noviembre ', NULL, '2017-11-30 20:51:49', '2017-11-30 20:51:49', 167, NULL),
(189, 'Diciembre', 'Diciembre', NULL, '2017-11-30 20:59:52', '2017-11-30 20:59:52', 167, NULL),
(190, '2015', '2015', 65, '2017-11-30 21:23:23', '2017-11-30 21:23:23', NULL, NULL),
(191, 'Enero', 'Enero', NULL, '2017-11-30 21:24:57', '2017-11-30 21:24:57', 190, NULL),
(192, 'Febrero', 'Febrero', NULL, '2017-11-30 21:44:44', '2017-11-30 21:44:44', 190, NULL),
(193, '2014', '2014', 66, '2017-11-30 21:46:28', '2017-11-30 21:46:28', NULL, NULL),
(194, 'Primer Trimestre', 'Primer Trimestre', NULL, '2017-11-30 21:48:45', '2017-11-30 21:48:45', 193, NULL),
(195, 'Marzo', 'Marzo', NULL, '2017-11-30 21:57:00', '2017-11-30 21:57:00', 190, NULL),
(196, 'Abril', 'Abril', NULL, '2017-11-30 22:10:49', '2017-11-30 22:10:49', 190, NULL),
(197, 'Mayo', 'Mayo', NULL, '2017-11-30 22:12:38', '2017-11-30 22:12:38', 190, NULL),
(199, 'Segundo Trimestre', 'Segundo Trimestre', NULL, '2017-11-30 22:33:31', '2017-11-30 22:33:31', 193, NULL),
(200, 'Junio', 'Junio', NULL, '2017-11-30 22:36:41', '2017-11-30 22:36:41', 190, NULL),
(201, 'Julio', 'Julio', NULL, '2017-11-30 22:56:27', '2017-11-30 22:56:27', 190, NULL),
(202, 'Tercer Trimestre', 'Tercer Trimestre', NULL, '2017-11-30 22:59:06', '2017-11-30 22:59:06', 193, NULL),
(203, 'Agosto', 'Agosto', NULL, '2017-11-30 23:07:18', '2017-11-30 23:07:18', 190, NULL),
(204, 'Cuarto Trimestre', 'Cuarto Trimestre', NULL, '2017-11-30 23:16:07', '2017-11-30 23:16:07', 193, NULL),
(205, 'Septiembre', 'Septiembre', NULL, '2017-11-30 23:17:26', '2017-11-30 23:17:26', 190, NULL),
(206, 'Octubre', 'Octubre', NULL, '2017-11-30 23:27:16', '2017-11-30 23:27:16', 190, NULL),
(208, 'Diciembre', 'Diciembre', NULL, '2017-11-30 23:37:15', '2017-11-30 23:37:15', 190, NULL),
(209, '2015', '2015', 66, '2017-11-30 23:48:25', '2017-11-30 23:48:25', NULL, NULL),
(210, 'Primer Trimestre', 'Primer Trimestre', NULL, '2017-11-30 23:49:37', '2017-11-30 23:49:37', 209, NULL),
(211, 'Segundo Trimestre', 'Segundo Trimestre', NULL, '2017-12-01 00:26:55', '2017-12-01 00:26:55', 209, NULL),
(212, 'Tercer Trimestre', 'Tercer Trimestre', NULL, '2017-12-01 00:50:33', '2017-12-01 00:50:33', 209, NULL),
(213, 'Cuarto Trimestre', 'Cuarto Trimestre', NULL, '2017-12-01 01:15:37', '2017-12-01 01:15:37', 209, NULL),
(214, 'Noviembre', 'Noviembre ', NULL, '2017-12-01 11:19:32', '2017-12-01 11:19:32', 190, NULL),
(215, 'Noviembre', 'Noviembre ', NULL, '2017-12-01 11:20:04', '2017-12-01 11:20:04', 152, NULL),
(216, 'Primer Trimestre', 'Primer Trimestre', NULL, '2017-12-01 17:37:47', '2017-12-01 17:37:47', 153, NULL),
(217, 'Segundo Trimestre', 'Segundo Trimestre', NULL, '2017-12-01 17:39:36', '2017-12-01 17:39:36', 153, NULL),
(218, 'Tercer Trimestre', 'Tercer Trimestre', NULL, '2017-12-01 17:40:55', '2017-12-01 17:40:55', 153, NULL),
(219, 'Cuarto Trimestre', 'Cuarto Trimestre', NULL, '2017-12-01 19:41:38', '2017-12-01 19:41:38', 153, NULL),
(220, 'informacion anual', 'informacion anual', NULL, '2017-12-01 19:50:50', '2017-12-01 19:50:50', 143, NULL),
(221, '2017', '2017', NULL, '2017-12-01 19:56:41', '2017-12-01 19:56:41', 220, NULL),
(222, '2016', '2016', NULL, '2017-12-01 19:57:00', '2017-12-01 19:57:00', 220, NULL),
(223, 'informaion trimestral', 'informaion trimestral', NULL, '2017-12-01 19:57:45', '2017-12-01 19:57:45', 143, NULL),
(224, '2017', '2017', NULL, '2017-12-01 19:58:19', '2017-12-01 19:58:19', 223, NULL),
(230, 'Primer Trimestre', 'Primer Trimestre', NULL, '2017-12-01 19:59:40', '2017-12-01 19:59:40', 224, NULL),
(231, 'Segundo Trimestre', 'Segundo Trimestre', NULL, '2017-12-01 19:59:56', '2017-12-01 19:59:56', 224, NULL),
(232, 'Tercer Trimestre', 'Tercer Trimestre', NULL, '2017-12-01 20:00:06', '2017-12-01 20:00:06', 224, NULL),
(233, '2016', '2016', NULL, '2017-12-08 12:07:09', '2017-12-08 12:07:09', 17, NULL),
(234, '2018', '2018', NULL, '2017-12-28 11:02:57', '2017-12-28 11:02:57', 223, NULL),
(235, '2018', '2018', 68, '2017-12-28 11:06:51', '2017-12-28 16:37:53', NULL, NULL),
(236, 'Normatividad Federal', 'Normatividad Federal', 70, '2017-02-16 10:21:48', '2017-02-16 10:21:48', NULL, NULL),
(237, 'Normatividad Estatal', 'Normatividad Estatal', 70, '2017-02-16 10:33:18', '2017-02-16 10:33:18', NULL, NULL),
(238, 'Normatividad local', 'Normatividad local', 70, '2017-02-24 14:37:26', '2017-02-24 14:37:26', NULL, NULL),
(239, 'Manuales', 'Manuales', 70, '2017-04-06 11:16:56', '2017-04-06 11:16:56', NULL, NULL),
(240, 'Directorio', 'Directorio', 76, '2017-03-23 14:11:44', '2017-03-23 14:11:44', NULL, NULL),
(241, '2016', '2016', 82, '2017-04-25 13:28:48', '2017-04-25 13:28:48', NULL, NULL),
(242, 'Enero', 'Enero', NULL, '2017-04-25 13:30:05', '2017-04-25 13:30:05', 241, NULL),
(243, 'Febrero', 'Febrero', NULL, '2017-04-25 13:30:46', '2017-04-25 13:30:46', 241, NULL),
(244, '2016', '2016', 90, '2017-10-24 11:00:02', '2017-10-24 11:00:02', NULL, NULL),
(245, '2017', '2017', 90, '2017-10-24 11:00:19', '2017-10-24 11:00:19', NULL, NULL),
(246, 'Enero', 'Enero', NULL, '2017-10-24 11:00:41', '2017-10-24 11:00:41', 245, NULL),
(247, 'Febrero', 'Febrero', NULL, '2017-10-24 11:01:12', '2017-10-24 11:01:12', 245, NULL),
(248, '2017', '2017', 99, '2017-10-24 10:19:07', '2017-10-24 10:19:07', NULL, NULL),
(249, 'Enero', 'Enero', NULL, '2017-10-24 10:19:32', '2017-10-24 10:19:32', 248, NULL),
(250, 'Febrero', 'Febrero', NULL, '2017-10-24 10:20:03', '2017-10-24 10:20:03', 248, NULL),
(251, 'Actas 2018', 'Actas 2018', 115, '2017-06-20 13:21:27', '2018-03-12 12:26:21', NULL, NULL),
(252, 'cuenta municipal', 'cuenta municipal', 117, '2017-04-04 14:29:48', '2017-04-04 14:29:48', NULL, NULL),
(253, '2017', '2017', 124, '2017-09-08 14:02:17', '2017-09-08 14:02:17', NULL, NULL),
(254, '2016', '2016', 124, '2017-09-08 14:18:40', '2017-09-08 14:18:40', NULL, NULL),
(255, '2017', '2017', 126, '2017-05-03 12:19:42', '2017-05-03 12:19:42', NULL, NULL),
(256, 'Enero', 'Enero', NULL, '2017-05-03 12:20:33', '2017-05-03 12:20:33', 255, NULL),
(257, 'Febrero', 'Febrero', NULL, '2017-05-03 12:22:30', '2017-05-03 12:22:30', 255, NULL),
(261, '2016', '2016', 130, '2017-04-24 14:13:23', '2017-04-24 14:13:23', NULL, NULL),
(262, 'Enero', 'Enero', NULL, '2017-04-24 14:14:15', '2017-04-24 14:14:15', 261, NULL),
(263, 'Febrero', 'Febrero', NULL, '2017-04-24 14:17:31', '2017-04-24 14:17:31', 261, NULL),
(264, 'Presupuesto Aprobado', 'Presupuesto Aprobado', 133, '2017-03-29 18:04:30', '2017-03-29 18:04:30', NULL, NULL),
(268, 'Estados e Información Contable', 'Estados e Información Contable', 134, '2017-03-29 18:16:03', '2017-03-29 18:16:03', NULL, NULL),
(282, 'Estados e Informes Presupuestarios', 'Estados e Informes Presupuestarios', 135, '2017-03-29 18:22:58', '2017-03-29 18:22:58', NULL, NULL),
(293, '2016', '2016', 136, '2017-03-30 08:19:21', '2017-03-30 08:19:21', NULL, NULL),
(294, 'Primer Trimestre', 'Primer Trimestre', NULL, '2017-03-30 08:19:48', '2017-03-30 08:19:48', 293, NULL),
(295, 'Segundo Trimestre', 'Segundo Trimestre', NULL, '2017-03-30 08:19:59', '2017-03-30 08:19:59', 293, NULL),
(296, 'Tercer Trimestre', 'Tercer Trimestre', NULL, '2017-03-30 08:20:09', '2017-03-30 08:20:09', 293, NULL),
(297, 'Cuarto Trimestre', 'Cuarto Trimestre', NULL, '2017-03-30 08:20:21', '2017-03-30 08:20:21', 293, NULL),
(298, '2017', '2017', 136, '2017-03-30 08:19:29', '2017-03-30 08:19:29', NULL, NULL),
(299, 'Información Anual', 'Información Anual', 137, '2017-03-30 08:23:45', '2017-03-30 08:23:45', NULL, NULL),
(302, 'Información Trimestral', 'Información Trimestral', 137, '2017-03-30 08:23:59', '2017-03-30 08:23:59', NULL, NULL),
(326, '2018', '2018', NULL, '2018-02-27 23:30:58', '2018-02-27 23:30:58', 268, NULL),
(327, '2018', '2018', NULL, '2018-02-27 23:40:02', '2018-02-27 23:40:02', 302, NULL),
(328, 'Ejercicio 2018', 'Ejercicio 2018', NULL, '2018-02-28 14:44:38', '2018-02-28 14:44:38', 264, NULL),
(329, 'ENERO', 'ENERO', NULL, '2018-03-01 01:11:58', '2018-03-01 01:11:58', 326, NULL),
(330, 'EJERCICIO 2018', 'EJERCICIO 2018', NULL, '2018-03-07 15:52:28', '2018-03-07 15:52:28', 282, NULL),
(331, 'PRIMER TRIMESTRE', 'PRIMER TRIMESTRE', NULL, '2018-03-07 15:52:46', '2018-03-07 15:52:46', 330, NULL),
(332, 'ENERO 2018', 'ENERO 2018', NULL, '2018-03-07 15:53:09', '2018-03-07 15:53:09', 331, NULL),
(333, '2018', '2018', NULL, '2018-03-08 00:17:25', '2018-03-08 00:17:25', 299, NULL),
(334, 'PRIMER TRIMESTRE 2018', 'PRIMER TRIMESTRE 2018', NULL, '2018-03-11 22:25:55', '2018-03-11 22:25:55', 327, NULL),
(335, '2018', '2018', 128, '2018-03-12 12:20:29', '2018-03-12 12:20:29', NULL, NULL),
(336, 'ORDINARIAS', 'ORDINARIAS', NULL, '2018-03-12 12:25:47', '2018-03-12 12:25:47', 251, NULL),
(337, 'EXTRAORDINARIAS', 'ESTRAORDINARIAS', NULL, '2018-03-12 12:26:02', '2018-03-12 12:26:02', 251, NULL),
(338, '2018', '2018', 138, '2018-03-12 13:04:21', '2018-03-12 13:04:21', NULL, NULL),
(339, '2018', '2018', 139, '2018-03-12 16:51:05', '2018-03-12 16:51:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secret_question`
--

CREATE TABLE `secret_question` (
  `id` bigint(20) NOT NULL,
  `question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `secret_question`
--

INSERT INTO `secret_question` (`id`, `question`) VALUES
(1, '¿Nombre de tu mascota favorita?'),
(2, '¿Color favorito?'),
(3, '¿Nombre de tu mejor amigo de la infancia?'),
(4, '¿Libro favorito?'),
(5, '¿Ciudad favorita?'),
(6, '¿Fecha de aniversario?'),
(7, '¿A qué le tengo miedo?'),
(8, '¿Nombre de tu maestro favorito de la primaria?'),
(9, '¿Cuál es mi dia favorito del año?'),
(10, '¿Mi película favorita?'),
(11, '¿En que ciudad nació mi abuelita?'),
(12, '¿Mi bedida favorita?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `security_role`
--

CREATE TABLE `security_role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `security_role`
--

INSERT INTO `security_role` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrador'),
(2, 'publicador', 'Publicador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id`, `tipo`, `descripcion`) VALUES
(1, 'Común', 'Obligaciones comunes'),
(2, 'Específica', 'Obligaciones específicas'),
(3, 'Financiera', 'Información financiera que señala la LGCG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `secret_question_id` bigint(20) DEFAULT NULL,
  `secret_question_answer` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `profile_image` longblob,
  `departamento_id` int(11) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `user_name`, `name`, `password`, `security_code`, `secret_question_id`, `secret_question_answer`, `profile`, `email`, `profile_image`, `departamento_id`, `hidden`) VALUES
(2, 'orfis', 'ORFIS SU', '$2y$07$f.Zj.2vML.sx6IuHmFgLkORL83WmpuWlwh1W9SW302QJwyr0v1p22', NULL, NULL, NULL, NULL, 'portalmodelo@orfis.gob.mx', NULL, NULL, 1),
(7, 'contraloria', 'contraloria', '$2y$07$pTbHXK/GRvQbmn95inrMkeYZOCagJ84mRoNLzbbEE9huNt5ou0sh6', NULL, NULL, NULL, NULL, 'girigoyen0209@hotmail.com', NULL, 4, 0),
(8, 'presidencia', 'presidencia', '$2y$07$C16ebLtfkqWyEmITGFUtRuu5SOwEg9kBBOkSrdq2133S/HdZRqYte', NULL, NULL, NULL, NULL, 'hermida01@hotmail.com', NULL, NULL, 0),
(10, 'asacramento', 'Agustin Jaime Sacramento', '$2y$07$dY0y9n4tTB/ZKLlQMoVO..9j06nMgyMgbfpmlenMP4LGeSewn0p8C', NULL, NULL, NULL, NULL, 'tesoreriacosamaloapan18@hotmail.com', NULL, 10, 0),
(11, 'jsanchez', 'Juan Sánchez Cruz', '$2y$07$.EBl8fqoSj1BxqSDNP9O7.h9TUezU3pATMOQtwu2PFADc9DxwyzJ.', NULL, NULL, NULL, NULL, 'transparencia.cosamaloapan@hotmail.com', NULL, 7, 0),
(12, 'JoseVr', 'Jose Vergara R.', '$2y$07$Z5CezdWM1hip5h7vtqdDs.tYQhrc.KZO9ZncC9fQ5mA4cEwLweG6O', NULL, 2, 'turqueza', NULL, 'wow.jvr@hotmail.com', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_security_role`
--

CREATE TABLE `user_security_role` (
  `user_id` bigint(20) NOT NULL,
  `security_role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_security_role`
--

INSERT INTO `user_security_role` (`user_id`, `security_role_id`) VALUES
(2, 1),
(7, 2),
(8, 2),
(10, 2),
(11, 1),
(12, 1),
(12, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administracion`
--
ALTER TABLE `administracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `administracion_has_fraccion`
--
ALTER TABLE `administracion_has_fraccion`
  ADD PRIMARY KEY (`administracion_id`,`fraccion_id`),
  ADD KEY `fk_administracion_has_fraccion_fraccion1_idx` (`fraccion_id`),
  ADD KEY `fk_administracion_has_fraccion_administracion1_idx` (`administracion_id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `elemento`
--
ALTER TABLE `elemento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_elemento_seccion1_idx` (`seccion_id`);

--
-- Indices de la tabla `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fraccion`
--
ALTER TABLE `fraccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fraccion_tipo1_idx` (`tipo_id`);

--
-- Indices de la tabla `fraccion_has_departamento`
--
ALTER TABLE `fraccion_has_departamento`
  ADD PRIMARY KEY (`fraccion_id`,`departamento_id`),
  ADD KEY `fk_fraccion_has_departamento_departamento1_idx` (`departamento_id`),
  ADD KEY `fk_fraccion_has_departamento_fraccion1_idx` (`fraccion_id`);

--
-- Indices de la tabla `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_seccion_fraccion1_idx` (`fraccion_id`),
  ADD KEY `fk_seccion_seccion1_idx` (`seccion_id`);

--
-- Indices de la tabla `secret_question`
--
ALTER TABLE `secret_question`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `security_role`
--
ALTER TABLE `security_role`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_user_name` (`user_name`),
  ADD KEY `ix_user_secret_question_id` (`secret_question_id`),
  ADD KEY `fk_user_departamento1_idx` (`departamento_id`);

--
-- Indices de la tabla `user_security_role`
--
ALTER TABLE `user_security_role`
  ADD PRIMARY KEY (`user_id`,`security_role_id`),
  ADD KEY `ix_user_security_role_user` (`user_id`),
  ADD KEY `ix_user_security_role_security_role` (`security_role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administracion`
--
ALTER TABLE `administracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `elemento`
--
ALTER TABLE `elemento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=568;

--
-- AUTO_INCREMENT de la tabla `fraccion`
--
ALTER TABLE `fraccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT de la tabla `secret_question`
--
ALTER TABLE `secret_question`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `security_role`
--
ALTER TABLE `security_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administracion_has_fraccion`
--
ALTER TABLE `administracion_has_fraccion`
  ADD CONSTRAINT `fk_administracion_has_fraccion_administracion1` FOREIGN KEY (`administracion_id`) REFERENCES `administracion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_administracion_has_fraccion_fraccion1` FOREIGN KEY (`fraccion_id`) REFERENCES `fraccion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `elemento`
--
ALTER TABLE `elemento`
  ADD CONSTRAINT `fk_elemento_seccion1` FOREIGN KEY (`seccion_id`) REFERENCES `seccion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fraccion`
--
ALTER TABLE `fraccion`
  ADD CONSTRAINT `fk_fraccion_tipo1` FOREIGN KEY (`tipo_id`) REFERENCES `tipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `fraccion_has_departamento`
--
ALTER TABLE `fraccion_has_departamento`
  ADD CONSTRAINT `fk_fraccion_has_departamento_departamento1` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fraccion_has_departamento_fraccion1` FOREIGN KEY (`fraccion_id`) REFERENCES `fraccion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD CONSTRAINT `fk_seccion_fraccion1` FOREIGN KEY (`fraccion_id`) REFERENCES `fraccion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_seccion_seccion1` FOREIGN KEY (`seccion_id`) REFERENCES `seccion` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_departamento1` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_secret_question_id` FOREIGN KEY (`secret_question_id`) REFERENCES `secret_question` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `user_security_role`
--
ALTER TABLE `user_security_role`
  ADD CONSTRAINT `fk_user_security_role_security_role` FOREIGN KEY (`security_role_id`) REFERENCES `security_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_security_role_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
