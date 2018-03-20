-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-03-2018 a las 02:44:47
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
-- Base de datos: `cosamalo_basepagina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `introduccion` text NOT NULL,
  `ruta` text NOT NULL,
  `contenido` text NOT NULL,
  `orden` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `fecha` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `titulo`, `introduccion`, `ruta`, `contenido`, `orden`, `categoria`, `fecha`) VALUES
(72, 'En construcciÃ³n', '', 'views/images/articulos/articulo498.jpg', '', 0, 'desarrollo', NULL),
(76, ' PLAN MUNICIPAL DE DESARROLLO COSAMALOAPAN 2018- 2021', 'SOMOS COSAMALOAPAN', 'views/images/articulos/articulo777.jpg', 'â€¢	El plan es un eje rector de la actividad de gobierno y la AdministraciÃ³n pÃºblica municipal de Cosamaloapan de Carpio, Ver.\r\n\r\nâ€¢	Es un documento que por ley debe presentarse los primeros 4 meses de haber iniciado el gobierno. (Ley de planeaciÃ³n del estado).\r\n\r\nâ€¢	Es un documento escrito de anÃ¡lisis, guÃ­a para proyectar el desarrollo municipal.\r\n\r\nâ€¢	Incluye la planeaciÃ³n estratÃ©gica, el diagnostico, prospecciÃ³n y programaciÃ³n presupuestal del municipio, por parte de la administraciÃ³n PÃºblica Municipal, lo anterior para hacer eficiente el trabajo. \r\n\r\nâ€¢	Contempla la consulta ciudadana en forma organizada para dar legitimidad\r\n \r\nâ€¢	TambiÃ©n integra la legalidad ya que debe ser validado por el cabildo municipal.\r\n\r\nâ€¢	Este plan contemplarÃ¡ las lÃ­neas rectoras para que en el municipio de Cosamaloapan se genere el Bienestar ComÃºn y el desarrollo sustentable, principalmente.\r\n\r\nâ€¢	De Ã©l se desprenderÃ¡ el POA por cada Ã¡rea con los indicadores de desempeÃ±o y de gestiÃ³n vinculados a sus partidas presupuestales segÃºn proceda.\r\n\r\nâ€¢	Es importante indicar que tambiÃ©n contemplarÃ¡ las variables exÃ³genas e imponderables propias de la regiÃ³n, como aquellos posibles siniestros o eventos del mal tiempo por crecimiento del rio y aquellas posibles contingencias propias de la regiÃ³n, para que el gobierno pueda estar preparado y responder a la ciudadanÃ­a cosamaloapeÃ±a en forma eficaz y coordinada.\r\n', 0, 'alcalde', NULL),
(82, 'Lorem Ipsum', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit......', 'views/images/articulos/articulo221.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula dui vel tortor convallis egestas. Morbi scelerisque dignissim convallis. Nunc vel lacus turpis. Nam et sollicitudin nisi, at ullamcorper tellus. Donec magna urna, pharetra nec enim eu, ultrices imperdiet mauris. Proin sem diam, porttitor vel sem eget, imperdiet tincidunt magna. Donec auctor sagittis facilisis. Vivamus at consectetur tellus. Integer tristique dignissim dapibus.', 0, 'bolsa', NULL),
(83, 'En construcciÃ³n', '', 'views/images/articulos/articulo921.jpg', '', 0, 'trabajo', NULL),
(84, 'En construcciÃ³n', '', 'views/images/articulos/articulo179.jpg', '', 0, 'trabajo', NULL),
(85, 'asentamiento', ' Es el acto jurÃ­dico mediante el cual se establece un nombre determinado a una persona...', 'views/images/articulos/articulo615.jpg', 'REQUISITOS\r\nCertificado de nacimiento ( original y copia ).\r\nActa de nacimiento certificada de ambos padres y copia (se aceptaras copias del acta siempre y cuando estÃ©n legibles).\r\nCopias simples del acta de matrimonio, en el caso que estuviesen casados y se presenten ambos padres.\r\nCopia certificada y actualizada del acta de matrimonio en el caso de presentarse solo uno de los padres.\r\nCopia de identificaciÃ³n oficial de ambos padres(credencial de elector, pasaporte, cartilla militar, constancia de identificaciÃ³n con fotografÃ­as selladas por gobernaciÃ³n).\r\nDos testigos de nacionalidad mexicana mayores de edad con identificaciÃ³n original y copia.\r\nCartilla de vacunaciÃ³n con datos del menor a asentar (original y copia).', 0, 'tramites', NULL),
(86, 'En construcciÃ³n', '', 'views/images/articulos/articulo986.jpg', '', 0, 'salud', NULL),
(87, 'En construcciÃ³n', '', 'views/images/articulos/articulo890.jpg', '', 0, 'salud', NULL),
(97, 'registro civil', ' Es el acto jurÃ­dico mediante el cual se establece un nombre determinado a una persona...', 'views/images/articulos/articulo615.jpg', 'REQUISITOS\r\n\r\nCertificado de nacimiento ( original y copia ).\r\nActa de nacimiento certificada de ambos padres y copia (se aceptaras copias del acta siempre y cuando estÃ©n legibles).\r\nCopias simples del acta de matrimonio, en el caso que estuviesen casados y se presenten ambos padres.\r\nCopia certificada y actualizada del acta de matrimonio en el caso de presentarse solo uno de los padres.\r\nCopia de identificaciÃ³n oficial de ambos padres(credencial de elector, pasaporte, cartilla militar, constancia de identificaciÃ³n con fotografÃ­as selladas por gobernaciÃ³n).\r\nDos testigos de nacionalidad mexicana mayores de edad con identificaciÃ³n original y copia.\r\nCartilla de vacunaciÃ³n con datos del menor a asentar (original y copia).', 0, 'tramites', NULL),
(98, 'deslinde', ' Es el acto jurÃ­dico mediante el cual se establece un nombre determinado a una persona...', 'views/images/articulos/articulo615.jpg', 'REQUISITOS\r\nCertificado de nacimiento ( original y copia ).\r\nActa de nacimiento certificada de ambos padres y copia (se aceptaras copias del acta siempre y cuando estÃ©n legibles).\r\nCopias simples del acta de matrimonio, en el caso que estuviesen casados y se presenten ambos padres.\r\nCopia certificada y actualizada del acta de matrimonio en el caso de presentarse solo uno de los padres.\r\nCopia de identificaciÃ³n oficial de ambos padres(credencial de elector, pasaporte, cartilla militar, constancia de identificaciÃ³n con fotografÃ­as selladas por gobernaciÃ³n).\r\nDos testigos de nacionalidad mexicana mayores de edad con identificaciÃ³n original y copia.\r\nCartilla de vacunaciÃ³n con datos del menor a asentar (original y copia).', 0, 'tramites', NULL),
(99, 'cosamaloapan', ' Es el acto jurÃ­dico mediante el cual se establece un nombre determinado a una persona...', 'views/images/articulos/articulo615.jpg', 'REQUISITOS\r\nCertificado de nacimiento ( original y copia ).\r\nActa de nacimiento certificada de ambos padres y copia (se aceptaras copias del acta siempre y cuando estÃ©n legibles).\r\nCopias simples del acta de matrimonio, en el caso que estuviesen casados y se presenten ambos padres.\r\nCopia certificada y actualizada del acta de matrimonio en el caso de presentarse solo uno de los padres.\r\nCopia de identificaciÃ³n oficial de ambos padres(credencial de elector, pasaporte, cartilla militar, constancia de identificaciÃ³n con fotografÃ­as selladas por gobernaciÃ³n).\r\nDos testigos de nacionalidad mexicana mayores de edad con identificaciÃ³n original y copia.\r\nCartilla de vacunaciÃ³n con datos del menor a asentar (original y copia).', 0, 'tramites', NULL),
(100, 'ayuntamiento', ' Es el acto jurÃ­dico mediante el cual se establece un nombre determinado a una persona...', 'views/images/articulos/articulo615.jpg', 'REQUISITOS\r\nCertificado de nacimiento ( original y copia ).\r\nActa de nacimiento certificada de ambos padres y copia (se aceptaras copias del acta siempre y cuando estÃ©n legibles).\r\nCopias simples del acta de matrimonio, en el caso que estuviesen casados y se presenten ambos padres.\r\nCopia certificada y actualizada del acta de matrimonio en el caso de presentarse solo uno de los padres.\r\nCopia de identificaciÃ³n oficial de ambos padres(credencial de elector, pasaporte, cartilla militar, constancia de identificaciÃ³n con fotografÃ­as selladas por gobernaciÃ³n).\r\nDos testigos de nacionalidad mexicana mayores de edad con identificaciÃ³n original y copia.\r\nCartilla de vacunaciÃ³n con datos del menor a asentar (original y copia).', 0, 'tramites', NULL),
(101, 'pagina web', ' Es el acto jurÃ­dico mediante el cual se establece un nombre determinado a una persona...', 'views/images/articulos/articulo615.jpg', 'REQUISITOS\r\nCertificado de nacimiento ( original y copia ).\r\nActa de nacimiento certificada de ambos padres y copia (se aceptaras copias del acta siempre y cuando estÃ©n legibles).\r\nCopias simples del acta de matrimonio, en el caso que estuviesen casados y se presenten ambos padres.\r\nCopia certificada y actualizada del acta de matrimonio en el caso de presentarse solo uno de los padres.\r\nCopia de identificaciÃ³n oficial de ambos padres(credencial de elector, pasaporte, cartilla militar, constancia de identificaciÃ³n con fotografÃ­as selladas por gobernaciÃ³n).\r\nDos testigos de nacionalidad mexicana mayores de edad con identificaciÃ³n original y copia.\r\nCartilla de vacunaciÃ³n con datos del menor a asentar (original y copia).', 0, 'tramites', NULL),
(103, 'tramites', ' Es el acto jurÃ­dico mediante el cual se establece un nombre determinado a una persona...', 'views/images/articulos/articulo615.jpg', 'REQUISITOS\r\nCertificado de nacimiento ( original y copia ).\r\nActa de nacimiento certificada de ambos padres y copia (se aceptaras copias del acta siempre y cuando estÃ©n legibles).\r\nCopias simples del acta de matrimonio, en el caso que estuviesen casados y se presenten ambos padres.\r\nCopia certificada y actualizada del acta de matrimonio en el caso de presentarse solo uno de los padres.\r\nCopia de identificaciÃ³n oficial de ambos padres(credencial de elector, pasaporte, cartilla militar, constancia de identificaciÃ³n con fotografÃ­as selladas por gobernaciÃ³n).\r\nDos testigos de nacionalidad mexicana mayores de edad con identificaciÃ³n original y copia.\r\nCartilla de vacunaciÃ³n con datos del menor a asentar (original y copia).', 0, 'tramites', NULL),
(104, 'En construcciÃ³n', '', 'views/images/articulos/articulo498.jpg', '', 0, 'desarrollo', NULL),
(105, 'En construcciÃ³n', '', 'views/images/articulos/articulo689.jpg', '', 1, 'eventos', '29/01/2018'),
(107, 'Lorem Ipsum', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit......', 'views/images/articulos/articulo645.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula dui vel tortor convallis egestas. Morbi scelerisque dignissim convallis. Nunc vel lacus turpis. Nam et sollicitudin nisi, at ullamcorper tellus. Donec magna urna, pharetra nec enim eu, ultrices imperdiet mauris. Proin sem diam, porttitor vel sem eget, imperdiet tincidunt magna. Donec auctor sagittis facilisis. Vivamus at consectetur tellus. Integer tristique dignissim dapibus.', 0, 'portal', NULL),
(108, 'Lorem Ipsum', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit......', 'views/images/articulos/articulo709.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula dui vel tortor convallis egestas. Morbi scelerisque dignissim convallis. Nunc vel lacus turpis. Nam et sollicitudin nisi, at ullamcorper tellus. Donec magna urna, pharetra nec enim eu, ultrices imperdiet mauris. Proin sem diam, porttitor vel sem eget, imperdiet tincidunt magna. Donec auctor sagittis facilisis. Vivamus at consectetur tellus. Integer tristique dignissim dapibus.', 0, 'portal', NULL),
(112, 'En construcciÃ³n', '', 'views/images/articulos/articulo368.jpg', '', 0, 'eventos', '12/25/2014'),
(113, 'En construcciÃ³n', '', 'views/images/articulos/articulo298.jpg', '', 0, 'desarrollo', NULL),
(117, 'En construcciÃ³n', '', 'views/images/articulos/articulo196.jpg', '', 0, 'salud', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(200) NOT NULL,
  `logo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `categoria`, `logo`) VALUES
(9, 'Mascotas', 'views/images/articulos/articulo301.jpg'),
(10, 'Salud', 'views/images/articulos/articulo591.jpg'),
(11, 'Hotel', 'views/images/articulos/articulo641.jpg'),
(12, 'tiendas', 'views/images/articulos/articulo204.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `direccionuno` varchar(200) DEFAULT NULL,
  `direcciondos` varchar(200) DEFAULT NULL,
  `direcciontres` varchar(200) DEFAULT NULL,
  `direccioncuatro` varchar(200) DEFAULT NULL,
  `direccioncinco` varchar(200) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `categoria` int(11) NOT NULL,
  `imagen` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `telefono`, `direccionuno`, `direcciondos`, `direcciontres`, `direccioncuatro`, `direccioncinco`, `website`, `facebook`, `categoria`, `imagen`) VALUES
(8, 'imss', '1234567890', 'rayon', 'benito fentanes', 'amelia', 'guadalupe victoria', 'estrada loyo', 'unsitio.com', 'imss', 10, 'views/images/articulos/articulo934.jpg'),
(12, 'hospital', '1234567890', 'rayon', 'benito fentanes', 'amelia', 'guadalupe victoria', 'estrada loyo', 'unsitio.com', 'imss', 10, 'views/images/articulos/articulo934.jpg'),
(14, 'hotel rio', '857785764868', 'la amelia', '', '', '', '', 'http://www.hotelromacosamaloapan.com.mx/', 'https://www.facebook.com/marichell.ml', 11, 'views/images/articulos/articulo860.jpg'),
(15, 'salud', '1234567890', 'rayon', 'benito fentanes', 'amelia', 'guadalupe victoria', 'estrada loyo', 'unsitio.com', 'imss', 10, 'views/images/articulos/articulo934.jpg'),
(16, 'dog', '231564564564+', 'la amelia', 'rayon', 'la colina', 'independencia', 'la playita', 'https://es.wikipedia.org/wiki/Medicina_veterinaria', 'https://www.facebook.com/marichell.ml', 9, 'views/images/articulos/articulo483.jpg'),
(17, 'hotel hola', '857785764868', 'la amelia', '', '', '', '', 'http://www.hotelromacosamaloapan.com.mx/', 'https://www.facebook.com/marichell.ml', 11, 'views/images/articulos/articulo860.jpg'),
(18, 'hotel 3', '857785764868', 'la amelia', '', '', '', '', 'http://www.hotelromacosamaloapan.com.mx/', 'https://www.facebook.com/marichell.ml', 11, 'views/images/articulos/articulo860.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `orden` int(11) NOT NULL,
  `url` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `email` text NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `revision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id`, `nombre`, `email`, `mensaje`, `fecha`, `revision`) VALUES
(10, 'Natalia', 'naty@hotmail.com', 'Lorem ipsum 2 dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2016-12-13 15:59:57', 1),
(11, 'Miguel', 'miguel@hotmail.com', 'Lorem ipsum 1 dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet,consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit', '2017-01-13 14:07:02', 1),
(12, 'Ana', 'ana@hotmail.com', 'Lorem ipsum 1 dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet,consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit', '2017-01-13 14:15:19', 1),
(13, 'Maria', 'maria@hotmail.com', 'Lorem ipsum 1 dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet,consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit', '2017-01-13 14:27:51', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `ruta`, `titulo`, `descripcion`, `orden`) VALUES
(80, '../../views/images/slide/slide288.jpg', '', '', 0),
(81, '../../views/images/slide/slide547.jpg', '', '', 0),
(82, '../../views/images/slide/slide648.jpg', '', '', 0),
(83, '../../views/images/slide/slide818.jpg', '', '', 0),
(84, '../../views/images/slide/slide826.jpg', '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscriptores`
--

CREATE TABLE `suscriptores` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `email` text NOT NULL,
  `revision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(10) NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `photo` text NOT NULL,
  `rol` int(11) NOT NULL,
  `intentos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `email`, `photo`, `rol`, `intentos`) VALUES
(1, 'user', '$2a$07$asxx54ahjppf45sd87a5auq5IzjG2JwkRIka7//iD1XGu7EZ28lhS', 'desconocido@gmail.com', 'views/images/perfiles/perfil246.jpg', 0, 0),
(10, 'admin', '$2a$07$asxx54ahjppf45sd87a5auRajNP0zeqOkB9Qda.dSiTb2/n.wAC/2', 'jorge@hotmail.com', 'views/images/photo.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`categoria`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
