-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 03-04-2024 a las 15:11:24
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `primera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `titulo` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `cuerpo` text COLLATE utf8mb4_general_ci NOT NULL,
  `dir` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `num` int UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `fecha`, `titulo`, `cuerpo`, `dir`, `num`) VALUES
(1, '2024-02-24', 'Descubrimiento astronómico inaudito: las tres lunas más débiles de todas.', 'El Sistema Solar sigue ofreciendo novedades en los estudios astronómicos. Ahora, la noticia viene de manos del Centro de Planetas Menores de la Unión Astronómica Internacional y su descubrimiento.El Centro de Planetas Menores de la Unión Astronómica Internacional ha anunciado el hallazgo astronómico de la primera luna nueva de Urano en 20 años y otras dos en Neptuno, según un reciente descubrimiento. \r\n\r\n\"Las tres lunas recién descubiertas son las más débiles jamás encontradas alrededor de estos dos planetas gigantes de hielo utilizando telescopios terrestres\", explicó Scott S. Sheppard de Carnegie Science. \"Se necesitó un procesamiento de imágenes especial para revelar objetos tan débiles\".\r\n\r\nEl nuevo miembro uraniano eleva el número total de lunas del planeta gigante de hielo a 28. Con sólo 8 kilómetros, es probablemente la más pequeña de las lunas de Urano y necesita 680 días para orbitar el planeta. Llamada provisionalmente S/2023 U1, la luna nueva eventualmente llevará el nombre de un personaje de una obra de Shakespeare, de acuerdo con las convenciones de nomenclatura para los satélites exteriores de Urano.', 'https://www.mdzol.com/mundo/2024/2/26/descubrimiento-astronomico-inaudito-las-tres-lunas-mas-debiles-de-todas-408538.html', 1),
(2, '2023-10-17', 'Científicos y filósofos identifican una ley perdida de la naturaleza.', 'Científicos y filósofos identifican una ley perdida de la naturaleza\r\n\r\n\r\nLa evolución no se limita a la vida en la Tierra, también ocurre en otros sistemas enormemente complejos, desde planetas y estrellas hasta átomos, minerales y más.\r\n\r\n\r\n', 'https://www.europapress.es/ciencia/astronomia/noticia-cientificos-filosofos-identifican-ley-perdida-naturaleza-20231017102608.html', 1),
(14, '2024-03-21', 'Investigadores identifican dos de los primeros componentes básicos de la Vía Láctea', 'Los astrónomos han identificado lo que podrían ser dos de los primeros bloques de construcción de la Vía Láctea: llamados \"Shakti\" y \"Shiva\", parecen ser los restos de dos galaxias que se fusionaron hace entre 12 y 13 mil millones de años con una versión temprana de la Vía Láctea. , contribuyendo al crecimiento inicial de nuestra galaxia natal. El nuevo hallazgo es el equivalente astronómico a que los arqueólogos identifiquen rastros de un asentamiento inicial que creció hasta convertirse en la gran ciudad actual. Fue necesario combinar datos de casi 6 millones de estrellas de la  misión Gaia de la ESA con mediciones del estudio SDSS. Los resultados han sido publicados en el Astrophysical Journal.', 'https://www.mpg.de/21716263/researchers-identify-two-of-the-milky-way-s-earliest-building-blocks', 0),
(15, '2024-03-21', 'Fenómeno del clima espacial observado en el laboratorio por primera vez.', 'Los fenómenos meteorológicos espaciales conocidos como emisiones de coro en modo\r\nsilbato se han observado por primera vez en el laboratorio. Estas emisiones ocurren naturalmente dentro de regiones oscuras dominadas por campos magnéticos planetarios –magnetosferas– y están relacionadas con las auroras que iluminan nuestros cielos del norte y del sur cada invierno. Sin embargo, sus orígenes exactos no se conocen bien y, hasta ahora, estudiarlos ha implicado observaciones de naves espaciales o simulaciones numéricas. Al recrear las condiciones que producen estas emisiones, los investigadores del Instituto Nacional de Ciencias de la Fusión de Japón y la Universidad de Tokio esperan comprenderlas mejor y cómo afectan a los satélites en órbita, así como a las redes terrestres de energía y comunicación.\r\nLas emisiones de coro en modo Whistler son ondas intensas y coherentes que producen y transportan electrones de alta energía a través de magnetosferas planetarias. Reciben su nombre porque sus frecuencias varían repetidamente de una manera que recordaba a los primeros investigadores el \"coro del amanecer\" del canto de los pájaros. Estas ondas de plasma se han observado en la magnetosfera de Júpiter y en la región afectada por el campo magnético de la Tierra, pero nunca antes en condiciones controladas en un laboratorio.', 'https://physicsworld.com/a/space-weather-phenomenon-observed-in-the-lab-for-the-first-time/?_gl=1*5p0uy2*_up*MQ..&gclid=CjwKCAjwnv-vBhBdEiwABCYQA6cCnQKlyCCRntF6_OlFqHk6Ig9z4nbKkXkXJj69y3jnltp9fJbmAxoCytIQAvD_BwE', 2),
(16, '2024-03-20', 'Científicos encuentran una de las estrellas más antiguas que se formó en otra galaxia', 'La primera generación de estrellas transformó el universo. Dentro de sus núcleos, el hidrógeno y el helio simples se fusionaron en un arco iris de elementos. Cuando estas estrellas murieron, explotaron y enviaron estos nuevos elementos por todo el universo. El hierro que corre por tus venas, el calcio de tus dientes y el sodio que alimenta tus pensamientos nacieron en el corazón de una estrella muerta hace mucho tiempo.', 'https://www.sciencedaily.com/releases/2024/03/240320160355.htm', 3),
(17, '2024-02-24', 'Descubrimiento astronómico inaudito: las tres lunas más débiles de todas.', 'El Sistema Solar sigue ofreciendo novedades en los estudios astronómicos. Ahora, la noticia viene de manos del Centro de Planetas Menores de la Unión Astronómica Internacional y su descubrimiento.El Centro de Planetas Menores de la Unión Astronómica Internacional ha anunciado el hallazgo astronómico de la primera luna nueva de Urano en 20 años y otras dos en Neptuno, según un reciente descubrimiento. \r\n\r\n\"Las tres lunas recién descubiertas son las más débiles jamás encontradas alrededor de estos dos planetas gigantes de hielo utilizando telescopios terrestres\", explicó Scott S. Sheppard de Carnegie Science. \"Se necesitó un procesamiento de imágenes especial para revelar objetos tan débiles\".\r\n\r\nEl nuevo miembro uraniano eleva el número total de lunas del planeta gigante de hielo a 28. Con sólo 8 kilómetros, es probablemente la más pequeña de las lunas de Urano y necesita 680 días para orbitar el planeta. Llamada provisionalmente S/2023 U1, la luna nueva eventualmente llevará el nombre de un personaje de una obra de Shakespeare, de acuerdo con las convenciones de nomenclatura para los satélites exteriores de Urano.', 'https://www.mdzol.com/mundo/2024/2/26/descubrimiento-astronomico-inaudito-las-tres-lunas-mas-debiles-de-todas-408538.html', 1),
(19, '2023-10-17', 'Científicos y filósofos identifican una ley perdida de la naturaleza.', 'Científicos y filósofos identifican una ley perdida de la naturaleza\r\n\r\n\r\nLa evolución no se limita a la vida en la Tierra, también ocurre en otros sistemas enormemente complejos, desde planetas y estrellas hasta átomos, minerales y más.\r\n\r\n\r\n', 'https://www.europapress.es/ciencia/astronomia/noticia-cientificos-filosofos-identifican-ley-perdida-naturaleza-20231017102608.html', 6),
(28, '0000-00-00', 'una prueba', 'cuerpo nuevo de la prueba (modificado)', 'unaurl.com', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'fede', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
