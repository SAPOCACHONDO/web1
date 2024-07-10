-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-07-2024 a las 04:11:16
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `videzlimpias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `comentario` text NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_post`, `id_usuario`, `usuario`, `comentario`, `fecha`) VALUES
(3, 31, 8, 'pablo', 'hola', '2024-07-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `imagen` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `usuario`, `password`, `email`, `imagen`) VALUES
(5, 'juan', '$2y$10$LmTHTZOdVFYT6PWJ7HRJPenw4pr8.QLQYu.nAhuhfmwMJ4p7G7wXu', 'juan@gmail', 'CASF8071.JPG'),
(6, 'Docente', '$2y$10$.P8RnBgyEPhki.poXmlWDuUsyBrb90WxDIppLLFjrIrNjyzXcqZt2', 'isoria@unajma.edu.pe', '2.png'),
(7, 'Jorge', '$2y$10$RPongXxKO/ecjynvZWbH3OOhIiic/ZIdPECW9tDRyLcXd2pu.Id4C', 'jvidez@unajma.edu.pe', 'FZYK7765.JPG'),
(8, 'pablo', '$2y$10$JIhdKpXiuvuUp7fQOVACte/FtFQzXUrgQm1kEaWmKvzQGAc4hnlhO', 'pablo@gmail', '2.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `imagen` varchar(225) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `post` text NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `id_usuario`, `usuario`, `titulo`, `imagen`, `categoria`, `post`, `fecha`) VALUES
(27, 7, 'jorge', 'php', 'que-es-php-en-programacion-descubre-5-ventajas-de-usarlo.jpg', 'php', 'PHP es un lenguaje de programación interpretado2​ del lado del servidor y de uso general que se adapta especialmente al desarrollo web.3​ Fue creado inicialmente por el programador danés-canadiense Rasmus Lerdorf en 1994.4​ En la actualidad, la implementación de referencia de PHP es producida por The PHP Group.5​ PHP originalmente significaba Personal Home Page (Página personal), pero ahora significa el inicialismon 1​ recursivo PHP: Hypertext Preprocessor.7​\r\n\r\nEl código PHP suele ser procesado en un servidor web por un intérprete PHP desarrollado como un módulo, un daemon o como un ejecutable de interfaz de entrada común (CGI). En un servidor web, el resultado del código PHP interpretado y ejecutado —que puede ser cualquier tipo de datos, como el HTML generado o datos de imágenes binarias— formaría la totalidad o parte de una respuesta HTTP. Existen diversos sistemas de plantillas, sistemas de gestión de contenidos y frameworks que pueden emplearse para organizar o facilitar la generación de esa respuesta. Por otra parte, PHP puede utilizarse para muchas tareas de programación fuera del contexto de la web, como aplicaciones gráficas autónomas8​ y el control de drones.9​ También se puede interpretar y ejecutar un código PHP cualquiera a través de una interfaz de línea de comandos (CLI).', '2024-07-09'),
(28, 7, 'jorge', 'Machupicchu', 'machu-picchu-pedro-szekely-creative-commons-.jpg', 'peru', 'Machu Picchu es una ciudadela inca ubicada en las alturas de las montañas de los Andes en Perú, sobre el valle del río Urubamba. Se construyó en el siglo XV y luego fue abandonada, y es famosa por sus sofisticadas paredes de piedra seca que combinan enormes bloques sin el uso de un mortero, los edificios fascinantes que se relacionan con las alineaciones astronómicas y sus vistas panorámicas. El uso exacto que tuvo sigue siendo un misterio.', '2024-07-09'),
(29, 7, 'jorge', 'html', 'html-1.png', 'html', 'HTML, acrónimo en inglés de HyperText Markup Language («lenguaje de marcado de hipertexto»), hace referencia al lenguaje de marcado utilizado en la creación de páginas web. Este estándar que sirve de referencia del software que interactúa con la elaboración de páginas web en sus diferentes versiones. Define una estructura básica y un código (denominado código HTML) para la presentación de contenido de una página web, que incluye texto, imágenes, videos, juegos, entre otros elementos. Este estándar es gestionado por el World Wide Web Consortium (W3C) o Consorcio WWW, una organización dedicada a la estandarización de la mayoría de las tecnologías asociadas a la web, especialmente en lo relacionado con su escritura e interpretación. HTML se considera el lenguaje web más importante y su invención crucial para el surgimiento, desarrollo y expansión de la World Wide Web (WWW). Es el estándar que prevalece en la visualización de páginas web y es adoptado por todos los navegadores actuales.', '2024-07-09'),
(30, 7, 'jorge', 'Tatu', 'Dasypus-sabanicola_Lukas-Jaramillo-1-768x512.jpg', 'animales', 'Los dasipódidos (Dasypodidae), conocidos comúnmente como armadillos, son una familia de mamíferos placentarios del orden cingulata. Se caracterizan por poseer un caparazón dorsal formado por placas yuxtapuestas, ordenadas por lo general en filas transversales, con cola bastante larga y extremidades cortas. Habitan en América.\r\n\r\nLos armadillos son mamíferos fáciles de reconocer, distinguibles por tener una armadura formada por placas óseas cubiertas por escudos córneos que les sirven como protección, y que en algunos géneros permiten al animal enrollarse en forma de bola.1​ Externamente se parecen un poco a los pangolines, mamíferos de África y Asia cubiertos de enormes escamas o placas, y que tienen hábitos similares. Esta es la razón por la cual fueron clasificados en el mismo orden en el pasado, pero actualmente es claro que no están emparentados, perteneciendo los armadillos al orden (o superorden) Xenarthra y los pangolines al orden Pholidota.', '2024-07-09'),
(31, 7, 'jorge', 'majadito', 'NOTA-MAJADITO-LP.png', 'comida', 'El majadito o majao es un plato típico de la gastronomía de Bolivia, principalmente preparado en los departamentos del Beni y Santa Cruz que data desde la época virreinal en el territorio boliviano. Este plato está preparado a base de arroz con charque (carne deshidratada), huevo, yuca y plátanos fritos, existen variaciones que reemplazan el charque por otras carnes, como la del pollo, pato, entre otros. Existen dos variedades de majadito: el majadito tostado y el majadito batido.', '2024-07-09'),
(34, 7, 'jorge', 'las vuelta al mundo en 80 dias', 'Airbnb_Adventures_Around_the_World_in_80_days_poster_title-k9hE--1248x698@abc.jpg', 'libros', 'La vuelta al mundo en ochenta días (título original en francés: Le Tour du monde en quatre-vingts jours) es una novela del escritor francés Julio Verne publicada por entregas en el periódico Le Temps desde el 7 de noviembre (número 4225) hasta el 22 de diciembre (número 4271) de 1872, el mismo año en que se sitúa la acción. Después, sería publicada íntegramente el 30 de enero de 1873.1​\r\n\r\nLas peripecias del británico Phileas Fogg y de su ayudante Jean Passepartout, llamado también \"Picaporte\" en castellano, constituyen uno de los relatos más cautivadores creados por la imaginación humana y una de las joyas de la literatura.\r\n\r\nEsta historia llevó a un proceso legal a Verne, ya que Édouard Cadol, después de haber tenido una breve e infructuosa relación para poner una obra de teatro en escena, pretendía ser coautor de la obra. Finalmente no hubo juicio, pero llegó a obtener tantos derechos sobre la pieza como Verne.', '2024-07-09');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
