-- phpMyAdmin SQL Dump
-- version 4.6.6
-- www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-10-2017 a las 09:17:45
-- Versión del servidor: 5.6.35
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dsinteg_padsot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apruebadocumento`
--

CREATE TABLE `apruebadocumento` (
  `idApruebaDocumento` int(11) NOT NULL,
  `idSubeDocumento` int(11) NOT NULL,
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `apruebadocumento`
--

INSERT INTO `apruebadocumento` (`idApruebaDocumento`, `idSubeDocumento`, `idUsuario`, `fecha`) VALUES
(1, 1, 1, '2017-10-03 13:57:00'),
(2, 2, 1, '2017-10-03 13:57:00'),
(3, 3, 1, '2017-10-03 13:57:00'),
(4, 4, 1, '2017-10-03 13:57:00'),
(5, 5, 1, '2017-10-03 13:57:00'),
(6, 6, 1, '2017-10-03 13:57:00'),
(7, 7, 1, '2017-10-03 13:57:00'),
(8, 8, 1, '2017-10-03 13:57:00'),
(9, 9, 1, '2017-10-03 13:57:00'),
(10, 10, 1, '2017-10-03 13:57:00'),
(11, 11, 1, '2017-10-03 13:57:00'),
(12, 12, 1, '2017-10-03 13:57:00'),
(13, 13, 1, '2017-10-03 13:57:00'),
(14, 14, 1, '2017-10-03 13:57:00'),
(15, 15, 1, '2017-10-03 13:57:00'),
(16, 16, 1, '2017-10-03 13:57:00'),
(17, 17, 1, '2017-10-03 13:57:00'),
(18, 18, 1, '2017-10-03 13:57:00'),
(19, 19, 1, '2017-10-03 13:57:00'),
(20, 20, 1, '2017-10-03 13:57:00'),
(21, 21, 1, '2017-10-03 13:57:00'),
(22, 22, 1, '2017-10-03 13:57:00'),
(23, 23, 1, '2017-10-03 13:57:00'),
(24, 24, 1, '2017-10-03 13:57:00'),
(25, 25, 1, '2017-10-03 13:57:00'),
(26, 26, 1, '2017-10-03 13:57:00'),
(27, 27, 1, '2017-10-03 13:57:00'),
(28, 28, 1, '2017-10-03 13:57:00'),
(29, 29, 1, '2017-10-03 13:57:00'),
(30, 30, 1, '2017-10-03 13:57:00'),
(31, 31, 1, '2017-10-03 13:57:00'),
(32, 32, 1, '2017-10-03 13:57:00'),
(33, 33, 1, '2017-10-03 13:57:00'),
(34, 34, 1, '2017-10-03 13:57:00'),
(35, 35, 1, '2017-10-03 13:57:00'),
(36, 36, 1, '2017-10-03 13:57:00'),
(37, 37, 1, '2017-10-03 13:57:00'),
(38, 38, 1, '2017-10-03 13:57:00'),
(39, 39, 1, '2017-10-03 13:57:00'),
(40, 40, 1, '2017-10-03 13:57:00'),
(41, 41, 1, '2017-10-03 13:57:00'),
(42, 42, 1, '2017-10-03 13:57:00'),
(43, 43, 1, '2017-10-03 13:57:00'),
(44, 44, 1, '2017-10-03 13:57:00'),
(45, 45, 1, '2017-10-03 13:57:00'),
(46, 46, 1, '2017-10-03 13:57:00'),
(47, 47, 1, '2017-10-03 13:57:00'),
(48, 48, 1, '2017-10-03 13:57:00'),
(49, 49, 1, '2017-10-03 13:57:00'),
(50, 50, 1, '2017-10-03 13:57:00'),
(51, 51, 1, '2017-10-03 13:57:00'),
(52, 52, 1, '2017-10-03 13:57:00'),
(53, 53, 1, '2017-10-03 13:57:00'),
(54, 54, 1, '2017-10-03 13:57:00'),
(55, 55, 1, '2017-10-03 13:57:00'),
(56, 56, 1, '2017-10-03 13:57:00'),
(57, 57, 1, '2017-10-03 13:57:00'),
(58, 58, 1, '2017-10-03 13:57:00'),
(59, 59, 1, '2017-10-03 13:57:00');

--
-- Disparadores `apruebadocumento`
--
DELIMITER $$
CREATE TRIGGER `ActualizaEstatusApruebaDocumento` AFTER INSERT ON `apruebadocumento` FOR EACH ROW BEGIN
    update estatusdocumento SET idApruebaDocumento = NEW.idApruebaDocumento
    where idSubeDocumento=NEW.idSubeDocumento;
  END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `nombreArea` varchar(75) NOT NULL,
  `descripcionArea` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`idArea`, `nombreArea`, `descripcionArea`) VALUES
(1, 'Unidad de Transparencia', 'Unidad de Transparencia'),
(2, 'Dirección Jurídica', 'Dirección Jurídica'),
(3, 'Dirección de Unidad de Planeación y Evaluación Interna', 'Dirección de Unidad de Planeación y Evaluación Interna'),
(4, 'Dirección Administrativa', 'Dirección Administrativa'),
(5, 'Tesoreria Municipal', 'Tesoreria Municipal'),
(6, 'Dirección de Desarrollo Social', 'Dirección de Desarrollo Social'),
(7, 'Dirección de Comunicación Social', 'Dirección de Comunicación Social'),
(8, 'Dirección de Obras Públicas y Desarrollo Urbano', 'Dirección de Obras Públicas y Desarrollo Urbano'),
(9, 'Secretaria de Ayuntamiento', 'Secretaria de Ayuntamiento'),
(10, 'Sindicatura Municipal', 'Sindicatura Municipal'),
(11, 'Secretaría Técnica', 'Secretaría Técnica'),
(12, 'Dirección de Archivo', 'Dirección de Archivo'),
(13, 'NO ALICA', 'NO APLICA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `idArticulo` int(11) NOT NULL,
  `nomenclaturaArticulo` varchar(45) DEFAULT NULL,
  `nombreArticulo` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idArticulo`, `nomenclaturaArticulo`, `nombreArticulo`) VALUES
(1, 'Art. 63', 'De las obligaciones de transparencia comunes'),
(2, 'Art. 64', 'De las obligaciones de transparencia específicas de los sujetos obligados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulofraccion`
--

CREATE TABLE `articulofraccion` (
  `idArticuloFraccion` int(11) NOT NULL,
  `idArticulo` int(11) NOT NULL,
  `nomenclaturaFraccion` varchar(45) NOT NULL,
  `nombreFraccion` varchar(645) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulofraccion`
--

INSERT INTO `articulofraccion` (`idArticuloFraccion`, `idArticulo`, `nomenclaturaFraccion`, `nombreFraccion`) VALUES
(1, 1, 'I', 'El marco normativo aplicable al sujeto obligado, en el que deberá incluirse leyes, códigos, reglamentos, decretos de creación, manuales administrativos.'),
(2, 1, 'II', 'Estructura Orgánica'),
(3, 1, 'III', 'Facultades de Cada Area'),
(4, 1, 'IV', 'Metas y Objetivos por Area de Acuerdo a sus Programas Operativos'),
(5, 1, 'V', 'Indicadores de Interes Público'),
(6, 1, 'VI', 'Indicadores de Objetivos y Resultados'),
(7, 1, 'VII', 'Directorio de Servidores Públicos'),
(8, 1, 'VIII', 'Remuneración y Prestaciones de Servidores Públicos'),
(9, 1, 'IX', 'Los gastos de representación y viáticos, así como el objeto e informe del Instituto correspondiente'),
(10, 1, 'X', 'El número total de las plazas y del personal de base y confianza, especificando el total de las vacantes, por nivel de puesto, para cada unidad administrativa'),
(11, 1, 'XI', 'Las contrataciones de servicios profesionales por honorarios, señalando los nombres de los prestadores de servicios, los servicios contratados, el monto de los honorarios y el periodo de contratación'),
(12, 1, 'XII', 'La información en versión pública de las declaraciones patrimoniales de los servidores públicos que así lo determinen, en los sistemas habilitados para ello, de acuerdo con la normatividad aplicable'),
(13, 1, 'XIII', 'El domicilio de la unidad de transparencia, ademas de la direccion electronica donde podran recibirse las solucitudes para obtener la informacion'),
(14, 1, 'XIV', 'Las convocatorias a concursos para ocupar cargos públicos y los resultados de los mismos'),
(15, 1, 'XV', 'Informacion de programas de subsidios, estimulos y apoyos en el que se debera informar respecto de los programas de transferencia, de servicios, de infraestructura social y de subsidio'),
(16, 1, 'XVI', 'Las condiciones generales de trabajo, contratos o convenios que regulen las relaciones laborales del personal de base o de confianza, así como los recursos públicos económicos, en especie o donativos, que sean entregados a los sindicatos y ejerzan como recursos públicos'),
(17, 1, 'XVII', 'La información curricular, desde el nivel de jefe de departamento o equivalente, hasta el titular del sujeto obligado; así como, en su caso, las sanciones administrativas de que haya sido objeto'),
(18, 1, 'XVIII', 'El listado de servidores públicos con sanciones administrativas definitivas, especificando la causa de sanción y la disposición'),
(19, 1, 'XIX', 'Los servicios que ofrecen señalando los requisitos para acceder a ellos'),
(20, 1, 'XX', 'Los trámites, requisitos y formatos que ofrecen'),
(21, 1, 'XXI', 'La información financiera sobre el presupuesto asignado, así como los informes del ejercicio del gasto, en términos de la normatividad aplicable'),
(22, 1, 'XXII', 'La información relativa a la deuda pública, en términos de la normatividad aplicable'),
(23, 1, 'XXIII', 'Los montos destinados a gastos relativos a comunicación social y publicidad oficial desglosada por tipo de medio, proveedores, número de contrato y concepto o campaña'),
(24, 1, 'XXIV', 'Los informes de resultados de las auditorías al ejercicio presupuestal de cada sujeto obligado que se realicen y, en su caso, las aclaraciones que correspondan'),
(25, 1, 'XXV', 'El resultado de la dictaminación de los estados financieros'),
(26, 1, 'XXVI', 'Los montos, criterios, convocatorias y listado de personas físicas o morales a quienes, por cualquier motivo, se les asigne o permita usar recursos públicos o, en los términos de las disposiciones aplicables, realicen actos de autoridad. Asimismo, los inf'),
(27, 1, 'XXVII', 'Las concesiones, contratos, convenios, permisos, licencias o autorizaciones otorgados, especificando los titulares de aquéllos, debiendo publicarse su objeto, nombre o razón'),
(28, 1, 'XXVIII', 'Informacion de resultados sobre procedimientos de adjudicacion directa invitacion restringida y licitaciones incluyendo version publica del expediente y de los contratos celebrados'),
(29, 1, 'XXIX', 'Los informes que por disposición legal generen los sujetos obligados'),
(30, 1, 'XXX', 'Las estadísticas que generen en cumplimiento de sus facultades, competencias o funciones con la mayor desagregación posible'),
(31, 1, 'XXXI', 'Informe de avances programáticos o presupuestales, balances generales y su estado financiero'),
(32, 1, 'XXXII', 'Padrón de proveedores y contratistas'),
(33, 1, 'XXXIII', 'Los convenios o contratos'),
(34, 1, 'XXXIV', 'El inventario de bienes muebles e inmuebles en posesión y propiedad'),
(35, 1, 'XXXV', 'Las recomendaciones emitidas por los órganos públicos del Estado mexicano u organismos internacionales garantes de los derechos humanos, así como las acciones que han llevado a cabo para su atención'),
(36, 1, 'XXXVI', 'Las resoluciones y laudos que se emitan en procesos o procedimientos seguidos en forma de juicio'),
(37, 1, 'XXXVII', 'Los mecanismos de participación ciudadana'),
(38, 1, 'XXXVIII', 'Los programas que ofrecen, incluyendo información sobre la población, objetivo y destino, así como los trámites, tiempos de respuesta, requisitos y formatos para acceder a los mismos'),
(39, 1, 'XXXIX', 'Las actas y resoluciones del comité de transparencia de los sujetos obligados'),
(40, 1, 'XL', 'Todas las evaluaciones y encuestas que hagan los sujetos obligados a programas financiados con recursos públicos'),
(41, 1, 'XLI', 'Los estudios financiados con recursos públicos'),
(42, 1, 'XLII', 'El listado de jubilados y pensionados y el monto que reciben'),
(43, 1, 'XLIII', 'Los ingresos recibidos por cualquier concepto señalando el nombre de los responsables de recibirlos, administrarlos y ejercerlos, así como su destino, indicando el destino de cada uno de ellos'),
(44, 1, 'XLIV', 'Donaciones hechas a terceros en dinero o en especie'),
(45, 1, 'XLV', 'El catálogo de disposición y guía de archivo documentaL'),
(46, 1, 'XLVI', 'Las actas de sesiones ordinarias y extraordinarias, así como las opiniones y recomendaciones que emitan, en su caso, los consejos consultivos'),
(47, 1, 'XLVII', 'Cualquier otra información que sea de utilidad o se considere relevante, además de la que, con base en la información estadística, responda a las preguntas hechas con más frecuencia por el público'),
(48, 2, 'IA', 'El Plan Estatal de Desarrollo y los planes municipales de desarrollo, según corresponda;'),
(49, 2, 'IB', 'El presupuesto de egresos y las fórmulas de distribución de los recursos otorgados;'),
(50, 2, 'IC', 'El listado de expropiaciones decretadas y ejecutadas que incluya, cuando menos, la fecha de expropiación, el domicilio y la causa de utilidad pública y las ocupaciones'),
(51, 2, 'ID', 'El nombre, denominación o razón social y clave del registro federal de los contribuyentes a los que se les hubiera cancelado o condonado algún crédito fiscal, así como los montos respectivos. Asimismo, la información estadística sobre las exenciones previ'),
(52, 2, 'IE', 'Los nombres de las personas a quienes se les habilitó para ejercer como corredores y notarios públicos, así como sus datos de contacto, la información relacionada con el'),
(53, 2, 'IF', 'La información detallada que contengan los planes de desarrollo urbano, ordenamiento territorial y ecológico, los tipos y usos de suelo, licencias de uso y construcción'),
(54, 2, 'IG', 'Las disposiciones administrativas, directamente o a través de la autoridad competente, con el plazo de anticipación que prevean las disposiciones aplicables al sujeto obligado de que se trate, salvo que su difusión pueda comprometer los efectos que se pretenden lograr con la disposicion o se trate de situaciones de emergencia, de conformidad co dichas disposiciones.'),
(55, 2, 'IH', 'Estadísticas e índices delictivos, así como los indicadores de la procuración de justicia;'),
(56, 2, 'II', 'En materia de averiguaciones previas: estadísticas sobre el número de averiguaciones previas que fueron desestimadas, en cuántas se ejerció acción penal, en cuántas se decretó el no ejercicio u opinión fundada y cuántas se archivaron, además de las estadí'),
(57, 2, 'IJ', 'Las cantidades recibidas por concepto de multas y el destino al que se aplicaron'),
(58, 2, 'IIA', 'El contenido de los resolutivos y acuerdos aprobados, y'),
(59, 2, 'IIB', 'Las actas de sesiones de cabildo, los controles de asistencia de los integrantes del Ayuntamiento a las sesiones de cabildo y el sentido de votación de los miembros del cabildo sobre las iniciativas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `idDocumento` int(11) NOT NULL,
  `idArticuloFraccion` int(11) NOT NULL,
  `idArticulo` int(11) NOT NULL,
  `idArea` int(11) NOT NULL,
  `nombreDocumento` varchar(145) NOT NULL COMMENT 'Nombre del documento',
  `periodo` int(11) NOT NULL DEFAULT '0' COMMENT 'Periodo en dias naturales en el que este documento debe actualizarse por parte del sujeto obligado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`idDocumento`, `idArticuloFraccion`, `idArticulo`, `idArea`, `nombreDocumento`, `periodo`) VALUES
(1, 1, 1, 2, 'ART63-I-v1.0.xlsx', 3),
(2, 2, 1, 3, 'ART63-II-v1.0-xlsx', 3),
(3, 3, 1, 3, 'ART63-III-v1.0.xlsx', 3),
(4, 4, 1, 3, 'ART63-IV-v1.0.xlsx', 3),
(5, 5, 1, 3, 'ART63-V-v1.0.xlsx', 3),
(6, 6, 1, 3, 'ART63-VI-v1.0.xlsx', 3),
(7, 7, 1, 4, 'ART63-VII -v1.0.xlsx', 90),
(8, 8, 1, 4, 'ART63-VIII -v1.0.xlsx', 90),
(9, 9, 1, 5, 'ART63-IX -v1.0.xlsx', 90),
(10, 10, 1, 4, 'ART63-X -v1.0.xlsx', 90),
(11, 11, 1, 4, 'ART63-XI -v1.0.xlsx', 90),
(12, 12, 1, 4, 'ART63-XII -v1.0.xlsx', 90),
(13, 13, 1, 1, 'ART63-XIII -v1.0.xlsx', 90),
(14, 14, 1, 13, 'ART63-XIV -v1.0.xlsx', 90),
(15, 15, 1, 6, 'ART63-XV -v1.0.xlsx', 90),
(16, 16, 1, 4, 'ART63-XVI -v1.0.xlsx', 90),
(17, 17, 1, 4, 'ART63-XVII -v1.0.xlsx', 90),
(18, 18, 1, 4, 'ART63-XVIII -v1.0.xlsx', 90),
(19, 19, 1, 1, 'ART63-XIX -v1.0.xlsx', 90),
(20, 20, 1, 1, 'ART63-XX -v1.0.xlsx', 90),
(21, 21, 1, 5, 'ART63-XXI -v1.0.xlsx', 90),
(22, 22, 1, 5, 'ART63-XXII -v1.0.xlsx', 90),
(23, 23, 1, 7, 'ART63-XXIII -v1.0.xlsx', 90),
(24, 24, 1, 5, 'ART63-XXIV -v1.0.xlsx', 90),
(25, 25, 1, 5, 'ART63-XXV -v1.0.xlsx', 365),
(26, 26, 1, 5, 'ART63-XXVI -v1.0.xlsx', 90),
(27, 27, 1, 8, 'ART63-XXVII -v1.0.xlsx', 90),
(28, 28, 1, 8, 'ART63-XXVIII -v1.0.xlsx', 90),
(29, 29, 1, 9, 'ART63-XXIX -v1.0.xlsx', 90),
(30, 30, 1, 3, 'ART63-XXX -v1.0.xlsx', 90),
(31, 31, 1, 5, 'ART63-XXXI -v1.0.xlsx', 90),
(32, 32, 1, 4, 'ART63-XXXII -v1.0.xlsx', 90),
(33, 33, 1, 9, 'ART63-XXXIII -v1.0.xlsx', 90),
(34, 34, 1, 10, 'ART63-XXXIV -v1.0.xlsx', 180),
(35, 35, 1, 2, 'ART63-XXXV -v1.0.xlsx', 90),
(36, 36, 1, 13, 'ART63-XXXVI -v1.0.xlsx', 90),
(37, 37, 1, 6, 'ART63-XXXVII -v1.0.xlsx', 90),
(38, 38, 1, 6, 'ART63-XXXVIII -v1.0.xlsx', 90),
(39, 39, 1, 1, 'ART63-XXXIX -v1.0.xlsx', 180),
(40, 40, 1, 3, 'ART63-XL -v1.0.xlsx', 365),
(41, 41, 1, 13, 'ART63-XLI -v1.0.xlsx', 90),
(42, 42, 1, 4, 'ART63-XLII -v1.0.xlsx', 90),
(43, 43, 1, 5, 'ART63-XLIII -v1.0.xlsx', 90),
(44, 44, 1, 11, 'ART63-XLIV -v1.0.xlsx', 180),
(45, 45, 1, 12, 'ART63-XLV -v1.0.xlsx', 365),
(46, 46, 1, 13, 'ART63-XLVI -v1.0.xlsx', 90),
(47, 47, 1, 1, 'ART63-XLVII -v1.0.xlsx', 90),
(48, 48, 2, 3, 'ART64- IA -v1.0.xlsx', 1095),
(49, 49, 2, 5, 'ART64-IB  -v1.0.xlsx', 90),
(50, 50, 2, 10, 'ART64-IC  -v1.0.xlsx', 90),
(51, 51, 2, 5, 'ART64-ID -v1.0.xlsx', 90),
(52, 52, 2, 13, 'ART64-IE -v1.0.xlsx', 90),
(53, 53, 2, 8, 'ART64-IF -v1.0.xlsx', 365),
(54, 54, 2, 4, 'ART64-IG -v1.0.xlsx', 90),
(55, 55, 2, 13, 'ART64-IH -v1.0.xlsx', 90),
(56, 56, 2, 13, 'ART64-I I -v1.0.xlsx', 90),
(57, 57, 2, 5, 'ART64-IJ -v1.0.xlsx', 90),
(58, 58, 2, 9, 'ART64-IIA -v1.0.xlsx', 90),
(59, 59, 2, 9, 'ART64-II B -v1.0.xlsx', 90);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `documentosareatotalestatus`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `documentosareatotalestatus` (
`idArea` int(11)
,`DidDocumento` int(11)
,`AFnomenclaturaFraccion` varchar(97)
,`AFnombreFraccion` varchar(645)
,`DnombreDocumento` varchar(145)
,`SDsiteURL` varchar(245)
,`SDidSubeDocumento` int(11)
,`SDidUsuario` int(11)
,`SDfecha` datetime
,`ADidApruebaDocumento` int(11)
,`ADidSubeDocumento` int(11)
,`PDidPublicaDocumento` int(11)
,`ADidUsuario` int(10) unsigned
,`ADfecha` datetime
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentospublicos`
--

CREATE TABLE `documentospublicos` (
  `iddocumentospublicos` int(11) NOT NULL,
  `idDocumento` int(11) NOT NULL,
  `idPublicaDocumento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `documentospublicos`
--

INSERT INTO `documentospublicos` (`iddocumentospublicos`, `idDocumento`, `idPublicaDocumento`) VALUES
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,6),
(7,7,7),
(8,8,8),
(9,9,9),
(10,10,10),
(11,11,11),
(12,12,12),
(13,13,13),
(14,14,14),
(15,15,15),
(16,16,16),
(17,17,17),
(18,18,18),
(19,19,19),
(20,20,20),
(21,21,21),
(22,22,22),
(23,23,23),
(24,24,24),
(25,25,25),
(26,26,26),
(27,27,27),
(28,28,28),
(29,29,29),
(30,30,30),
(31,31,31),
(32,32,32),
(33,33,33),
(34,34,34),
(35,35,35),
(36,36,36),
(37,37,37),
(38,38,38),
(39,39,39),
(40,40,40),
(41,41,41),
(42,42,42),
(43,43,43),
(44,44,44),
(45,45,45),
(46,46,46),
(47,47,47),
(48,48,48),
(49,49,49),
(50,50,50),
(51,51,51),
(52,52,52),
(53,53,53),
(54,54,54),
(55,55,55),
(56,56,56),
(57,57,57),
(58,58,58),
(59,59,59);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `documentostransparencia`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `documentostransparencia` (
`idArticulo` int(11)
,`idDocumento` int(11)
,`idPublicaDocumento` int(11)
,`idSubeDocumento` int(11)
,`nombreDocumento` varchar(145)
,`siteURL` varchar(245)
,`nomenclaturaArticulo` varchar(91)
,`nombreFraccion` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `idEmpleado` int(11) NOT NULL,
  `nombre` varchar(75) NOT NULL,
  `paterno` varchar(75) NOT NULL,
  `materno` varchar(75) DEFAULT NULL,
  `email` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idEmpleado`, `nombre`, `paterno`, `materno`, `email`) VALUES
(1, 'Juan Jose', 'Cordova', 'Zamorano', 'baracusv8@gmail.com'),
(2, 'María Roberta', 'Guarneros', 'Zamora', 'transparencia@apizaco.gob.mx'),
(3, 'Omar', 'Muñoz', 'Torres', 'jurídico@apizaco.gob.mx'),
(4, 'Hugo', 'Mestiza', 'Hernández', 'planeación@apizaco.gob.mx'),
(5, 'Patricia', 'Saldaña', 'Martínez', 'dirección_administrativa@apizaco.gob.mx'),
(6, 'Ivan', 'Cuapantecatl', 'Trujillo', 'baracusv8@gmail.com'),
(7, 'Nieves', 'Cruz', 'Velázquez', 'desarrollo_social@apizaco.gob.mx'),
(8, 'Gabriela', 'García', 'Mejía', 'comunicación@apizaco.gob.mx'),
(9, 'Alberto', 'Palestina', 'Moreno', 'desarrollo_urbano@apizaco.gob.mx'),
(10, 'Edgar', 'Garcia', 'Gutierrez', 'secretaria_ayuntamiento@apizaco.gob.mx'),
(11, 'Anabel', 'Alducin', 'Lima', 'sindicatura@apizaco.gob.mx'),
(12, 'Teódulo', 'López', 'Gónzalez', 'secretaria_gobernación@apizaco.gob.mx'),
(13, 'Guillermo', 'Gomez', 'Flores', 'archivo@apizaco.gob.mx'),
(14, 'DSinteg', 'Test', 'prueba', 'chechino@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatusdocumento`
--

CREATE TABLE `estatusdocumento` (
  `idEstatusDocumento` int(11) NOT NULL,
  `idDocumento` int(11) NOT NULL,
  `idSubeDocumento` int(11) NOT NULL,
  `idPublicaDocumento` int(11) NOT NULL,
  `idApruebaDocumento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estatusdocumento`
--

INSERT INTO `estatusdocumento` (`idEstatusDocumento`, `idDocumento`, `idSubeDocumento`, `idPublicaDocumento`, `idApruebaDocumento`) VALUES
(1,1,1,1,1),
(2,2,2,2,2),
(3,3,3,3,3),
(4,4,4,4,4),
(5,5,5,5,5),
(6,6,6,6,6),
(7,7,7,7,7),
(8,8,8,8,8),
(9,9,9,9,9),
(10,10,10,10,10),
(11,11,11,11,11),
(12,12,12,12,12),
(13,13,13,13,13),
(14,14,14,14,14),
(15,15,15,15,15),
(16,16,16,16,16),
(17,17,17,17,17),
(18,18,18,18,18),
(19,19,19,19,19),
(20,20,20,20,20),
(21,21,21,21,21),
(22,22,22,22,22),
(23,23,23,23,23),
(24,24,24,24,24),
(25,25,25,25,25),
(26,26,26,26,26),
(27,27,27,27,27),
(28,28,28,28,28),
(29,29,29,29,29),
(30,30,30,30,30),
(31,31,31,31,31),
(32,32,32,32,32),
(33,33,33,33,33),
(34,34,34,34,34),
(35,35,35,35,35),
(36,36,36,36,36),
(37,37,37,37,37),
(38,38,38,38,38),
(39,39,39,39,39),
(40,40,40,40,40),
(41,41,41,41,41),
(42,42,42,42,42),
(43,43,43,43,43),
(44,44,44,44,44),
(45,45,45,45,45),
(46,46,46,46,46),
(47,47,47,47,47),
(48,48,48,48,48),
(49,49,49,49,49),
(50,50,50,50,50),
(51,51,51,51,51),
(52,52,52,52,52),
(53,53,53,53,53),
(54,54,54,54,54),
(55,55,55,55,55),
(56,56,56,56,56),
(57,57,57,57,57),
(58,58,58,58,58),
(59,59,59,59,59);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicadocumento`
--

CREATE TABLE `publicadocumento` (
  `idPublicaDocumento` int(11) NOT NULL,
  `idSubeDocumento` int(11) NOT NULL,
  `idApruebaDocumento` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `publicadocumento`
--

INSERT INTO `publicadocumento` (`idPublicaDocumento`, `idSubeDocumento`, `idApruebaDocumento`, `idUsuario`, `fecha`) VALUES
(1, 1, 1, 1, '2017-10-03 14:02:00'),
(2, 2, 2, 1, '2017-10-03 14:02:00'),
(3, 3, 3, 1, '2017-10-03 14:02:00'),
(4, 4, 4, 1, '2017-10-03 14:02:00'),
(5, 5, 5, 1, '2017-10-03 14:02:00'),
(6, 6, 6, 1, '2017-10-03 14:02:00'),
(7, 7, 7, 1, '2017-10-03 14:02:00'),
(8, 8, 8, 1, '2017-10-03 14:02:00'),
(9, 9, 9, 1, '2017-10-03 14:02:00'),
(10, 10, 10, 1, '2017-10-03 14:02:00'),
(11, 11, 11, 1, '2017-10-03 14:02:00'),
(12, 12, 12, 1, '2017-10-03 14:02:00'),
(13, 13, 13, 1, '2017-10-03 14:02:00'),
(14, 14, 14, 1, '2017-10-03 14:02:00'),
(15, 15, 15, 1, '2017-10-03 14:02:00'),
(16, 16, 16, 1, '2017-10-03 14:02:00'),
(17, 17, 17, 1, '2017-10-03 14:02:00'),
(18, 18, 18, 1, '2017-10-03 14:02:00'),
(19, 19, 19, 1, '2017-10-03 14:02:00'),
(20, 20, 20, 1, '2017-10-03 14:02:00'),
(21, 21, 21, 1, '2017-10-03 14:02:00'),
(22, 22, 22, 1, '2017-10-03 14:02:00'),
(23, 23, 23, 1, '2017-10-03 14:02:00'),
(24, 24, 24, 1, '2017-10-03 14:02:00'),
(25, 25, 25, 1, '2017-10-03 14:02:00'),
(26, 26, 26, 1, '2017-10-03 14:02:00'),
(27, 27, 27, 1, '2017-10-03 14:02:00'),
(28, 28, 28, 1, '2017-10-03 14:02:00'),
(29, 29, 29, 1, '2017-10-03 14:02:00'),
(30, 30, 30, 1, '2017-10-03 14:02:00'),
(31, 31, 31, 1, '2017-10-03 14:02:00'),
(32, 32, 32, 1, '2017-10-03 14:02:00'),
(33, 33, 33, 1, '2017-10-03 14:02:00'),
(34, 34, 34, 1, '2017-10-03 14:02:00'),
(35, 35, 35, 1, '2017-10-03 14:02:00'),
(36, 36, 36, 1, '2017-10-03 14:02:00'),
(37, 37, 37, 1, '2017-10-03 14:02:00'),
(38, 38, 38, 1, '2017-10-03 14:02:00'),
(39, 39, 39, 1, '2017-10-03 14:02:00'),
(40, 40, 40, 1, '2017-10-03 14:02:00'),
(41, 41, 41, 1, '2017-10-03 14:02:00'),
(42, 42, 42, 1, '2017-10-03 14:02:00'),
(43, 43, 43, 1, '2017-10-03 14:02:00'),
(44, 44, 44, 1, '2017-10-03 14:02:00'),
(45, 45, 45, 1, '2017-10-03 14:02:00'),
(46, 46, 46, 1, '2017-10-03 14:02:00'),
(47, 47, 47, 1, '2017-10-03 14:02:00'),
(48, 48, 48, 1, '2017-10-03 14:02:00'),
(49, 49, 49, 1, '2017-10-03 14:02:00'),
(50, 50, 50, 1, '2017-10-03 14:02:00'),
(51, 51, 51, 1, '2017-10-03 14:02:00'),
(52, 52, 52, 1, '2017-10-03 14:02:00'),
(53, 53, 53, 1, '2017-10-03 14:02:00'),
(54, 54, 54, 1, '2017-10-03 14:02:00'),
(55, 55, 55, 1, '2017-10-03 14:02:00'),
(56, 56, 56, 1, '2017-10-03 14:02:00'),
(57, 57, 57, 1, '2017-10-03 14:02:00'),
(58, 58, 58, 1, '2017-10-03 14:02:00'),
(59, 59, 59, 1, '2017-10-03 14:02:00');

--
-- Disparadores `publicadocumento`
--
DELIMITER $$
CREATE TRIGGER `ActualizaEstatusPublicaDocumento` AFTER INSERT ON `publicadocumento` FOR EACH ROW BEGIN
    update estatusdocumento SET idPublicaDocumento = NEW.idPublicaDocumento
       where idSubeDocumento=NEW.idSubeDocumento
        and idApruebaDocumento=NEW.idApruebaDocumento;
    update documentospublicos SET idPublicaDocumento = NEW.idPublicaDocumento
        where idDocumento=(select sd.idDocumento from subedocumento sd where sd.idSubeDocumento=NEW.idSubeDocumento);
  END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subedocumento`
--

CREATE TABLE `subedocumento` (
  `idSubeDocumento` int(11) NOT NULL,
  `idDocumento` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `siteURL` varchar(245) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subedocumento`
--

INSERT INTO `subedocumento` (`idSubeDocumento`, `idDocumento`, `idUsuario`, `siteURL`, `fecha`) VALUES
(1, 1, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(2, 2, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(3, 3, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(4, 4, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(5, 5, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(6, 6, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(7, 7, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(8, 8, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(9, 9, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(10, 10, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(11, 11, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(12, 12, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(13, 13, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(14, 14, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(15, 15, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(16, 16, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(17, 17, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(18, 18, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(19, 19, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(20, 20, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(21, 21, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(22, 22, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(23, 23, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(24, 24, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(25, 25, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(26, 26, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(27, 27, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(28, 28, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(29, 29, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(30, 30, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(31, 31, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(32, 32, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(33, 33, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(34, 34, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(35, 35, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(36, 36, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(37, 37, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(38, 38, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(39, 39, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(40, 40, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(41, 41, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(42, 42, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(43, 43, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(44, 44, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(45, 45, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(46, 46, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(47, 47, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(48, 48, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(49, 49, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(50, 50, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(51, 51, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(52, 52, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(53, 53, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(54, 54, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(55, 55, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(56, 56, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(57, 57, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(58, 58, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00'),
(59, 59, 1, 'www.apizaco.gob.mx/transparencia/documentostransparencia/DSI_PADSOT_DOC-INICIALIZACION_v1.0.pdf', '2017-10-03 13:44:00');

--
-- Disparadores `subedocumento`
--
DELIMITER $$
CREATE TRIGGER `ActualizaEstatusSubeDocumento` AFTER INSERT ON `subedocumento` FOR EACH ROW BEGIN
    update estatusdocumento SET idSubeDocumento = NEW.idSubeDocumento,
    idApruebaDocumento = idDocumento,
    idPublicaDocumento = idDocumento
    where idDocumento=NEW.idDocumento;
  END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  `idArea` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `idEmpleado`, `idArea`, `usuario`, `password`) VALUES
(1, 1, 1, 'dsinteg', '123'),
(2, 2, 1, 'transparencia', 'transparencia123++'),
(3, 3, 2, 'juridica', 'juridica123++'),
(4, 4, 3, 'planeacion', 'planeacion123++'),
(5, 5, 4, 'administrativa', 'administrativa123++'),
(6, 6, 5, 'tesoreria', 'tesoreria123++'),
(7, 7, 6, 'desarrollosocial', 'desarrollosocial123++'),
(8, 8, 7, 'comunicacion', 'comunicacion123++'),
(9, 9, 8, 'obras', 'obras123++'),
(10, 10, 9, 'secretaria', 'secretaria123++'),
(11, 11, 10, 'sindicatura', 'sindicatura123++'),
(12, 12, 11, 'secretariatecnica', 'secretariatecnica123++'),
(13, 13, 12, 'archivo', 'archivo123++'),
(14, 14, 1, 'dsinteg', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vistahtml`
--

CREATE TABLE `vistahtml` (
  `idvistahtml` int(11) NOT NULL,
  `html` longtext NOT NULL,
  `template` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vistahtml`
--

INSERT INTO `vistahtml` (`idvistahtml`, `html`, `template`) VALUES
(1, '<div id=\"{idDocumento}\" data-sube=\"{idSubeDocumento}\" data-aprueba=\"{idApruebaDocumento}\" class=\"data-item\"><div class=\"item-frac\">{nomenclaturaFraccion}</div><div class=\"item-doc\"><a href=\"{URL}\" target=\"_blank\">{nombreDocumento}</a></div><div class=\"item-date\">{fechaSubeDocumento}</div><div class=\"item-button-status\"><div class=\"data-button  {classEstatusDocumento}\"></div></div><div class=\"item-button-public\"><div class=\"data-button   {classEstatusPublicaDocumento}\"></div></div><div class=\"clean\"></div></div>', 'renglon'),
(2, '<!DOCTYPE html> <html> <head> <meta charset=\"utf-8\"> <title>PADSOT</title> <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"favicon.ico\" /><link rel=\"stylesheet\" href=\"css/styles.css\"> <script src=\"js/jquery.min.js\"></script> <script src=\"js/index.js\"></script><script src=\"js/usuarioArea.js\"></script> {archivoJavaScript}</head> <body> <div class=\"principal-container\"><!-- Modal Loading --><div class=\"modal-loading noDisplay\"><div class=\"modal-container-animation\"><div class=\"cssload-triangles\"><div class=\"cssload-tri cssload-invert\"></div><div class=\"cssload-tri cssload-invert\"></div><div class=\"cssload-tri\"></div><div class=\"cssload-tri cssload-invert\"></div><div class=\"cssload-tri cssload-invert\"></div><div class=\"cssload-tri\"></div><div class=\"cssload-tri cssload-invert\"></div><div class=\"cssload-tri\"></div><div class=\"cssload-tri cssload-invert\"></div></div></div></div> <!-- Modal --> <div class=\"modal-general noDisplay\"> <div class=\"modal-container\"> <div class=\"close-modal\"></div> <div class=\"new-file\"></div> <div class=\"modal-description\">Carga de archivo</div> <div class=\"modal-instruction\"><span>1</span>Seleccione un archivo de su equipo.</div> <div class=\"forms-container\"> <label class=\"label-select-file\" for=\"loadFile\">Selecionar Archivo</label> <input id=\"loadFile\" type=\"file\" name=\"\" value=\"\"> </div> <div class=\"modal-instruction\"><span>2</span>Haga Clic sobre el botón para cargar el archivo a Drive.</div> <div class=\"forms-container\"> <div id=\"loadButton\" class=\"load-button\">Cargar Archivo</div> <div id=\"loadingFile\" class=\"load-icon load-icon-file noDisplay\"></div> </div> <div class=\"modal-instruction\"><span>3</span>Copie la URL del archivo.</div> <div class=\"forms-container\"> <div id=\"copyButton\" class=\"copy-button\">Copiar URL</div> <input id=\"urlFile\" type=\"text\" name=\"\" value=\"\"> </div> <div id=\"modalAlert\" class=\"modal-alert success\"></div> </div> </div><!-- Modal Carga Documento--><div class=\"modal-subeDocumento noDisplay\"> <div class=\"modal-container\"> <div class=\"close-modal\"></div> <div class=\"new-file\"></div> <div class=\"modal-description-documento\">Carga de Documento</div> <div class=\"modal-instruction\"><span>1</span>Seleccione un archivo de su equipo.</div> <div class=\"forms-container\"> <label class=\"label-select-file\" for=\"loadFile\">Selecionar Archivo</label> <input id=\"loadFileArticulo\" type=\"file\" name=\"\" value=\"\"> </div> <div class=\"modal-instruction\"><span>2</span>Haga Clic sobre el botón para cargar el archivo a Drive.</div> <div class=\"forms-container\"> <div id=\"loadButtonArticulo\" class=\"load-button\">Cargar Archivo</div> <div id=\"loadingFileArticulo\" class=\"load-icon load-icon-file noDisplay\"></div> </div> <div id=\"modalAlertArticulo\" class=\"modal-alert success\"></div> </div> </div> <!-- Modal Aprueba Documento--><div class=\"modal-apruebaDocumento noDisplay\"> <div class=\"modal-container\"> <div class=\"close-modal\"></div> <div class=\"new-file\"></div> <div class=\"modal-description-apruebadocumento\">APRUEBA DOCUMENTO: </div> <div class=\"modal-instruction\"><span>1</span>El Documento es Correcto.</div> <div class=\"forms-container\"> <div id=\"siApruebaDocumento\" class=\"load-button\">APRUEBA</div> <div id=\"loadingFileArticulo\" class=\"load-icon load-icon-file noDisplay\"></div> </div><div class=\"modal-instruction\"><span>2</span>El Documento Contiene Errores</div> <div class=\"forms-container\"> <div id=\"noApruebaDocumento\" class=\"load-button\">DESAPRUEBA</div> <div id=\"loadingFileArticulo\" class=\"load-icon load-icon-file noDisplay\"></div> </div> <div id=\"modalAlertArticulo\" class=\"modal-alert success\"></div> </div> </div><!-- Modal Publica Documento--><div class=\"modal-publicaDocumento noDisplay\"> <div class=\"modal-container\"> <div class=\"close-modal\"></div> <div class=\"new-file\"></div> <div class=\"modal-description-apruebadocumento\">PUBLICA DOCUMENTO</div> <div class=\"modal-instruction\"><span>1</span>El Documento se debe publicar en el portal</div> <div class=\"forms-container\"> <div id=\"siPublicaDocumento\" class=\"load-button\">PUBLICAR</div> <div id=\"loadingFileArticulo\" class=\"load-icon load-icon-file noDisplay\"></div> </div><div class=\"modal-instruction\"><span>2</span>Aún no es momento de hacerlo público.</div> <div class=\"forms-container\"> <div id=\"noPublicaDocumento\" class=\"load-button\">CERRAR</div> <div id=\"loadingFileArticulo\" class=\"load-icon load-icon-file noDisplay\"></div> </div> <div id=\"modalAlertArticulo\" class=\"modal-alert success\"></div> </div> </div><!-- Nav--> <div class=\"navbar\"> <div class=\"brand-container\"> <span>padsot</span> </div> <div class=\"user-container\"> <div id=\"loading\" class=\"load-icon noDisplay\"></div> <div id=\"user\" class=\"info-user\">{nombreUsuario}</div> <div id=\"fechaActual\" class=\"user-date\">Lunes 28 Noviembre</div> <div class=\"dropdown noDisplay\"> <ul> <li id=\"menuUsers\" data-section=\"usersModal\">Usuarios <span></span></li> <li id=\"menuSystem\" data-section=\"documentsModal\">Documentos <span></span></li> <li id=\"menuTutorial\">Tutorial <span></span></li> <li id=\"menuLogOut\">Salir <span></span></li> </ul> </div> </div> </div> <div class=\"content-container\"> <!-- Alerts --> <div id=\"alert\" class=\"alert-container\"> <div class=\"alert-message\"></div> </div> <div id=\"documentsModal\" class=\"info-container\"> <div class=\"data-container\"> <div class=\"title-bar\"> <div id=\"newFile\" class=\"bar-button\"></div> <div id=\"buttonView\" class=\"bar-button\"></div> <p id=\"nameArea\">Area:  {nombreArea}</p> </div> <div class=\"data-content\"> <div class=\"data-headers\"> <div class=\"col-3\">Fracción</div> <div class=\"col-3\">Documento</div> <div class=\"col-2\">Fecha</div> <div class=\"col-2\">Estatus</div> <div class=\"col-2\">Publicar</div> <!-- Item --> <div class=\"clean\"></div> </div> <div id=\"dataInfoContainer\" class=\"data-info-container list-view\"> {arregloItems} </div> </div> </div> </div> <!-- Users Container --> <div id=\"usersModal\" class=\"info-container noDisplay\"> <div class=\"col-8 section users-registered-contanier\"> <div class=\"section-title\">Personal dado de Alta</div> <div id=\"userList\" class=\"user-list\"><!-- User Item --> <div class=\"col-4\"> <div class=\"user-item\"> <div class=\"delete-user\"></div> <div class=\"user-name\">Juan José Cordova Zamorano</div> <div class=\"user-area\">Transparencia y Desarrollo</div> <div class=\"user-user\">Juan</div> </div> </div> <!-- User Item --> <div class=\"col-4\"> <div class=\"user-item\"> <div class=\"delete-user\"></div> <div class=\"user-name\">Juan José Cordova Zamorano</div> <div class=\"user-area\">Transparencia</div> <div class=\"user-user\">Juan</div> </div> </div> <!-- User Item --> <div class=\"col-4\"> <div class=\"user-item\"> <div class=\"delete-user\"></div> <div class=\"user-name\">Juan José Cordova Zamorano</div> <div class=\"user-area\">Transparencia</div> <div class=\"user-user\">Juan</div> </div> </div> <!-- User Item --> <div class=\"col-4\"> <div class=\"user-item\"> <div class=\"delete-user\"></div> <div class=\"user-name\">Juan José Cordova Zamorano</div> <div class=\"user-area\">Transparencia</div> <div class=\"user-user\">Juan</div> </div> </div></div> </div> <div class=\"col-4 section form-users-container\"> <div class=\"section-title\">Agrega un usuario</div> <form class=\"\"> <div class=\"col-6\"> <label for=\"\">Nombre</label> <input id=\"nombreUsuario\" type=\"text\" name=\"\" value=\"\"> </div> <div class=\"col-6\"> <label for=\"\">Usuario</label> <input id=\"usuarioUsuario\" type=\"text\" name=\"\" value=\"\"> </div> <div class=\"col-6\"> <label for=\"\">Apellido Paterno</label> <input id=\"apPaterno\" type=\"text\" name=\"\" value=\"\"> </div> <div class=\"col-6\"> <label for=\"\">Apellido Materno</label> <input id=\"apMaterno\" type=\"text\" name=\"\" value=\"\"> </div> <div class=\"col-12\"> <label for=\"\">Correo Electrónico</label> <input id=\"correoUsuario\" type=\"text\" name=\"\" value=\"\"> </div> <div class=\"col-6\"> <label for=\"\">Contraseña</label> <input id=\"pass\" type=\"text\" name=\"\" value=\"\"> </div> <div class=\"col-6\"> <label for=\"\">Confirme contraseña</label> <input id=\"cPass\" type=\"text\" name=\"\" value=\"\"> </div> <div class=\"clean\"></div> <div class=\"col-12\" style=\"margin-top: 0px;border-top: 1px solid #e3e3e3; padding-top: 20px;\"> <label for=\"\">Área</label> <select id=\"selectArea\" class=\"\" name=\"\"> <option value=\"0\">Selecciona un Área</option> <option value=\"1\">Tesoreria</option> <option value=\"2\">Transparencia</option> <option value=\"3\">Contraloría</option> </select> </div> <div class=\"col-12\"> <div id=\"saveUser\" class=\"button\">Registrar Usuario</div> </div> <div class=\"col-12\"> <div class=\"users-form-alert noDisplay\"></div> </div> </form> </div> </div> </div> <div class=\"footer\"></div> </div> </body> </html>', 'admin'),
(3, '<!-- Bloque transparencia  --><!DOCTYPE html><html lang=\"en\"><head><meta charset=\"utf-8\"><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"><meta name=\"description\" content=\"\"><meta name=\"author\" content=\"\"><title>Transparencia</title><!-- Bootstrap Core CSS --><link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" type=\"text/css\"><!-- Custom Fonts --><link rel=\"stylesheet\" href=\"font-awesome/css/font-awesome.min.css\" type=\"text/css\"><!-- Custom CSS --><link rel=\"stylesheet\" href=\"css/styles.css\" type=\"text/css\"><meta name=\"theme-color\" content=\"#e9edf0\" /></head><body id=\"page-topo\"><!-- Navbar --><div id=\"page-top\"><div class=\"apizaco-navbar-social\"><div class=\"container\"><div class=\"apizaco-navbar\"><i class=\"fa fa-envelope\"></i><a href=\"mailto:presidencia@apizaco.gob.mx\">presidencia@apizaco.gob.mx</a></div><div class=\"apizaco-navbar\"><a href=\"www.facebook.com/comsocial20172021\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a><a href=\"twitter.com/Netzmark_\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a><a href=\"www.instagram.com/netzmark_/\" target=\"_blank\"><i class=\"fa fa-instagram\"></i></a></div></div></div><div class=\"ayuntamiento-navbar-container\"><div class=\"apizaco-logo-container\"><span class=\"logo\"></span></div><div class=\"apizaco-navbar-ayuntamiento\"><div class=\"container\"><p>H. Ayuntamiento de Apizaco</p></div></div><nav id=\"menu\" class=\"navbar navbar-default transition\"><div class=\"container\"><div class=\"navbar-header\"><button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\"><span class=\"sr-only\">Toggle navigation</span><span class=\"icon-bar\"></span><span class=\"icon-bar\"></span><span class=\"icon-bar\"></span></button><a href=\"#pagetop\"><div class=\"navbar-brand\"></div></a></div><div id=\"navbar\" class=\"navbar-collapse collapse\"><ul class=\"nav navbar-nav navbar-right\"><li><a href=\"http://apizaco.gob.mx/\" class=\"page-scroll\">Inicio</a></li><li><a href=\"\" class=\"page-scroll\">Transparencia</a></li><li><a href=\"apizaco.gob.mx/Apizaco-Noticias/\" class=\"page-scroll\">Noticias</a></li><li><a href=\"apizaco.gob.mx/Instituto-Municipal-de-la-Mujer-Apizaco/\" class=\"page-scroll\">Instituto de la Mujer</a></li><li><a href=\"http://apizaco.gob.mx/municipio.html\" class=\"page-scroll\">Municipio</a></li><li><a href=\"http://apizaco.gob.mx/contacto.html\" class=\"page-scroll\">Contacto</a></li></ul><ul class=\"nav navbar-nav navbar-right noDisplay\"><li><a href=\"www.facebook.com/netzzmark\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a></li><li><a href=\"twitter.com/Netzmark_\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a></li><li><a href=\"www.instagram.com/netzmark_/\" target=\"_blank\"><i class=\"fa fa-instagram\"></i></a></li></ul></div><!--/.nav-collapse --></div></nav></div><div class=\"section-content\"><div class=\"container\"><div class=\"section-title\"><p>Transparencia</p></div><div class=\"section-description col-md-12\"><div class=\"col-md-6 col-md-offset-6\"><p>En Apizaco estamos comprometidos con la transparencia, es por esto que ponemos a disposición la información de obligaciones comúnes y específicas de transparencia del H. Ayuntamiento de Apizaco.</p></div></div><div class=\"section-documents\"><!-- Articles Buttons --><div class=\"articles-container col-md-12 col-md-offset-2\"><div class=\"col-xs-4\"><div id=\"\" class=\"article\" data-article=\"63\"><span>Artículo 63</span></div></div><div class=\"col-xs-4\"><div id=\"\" class=\"article\" data-article=\"64\"><span>Artículo 64</span></div></div><div class=\"clean\"></div></div><!-- Articles Description --><div class=\"article-description col-md-6 col-md-offset-3\"><p id=\"description-63\" class=\"description noDisplay\">Obligaciones Comunes.</p><p id=\"description-64\" class=\"description noDisplay\">Obligaciones Especificas de Ayuntamientos.</p></div><div class=\"clean\"></div><!-- List Documents -->{articulo63}{articulo64}</div><!-- Footer --><div class=\"footer col-md-10 col-md-offset-1\"><div class=\"footer-logo\"></div><div class=\"col-md-2 col-md-offset-4\"><div class=\"footer-title\">Menú</div><ul><li><a href=\"#\">Inicio</a></li><li><a href=\"#\">Transparencia</a></li><li><a href=\"#\">Noticias</a></li><li><a href=\"#\">Instituto de la Mujer</a></li><li><a href=\"#\">Municipio</a></li><li><a href=\"#\">Contacto</a></li></ul></div><div class=\"col-md-3\"><div class=\"footer-title\">Contacto</div><ul class=\"contact\"><li>Dirección:</li><li>Boulevard 16 de Septiembre S/N</br>Colonia Centro, Apizaco, Tlaxcala,</br>México, C.P. 90300</li><li>Número:</li><li>(241) 418-0845</li><li>Escribenos a:</li><li>presidencia@apizaco.gob.mx</li></ul></div><div class=\"col-md-2\"><div class=\"footer-title\">Suíguenos</div><p>Síguenos a través de nuestras redes sociales.</p><a href=\"www.facebook.com/dsinteg\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a><a href=\"twitter.com/dsinteg\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a><a href=\"www.instagram.com/dsinteg/\" target=\"_blank\"><i class=\"fa fa-instagram\"></i></a></div><div class=\"clean\"></div></div></div></div><div class=\"foot-container\"><p>© 2017 Ayuntamiento de Apizaco.</p></div></div><!-- jQuery --><script src=\"js/jquery.min.js\"></script><script src=\"js/bootstrap.min.js\"></script><script src=\"js/index.js\"></script></body></html>', 'transparencia'),
(4, '<div class=\"list-container-{articulo} col-md-10 col-md-offset-1 noDisplay\"><div id=\"list-faction-{articulo}\" class=\"list-fraction\"><p>{nombreArticulo}</p><div id=\"fraccionX-1\" class=\"list-documents\">{listaFraccion}</div></div></div>', 'fraccion'),
(5, '<a href=\"{siteURL}\" target=\"_blank\" data-publicadocumento=\"{idPublicaDocumento}\" data-documento=\"{idDocumento}\" data-subedocumento=\"{idSubeDocumento}\" ><p>{nomenclaturaArticulo} - {nombreFraccion}</p></a>', 'articulo');

-- --------------------------------------------------------

--
-- Estructura para la vista `documentosareatotalestatus`
--
DROP TABLE IF EXISTS `documentosareatotalestatus`;

CREATE ALGORITHM=UNDEFINED DEFINER=`apizacog_padsot`@`localhost` SQL SECURITY DEFINER VIEW `documentosareatotalestatus`  AS  select `d`.`idArea` AS `idArea`,`d`.`idDocumento` AS `DidDocumento`,concat(`a`.`nomenclaturaArticulo`,' Frac. ',`af`.`nomenclaturaFraccion`) AS `AFnomenclaturaFraccion`,`af`.`nombreFraccion` AS `AFnombreFraccion`,`d`.`nombreDocumento` AS `DnombreDocumento`,`sd`.`siteURL` AS `SDsiteURL`,`sd`.`idSubeDocumento` AS `SDidSubeDocumento`,`sd`.`idUsuario` AS `SDidUsuario`,`sd`.`fecha` AS `SDfecha`,`ad`.`idApruebaDocumento` AS `ADidApruebaDocumento`,`ad`.`idSubeDocumento` AS `ADidSubeDocumento`,`pd`.`idPublicaDocumento` AS `PDidPublicaDocumento`,`ad`.`idUsuario` AS `ADidUsuario`,`ad`.`fecha` AS `ADfecha` from ((((((((`documento` `d` join `estatusdocumento` `ed`) join `subedocumento` `sd`) join `apruebadocumento` `ad`) join `publicadocumento` `pd`) join `articulofraccion` `af`) join `articulo` `a`) join `usuario` `u`) join `empleado` `e`) where ((`d`.`idArticuloFraccion` = `af`.`idArticuloFraccion`) and (`af`.`idArticulo` = `a`.`idArticulo`) and (`ed`.`idDocumento` = `d`.`idDocumento`) and (`ed`.`idSubeDocumento` = `sd`.`idSubeDocumento`) and (`ed`.`idApruebaDocumento` = `ad`.`idApruebaDocumento`) and (`ed`.`idPublicaDocumento` = `pd`.`idPublicaDocumento`) and (`u`.`idUsuario` = `sd`.`idUsuario`) and (`u`.`idEmpleado` = `e`.`idEmpleado`)) order by `d`.`idDocumento` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `documentostransparencia`
--
DROP TABLE IF EXISTS `documentostransparencia`;

CREATE ALGORITHM=UNDEFINED DEFINER=`apizacog_padsot`@`localhost` SQL SECURITY DEFINER VIEW `documentostransparencia`  AS  select `d`.`idArticulo` AS `idArticulo`,`sd`.`idDocumento` AS `idDocumento`,`dp`.`idPublicaDocumento` AS `idPublicaDocumento`,`sd`.`idSubeDocumento` AS `idSubeDocumento`,`d`.`nombreDocumento` AS `nombreDocumento`,`sd`.`siteURL` AS `siteURL`,concat(`a`.`nomenclaturaArticulo`,'-',`af`.`nomenclaturaFraccion`) AS `nomenclaturaArticulo`,substr(`af`.`nombreFraccion`,1,50) AS `nombreFraccion` from (((((`documentospublicos` `dp` join `subedocumento` `sd`) join `publicadocumento` `pd`) join `documento` `d`) join `articulo` `a`) join `articulofraccion` `af`) where ((`dp`.`idPublicaDocumento` = `pd`.`idPublicaDocumento`) and (`pd`.`idSubeDocumento` = `sd`.`idSubeDocumento`) and (`sd`.`idDocumento` = `d`.`idDocumento`) and (`d`.`idArticulo` = `a`.`idArticulo`) and (`d`.`idArticuloFraccion` = `af`.`idArticuloFraccion`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apruebadocumento`
--
ALTER TABLE `apruebadocumento`
  ADD PRIMARY KEY (`idApruebaDocumento`,`idSubeDocumento`),
  ADD KEY `fk_ApruebaDocumento_SubeDocumento1_idx` (`idSubeDocumento`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`idArea`);

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`idArticulo`);

--
-- Indices de la tabla `articulofraccion`
--
ALTER TABLE `articulofraccion`
  ADD PRIMARY KEY (`idArticuloFraccion`,`idArticulo`),
  ADD KEY `fk_ArticuloFraccion_Articulo1_idx` (`idArticulo`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`idDocumento`,`idArticuloFraccion`,`idArticulo`,`idArea`),
  ADD KEY `fk_Documento_ArticuloFraccion1_idx` (`idArticuloFraccion`,`idArticulo`),
  ADD KEY `fk_Documento_Area1_idx` (`idArea`);

--
-- Indices de la tabla `documentospublicos`
--
ALTER TABLE `documentospublicos`
  ADD PRIMARY KEY (`iddocumentospublicos`,`idDocumento`,`idPublicaDocumento`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idEmpleado`);

--
-- Indices de la tabla `estatusdocumento`
--
ALTER TABLE `estatusdocumento`
  ADD PRIMARY KEY (`idEstatusDocumento`,`idDocumento`,`idSubeDocumento`,`idPublicaDocumento`,`idApruebaDocumento`);

--
-- Indices de la tabla `publicadocumento`
--
ALTER TABLE `publicadocumento`
  ADD PRIMARY KEY (`idPublicaDocumento`,`idSubeDocumento`,`idApruebaDocumento`),
  ADD KEY `fk_PublicaDocumento_ApruebaDocumento1_idx` (`idApruebaDocumento`,`idSubeDocumento`);

--
-- Indices de la tabla `subedocumento`
--
ALTER TABLE `subedocumento`
  ADD PRIMARY KEY (`idSubeDocumento`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`,`idEmpleado`,`idArea`),
  ADD KEY `fk_Usuario_Empleado1_idx` (`idEmpleado`),
  ADD KEY `fk_Usuario_Area1_idx` (`idArea`);

--
-- Indices de la tabla `vistahtml`
--
ALTER TABLE `vistahtml`
  ADD PRIMARY KEY (`idvistahtml`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apruebadocumento`
--
ALTER TABLE `apruebadocumento`
  MODIFY `idApruebaDocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `idArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `idArticulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `articulofraccion`
--
ALTER TABLE `articulofraccion`
  MODIFY `idArticuloFraccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `idDocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT de la tabla `documentospublicos`
--
ALTER TABLE `documentospublicos`
  MODIFY `iddocumentospublicos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `idEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `estatusdocumento`
--
ALTER TABLE `estatusdocumento`
  MODIFY `idEstatusDocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT de la tabla `publicadocumento`
--
ALTER TABLE `publicadocumento`
  MODIFY `idPublicaDocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT de la tabla `subedocumento`
--
ALTER TABLE `subedocumento`
  MODIFY `idSubeDocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `vistahtml`
--
ALTER TABLE `vistahtml`
  MODIFY `idvistahtml` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `apruebadocumento`
--
ALTER TABLE `apruebadocumento`
  ADD CONSTRAINT `fk_ApruebaDocumento_SubeDocumento1` FOREIGN KEY (`idSubeDocumento`) REFERENCES `subedocumento` (`idSubeDocumento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `articulofraccion`
--
ALTER TABLE `articulofraccion`
  ADD CONSTRAINT `fk_ArticuloFraccion_Articulo1` FOREIGN KEY (`idArticulo`) REFERENCES `articulo` (`idArticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `fk_Documento_Area1` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Documento_ArticuloFraccion1` FOREIGN KEY (`idArticuloFraccion`,`idArticulo`) REFERENCES `articulofraccion` (`idArticuloFraccion`, `idArticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `publicadocumento`
--
ALTER TABLE `publicadocumento`
  ADD CONSTRAINT `fk_PublicaDocumento_ApruebaDocumento1` FOREIGN KEY (`idApruebaDocumento`,`idSubeDocumento`) REFERENCES `apruebadocumento` (`idApruebaDocumento`, `idSubeDocumento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_Area1` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Usuario_Empleado1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
