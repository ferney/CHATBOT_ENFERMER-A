-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2025 a las 23:47:30
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
-- Base de datos: `alcaldia`
--
CREATE DATABASE IF NOT EXISTS `alcaldia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `alcaldia`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratos`
--

CREATE TABLE `contratos` (
  `ID` varchar(100) DEFAULT NULL,
  `Codigos_UNSPSC` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `column_3` varchar(100) DEFAULT NULL,
  `column_4` varchar(100) DEFAULT NULL,
  `column_5` varchar(100) DEFAULT NULL,
  `column_6` varchar(100) DEFAULT NULL,
  `column_7` varchar(100) DEFAULT NULL,
  `column_8` varchar(100) DEFAULT NULL,
  `column_9` varchar(100) DEFAULT NULL,
  `column_10` varchar(100) DEFAULT NULL,
  `column_11` varchar(100) DEFAULT NULL,
  `column_12` varchar(100) DEFAULT NULL,
  `column_13` varchar(100) DEFAULT NULL,
  `column_14` varchar(100) DEFAULT NULL,
  `column_15` varchar(100) DEFAULT NULL,
  `column_16` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contratos`
--

INSERT INTO `contratos` (`ID`, `Codigos_UNSPSC`, `Descripcion`, `column_3`, `column_4`, `column_5`, `column_6`, `column_7`, `column_8`, `column_9`, `column_10`, `column_11`, `column_12`, `column_13`, `column_14`, `column_15`, `column_16`) VALUES
('', '15101505 15101506', 'Suministro de Combustible  para el funcionamiento de los vehiculos de la administracion municipal ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '15101505 15101506', '\"Suministro de servicios', ' reparacion  y suministro para las motos   para el funcionamiento de los motocicletas de la administ', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '15101505 15101506', 'Suministro de insumos y reparacion   para las volquetas  y la niveladora   de la administracion muni', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '15101505 15101506', 'Suministro de Combustible  para el funcionamiento de los vehiculos de la administracion municipal ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '85121600', 'Trabajadora Social', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'Asesor Juridico', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'Asesor Juridico', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '92111501', 'Conciliador en Equidad', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '42261801', 'Suministro de Cofres funebres ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '56101711', 'estanterias modulares', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '45102000', 'maquina para sellar correspondencia', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '25191700', 'Equipos para el mantenimiento y reparacion de vehículos y maquinaria de la adminsitracion muncicipal', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '90101600  90101700 90101800 90111500', 'Servicio hospedaje y de alimentacion y realizacion de diferentes eventos de la Administracion Munici', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '82101500 60121007 60121007  ', 'Suministro de material publicitario e impresos para la alcaldia municipal', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '\"14111506 14111507  14111508  14111509  14111510  14111514  14111515  44111501 44111502  44111503 44', 'Suministro de elementos de papelería y elementos de oficina para las dependencias de la  administrac', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '48101500 50201708 47131600  50201700 47131700 47131800 12141901 14111704 53131608 24111503 47132100 ', 'Suministro de elementos de aseo y cafeteria para la administracion municipal ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '83111600', 'Servicios de comunicaciones móviles', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80131501', 'Arrendamiento de residencias', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '84131500  84131600', 'Seguros y polizas para bienes muebles e inmuebles propiedad de la administracion municipal ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '83101800  83101500', 'Servcios publicos de agua y energia para las dependencias de la administracion y los establecimiento', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '25191700', 'Servicios  para el mantenimiento   suministro  y reparacion de motos  de la adminsitracion muncicipa', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '93131600 93131608 93131609', 'Servicios de suministro de alimentos RESTAURANTE', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '43211500 43211600 43211700 43211800', 'SUMINISTRO DE COMPUTADORES Y ELEMENTOS PARA OFICINA', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '93131608 93131609 93131610 93131611', 'SUMINISTRO DE VIVERES', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '31161500 31161600 31161700 31161800 31161900 31162000 31162100 31162200 31162300 31162400 31162500 3', 'SUMINISTRO DE FERRETERIA', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '90101600', 'SUMINISTRO DE REFRIGERIOS E HIDRATACION', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '84131609', 'BIENESTAR SOCIAL ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '93151500', 'APOYO LOGISTICO PARA ATENDER LAS ELECCIONES 2018', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '92101700', 'CONVENIO INPEC', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '92101602', 'CONVENIO BOMBEROS', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '41105903', 'PRESTACION DE SERVICIOS  PROFESIONALES COMO APOYO EN COMISARIA', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '41105903', 'PRESTACION DE SERVICIOS  PROFESIONALES COMO APOYO EN INSPECCION DE POLICIA', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '41105903', 'PRESTACION  DE SERVICIOS (SINIESTROS HABITACIONALES)', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '41105903', 'SERVICIOS PROFESIONALES COMO ABOGADO EN LO RELACIONADO CON PASIVO PENSIONAL', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '41105903', 'IMPLEMENTACION DEL SISTEMA DE GESTION EN SEGURIDAD Y SALUD EN EL TRABAJO', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'HOGAR DE PASO', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '41105903', 'PRESTACION DE SERVICIOS DE APOYO SECRETARIA Y AREA JURIDICA', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '93131600 93131608 93131609', 'Servicios de suministro de alimentos personas detenidas', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '78111800', 'Servicio de Transporte', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '93141701', 'Prestar los servicios de Apoyo logistico para la realizacion de los diferentes  eventos culturales f', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '90101600 90101700 90101800 90111500', '\"Servicio hospedaje y de alimentacion y realizacion de diferentes eventos de la Secretaria de Educac', ' Cultura y Deporte\"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '44121600 43211500', '\"Suministro de equipos de computo', ' impresoras', ' escaner', '  y demas equipos de oficina para el funcionamiento de la secretaria de Educación.\"', '', '', '', '', '', '', '', '', '', '', ''),
('', '81112300 81112200', '\"Mantenimiento y reparacion de los equipos de la Secretaria de educación', ' cultura y deporte \"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '82101500 60121007 60121007  ', '\"Suministro de material publicitario e impresos para la Secretaria de educación', ' Cultura y deporte\"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '56101700 44121600 ', '\"Compra de Muebles de oficina para las dependencias de la Secretaria de educación', ' cultura y deporte.\"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '84131500  84131600', '\"Seguros y polizas para bienes muebles e inmuebles  a cargo dela secretaria de Educación', ' Cultura y Deporte propiedad del municipio\"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '83101800  83101500', '\"Servcios publicos de agua', ' energia e internet para los establecimientos educativos del municipio\"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72101510', 'Mantenimiento o reparación del sistema de plomería de las I.E y sus sedes', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72121507', 'Mantenimiento y reparación de tanques', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72151501', 'Servicios de instalación de iluminación', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '95121904', 'Biblioteca', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '95122302', 'Campo deportivo', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111715', '\"PRESTACION DE SERVICIOS PROFESIONALES DE ASESORIA', ' APOYO Y ACOMPAÑAMIENTO JURIDICO EN LOS PROYECTOS DE LA SECRETARÍA DE EDUCACIÓN', ' CULTURA Y DEPORTE DEL MUNICIPIO DE ANDES.\"', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '53102900', 'Prendas de deporte', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '90141700', 'Deportes aficionados y recreacionales', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '49161500', 'Implementos para practica de deportes', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '49211800', 'Equipo para entrenamiento físico', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '49101701', 'Medallas', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '49101702', 'Trofeos', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '48101800', 'Menaje y utensilios de cocina', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '15111501', 'Propano', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '86101710', 'Servicios de formación pedagógica', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '70141605', 'Servicios de manejo integrado de plagas', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '90151800', 'Carnavales y ferias', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '93141702', 'Servicios de promoción cultural', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '93141703', 'Servicios relacionados con el arte', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '60131000  60131100  60131200  60131300  60131400  60131500  60131600  60131700', '\"Instrumentos musicales', ' piezas y accesorios\"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '\"50131700 50131800 50151500 50161500 50201700 50221000 50181900 50221300 50404500 \"', 'viveres para la ejecucion del programa de restaurante escolar', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'Servicios de personal temporal', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'Servicios de personal temporal', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '84111600', 'Servicios de auditoría', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '41105901', 'PRESTACIÓN DE SERVICIOS TÉCNICOS COMO AUXILIAR DE BIBLIOTECA', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '41105903', 'PRESTACIÓN DE SERVICIOS PROFESIONALES COMO COMUNICADOR MANEJO REDES SOCIALES', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '41105904', ' PRESTACIÓN DE SERVICIOS PROFESIONALES COMO APOYO MANEJO DEL SONIDO.', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '41105905', 'PRESTACIÓN DE SERVICIOS TÉCNICOS EN INFORMÁTICA CIUDADELA', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '41105908', 'PRESTACIÓN DE SERVICIOS DE LUDOTECA', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '60105428', 'KIT ESCOLARES', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '71151007', 'PREPARACIÓN PRUEBAS SABER ICFES', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '93141702', 'PRESTACIÓN DE SERVICIOS PROFESIONALES-MONITORIAS CASA DE LA CULTURA', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72103301', 'SUMINISTRO Y DOTACIÓN DEL GIMNASIO MUNICIPAL', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111607', 'PRESTACIÓN DE SERVICIOS PROFESIONALES - ABOGADO ESPECIALISTA EN DERECHO ADMINISTRATIVO O CONTRATACIÓ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Servicio para el mejoramiento de los resultados de las pruebas de Estado', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Prestación de servicios de apoyo para la ejecución del Plan de lectura y bibliotecas', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Servicio de logística para la generación de espacios culturales', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Servicio de impresión del Medio de Comunicación', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Prestación de servicios monitor teatro', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Prestación de servicios monitor de danzas y música', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Prestación de servicios como profesor de música', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Prestación de servicios como profesor de música rural', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Prestación de servicios para la coordinación del proyecto deporte social comunitario', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Suministro de materiales para mantenimiento Infraestructura Deportiva', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Suministro de materiales didácticos para los CER', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Servicios de capacitación para docentes', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Suministro de menaje  para los restaurantes escolares', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Dotación de material didáctico POST PRIMARIA', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Servicio de logística para la ejecución del proyecto torneos y prácticas deportivas', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Servicio de adecuación y mantenimiento de Gimnasio', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Suminsitro de  implementos deportivos -recreativos', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Servicio de logística para la ejecución de programa de premios y etsímulos a la creación Cultual', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Servicio de logística para la ejecución de campañas y megaeventos', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Servicios de transporte para la representación de Andes en eventos deportivos', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Suministro de materiales para mantenimiento de infraestructura cultural.', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Apoyo a los Hogares Juveniles Campesinos', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Suministro de elemento de dotación de bibliotecas rurales', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Servcio de logística para los conciertos de la Escuela de Música', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Obras de adecuacion de la unidad deportiva municipal', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Promoción de la educación superior (Feria Anual)', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Servico de logística para el festival de teatro ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Servicios de capacitación para docentes', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Realización del Foro Educativo Municipal', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', 'Servicio de logística para la actividades culturales navideñas', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '\"86101700 86101600\"', 'Servicios de capacitación para docentes', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '\"20102301 78111808\"', 'Servicio de transporte para la representación de Andes en eventos artísticos en otros municipios del', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '\"80141607 81141601\"', 'Servicio de logística para el festival de Danza', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '\"80141607 81141601\"', 'Servicio de logística para la ejecución del evento vacaciones recreativas', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '60122500', '      Pesebre navideño', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '90141500', 'SERVICIOS DE ARBITRAJE DEPORTIVO', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111617', 'PRESTACION DE SERVICIOS COMO ARQUITECTO PARA LA ELABORACION DE PLANES Y PROYECTOS DE LA ADMINISTRACI', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '81101513', '\"PRESTACION DE SERVICIOS PROFESIONALES PARA LA ELABORACION', ' SEGUIMIENTO Y CONTROL DE LOS CONTRATOS REALIZADOS POR LA SECRETARIA DE PLANEACION\"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '81101513', '\"PRESTACION DE SERVICIOS PROFESIONALES PARA LA ELABORACION', ' SEGUIMIENTO Y CONTROL DE LOS CONTRATOS Y LICITACIONES PUBLICAS REALIZADAS POR LA  POR LA SECRETARIA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '81101513', 'PRESTACION DE SERVICIOS COMO INGENIERO PARA LA ELABORACION DE PLANES Y PROYECTOS DE LA ADMINISTRACIÓ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '81101513', 'PRESTACIÓN DE SERVICIOS EN CONSTRUCCIÓN PARA REALIZAR SUPERVECIONES A LOS PROGAMAS Y PROYECTOS QUE S', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '81101512', 'PRESTACION DE SERVICIOS PERSONALES Y PROFESIONALES EN LA SECRETARIA DE PLANEACIÓN Y CATASTRO DEL MUN', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '81111604', 'PRESTACION DE SERVICIOS COMO TÉCNICO CATASTRAL EN LA SECRETARIA DE PLANEACIÓN Y CATASTRO DEL MUNICIP', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '81111604', 'PRESTACION DE SERVICIOS COMO TÉCNICO CATASTRAL EN LA SECRETARIA DE PLANEACIÓN Y CATASTRO DEL MUNICIP', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '81111604', 'PRESTACION DE SERVICIOS COMO TÉCNICO CATASTRAL EN LA SECRETARIA DE PLANEACIÓN Y CATASTRO DEL MUNICIP', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111619', 'PRESTACION DE SERVICIOS PROFESIONALES PARA EL ACOMPAÑAMIENTO SOCIAL Y PUBLICITARIO DE LOS PROYECTOS ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111620', '\"PRESTACIÓN DE SERVICIOS PROFESIONALES PARA LA RENDICION DE INFORMES', ' SEGUIMIENTO Y CONTROL DE LOS PROYECTOS Y RECURSOS PROVENIENTES DEL SISTEMA GENERAL DE REGALIAS SGR\"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72121406', 'MANTENIMIENTO Y AMPLIACIÓN DE LA INFRAESTRUCTURA EDUCATIVA URBANA Y RURAL DEL MUNICIPIO', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72153102', 'MANTENIMIENTO PREVENTIVO Y CORRECTIVO DE ESCENARIOS EDUCATIVOS RURALES', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72121406', '\"CONSTRUCCION DE LA TERCERA ETAPA DE LA CIUDADELA EDUCATIVA MARIO ARAMBURO RESTREPO (AULAS DE DANZA', ' MUSICA Y PINTURA)\"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '49221531', 'ADECUACIÓN Y/O CONSTRUCCIÓN DE PARQUES INFANTILES URBANOS', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '49221531', 'ADECUACIÓN Y/O CONSTRUCCIÓN DE PARQUES INFANTILES RURALES', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72111001  72111002  72111106', 'CONSTRUCCIÓN DE MEJORAMIENTOS DE VIVIENDA EN ZONA URBANA Y RURAL DEL MUNICIPIO', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111617', '\"LEVANTAMIENTO ARQUITECTONICO', ' Y ELABORACIÓN DE PRESUPUESTOS DE OBRA PARA LA  FORMULACIÓN DE PROYECTOS DE CONSTRUCCION  Y MEJORAMI', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '81151703  81101514', 'ELABORACIÓN DE LOS ESTUDIOS DE ZONIFICACIÓN Y AMENAZA DEL MUNICIPIO DE ANDES PARA LA APROBACIÓN DEL ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101605  80111621  81101512', '\"ELABORACIÓN', ' ADECUACION Y REVISION DE LOS DOCUMENTOS DE DIAGNOSTICO Y FORMULACIÓN PARA LA APROBACIÓN DEL PBOT\"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '81101512  81111604', 'REALIZAR LA ESTRATIFICACIÓN SOCIOECONOMICA URBANA DEL MUNICIPIO', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72101504  81112004  93131801  93131802', 'ATENCIÓN INMEDIATA EN EL MANEJO DE DESASTRES ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72121103', 'REPARACIONES LOCATIVAS Y MANETENIMIENTO GENERAL DEL EDIFICIO ADMINISTRTIVO DE LA ALCALDÍA', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '95111601', '\"CONSTRUCCIÓN DE REDUCTORES DE VELOCIDAD', ' PARADEROS DE BUSES Y ELEMENTOS DE SEÑALIZACION PARA MEJORAR LA CIRCULACIÓN VEHICULAR Y PEATONAL DEL', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '95111601  95121638', 'CONSTRUCCIÓN DEL SISTEMA PUBLICO DE ACCESIBILIDAD Y MOVILIDAD URBANA DEL MUNICIPIO DE ANDES. ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '81101513 95111601  95121638', '\"INTERVENTORÍA TECNICA', ' ADMINISTRATIVA', ' AMBIENTAL', ' FINANCIERA Y LEGAL PARA LA CONSTRUCCIÓN DEL SISTEMA PÚBLICO DE ACCESIBILIDAD Y MOVILIDAD URBANA DEL', '', '', '', '', '', '', '', '', '', '', ''),
('', '30121705', 'CONSTRUCCIÓN DE 2 KILOMETROS DE RIELES EN DIFERENTES ZONAS DEL MUNICIPIO DE ANDES', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '30121706', 'CONSTRUCCIÓN DE 1.5 KILOMETROS DE RIELES EN EL SECTOR DE SAN BARTOLO ZONA RURAL DEL MUNICIPIO DE AND', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '70111713  30161706  72152509 ', 'CONSTRUCCIÓN DE LA TERCERA ETAPA DEL PARQUE PRINCIPAL (ATRIO Y MOBILIARIO)', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '81101513  95111601  95121638', '\"INTERVENTORÍA TÉCNICA', ' ADMINSITRATIVA Y FINANCIERA PARA LA CONSTRUCCIÓN DE LA TERCERA ETAPA DEL PARQUE PRINCIPAL (ATRIO  Y', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72141103', 'PAVIMENTACIÓN Y AMPLIACIÓN DE LAS VÍAS URBANAS DEL MUNICIPIO DE ANDES', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72121409', 'CONSTRUCCIÓN DE UN CENTRO COMUNITARIO QUE EN EL QUE SE PUEDAN REALIZAR ACTIVIDADES DE COCINA INDUSTR', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72153102', 'REPARACION Y MEJORAMIENTO DE LA PLACA POLIDEPORTIVA DEL BARRIO CIUDAD CORID DEL MUNICIPIO DE ANDES', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '81101513  95111601   95121638', '\"INTERVENTORÍA TÉCNICA', ' ADMINSITRATIVA Y FINANCIERA PARA LA REPARACIÓN Y MEJORAMIENTO DE LA PLACA POLIDEPORTIVA DEL BARRIO ', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72141107  72141108', '\"MANO DE OBRA PARA LA CONSTRUCCIÓN DEL FALSO TUNEL', ' ETAPA 1 DEL PROYECTO SISTEMA PÚBLICO DE ACCESIBILIDAD Y MOVILIDAD URBANA DEL MUNICIPIO DE ANDES\"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '30111601  11101704 30121704 30121710', '\"COMPRA DE MATERIALES (CEMENTO', ' ACERO', ' ARENA', ' TRITURADO', ' FORMALETA ETC.) PARA LA CONSTRUCCION DEL FALSO TUNEL', ' ETAPA 1 DEL PROYECTO SISTEMA PUBLICO DE ACCESIBILIDAD Y MOVILIDAD URBANA DEL MUNICIPIO DE ANDES\"', '', '', '', '', '', '', '', '', ''),
('', '81101513 95111601  95121638', '\"INTERVENTORÍA TÉCNICA', ' ADMINSITRATIVA Y FINANCIERA DE LA MANO DE OBRA PARA LA CONSTRUCCIÓN DEL SISTEMA PÚBLICO DE ACCESIBI', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '76121501  76121601', 'ELABORACIÓN DE CONVENIO PARA SUBSIDIOS DE ASEO', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72141119 81141807', 'ELABORACIÓN DE CONVENIO PARA SUBSIDIOS DE ACUDUCTO ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72141120  81141807', 'ELABORACION DE CONVENIO PARA SUBSIDIOS DE ALCANTARILLADO', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '93142005 76111503  39111608', 'ELABORACION DE CONVENIO PARA ALUMBRADO PÚBLICO', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '93142005 76111503  39111608', 'ELABORACION DE CONVENIO PARA ALUMBRADO NAVIDEÑO', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72141119 72141120 81141807', 'CONSTRUCCION DE PLANES MAESTROS DE ACUEDUCTO Y ALCANTARILLADO ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72111002', 'REMODELACIÓN DE CASA PATRIMONIAL EN EL CASCO URBANO DEL CORREGIMIENTO DE BUENOS AIRES', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'PRESTAR LOS SERVICIOS PROFESIONALES Y DE APOYO A LA GESTION PARA REALIZAR ACTIVIDADES CONCERNIENTES ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111620', 'CONTRATOS DE PRESTACIÓN DE SERVICIOS DE APOYO A LA GESTION PARA ATENDER LAS DIFERENTES  NECESIDADES ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '82121500', '\"SUMINISTRO DE TARJETAS DE OPERACIÓN', ' SUMINISTRO DE FORMULARIOS DE ACCIDENTES (REPORTES IPAT)', ' Y SUMINISTRO DE TALONARIOS DE COMPARENDOS\"', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '25172610', '\" SUMINISTRO A TODO COSTO DE LAS ESPECIES VENALES: PLACAS PARA VEHÍCULOS', ' PÚBLICOS', 'PARTICULARES', ' Y OFICIALES', ' MOTOS Y MOTOCARROS NECESARIAS PARA LA MATRÍCULA INICIAL Y DE REPOSICIÓN\"', '', '', '', '', '', '', '', '', '', ''),
('', '53102706', 'DOTACIÓN PARA LOS AGENTES DEL TRÁNSITO DE LA SECRETARÍA DE TRÁNSITO Y TRANSPORTE DEL MUNICIPIO ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '81111500', 'PRESTACIÓN DE SERVICIOS PARA LA PÓLIZA DE ACTUALIZACIÓN Y SOPORTE DEL SOFWARE DE QUIPUX DE LA SECRET', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '25191700', '\"COMPRA DE EQUIPAMIENTO PARA LAS MOTOCILCETAS DE LA SECRETARÍA DE TRÁNSITO Y TRANSPORTE', ' INCLUYENDO MALETERO', ' SIRENA', ' LUCES INTERMINENTES.\"', '', '', '', '', '', '', '', '', '', '', ''),
('', '55121700', 'SEÑALIZACIÓN VERTICAL Y HORIZONTAL EN EL ÁREA URBANA DEL MUNICIPIO DE ANDES ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '23153500', 'PROGRAMAS DE CAMPAÑAS DE PREVENCIÓN Y SEGURIDAD VIAL ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '55101500', '\"SUMINISTRO DE PUBLICIDAD PARA CAMPAÑAS DE SEGURIDAD VIAL', ' SOCIALIZACIÓN DE NORMAS DE TRÁNSITO \"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80101500', '\"Honorarios servicios profesionales en el ejercicio de las actividades propias de su formación profe', ' servicios de apoyo a la gestión en actividades operativas', ' asistenciales', ' auxiliares', ' y/o compementarias en la Secretaria de salud y Bienestar Social\"', '', '', '', '', '', '', '', '', '', ''),
('', '43211500', 'Equipos Informaticos: Computadores PC', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '83111901', 'Servicios de radio', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '78111800', 'Transporte para traslado de personal a diferentes puntos del Municipio', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '90101603', '\"Servicio de cáterin (refrigerios', ' paquetes alimentarios)\"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '90101604', '\"Servicio de cáterin (celebración adulto mayor', ' discapacidad', ' mujer)\"', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '60121000', '\"Equipo', ' accesorios y suministros de arte y manualidades( Programa adulto mayor)\"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '85171500', 'Servicios funerarios (Adulto mayor en abandono o en pobreza extrema)', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '56111500', '\"Muebles comerciales o industriales (dotación centro vida', ' conicna y mobiliarios)\"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '86101810', '\"Capacitación en habilidades personales ( vigilancia epidemiologica', ' salud pública)\"', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '95122105', 'Hogar de ancianos', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '72151500', 'Servicios de sistemas eléctricos( mantenimiento red electricidad centro vida adulto mayor)', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '93141501', 'Servicios de política social', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '85111500', 'Sericios de salud ( prevención y control de enfermedades= PIC)', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '84111502', 'Asesoria financiera y contable', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80121601', 'Servicios legales sobre competencia o regulaciones gubernamentales ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '84101704', 'Asesoria cobro coactivo', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80161504', 'Prestacion de servicios apoyo administrativo', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80161504', 'Prestacion de servicios apoyo administrativo', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80161504', 'prestacion de servicios apoyo administrativo', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '23261507', 'Actualizacion plataforma tecnologica sinap version 6 sinap', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '43211711', 'Equipos de computo y oficina', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'Servicios de profesionales ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'Servicios de profesionales', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'Servicios de profesionales ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'Servicios de profesionales ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'Servicios de personal temporal', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'Servicios de personal temporal', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'Servicios de personal temporal', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'Servicios de personal temporal', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'Servicios de personal temporal', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'Servicios de personal temporal', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '80111600', 'Servicios de personal temporal', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', 'C. NECESIDADES ADICIONALES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', 'Descripción', 'Posibles códigos UNSPSC', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `contratos` (`ID`, `Codigos_UNSPSC`, `Descripcion`, `column_3`, `column_4`, `column_5`, `column_6`, `column_7`, `column_8`, `column_9`, `column_10`, `column_11`, `column_12`, `column_13`, `column_14`, `column_15`, `column_16`) VALUES
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `ID` varchar(100) DEFAULT NULL,
  `Fecha` varchar(100) DEFAULT NULL,
  `Duracion` varchar(100) DEFAULT NULL,
  `Modalidad_` varchar(100) DEFAULT NULL,
  `Fuente` varchar(100) DEFAULT NULL,
  `Valor` varchar(100) DEFAULT NULL,
  `Valor_estimado` varchar(100) DEFAULT NULL,
  `vigencias_futuras` double DEFAULT NULL,
  `Estado` varchar(100) DEFAULT NULL,
  `column_9` varchar(100) DEFAULT NULL,
  `column_10` double DEFAULT NULL,
  `column_11` varchar(100) DEFAULT NULL,
  `column_12` varchar(100) DEFAULT NULL,
  `column_13` varchar(100) DEFAULT NULL,
  `column_14` varchar(100) DEFAULT NULL,
  `column_15` varchar(100) DEFAULT NULL,
  `column_16` varchar(100) DEFAULT NULL,
  `column_17` varchar(100) DEFAULT NULL,
  `column_18` varchar(100) DEFAULT NULL,
  `column_19` varchar(100) DEFAULT NULL,
  `column_20` varchar(100) DEFAULT NULL,
  `column_21` varchar(100) DEFAULT NULL,
  `column_22` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`ID`, `Fecha`, `Duracion`, `Modalidad_`, `Fuente`, `Valor`, `Valor_estimado`, `vigencias_futuras`, `Estado`, `column_9`, `column_10`, `column_11`, `column_12`, `column_13`, `column_14`, `column_15`, `column_16`, `column_17`, `column_18`, `column_19`, `column_20`, `column_21`, `column_22`) VALUES
('', 'ENERO 2018', '1 MES', 'MINIMA CUANTIA', '\"PROPIOS', ' SGP\"', '\" $ 21', 784, '230 \"', '\" $ 21', 784, '230 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'ENERO 2018', '1 MES', 'MINIMA CUANTIA', '\"PROPIOS', ' SGP\"', '\" $ 21', 780, '000 \"', '\" $ 21', 780, '000 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'ENERO 2018', '1 MES', 'MINIMA CUANTIA', '\"PROPIOS', ' SGP\"', '\" $ 21', 797, '573 \"', '\" $ 21', 797, '573 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'ENERO 2018', '11 MESES', 'LICITACION', '\"PROPIOS', ' SGP\"', '\" $ 260', 0, '000 \"', '\" $ 260', 0, '000 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '11 MESES ', 'CONT.DIRECTA', '\"SGP', ' PROPIOS \"', '\" $ 28', 0, '000 \"', '\" $ 28', 0, '000 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '12 MESES ', 'PROP-FUNCMTO', '\"SGP', ' PROPIOS \"', '\" $ 59', 333, '333 \"', '\" $ 59', 333, '333 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '10 MESES ', 'PROP-FUNCMTO', '\"SGP', ' PROPIOS \"', '\" $ 35', 0, '000 \"', '\" $ 35', 0, '000 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '10 MESES ', 'CONT.DIRECTA', 'PROPIOS-INVERSION', '\" $ 14', '000', 0, '\" $ 14', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '11 MESES', 'MINIMA CUANTIA', 'PROPIOS', '\" $ 10', '000', 0, '\" $ 10', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'MAYO 2018', '7 MESES', 'SELECCIÓN ABREVIADA', '\"SGP', ' PROPIOS \"', '\" $ 25', 0, '000 \"', '\" $ 25', 0, '000 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'MAYO 2018', '7 MESES', 'SELECCIÓN ABREVIADA', '\"SGP', ' PROPIOS \"', '\" $ 6', 0, '000 \"', '\" $ 6', 0, '000 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '11 MESES ', 'SELECCIÓN ABREVIADA', 'PROPIOS ', '\" $ 300', '000', 0, '\" $ 300', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '10 MESES ', 'SELECCIÓN ABREVIADA', 'PROPIOS', '\" $ 35', '000', 0, '\" $ 35', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '10 MESES ', 'MINIMA CUANTIA', '\"PROPIOS', ' SGP\"', '\" $ 21', 780, '000 \"', '\" $ 21', 780, '000 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '11 MESES', 'MINIMA CUANTIA', 'PROPIOS ', '\" $ 40', '000', 0, '\" $ 40', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '11 MESES', 'MINIMA CUANTIA', 'Propios', '\" $ 21', '780', 0, '\" $ 21', '780', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO 2018', '12 meses', 'Contratación directa', 'Propios', '\" $ 25', '000', 0, '\" $ 25', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO 2018', '12 meses', 'Contratación directa', 'Propios ', '\" $ 11', '000', 0, '\" $ 11', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '12 meses', 'SELECCIÓN ABREVIADA', 'Propios ', '\" $ 85', '500', 0, '\" $ 85', '500', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO 2018', '12 meses', 'Contratación directa', 'Propios', '\" $ 400', '000', 0, '\" $ 400', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '11 MESES ', 'SELECCIÓN ABREVIADA', '\"SGP', ' PROPIOS \"', '\" $ 40', 0, '000 \"', '\" $ 40', 0, '000 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '11 MESES', 'SELECCIÓN ABREVIADA', '\"SGP', ' PROPIOS \"', '\" $ 55', 0, '000 \"', '\" $ 55', 0, '000 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '11 MESES', 'MINIMA CUANTIA', '\"SGP', ' PROPIOS \"', '\" $ 21', 780, '000 \"', '\" $ 21', 780, '000 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '10  MESES', 'MINIMA CUANTIA', '\"SGP', ' PROPIOS \"', '\" $ 3', 0, '000 \"', '\" $ 3', 0, '000 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '10  MESES', 'MINIMA CUANTIA', '\"SGP', ' PROPIOS \"', '\" $ 21', 780, '000 \"', '\" $ 21', 780, '000 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '10  MESES', 'SELECCIÓN ABREVIADA', '\"SGP', ' PROPIOS \"', '\" $ 35', 0, '000 \"', '\" $ 35', 0, '000 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '11 MESES', 'MINIMA CUANTIA', '\"', ' PROPIOS \"', '\" $ 20', 0, '000 \"', '\" $ 20', 0, '000 \"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'MARZO 2018', '5 MESES', 'MINIMA CUANTIA', 'PROPIOS', '\" $ 59', '000', 0, '\" $ 59', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'JUNIO 2018', '12 MESES', 'CONVENIO INTERADMINISTRATIVO', 'CONVENIOS', '\" $ 37', '450', 0, '\" $ 37', '450', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO 2018', '12 MESES', 'CONVENIO DE TRANSFERENCIAS', 'CONVENIOS', '\" $ 165', '747', 0, '\" $ 165', '747', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO 2018', '10 MESES', 'CONTRATACION DIRECTA', 'PROPIOS', '\" $ 11', '200', 0, '\" $ 11', '200', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO 2018', '10 MESES', 'CONTRATACION DIRECTA', 'PROPIOS', '\" $ 11', '200', 0, '\" $ 11', '200', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO 20128', '10 MESES', 'CONTRATACION DIRECTA', 'PROPIOS', '\" $ 8', '633', 0, '\" $ 8', '633', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO 20128', '6 MESES', 'CONTRATACION DIRECTA', 'PROPIOS', '\" $ 16', '800', 0, '\" $ 16', '800', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO 2018', '6 MESES', 'CONTRATACION DIRECTA', 'INVERSION', '\" $ 6', '426', 0, '\" $ 6', '426', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO 2018', '10 MESES', 'CONTRATACION DIRECTA', 'PROPIOS', '\" $ 8', '000', 0, '\" $ 8', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO 20178', '3 MESES', 'CONTRATACION DIRECTA', 'PROPIOS', '\" $ 3', '213', 0, '\" $ 3', '213', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO 2018', '10 MESES', 'MINIMA CUANTIA', '\"SGP', ' PROPIOS \"', '\"5', 0, '000\"', '\"5', 0, '000\"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '10 MESES', 'SELECCIÓN ABREVIADA LICITACION', '\"SGP', ' PROPIOS \"', '\"330', 410, '210\"', '\"330', 410, '210\"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO ', '10 MESES', 'SELECCIÓN ABREVIADA MENOR CUANTIA', 'SGP ', '\"140', '000', 0, '\"140', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO ', '10 MESES ', 'MINIMA CUANTIA', 'PROPIOS', '\"21', '780', 0, '\"21', '780', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'MARZO', '1 MES', 'MINIMA CUANTIA', '\"PROPIOS', ' SGP\"', '\"10', 0, '000\"', '\"10', 0, '000\"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'MARZO', '1 MES', 'MINIMA CUANTIA', 'PROPIOS', '\"3', '000', 0, '\"3', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '11 MESED', 'MINIMA CUANTIA', '\"PROPIOS', ' SGP\"', '\"21', 780, '000\"', '\"21', 780, '000\"', 'N/A', 'N/A', '', '', '', '', '', '', '', '', ''),
('', 'MARZO', '2 MESES', 'MINIMA CUANTIA', 'PROPIOS ', '\"21', '780', 0, '\"21', '780', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '11 meses', 'SELECCIÓN ABREVIADA', 'Propios ', '\"21', '780', 0, '\"21', '780', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '12 meses', 'Contratación directa', 'Propios', '\"10', '000', 0, '\"10', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'MAYO', '30 DIAS', 'MINIMA CUANTIA', 'RECURSOS PROPIOS', '\" $ 21', '780', 0, '\"21', '780', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'MAYO', '1 MES', 'MINIMA CUANTIA', 'SGP', '\" $ 21', '780', 0, '\"21', '780', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'MAYO ', '30 DIAS', 'MINIMA CUANTIA', 'RECURSOS PROPIOS', '\" $ 6', '000', 0, '\"6', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'JUNIO', '30 DIAS', 'MINIMA CUANTIA', 'SGP', '\" $ 14', '000', 0, '\"14', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'MARZO', '30 DIAS', 'MINIMA CUANTIA', 'SGP', '\" $ 5', '000', 0, '\"5', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'JULIO', '6 MESES ', 'DIRECTA ', 'PROPIOS', '\" $ 16', '800', 0, '\"16', '800', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ABRIL ', '8 MESES', 'Selección abreviada', 'Ley del tabaco', '\" $ 18', '000', 0, '\"18', '000', 0, 'NO', 'N/A ', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBREBRO', '10 meses', 'Contratacion directa', 'SGP - Ley del tabaco', '\" $ 20', '000', 0, '\"20', '000', 0, 'NO', 'N/A ', '', '', '', '', '', '', '', '', '', ''),
('', 'JUNIO', '1 mes', 'MINIMA CUANTIA', 'SGP', '\" $ 7', '000', 0, '\"7', '000', 0, 'NO', 'N/A ', '', '', '', '', '', '', '', '', '', ''),
('', 'JUNIO', '1 mes', 'MINIMA CUANTIA', 'SGP - Ley del tabaco', '\" $ 5', '000', 0, '\"5', '000', 0, 'NO', 'N/A ', '', '', '', '', '', '', '', '', '', ''),
('', 'MARZO', '1 mes', 'MINIMA CUANTIA', 'SGP', '\" $ 2', '000', 0, '\"2', '000', 0, 'NO', 'N/A ', '', '', '', '', '', '', '', '', '', ''),
('', 'MARZO', '1 mes', 'MINIMA CUANTIA', 'SGP', '\" $ 1', '500', 0, '\"1', '500', 0, 'NO', 'N/A ', '', '', '', '', '', '', '', '', '', ''),
('', 'MARZO', '1 mes', 'MINIMA CUANTIA', 'SGP', '\" $ 21', '780', 0, '\"21', '780', 0, 'NO', 'N/A ', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBREBRO ', '11 meses', 'MINIMA CUANTIA', 'APORTES DPTO ', '\" $ 21', '780', 0, '\"21', '780', 0, 'NO', 'N/A ', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBREBRO ', '10 meses', 'Convenio interadministrativo', 'PROPIOS', '\" $ 15', '000', 0, '\"15', '000', 0, 'NO', 'N/A ', '', '', '', '', '', '', '', '', '', ''),
('', 'MARZO', '1 mes', 'MINIMA CUANTIA', 'APORTES DPTO ', '\" $ 10', '000', 0, '\"10', '000', 0, 'NO', 'N/A ', '', '', '', '', '', '', '', '', '', ''),
('', 'AGOSTO', '4 MESES', 'Selección abreviada', 'PROPIOS', '\" $ 180', '000', 0, '\"180', '000', 0, 'NO', 'N/A ', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '10 meses', 'Contratación directa', 'PROPIOS', '\" $ 15', '400', 0, '\"15', '400', 0, 'NO', 'N/A ', '', '', '', '', '', '', '', '', '', ''),
('', 'MARZO', '8 meses', 'Contratación directa', 'SGP', '\" $ 19', '000', 0, '\"19', '000', 0, 'NO', 'N/A ', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '1 mes', 'MINIMA CUANTIA', 'PROPIOS', '\" $ 17', '000', 0, '\"17', '000', 0, 'NO', 'N/A ', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '\"3', '5 meses\"', 'Selección abreviada', 'APORTES DPTO ', '\" $ 300', 180, '100 \"', '\" $ 300', 180, '100 \"', 'NO', 'N/A ', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '11 meses', 'Prestación de servicios', '\"PROPIOS', ' SGP', '\"', 0, '000', '000 \"', 0, '000', '000\"', 'NO ', 'N/A ', '', '', '', '', '', '', '', ''),
('', 'ENERO', '11 meses', 'Prestación de servicios', '\"PROPIOS', ' SGP', '\"', 0, '500', '000 \"', 0, '500', '000\"', 'NO ', 'N/A ', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '10 meses', 'Prestación de servicios', '\"PROPIOS', ' SGP', '\"', 0, '500', '000 \"', 0, '500', '000\"', 'NO ', 'N/A', '', '', '', '', '', '', '', ''),
('', 'Enero', '10 meses', 'PRESTACIÓN DE SERVICIOS', 'RECURSOS PROPIOS', '\"14', '000', 0, '\"14', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Enero', '11  meses', 'PRESTACIÓN DE SERVICIOS', 'RECURSOS PROPIOS', '\"$ 18', '700', 0, '\"18', '700', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Enero', '11  meses', 'PRESTACIÓN DE SERVICIOS', 'RECURSOS PROPIOS', '\"$ 15', '400', 0, '\"15', '400', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Enero', '11  meses', 'PRESTACIÓN DE SERVICIOS', 'RECURSOS PROPIOS', '\"$ 15', '400', 0, '\"15', '400', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Enero', '11  meses', 'PRESTACIÓN DE SERVICIOS', 'RECURSOS PROPIOS', '\"$ 15', '400', 0, '\"15', '400', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Enero', 'Un (1) meses', 'DIRECTA', 'RECURSOS PROPIOS', '\"$ 19', '000', 0, '\"19', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Febrero', '2 meses', 'DIRECTA', 'S.G.P Y RECURSOS PROPIOS', '\"$ 17', '000', 0, '\"17', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Enero', 'Once(11) meses', 'PRESTACIÓN DE SERVICIOS', 'S.G.P Y RECURSOS PROPIOS', '\"$ 15', '400', 0, '\"15', '400', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '2 MESES', 'DIRECTA', 'RECURSOS PROPIOS', '\"$ 15', '000', 0, '\"15', '000', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '6 Meses', 'PRESTACIÓN DE SERVICIOS', 'RECURSOS PROPIOS', '\"$ 16', '800', 0, '\"16', '800', 0, 'N/A', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Febrero', '1 mes', 'Mínima Cuantia', 'SGP', '\" $ 11', '000', 0, '\"11', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Febrero', '11 meses', 'Contratación directa', 'ICLD', '\" $ 6', '000', 0, '\"6', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Febrero', '10 MESE', 'Mínima Cuantia', '\"SGP', ' ICLD \"', '\" $ 10', 0, '000 \"', '\"10', 0, '000\"', 'NO', 'NA', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '11 meses', 'Mínima Cuantia', 'ICLD', '\" $ 7', '000', 0, '\"7', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Febrero', '10 meses', 'Contratación directa', '\"SGP', ' ICLD \"', '\" $ 14', 0, '000 \"', '\"14', 0, '000\"', 'NO', 'NA', '', '', '', '', '', '', '', '', ''),
('', 'Febrero', '10 meses', 'Contratación directa', 'SGP', '\" $ 15', '000', 0, '\"15', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Febrero', '10 meses', 'Contratación directa', 'SGP', '\" $ 15', '000', 0, '\"15', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Febrero', '10 meses', 'Contratación directa', 'SGP', '\" $ 15', '000', 0, '\"15', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Febrero', '10 MESES', 'PRESTACIÓN DE SERVICIOS', 'SGP', '\" $ 20', '000', 0, '\"20', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Marzo', '5 meses', 'Mínima Cuantia', '\"SGP', ' ICLD \"', '\" $ 5', 0, '000 \"', '\"5', 0, '000\"', 'NO', 'NA', '', '', '', '', '', '', '', '', ''),
('', 'Marzo', '2 meses', 'Selección abreviada', 'SGP', '\" $ 25', '000', 0, '\"25', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'MAYO', '3 días', 'Mínima Cuantia', 'SGP', '\" $ 5', '000', 0, '\"5', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Marzo', '1 mes', 'Mínima Cuantia', 'SGP', '\" $ 19', '000', 0, '\"19', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Marzo', '1 mes', 'Mínima Cuantia', 'SGP', '\" $ 12', '000', 0, '\"12', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Marzo', '10 meses', 'Mínima Cuantia', 'SGP', '\" $ 10', '000', 0, '\"10', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Marzo', '2 meses', 'Mínima Cuantia', 'SGP', '\" $ 15', '000', 0, '\"15', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Marzo', '15 dias ', 'Mínima Cuantia', 'ICLD', '\" $ 6', '800', 0, '\"6', '800', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Abril', '1 mes', 'Mínima Cuantia', 'ICLD', '\" $ 7', '000', 0, '\"7', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Abril', '1 mes', 'Mínima Cuantia', 'SGP', '\" $ 7', '000', 0, '\"7', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Abril', '10 meses', 'Mínima Cuantia', 'ICLD', '\" $ 19', '100', 0, '\"19', '100', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Mayo', '5 meses', 'Mínima Cuantia', 'Estampilla pro cultura', '\" $ 5', '000', 0, '\"5', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Julio', '10 meses', 'Convenio de cooperación', 'SGP', '\" $ 5', '000', 0, '\"5', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Julio', '1 mes', 'Mínima Cuantia', 'SGP', '\" $ 10', '000', 0, '\"10', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Julio', '3 días', 'Mínima Cuantia', '\"SGP', ' ICLD \"', '\" $ 5', 0, '000 \"', '\"5', 0, '000\"', 'NO', 'NA', '', '', '', '', '', '', '', '', ''),
('', 'agosto', '10', 'Mínima Cuantia', 'propios', '\" $ 6', '000', 0, '\"6', '000', 0, 'SI', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'Agosto', '1 mes', 'Convenio de cooperación', 'ICLD', '\" $ 3', '000', 0, '\"3', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Agosto', '1 semana', 'Mínima Cuantia', '\"SGP', ' ICLD \"', '\" $ 3', 0, '000 \"', '\"3', 0, '000\"', 'NO', 'NA', '', '', '', '', '', '', '', '', ''),
('', 'Octubre', '3 días', 'Mínima Cuantia', 'SGP', '\" $ 3', '000', 0, '\"3', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Octubre', '1 mes', 'Mínima Cuantia', 'SGP', '\" $ 5', '000', 0, '\"5', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Diciembre', '1 mes', 'Mínima Cuantia', '\"SGP', ' ICLD \"', '\" $ 15', 0, '000 \"', '\"15', 0, '000\"', 'NO', 'NA', '', '', '', '', '', '', '', '', ''),
('', 'Junio ', '3 días', 'Mínima Cuantia', 'SGP', '\" $ 3', '000', 0, '\"3', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Junio ', '6 meses', 'Mínima Cuantia', 'ICLD', '\" $ 6', '000', 0, '\"6', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'Junio ', '1 semana', 'Mínima Cuantia', '\"SGP', ' ICLD \"', '\" $ 4', 0, '000 \"', '\"4', 0, '000\"', 'NO', 'NA', '', '', '', '', '', '', '', '', ''),
('', 'Junio ', '1 mes', 'Mínima Cuantia', 'ICLD', '\" $ 2', '000', 0, '\"2', '000', 0, 'NO', 'NA', '', '', '', '', '', '', '', '', '', ''),
('', 'octubre', '1 meses', 'MINIMA CUANTIA', 'Recursos Propios', '\"15', '000', 0, '\"15', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ABRIL', '1 MES', 'MINIMA CUANTIA', 'Recursos Propios', '\"8', '000', 0, '\"8', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '10', 'DIRECTA', 'PROPIOS LIBRE DESTINACION ', '\"$ 28', '000', 0, '\"$ 28', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO ', '12', 'DIRECTA', 'PROPIOS LIBRE DESTINACION ', '\"$ 33', '600', 0, '\"$ 33', '600', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO ', '12', 'DIRECTA', 'PROPIOS LIBRE DESTINACION ', '\"$ 33', '600', 0, '\"$ 33', '600', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '10', 'DIRECTA', 'PROPIOS LIBRE DESTINACION ', '\"$ 28', '000', 0, '\"$ 28', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '10', 'DIRECTA', 'PROPIOS LIBRE DESTINACION ', '\"$ 28', '000', 0, '\"$ 28', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '10', 'DIRECTA', 'PROPIOS LIBRE DESTINACION ', '\"$ 28', '000', 0, '\"$ 28', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '10', 'DIRECTA', 'PROPIOS LIBRE DESTINACION ', '\"$ 14', '000', 0, '\"$ 14', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '10', 'DIRECTA', 'PROPIOS LIBRE DESTINACION ', '\"$ 14', '000', 0, '\"$ 14', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '10', 'DIRECTA', 'PROPIOS LIBRE DESTINACION ', '\"$ 14', '000', 0, '\"$ 14', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '10', 'DIRECTA', 'SISTEMA GENERAL DE REGALIAS SGR', '\"$ 28', '000', 0, '\"$ 28', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '10', 'DIRECTA', 'SISTEMA GENERAL DE REGALIAS SGR', '\"$ 28', '000', 0, '\"$ 28', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'SEPTIEMBRE', '4', 'MINIMA CUANTIA', '\"PROPIOS', ' COFINANCIACIÓN\"', '\" $ 540', 0, '000.00 \"', '\" $ 540', 0, '000.00 \"', 'NO', 'NO', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '4', 'CONVENIO', '\"PROPIOS', ' COFINANCIACIÓN\"', '\" $ 150', 0, '000.00 \"', '\" $ 150', 0, '000.00 \"', 'NO', 'NO', '', '', '', '', '', '', '', '', ''),
('', 'JUNIO', '8', 'LICITACIÓN PÚBLICA', 'DEPARTAMENTO PARA LA PROSPERIDAD SOCIAL DPS', '\" $ 2', '500', 0, '000.00 \"', '\" $ 2', 500, '000', '000.00 \"', 'SI', 'NO', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '4', 'SELECCIÓN ABREBIADA', '\"PROPIOS', ' LIBRE DESTINACIÓN\"', '\" $ 65', 0, '000.00 \"', '\" $ 65', 0, '000.00 \"', 'NO', 'NO', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '4', 'SELECCIÓN ABREBIADA', '\"PROPIOS', ' LIBRE DESTINACIÓN\"', '\" $ 65', 0, '000.00 \"', '\" $ 65', 0, '000.00 \"', 'NO', 'NO', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '6', 'LICITACIÓN PÚBLICA', 'DEPARTAMENTO PARA LA PROSPERIDAD SOCIAL DPS', '\" $ 495', '000', 0, '\" $ 495', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '6', 'MINIMA CUANTIA', 'PROPIOS', '\" $ 20', '000', 0, '\" $ 20', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '6', 'CONVENIO', 'PROPIOS', '\" $ 480', '000', 0, '\" $ 480', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'MARZO', '8', 'DIRECTA', 'PROPIOS', '\" $ 28', '000', 0, '\" $ 28', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '10', 'MENOR CUANTIA', '\"PROPIOS', ' COFINANCIACIÓN\"', '\" $ 79', 800, '000.00 \"', '\" $ 79', 800, '000.00 \"', 'NO', 'NO', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '10', 'DIRECTA', 'PROPIOS', '\" $ 50', '000', 0, '\" $ 50', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'MAYO', '1', 'MINIMA CUANTIA', 'PROPIOS', '\" $ 19', '000', 0, '\" $ 19', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'AGOSTO', '2', 'MINIMA CUANTIA', 'PROPIOS', '\" $ 20', '000', 0, '\" $ 20', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '14', 'LICITACIÓN PÚBLICA', 'SISTEMA GENERAL DE REGALIAS SGR', '\" $ 4', '200', 0, '000.00 \"', '\" $ 3', 500, '000', '000.00 \"', 'SI', 'NO', '', '', '', '', '', '', '', ''),
('', 'FEBRERO', '14', 'CONCURSO DE MERITOS', 'SISTEMA GENERAL DE REGALIAS SGR', '\" $ 15', '000', 0, '\" $ 15', '000', 0, 'SI', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '6', 'CONVENIO', '\"PROPIOS', ' COFINANCIACIÓN\"', '\" $ 780', 0, '000.00 \"', '\" $ 780', 0, '000.00 \"', 'NO', 'NO', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '6', 'CONVENIO', '\"PROPIOS', ' COFINANCIACIÓN\"', '\" $ 560', 0, '000.00 \"', '\" $ 560', 0, '000.00 \"', 'NO', 'NO', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '2', 'LICITACIÓN PÚBLICA', 'PROPIOS', '\" $ 300', '000', 0, '\" $ 300', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '2', 'DIRECTA', 'PROPIOS', '\" $ 15', '000', 0, '\" $ 15', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'OCTUBRE', '2', 'DIRECTA', 'PROPIOS', '\" $ 30', '000', 0, '\" $ 30', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '6', 'LICITACIÓN PÚBLICA', 'DEPARTAMENTO PARA LA PROSPERIDAD SOCIAL DPS', '\" $ 612', '000', 0, '\" $ 612', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '2', 'LICITACIÓN PÚBLICA', '\"PROPIOS', ' COFINANCIACIÓN\"', '\" $ 260', 0, '000.00 \"', '\" $ 260', 0, '000.00 \"', 'NO', 'NO', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '2', 'DIRECTA', '\"PROPIOS', ' COFINANCIACIÓN\"', '\" $ 13', 0, '000.00 \"', '\" $ 13', 0, '000.00 \"', 'NO', 'NO', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '8', 'LICITACIÓN PÚBLICA', 'PROPIOS', '\" $ 555', '000', 0, '\" $ 555', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '8', 'SUBASTA INVERSA', 'PROPIOS', '\" $ 1', '800', 0, '000.00 \"', '\" $ 1', 800, '000', '000.00 \"', 'NO', 'NO', '', '', '', '', '', '', '', ''),
('', 'ENERO', '8', 'CONCURSO DE MERITOS', 'PROPIOS', '\" $ 27', '750', 0, '\" $ 27', '750', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '12', 'CONVENIO', 'SGP', '\" $ 200', '000', 0, '\" $ 200', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '12', 'CONVENIO', 'SGP', '\" $ 180', '000', 0, '\" $ 180', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '12', 'CONVENIO', 'SGP', '\" $ 160', '000', 0, '\" $ 160', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO', '12', 'CONVENIO', 'PROPIOS', '\" $ 80', '000', 0, '\" $ 80', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'DICIEMBRE', '1', 'CONVENIO', 'PROPIOS', '\" $ 50', '000', 0, '\" $ 50', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'MARZO', '16', 'CONVENIO', '\"PROPIOS', ' COFINANCIACIÓN\"', '\"$ 4', 500, '000', '000\"', 0, '500', '000', '000\"', 'SI', 'NO', '', '', '', '', '', '', ''),
('', 'ENERO', '2', 'SELECCIÓN ABREBIADA', 'PROPIOS', '\"$ 50', '000', 0, '\"$ 50', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO ', '10', 'CONTRATACION DIRECTA', 'Recursos Propios', '\" $ 28', '000', 0, '\" $ 28', '000', 0, 'NO', 'NO', '', '', '', '', '', '', '', '', '', ''),
('', 'Jan-18', '10 MESES', 'CONTRATACION DIRECTA', 'Recursos Propios', '\" $ 21', '000', 0, '\" $ 21', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Jun-18', '01 MES', 'MINIMA CUANTIA', 'Recursos Propios', '\" $ 4', '000', 0, '\" $ 4', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Feb-18', '01 MES', 'MINIMA CUANTIA', 'Recursos Propios', '\" $ 15', '000', 0, '\" $ 15', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Mar-18', '15 DIAS', 'MINIMA CUANTIA', 'Recursos Propios', '\" $ 7', '000', 0, '\" $ 7', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Jan-18', '11 MESES', 'MINIMA CUANTIA', 'Recursos Propios', '\" $ 13', '000', 0, '\" $ 13', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'May-18', '15 DÍAS', 'MINIMA CUANTIA', 'Recursos Propios', '\" $ 5', '000', 0, '\" $ 5', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Aug-18', '01 MES', 'MINIMA CUANTIA', 'Recursos Propios', '\" $ 60', '000', 0, '\" $ 60', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Mar-18', '01 MES', 'CONTRATACION DIRECTA', 'Recursos Propios', '\" $ 60', '000', 0, '\" $ 60', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Apr-18', '01 MES', 'MINIMA CUANTIA', 'Recursos Propios', '\" $ 2', '000', 0, '\" $ 2', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'enero', '11 meses', 'contratación directa', 'Inversión', '\"317', '469', 0, '\"317', '469', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'abril', '1 mes', 'Subasta Inversa', 'Inversión', '\"10', '000', 0, '\"10', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'enero', '11 meses', 'contratación directa', 'Inversión', '\"10', '000', 0, '\"10', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'febrero', '10 meses', 'Selección abreviada', 'Inversión', '\"14', '000', 0, '\"14', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'febrero', '10 meses', 'Selección abreviada', 'Inversión', '\"164', '000', 0, '\"164', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'agosto', '3 meses', 'Selección abreviada', 'Inversión', '\"70', '000', 0, '\"70', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'marzo', '9 meses', 'minima cuantía', 'Inversión', '\"10', '000', 0, '\"10', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'febrero', '10 meses', 'minima cuantía', 'Inversión', '\"5', '000', 0, '\"5', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'mayo', '1 mes', 'minima cuantía', 'Inversión', '\"6', '000', 0, '\"6', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'junio', '2 meses', 'contratación directa', 'Inversión', '\"8', '000', 0, '\"8', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'febrero', '11 meses', 'contratación directa', 'Inversión', '\"200', '000', 0, '\"200', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'marzo', '9 meses', 'minima cuantía', 'Inversión', '\"6', '000', 0, '\"6', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'enero ', '10 meses', 'contratación directa', 'Inversión', '\"15', '000', 0, '\"15', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'Enero', '11 meses', 'contratación directa', 'Inversión', '\"323', '245', 0, '\"323', '245', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO DE 2018', '11.5', 'Directa', 'recursos propios', '\" $ 47', '655', 0, '\" $ 47', '655', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO DE 2018', '11', 'Directa', 'recursos propios', '\" $ 32', '000', 0, '\" $ 32', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO  DE 2018', '10.5', 'Directa', 'recursos propios', '\" $ 32', '000', 0, '\" $ 32', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO  DE 2018', '10.5', 'Directa', 'recursos propios', '\" $ 40', '000', 0, '\" $ 40', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO DE 2018', '10.5', 'Directa', 'recursos propios', '\" $ 25', '000', 0, '\" $ 25', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO  DE 2018', '10.5', 'Directa', 'recursos propios', '\" $ 25', '000', 0, '\" $ 25', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO  DE 2018', '11', 'Directa', 'recursos propios', '\" $ 103', '000', 0, '\" $ 103', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'FEBRERO  DE 2018', '11', 'Directa', 'recursos propios', '\" $ 10', '000', 0, '\" $ 22', '000', 0, 'NO', 'N/A', '', '', '', '', '', '', '', '', '', ''),
('', 'ENERO DE 2018', '10 meses', 'Prestación de servicios', '\"PROPIOS', ' SGP', '\"', 0, '000', '000 \"', 0, '000', '000 \"', 'NO ', 'N/A ', '', '', '', '', '', '', '', ''),
('', 'ENERO DE 2018', '10 meses', 'Prestación de servicios', '\"PROPIOS', ' SGP', '\"', 0, '000', '000 \"', 0, '000', '000 \"', 'NO ', 'N/A ', '', '', '', '', '', '', '', ''),
('', 'ENERO DE 2018', '10 meses', 'Prestación de servicios', '\"PROPIOS', ' SGP', '\"', 0, '000', '000 \"', 0, '000', '000 \"', 'NO ', 'N/A ', '', '', '', '', '', '', '', ''),
('', 'ENERO DE 2018', '10 meses', 'Prestación de servicios', '\"PROPIOS', ' SGP', '\"', 0, '000', '000 \"', 0, '000', '000 \"', 'NO ', 'N/A ', '', '', '', '', '', '', '', ''),
('', 'ENERO DE 2018', '10 meses', 'Prestación de servicios', '\"PROPIOS', ' SGP', '\"', 0, '000', '000 \"', 0, '000', '000 \"', 'NO ', 'N/A ', '', '', '', '', '', '', '', ''),
('', 'ENERO DE 2018', '10 meses', 'Prestación de servicios', '\"PROPIOS', ' SGP', '\"', 0, '000', '000 \"', 0, '000', '000 \"', 'NO ', 'N/A ', '', '', '', '', '', '', '', ''),
('', 'ENERO DE 2018', '10 meses', 'Prestación de servicios', '\"PROPIOS', ' SGP', '\"', 0, '000', '000 \"', 0, '000', '000 \"', 'NO ', 'N/A ', '', '', '', '', '', '', '', ''),
('', 'ENERO DE 2018', '10 meses', 'Prestación de servicios', '\"PROPIOS', ' SGP', '\"', 0, '000', '000 \"', 0, '000', '000 \"', 'NO ', 'N/A ', '', '', '', '', '', '', '', ''),
('', 'ENERO DE 2018', '10 meses', 'Prestación de servicios', '\"PROPIOS', ' SGP', '\"', 0, '000', '000 \"', 0, '000', '000 \"', 'NO ', 'N/A ', '', '', '', '', '', '', '', ''),
('', 'ENERO DE 2018', '10 meses', 'Prestación de servicios', '\"PROPIOS', ' SGP', '\"', 0, '000', '000 \"', 0, '000', '000 \"', 'NO ', 'N/A ', '', '', '', '', '', '', '', ''),
('', 'ENERO DE 2018', '10 meses', 'Prestación de servicios', '\"PROPIOS', ' SGP', '\"', 0, '000', '000 \"', 0, '000', '000 \"', 'NO ', 'N/A ', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', 'Datos de contacto del responsable', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `datos` (`ID`, `Fecha`, `Duracion`, `Modalidad_`, `Fuente`, `Valor`, `Valor_estimado`, `vigencias_futuras`, `Estado`, `column_9`, `column_10`, `column_11`, `column_12`, `column_13`, `column_14`, `column_15`, `column_16`, `column_17`, `column_18`, `column_19`, `column_20`, `column_21`, `column_22`) VALUES
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `datos` (`ID`, `Fecha`, `Duracion`, `Modalidad_`, `Fuente`, `Valor`, `Valor_estimado`, `vigencias_futuras`, `Estado`, `column_9`, `column_10`, `column_11`, `column_12`, `column_13`, `column_14`, `column_15`, `column_16`, `column_17`, `column_18`, `column_19`, `column_20`, `column_21`, `column_22`) VALUES
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `cargo_` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` double DEFAULT NULL,
  `column_5` varchar(100) DEFAULT NULL,
  `column_6` varchar(100) DEFAULT NULL,
  `column_7` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `cargo_`, `correo`, `telefono`, `column_5`, `column_6`, `column_7`) VALUES
('', 'DIANA RAMIREZ RESTREPO', ' Almacenista municipal', ' almacen@andes-antiqouia.gov.co ', 8414100, '', '', ''),
('', 'CARLOS ALBERTO OSORIO CALDERON ', 'Secretario de Educación y Cultura', 'educacion@Andes-antioquia.gov.co', 0, '', '', ''),
('', 'Juan Eduardo Vasquez', 'Secretario de Planeación E Infraestructura', 'planeacion@andes-antioquia.gov.co', 0, '', '', ''),
('', 'NATALIA ANDREA MARÍN AGUDELO', 'Secretaria de Tránsito y transporte', 'transito@andes-antiqouia.gov.co', 0, '', '', ''),
('', 'Ana María Zuleta gómez', 'Secretaria de Salud y Bienestar Social', 'salud@andes-antioquia.gov.co', 3104012637, '', '', ''),
('', 'RUBÉN DARÍO CHALARCA RESTREPO', 'Secretario de Hacienda', 'hacienda@andes-antioquia.gov.co', 0, '', '', ''),
('', 'LAURA PULGARÍN VERGARA', 'Secretaria de Desarrollo Economico', 'desarrollo@andes-antioquia.gov.co', 8414101, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', ''),
('', '', '', '', 0, '', '', '');
--
-- Base de datos: `auto_db`
--
CREATE DATABASE IF NOT EXISTS `auto_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `auto_db`;
--
-- Base de datos: `biblioteca`
--
CREATE DATABASE IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `biblioteca`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id`, `nombre`) VALUES
(1, 'manuela'),
(2, 'Lisandro meza'),
(3, 'HOMERO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id` bigint(20) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `autor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id`, `titulo`, `autor_id`) VALUES
(6, 'cronicas', 1),
(7, 'crinicas', 1),
(8, 'Los sabanales', 2),
(9, 'La Burrita', 2),
(10, 'Los Corraleros', 2),
(11, 'LA ILIADA', 3),
(12, 'LA ODISEA', 3),
(13, 'ULISES', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKe1ss87ymon6qj17bhr6jfh0c4` (`autor_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `FKe1ss87ymon6qj17bhr6jfh0c4` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`id`);
--
-- Base de datos: `clinica_odonto`
--
CREATE DATABASE IF NOT EXISTS `clinica_odonto` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `clinica_odonto`;
--
-- Base de datos: `club_peliculas`
--
CREATE DATABASE IF NOT EXISTS `club_peliculas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `club_peliculas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `director`, `genero`, `anio`) VALUES
(1, 'batmansi', 'rby', 'terror', 2010);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id` int(11) NOT NULL,
  `id_socio` int(11) DEFAULT NULL,
  `id_pelicula` int(11) DEFAULT NULL,
  `fecha_prestamo` date DEFAULT NULL,
  `fecha_devolucion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`id`, `id_socio`, `id_pelicula`, `fecha_prestamo`, `fecha_devolucion`) VALUES
(2, 1, 1, '2025-03-23', '2025-03-30'),
(4, 1, 1, '2025-03-17', '2025-03-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`id`, `nombre`, `email`, `telefono`) VALUES
(1, 'jhoan', 'barraganma@gmail.com', '32095000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_socio` (`id_socio`),
  ADD KEY `id_pelicula` (`id_pelicula`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_socio`) REFERENCES `socios` (`id`),
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id`);
--
-- Base de datos: `colegio`
--
CREATE DATABASE IF NOT EXISTS `colegio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `colegio`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id`, `nombre`) VALUES
(1, 'programción'),
(2, 'matematicas'),
(3, 'fisica'),
(4, 'fisica'),
(5, 'integrales'),
(6, 'quimica'),
(7, 'sql'),
(8, 'inyectología'),
(9, 'diseño'),
(10, 'sql 2'),
(11, 'data'),
(12, 'criptografia'),
(13, 'ww');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_curso`
--

CREATE TABLE `estudiante_curso` (
  `estudiante_id` bigint(20) NOT NULL,
  `curso_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiante_curso`
--
ALTER TABLE `estudiante_curso`
  ADD PRIMARY KEY (`estudiante_id`,`curso_id`),
  ADD KEY `FK5idasgqwt0pn1rmcpms1p8ei0` (`curso_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante_curso`
--
ALTER TABLE `estudiante_curso`
  ADD CONSTRAINT `FK5idasgqwt0pn1rmcpms1p8ei0` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`),
  ADD CONSTRAINT `FKg7db0mp31sgpkpxfrgm5f23v8` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`);
--
-- Base de datos: `crud_simple_db`
--
CREATE DATABASE IF NOT EXISTS `crud_simple_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crud_simple_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `cargo`, `nombre`, `edad`, `telefono`) VALUES
(1, 'alcalde', 'SOL', '18', '1234567890'),
(2, 'SECRETARIA', 'CRISTINA', '18', '0987654321');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de datos: `estudiantes_db`
--
CREATE DATABASE IF NOT EXISTS `estudiantes_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `estudiantes_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id_estudiante` int(11) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id_estudiante`, `apellido`, `email`, `nombre`, `telefono`) VALUES
(2, 'f', 'a@a.com', 'e', '3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id_estudiante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de datos: `estudiantes_xy`
--
CREATE DATABASE IF NOT EXISTS `estudiantes_xy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `estudiantes_xy`;
--
-- Base de datos: `events`
--
CREATE DATABASE IF NOT EXISTS `events` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `events`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evcategories`
--

CREATE TABLE `evcategories` (
  `Category` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `evcategories`
--

INSERT INTO `evcategories` (`Category`, `id`) VALUES
('Baby Shower', 1),
('Birthday Party', 2),
('Bridal Shower', 3),
('Business Meeting', 4),
('Concert', 5),
('Fundraiser', 6),
('Live Show', 7),
('Outdoor Event', 8),
('Pet Show', 9),
('Sporting Event', 10),
('Trip', 11),
('Wedding', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evevents`
--

CREATE TABLE `evevents` (
  `Category` int(11) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `EventID` int(11) NOT NULL,
  `FromDate` date DEFAULT NULL,
  `FromTime` time DEFAULT NULL,
  `Image` varchar(4000) DEFAULT NULL,
  `Location` varchar(200) DEFAULT NULL,
  `Map` mediumtext DEFAULT NULL,
  `Note` mediumtext DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Subject` varchar(250) DEFAULT NULL,
  `ToDate` date DEFAULT NULL,
  `ToTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `evevents`
--

INSERT INTO `evevents` (`Category`, `Description`, `EventID`, `FromDate`, `FromTime`, `Image`, `Location`, `Map`, `Note`, `Price`, `Subject`, `ToDate`, `ToTime`) VALUES
(10, '<p>The World Handball Championship, hosted by the International Handball Federation, is played every two years, for men and women in separate tournaments.</p><p>The World Men&#39;s Handball Championships was first held in 1938 in Germany. There was a break of 16 years until the next event, held in Sweden in 1954.</p><p>The World Women&#39;s Handball Championships was first held in 1957.</p><p>Only four teams participated in the first championship for both men and women, this number has grown to the present 24 which was introduced in 1995.</p><p>The competition has been dominated by European countries, France having won the most men&#39;s tournaments.</p>', 24, '2022-01-13', '12:00:00', '[{\"name\":\"files\\/1_hod4xvj5.jpg\",\"usrName\":\"1.jpg\",\"size\":41606,\"type\":\"image\\/jpeg\",\"thumbnail\":\"files\\/th1_50bljk35.jpg\",\"thumbnail_type\":\"image\\/jpeg\",\"thumbnail_size\":11424,\"searchStr\":\"1.jpg,!:sStrEnd\"}]', 'Egypt', NULL, '', 100, 'World Handball Championships', '2022-01-31', '12:00:00'),
(10, '<p>The X Games</p><p>The X Games is a yearly sports event, controlled and managed by the American sports broadcasting channel, ESPN, which focuses on extreme sports. The first X Games were held in 1995 in Newport, Rhode Island. Held simultaneously to the X Games is the X Fest which is a sports and music festival that offers live music, autograph sessions and interactive elements.</p><p>The X Games gained big media exposures due to their big sponsors, top-tier athletes and regular sports fan attendance.</p><p>The X Games frequently features new tricks like Tony Hawk&rsquo;s 900 in skateboarding, Travis Pastrana&rsquo;s double backflip in freestyle motocross, Health Frisby&rsquo;s first ever snowmobile front flip in Snowmobile Best Trick and Torstein Horgmo&rsquo;s first landed triple flip in a snowboard competition.</p><p>X Games Minneapolis 2020 was cancelled due to the&nbsp;COVID-19 pandemic.</p>', 25, '2022-06-29', '12:00:00', '[{\"name\":\"files\\/b423e6997e66af4e661b05c35dd00e1a_we7h8vai.jpg\",\"usrName\":\"b423e6997e66af4e661b05c35dd00e1a.jpg\",\"size\":159524,\"type\":\"image\\/jpeg\",\"thumbnail\":\"files\\/thb423e6997e66af4e661b05c35dd00e1a_atggsr0e.jpg\",\"thumbnail_type\":\"image\\/jpeg\",\"thumbnail_size\":7575,\"searchStr\":\"b423e6997e66af4e661b05c35dd00e1a.jpg,!:sStrEnd\"}]', 'Aspen, Colorado, USA', NULL, '', 200, 'Winter X Games 25', '2022-07-01', '12:00:00'),
(10, '<p>The&nbsp;<strong>FIFA Club World Cup</strong>&nbsp;is an annual international men&#39;s association football competition involving seven club teams including the champion club team from each confederation along with the host nation&#39;s national champions.</p><p>The competition was first contested in 2000, then called the&nbsp;<strong>FIFA Club World Championship</strong>, and held in Brazil. The tournament was not held again until 2005, and has been held annually since.</p><p>The tournament teams comprise the winners of that year&#39;s AFC Champions League (Asia), CAF Champions League (Africa), CONCACAF Champions League (North America), Copa Libertadores (South America), OFC Champions League (Oceania) and UEFA Champions League (Europe), along with the host nation&#39;s national champions.</p>', 26, '2022-02-04', '12:00:00', '[{\"name\":\"files\\/FBL-QAT-FIFf_hjag6bkp.jpg\",\"usrName\":\"FBL-QAT-FIFf.jpg\",\"size\":84371,\"type\":\"image\\/jpeg\",\"thumbnail\":\"files\\/thFBL-QAT-FIFf_pzsp2tsx.jpg\",\"thumbnail_type\":\"image\\/jpeg\",\"thumbnail_size\":16546,\"searchStr\":\"FBL-QAT-FIFf.jpg,!:sStrEnd\"}]', 'Doha, Qatar', NULL, '', 150, 'FIFA Club World Cup', '2022-02-11', '12:00:00'),
(5, '<p>Treat yourself to a night of fiery Catalan flamenco at Barcelona City Hall, in the city&#39;s former historic theater. Featuring some of the most talented dancers on the local scene, the show strips the flamenco back to its authentic roots with punchy guitar solos, face-to-face duels, and singing. Choose your seating area, show time, and included drink option when you book online. Sit in the history-rich theater as a gifted troupe of dancers perform Enjoy the upbeat music with guitars, percussion, and singing&nbsp;<br /><br />&nbsp;</p>', 27, '2022-08-10', '12:00:00', '[{\"name\":\"files\\/471966-6_o3h57073.jpg\",\"usrName\":\"471966-6.jpg\",\"size\":48965,\"type\":\"image\\/jpeg\",\"thumbnail\":\"files\\/th471966-6_zl2tvwsd.jpg\",\"thumbnail_type\":\"image\\/jpeg\",\"thumbnail_size\":11250,\"searchStr\":\"471966-6.jpg,!:sStrEnd\"}]', 'Barcelona, Theatre City Hall — Main Hall', NULL, '', 50, 'Flamenco in the Heart Of Barcelona', '2022-08-13', '12:00:00'),
(10, '<p>Enjoy a classical music concert in a spectacular setting&mdash;Vienna&rsquo;s St. Anne&rsquo;s Church. Admire the baroque architecture and benefit from the building&rsquo;s incredible acoustics&mdash;a quality that&#39;s hard to find in regular venues. The concert is perfect for classical music fans as the talented string quartet perform on period instruments, and play the works of Mozart, Beethoven, Haydn, or Schubert, depending on the evening.</p>', 28, '2022-10-11', '16:00:00', '[{\"name\":\"files\\/Vienna-2017_lola83il.jpg\",\"usrName\":\"Vienna-2017.jpg\",\"size\":53366,\"type\":\"image\\/jpeg\",\"thumbnail\":\"files\\/thVienna-2017_g2c9xz4s.jpg\",\"thumbnail_type\":\"image\\/jpeg\",\"thumbnail_size\":17891,\"searchStr\":\"Vienna-2017.jpg,!:sStrEnd\"}]', 'Vienna, St. Anne\'s Church — Main Hall', NULL, '', 30, 'Mozart, Haydn, Schubert & Beethoven in St. Anne\'s Church', '2022-10-11', '19:00:00'),
(5, '<p>The international hit musical&nbsp;<em>Mamma Mia!</em>&nbsp;continues to run in London&#39;s West End at the Novello Theatre where it has been delighting audiences for 20 years after originally opening at the Prince of Wales Theatre in 1999. As one of the world&#39;s most successful and recognisable musical titles it leaves audiences on their feet night after night and has now been seen by over 54 million people around the world.</p><p>Featuring a host of hit ABBA songs including &ldquo;Money Money Money,&rdquo;&nbsp;&ldquo;Take a Chance on Me,&rdquo;&nbsp;&ldquo;Does Your Mother Know,&rdquo; and &ldquo;The Winner Takes it All,&rdquo; this irresistibly funny musical comedy follows an original story of love, friendship and the search for identity accompanied by a score of some of the most recognisable and uplifting pop music ever written.</p>', 29, '2022-05-10', '14:00:00', '[{\"name\":\"files\\/8196_00k979lv.jpg\",\"usrName\":\"8196.jpg\",\"size\":42927,\"type\":\"image\\/jpeg\",\"thumbnail\":\"files\\/th8196_gvf1o5ss.jpg\",\"thumbnail_type\":\"image\\/jpeg\",\"thumbnail_size\":4427,\"searchStr\":\"8196.jpg,!:sStrEnd\"}]', 'London, Novello Theatre', NULL, '', 300, 'Mamma Mia! at the Novello Theatre', '2022-05-10', '16:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evtellfriend`
--

CREATE TABLE `evtellfriend` (
  `ID` int(11) NOT NULL,
  `EmailAddress` varchar(50) DEFAULT NULL,
  `EmailBody` mediumtext DEFAULT NULL,
  `EmailSubject` varchar(250) DEFAULT NULL,
  `FromName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `evtellfriend`
--

INSERT INTO `evtellfriend` (`ID`, `EmailAddress`, `EmailBody`, `EmailSubject`, `FromName`) VALUES
(1, 'bigbeerbug@inbox.ru', '<p><strong>cccc</strong></p><p><strong><em>wwww</em></strong></p>', 'test', 'bigbeerbug@inbox.ru'),
(2, 'bigbeerbug@inbox.ru', '<p>Hi,<br /><br />check this event:<br /><a href=\"http://localhost:8089/evevents_view.php\">http://localhost:8089/evevents_view.php</a><br /><br />Your name</p>', 'Mike\'s 27th Birthday', 'bigbeerbug@inbox.ru'),
(3, 'bigbeerbug@inbox.ru', '<p>Hi,<br /><br />check this event:<br /><a href=\"http://localhost:8089/evevents_view.php\">http://localhost:8089/evevents_view.php</a><br /><br />Your name</p>', 'Mike\'s 27th Birthday', 'bigbeerbug@inbox.ru');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evusers`
--

CREATE TABLE `evusers` (
  `Email` varchar(50) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `Password` varchar(60) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `evusers`
--

INSERT INTO `evusers` (`Email`, `ID`, `Password`, `Username`, `group`) VALUES
('admin@test.com', 2, '$2y$10$jio1pOMUUpokZ5u8Bdne0.shRS5dk8Xd0he0EJZ55oqkPHTQQi7O.', 'admin', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evcategories`
--
ALTER TABLE `evcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evevents`
--
ALTER TABLE `evevents`
  ADD PRIMARY KEY (`EventID`);

--
-- Indices de la tabla `evtellfriend`
--
ALTER TABLE `evtellfriend`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `evusers`
--
ALTER TABLE `evusers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evcategories`
--
ALTER TABLE `evcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `evevents`
--
ALTER TABLE `evevents`
  MODIFY `EventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `evtellfriend`
--
ALTER TABLE `evtellfriend`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `evusers`
--
ALTER TABLE `evusers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de datos: `gestiondereptiles`
--
CREATE DATABASE IF NOT EXISTS `gestiondereptiles` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gestiondereptiles`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cria`
--

CREATE TABLE `cria` (
  `id` int(11) NOT NULL,
  `id_reptil` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `estado_salud` enum('Saludable','En tratamiento','En recuperación') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reptil`
--

CREATE TABLE `reptil` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `especie` varchar(50) NOT NULL,
  `edad` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `id_cria` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha_venta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cria`
--
ALTER TABLE `cria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_reptil` (`id_reptil`);

--
-- Indices de la tabla `reptil`
--
ALTER TABLE `reptil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cria` (`id_cria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cria`
--
ALTER TABLE `cria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reptil`
--
ALTER TABLE `reptil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cria`
--
ALTER TABLE `cria`
  ADD CONSTRAINT `cria_ibfk_1` FOREIGN KEY (`id_reptil`) REFERENCES `reptil` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_cria`) REFERENCES `cria` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `gestion_hospitalaria`
--
CREATE DATABASE IF NOT EXISTS `gestion_hospitalaria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gestion_hospitalaria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades_promocion_prevencion`
--

CREATE TABLE `actividades_promocion_prevencion` (
  `id_actividad` int(11) NOT NULL,
  `nombre_actividad` varchar(100) NOT NULL,
  `tipo` enum('Promoción','Prevención') NOT NULL,
  `descripcion` text DEFAULT NULL,
  `frecuencia_recomendada` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actividades_promocion_prevencion`
--

INSERT INTO `actividades_promocion_prevencion` (`id_actividad`, `nombre_actividad`, `tipo`, `descripcion`, `frecuencia_recomendada`) VALUES
(1, 'Vacunación Influenza', 'Prevención', 'Vacuna anual contra la influenza', 'Anual'),
(2, 'Educación Nutricional', 'Promoción', 'Taller de alimentación saludable', 'Mensual'),
(3, 'Chequeo Cardiovascular', 'Prevención', 'Evaluación de riesgo cardiovascular', 'Cada 6 meses');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_examenes`
--

CREATE TABLE `estados_examenes` (
  `id_estado` int(11) NOT NULL,
  `nombre_estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estados_examenes`
--

INSERT INTO `estados_examenes` (`id_estado`, `nombre_estado`) VALUES
(3, 'Cancelado'),
(2, 'Completado'),
(1, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evoluciones`
--

CREATE TABLE `evoluciones` (
  `id_evolucion` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examenes_laboratorio`
--

CREATE TABLE `examenes_laboratorio` (
  `id_examen` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `id_estado` int(11) NOT NULL,
  `fecha_solicitud` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `examenes_laboratorio`
--

INSERT INTO `examenes_laboratorio` (`id_examen`, `id_paciente`, `id_docente`, `descripcion`, `id_estado`, `fecha_solicitud`) VALUES
(1, 1, 2, 'examen parasitologia xyz baskdkjashdkhask', 1, '2025-05-05 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examenes_laboratorio_detalle`
--

CREATE TABLE `examenes_laboratorio_detalle` (
  `id_examen_detalle` int(11) NOT NULL,
  `id_examen` int(11) NOT NULL,
  `id_tipo_examen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `examenes_laboratorio_detalle`
--

INSERT INTO `examenes_laboratorio_detalle` (`id_examen_detalle`, `id_examen`, `id_tipo_examen`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historias_clinicas`
--

CREATE TABLE `historias_clinicas` (
  `id_historia` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historias_clinicas`
--

INSERT INTO `historias_clinicas` (`id_historia`, `id_paciente`, `id_docente`, `descripcion`, `fecha_actualizacion`) VALUES
(1, 1, 1, 'dcvsczc', '2025-05-05 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informes_laboratorio`
--

CREATE TABLE `informes_laboratorio` (
  `id_informe` int(11) NOT NULL,
  `id_examen` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `resultado` text NOT NULL,
  `fecha_informe` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE `medicamentos` (
  `id_medicamento` int(11) NOT NULL,
  `nombre_medicamento` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `dosis_recomendada` varchar(50) DEFAULT NULL,
  `via_administracion` enum('Oral','Intravenosa','Intramuscular','Tópica','Otra') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`id_medicamento`, `nombre_medicamento`, `descripcion`, `dosis_recomendada`, `via_administracion`) VALUES
(1, 'Paracetamol', 'Analgésico y antipirético', '500 mg cada 8 horas', 'Oral'),
(2, 'Insulina', 'Control de glucosa en sangre', '10 unidades según glucemia', 'Intramuscular'),
(3, 'Amoxicilina', 'Antibiótico de amplio espectro', '500 mg cada 12 horas', 'Oral');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `documento_identidad` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` enum('Masculino','Femenino','Otro') NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id_paciente`, `id_docente`, `nombre`, `documento_identidad`, `fecha_nacimiento`, `genero`, `fecha_registro`) VALUES
(1, 1, 'Edwin Darío Becerra Vesga', '0000000001', '2020-01-01', 'Masculino', '2025-05-05 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_prevencion_pacientes`
--

CREATE TABLE `promocion_prevencion_pacientes` (
  `id_promocion_prevencion` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_actividad` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `notas` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `promocion_prevencion_pacientes`
--

INSERT INTO `promocion_prevencion_pacientes` (`id_promocion_prevencion`, `id_paciente`, `id_actividad`, `id_usuario`, `fecha_registro`, `notas`) VALUES
(1, 1, 1, 1, '2025-05-05 05:00:00', 'Se aplicó vacuna influenz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre_rol`) VALUES
(2, 'Docente'),
(1, 'Estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios_pacientes`
--

CREATE TABLE `servicios_pacientes` (
  `id_servicio_paciente` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_seleccion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios_pacientes`
--

INSERT INTO `servicios_pacientes` (`id_servicio_paciente`, `id_paciente`, `id_servicio`, `id_usuario`, `fecha_seleccion`) VALUES
(1, 1, 1, 2, '2025-05-05 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_examenes_laboratorio`
--

CREATE TABLE `tipos_examenes_laboratorio` (
  `id_tipo_examen` int(11) NOT NULL,
  `nombre_examen` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `rango_normal` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_examenes_laboratorio`
--

INSERT INTO `tipos_examenes_laboratorio` (`id_tipo_examen`, `nombre_examen`, `descripcion`, `rango_normal`) VALUES
(1, 'Hemograma Completo', 'Análisis de componentes sanguíneos', 'Hemoglobina: 12-16 g/dL'),
(2, 'Perfil Lipídico', 'Medición de colesterol y triglicéridos', 'Colesterol LDL: <100 mg/dL'),
(3, 'Glucosa en Ayunas', 'Medición de glucosa para diagnóstico de diabetes', '70-100 mg/dL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_servicios`
--

CREATE TABLE `tipos_servicios` (
  `id_servicio` int(11) NOT NULL,
  `nombre_servicio` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_servicios`
--

INSERT INTO `tipos_servicios` (`id_servicio`, `nombre_servicio`, `descripcion`) VALUES
(1, 'Consulta General', 'Consulta médica general para diagnóstico inicial.'),
(2, 'Análisis de Laboratorio', 'Solicitud de exámenes de laboratorio.'),
(3, 'Seguimiento', 'Evolución y seguimiento del estado del paciente.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamientos`
--

CREATE TABLE `tratamientos` (
  `id_tratamiento` int(11) NOT NULL,
  `nombre_tratamiento` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `duracion_recomendada` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tratamientos`
--

INSERT INTO `tratamientos` (`id_tratamiento`, `nombre_tratamiento`, `descripcion`, `duracion_recomendada`) VALUES
(1, 'Tratamiento Hipertensión', 'Control de presión arterial con medicación y dieta', 'Crónico'),
(2, 'Tratamiento Diabetes', 'Control glucémico con insulina y monitoreo', 'Crónico'),
(3, 'Antibiótico Infección', 'Tratamiento con antibióticos para infección bacteriana', '10 días');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamientos_pacientes`
--

CREATE TABLE `tratamientos_pacientes` (
  `id_tratamiento_paciente` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_tratamiento` int(11) NOT NULL,
  `id_medicamento` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `notas` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tratamientos_pacientes`
--

INSERT INTO `tratamientos_pacientes` (`id_tratamiento_paciente`, `id_paciente`, `id_tratamiento`, `id_medicamento`, `id_docente`, `fecha_inicio`, `fecha_fin`, `notas`) VALUES
(1, 1, 3, 3, 1, '2025-05-05', '2025-05-26', 'dsgdagadsgf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `id_rol`, `nombre`, `email`, `contrasena`, `fecha_registro`) VALUES
(1, 1, 'Ana Pérez', 'ana.estudiante@email.com', 'hash_contrasena1', '2025-05-05 20:01:51'),
(2, 2, 'Dr. Luis Gómez', 'luis.docente@email.com', 'hash_contrasena2', '2025-05-05 20:01:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades_promocion_prevencion`
--
ALTER TABLE `actividades_promocion_prevencion`
  ADD PRIMARY KEY (`id_actividad`),
  ADD UNIQUE KEY `nombre_actividad` (`nombre_actividad`);

--
-- Indices de la tabla `estados_examenes`
--
ALTER TABLE `estados_examenes`
  ADD PRIMARY KEY (`id_estado`),
  ADD UNIQUE KEY `nombre_estado` (`nombre_estado`);

--
-- Indices de la tabla `evoluciones`
--
ALTER TABLE `evoluciones`
  ADD PRIMARY KEY (`id_evolucion`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_docente` (`id_docente`);

--
-- Indices de la tabla `examenes_laboratorio`
--
ALTER TABLE `examenes_laboratorio`
  ADD PRIMARY KEY (`id_examen`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_docente` (`id_docente`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `examenes_laboratorio_detalle`
--
ALTER TABLE `examenes_laboratorio_detalle`
  ADD PRIMARY KEY (`id_examen_detalle`),
  ADD KEY `id_examen` (`id_examen`),
  ADD KEY `id_tipo_examen` (`id_tipo_examen`);

--
-- Indices de la tabla `historias_clinicas`
--
ALTER TABLE `historias_clinicas`
  ADD PRIMARY KEY (`id_historia`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_docente` (`id_docente`);

--
-- Indices de la tabla `informes_laboratorio`
--
ALTER TABLE `informes_laboratorio`
  ADD PRIMARY KEY (`id_informe`),
  ADD KEY `id_examen` (`id_examen`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`id_medicamento`),
  ADD UNIQUE KEY `nombre_medicamento` (`nombre_medicamento`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_paciente`),
  ADD UNIQUE KEY `documento_identidad` (`documento_identidad`),
  ADD KEY `id_docente` (`id_docente`);

--
-- Indices de la tabla `promocion_prevencion_pacientes`
--
ALTER TABLE `promocion_prevencion_pacientes`
  ADD PRIMARY KEY (`id_promocion_prevencion`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_actividad` (`id_actividad`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`),
  ADD UNIQUE KEY `nombre_rol` (`nombre_rol`);

--
-- Indices de la tabla `servicios_pacientes`
--
ALTER TABLE `servicios_pacientes`
  ADD PRIMARY KEY (`id_servicio_paciente`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_servicio` (`id_servicio`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tipos_examenes_laboratorio`
--
ALTER TABLE `tipos_examenes_laboratorio`
  ADD PRIMARY KEY (`id_tipo_examen`),
  ADD UNIQUE KEY `nombre_examen` (`nombre_examen`);

--
-- Indices de la tabla `tipos_servicios`
--
ALTER TABLE `tipos_servicios`
  ADD PRIMARY KEY (`id_servicio`),
  ADD UNIQUE KEY `nombre_servicio` (`nombre_servicio`);

--
-- Indices de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  ADD PRIMARY KEY (`id_tratamiento`),
  ADD UNIQUE KEY `nombre_tratamiento` (`nombre_tratamiento`);

--
-- Indices de la tabla `tratamientos_pacientes`
--
ALTER TABLE `tratamientos_pacientes`
  ADD PRIMARY KEY (`id_tratamiento_paciente`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_tratamiento` (`id_tratamiento`),
  ADD KEY `id_medicamento` (`id_medicamento`),
  ADD KEY `id_docente` (`id_docente`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades_promocion_prevencion`
--
ALTER TABLE `actividades_promocion_prevencion`
  MODIFY `id_actividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estados_examenes`
--
ALTER TABLE `estados_examenes`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `evoluciones`
--
ALTER TABLE `evoluciones`
  MODIFY `id_evolucion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `examenes_laboratorio`
--
ALTER TABLE `examenes_laboratorio`
  MODIFY `id_examen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `examenes_laboratorio_detalle`
--
ALTER TABLE `examenes_laboratorio_detalle`
  MODIFY `id_examen_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `historias_clinicas`
--
ALTER TABLE `historias_clinicas`
  MODIFY `id_historia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `informes_laboratorio`
--
ALTER TABLE `informes_laboratorio`
  MODIFY `id_informe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `id_medicamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `promocion_prevencion_pacientes`
--
ALTER TABLE `promocion_prevencion_pacientes`
  MODIFY `id_promocion_prevencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `servicios_pacientes`
--
ALTER TABLE `servicios_pacientes`
  MODIFY `id_servicio_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipos_examenes_laboratorio`
--
ALTER TABLE `tipos_examenes_laboratorio`
  MODIFY `id_tipo_examen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipos_servicios`
--
ALTER TABLE `tipos_servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  MODIFY `id_tratamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tratamientos_pacientes`
--
ALTER TABLE `tratamientos_pacientes`
  MODIFY `id_tratamiento_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evoluciones`
--
ALTER TABLE `evoluciones`
  ADD CONSTRAINT `evoluciones_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  ADD CONSTRAINT `evoluciones_ibfk_2` FOREIGN KEY (`id_docente`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `examenes_laboratorio`
--
ALTER TABLE `examenes_laboratorio`
  ADD CONSTRAINT `examenes_laboratorio_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  ADD CONSTRAINT `examenes_laboratorio_ibfk_2` FOREIGN KEY (`id_docente`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `examenes_laboratorio_ibfk_3` FOREIGN KEY (`id_estado`) REFERENCES `estados_examenes` (`id_estado`);

--
-- Filtros para la tabla `examenes_laboratorio_detalle`
--
ALTER TABLE `examenes_laboratorio_detalle`
  ADD CONSTRAINT `examenes_laboratorio_detalle_ibfk_1` FOREIGN KEY (`id_examen`) REFERENCES `examenes_laboratorio` (`id_examen`),
  ADD CONSTRAINT `examenes_laboratorio_detalle_ibfk_2` FOREIGN KEY (`id_tipo_examen`) REFERENCES `tipos_examenes_laboratorio` (`id_tipo_examen`);

--
-- Filtros para la tabla `historias_clinicas`
--
ALTER TABLE `historias_clinicas`
  ADD CONSTRAINT `historias_clinicas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  ADD CONSTRAINT `historias_clinicas_ibfk_2` FOREIGN KEY (`id_docente`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `informes_laboratorio`
--
ALTER TABLE `informes_laboratorio`
  ADD CONSTRAINT `informes_laboratorio_ibfk_1` FOREIGN KEY (`id_examen`) REFERENCES `examenes_laboratorio` (`id_examen`),
  ADD CONSTRAINT `informes_laboratorio_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `pacientes_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `promocion_prevencion_pacientes`
--
ALTER TABLE `promocion_prevencion_pacientes`
  ADD CONSTRAINT `promocion_prevencion_pacientes_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  ADD CONSTRAINT `promocion_prevencion_pacientes_ibfk_2` FOREIGN KEY (`id_actividad`) REFERENCES `actividades_promocion_prevencion` (`id_actividad`),
  ADD CONSTRAINT `promocion_prevencion_pacientes_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `servicios_pacientes`
--
ALTER TABLE `servicios_pacientes`
  ADD CONSTRAINT `servicios_pacientes_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  ADD CONSTRAINT `servicios_pacientes_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `tipos_servicios` (`id_servicio`),
  ADD CONSTRAINT `servicios_pacientes_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `tratamientos_pacientes`
--
ALTER TABLE `tratamientos_pacientes`
  ADD CONSTRAINT `tratamientos_pacientes_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  ADD CONSTRAINT `tratamientos_pacientes_ibfk_2` FOREIGN KEY (`id_tratamiento`) REFERENCES `tratamientos` (`id_tratamiento`),
  ADD CONSTRAINT `tratamientos_pacientes_ibfk_3` FOREIGN KEY (`id_medicamento`) REFERENCES `medicamentos` (`id_medicamento`),
  ADD CONSTRAINT `tratamientos_pacientes_ibfk_4` FOREIGN KEY (`id_docente`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);
--
-- Base de datos: `gimnasio`
--
CREATE DATABASE IF NOT EXISTS `gimnasio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gimnasio`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `peso` decimal(5,2) NOT NULL COMMENT 'Peso en kilogramos',
  `altura` decimal(3,2) NOT NULL COMMENT 'Altura en metros',
  `tipo_cuerpo` enum('ectomorfo','mesomorfo','endomorfo') NOT NULL,
  `imc` decimal(5,2) DEFAULT NULL COMMENT 'Índice de Masa Corporal calculado',
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `peso`, `altura`, `tipo_cuerpo`, `imc`, `fecha_registro`) VALUES
(6, 'william', 80.00, 1.69, 'ectomorfo', 28.01, '2025-04-04 21:22:21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Base de datos: `hotel_reservations`
--
CREATE DATABASE IF NOT EXISTS `hotel_reservations` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hotel_reservations`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `nombre`, `apellido`, `email`, `telefono`) VALUES
(3, 'manuel', 'guarguati', 'manuelguarguati2016@gmail.com', '3115794137');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `hotel` varchar(100) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `habitaciones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `id_cliente`, `hotel`, `fecha_entrada`, `fecha_salida`, `habitaciones`) VALUES
(1, 3, 'gfcgf', '2025-04-09', '2025-05-28', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clients` (`id`);
--
-- Base de datos: `laboratorio`
--
CREATE DATABASE IF NOT EXISTS `laboratorio` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `laboratorio`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `labs`
--

CREATE TABLE `labs` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `num_students` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `practice_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `lab_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` enum('available','reserved') DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indices de la tabla `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lab_id` (`lab_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `labs`
--
ALTER TABLE `labs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`);

--
-- Filtros para la tabla `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`id`);
--
-- Base de datos: `laboratory_reservations`
--
CREATE DATABASE IF NOT EXISTS `laboratory_reservations` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laboratory_reservations`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `laboratorio` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `practice_type` varchar(100) NOT NULL,
  `materials` text NOT NULL,
  `num_students` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservations`
--

INSERT INTO `reservations` (`id`, `laboratorio`, `fecha`, `hora_inicio`, `hora_fin`, `usuario`, `teacher_name`, `practice_type`, `materials`, `num_students`) VALUES
(28, 'infectología', '2025-06-05', '08:00:00', '10:00:00', 'usuario123', 'ferney', 'inyeccion', 'guantes', 5),
(29, 'infectología', '2025-06-05', '10:00:00', '12:00:00', 'usuario123', 'ferney', 'ferney', 'ferney', 24);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Base de datos: `library_db`
--
CREATE DATABASE IF NOT EXISTS `library_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `library_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` bigint(20) NOT NULL,
  `anio_publicacion` int(11) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Base de datos: `persona`
--
CREATE DATABASE IF NOT EXISTS `persona` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `persona`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `ID` int(11) NOT NULL,
  `APELLIDO` varchar(255) DEFAULT NULL,
  `FECHANACIMIENTO` date DEFAULT NULL,
  `NOMBRE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`ID`, `APELLIDO`, `FECHANACIMIENTO`, `NOMBRE`) VALUES
(10, 'padilla', '2025-03-07', 'carolina'),
(20, 'padilla', '2025-03-07', 'dana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id`, `nombre`, `email`) VALUES
(4, 'carlos', 'a@a.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence`
--

CREATE TABLE `sequence` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sequence`
--

INSERT INTO `sequence` (`SEQ_NAME`, `SEQ_COUNT`) VALUES
('SEQ_GEN', 650);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sequence`
--
ALTER TABLE `sequence`
  ADD PRIMARY KEY (`SEQ_NAME`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"laboratory_reservations\",\"table\":\"reservations\"},{\"db\":\"reservas_laboratorios\",\"table\":\"reservas\"},{\"db\":\"biblioteca\",\"table\":\"libro\"},{\"db\":\"biblioteca\",\"table\":\"autor\"},{\"db\":\"colegio\",\"table\":\"estudiante_curso\"},{\"db\":\"library_db\",\"table\":\"libros\"},{\"db\":\"crud_simple_db\",\"table\":\"persona\"},{\"db\":\"hotel_reservations\",\"table\":\"reservas\"},{\"db\":\"hotel_reservations\",\"table\":\"clients\"},{\"db\":\"tienda_componentes\",\"table\":\"detalle_compras\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-05-20 21:43:56', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"NavigationWidth\":239.993}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `reservas_laboratorios`
--
CREATE DATABASE IF NOT EXISTS `reservas_laboratorios` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `reservas_laboratorios`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `laboratorio` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `usuario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de datos: `tienda_componentes`
--
CREATE DATABASE IF NOT EXISTS `tienda_componentes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tienda_componentes`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `apellido` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `correo`, `telefono`, `apellido`) VALUES
(2, 'Diana', 'JandD30@locas.com', '78945632156', 'De Barragan'),
(6, 'jesus', 'jesualfo@hotmail.com', '78945613', 'sanabria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `cliente_id`, `fecha`, `total`) VALUES
(2, 2, '2025-03-29 00:00:00', 900.00),
(5, 6, '2025-03-30 00:00:00', 900.00),
(6, 6, '2025-03-30 00:00:00', 1.63);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compras`
--

CREATE TABLE `detalle_compras` (
  `id` int(11) NOT NULL,
  `compra_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `categoria`, `marca`, `precio`, `stock`) VALUES
(2, 'Procesador AMD Ryzen 5 8400F', 'Procesador', 'AMD', 900.00, 5),
(3, 'Tarjeta Grafica Asus Rog Strig RTX 5090 24 GB Vram', 'Tarjeta Grafica', 'ASUS', 1630.00, 2),
(6, 'Procesador AMD Ryzen 7 9700X3D', 'Procesador', 'AMD', 1600.00, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Indices de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compra_id` (`compra_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD CONSTRAINT `detalle_compras_ibfk_1` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detalle_compras_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `tienda_libros_db`
--
CREATE DATABASE IF NOT EXISTS `tienda_libros_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tienda_libros_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id_libro` int(11) NOT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `nombre_libro` varchar(255) DEFAULT NULL,
  `precio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id_libro`, `autor`, `nombre_libro`, `precio`) VALUES
(2, 'JORGE ISAAC', 'MARIA', '120000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id_libro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de datos: `tienda_musica`
--
CREATE DATABASE IF NOT EXISTS `tienda_musica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tienda_musica`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `email`, `fecha_registro`) VALUES
(1, 'carlos', 'chaparro', 'a@a.com', '2025-04-04 20:48:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `id_instrumento` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha_compra` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `id_instrumento`, `id_cliente`, `fecha_compra`) VALUES
(2, 3, 1, '2025-04-04 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrumentos`
--

CREATE TABLE `instrumentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo` enum('Guitarra','Bajo','Batería') NOT NULL,
  `marca` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `instrumentos`
--

INSERT INTO `instrumentos` (`id`, `nombre`, `tipo`, `marca`, `precio`) VALUES
(3, 'guipson', 'Bajo', 'mazda', 1234.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_instrumento` (`id_instrumento`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `instrumentos`
--
ALTER TABLE `instrumentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `instrumentos`
--
ALTER TABLE `instrumentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_instrumento`) REFERENCES `instrumentos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `webservice`
--
CREATE DATABASE IF NOT EXISTS `webservice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webservice`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_categoria`
--

CREATE TABLE `tm_categoria` (
  `cat_id` int(11) NOT NULL,
  `cat_nom` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cat_obs` varchar(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tm_categoria`
--

INSERT INTO `tm_categoria` (`cat_id`, `cat_nom`, `cat_obs`, `est`) VALUES
(1, 'Televisores', 'Observación TV', 1),
(2, 'Refrigeradoras', 'Observación Regrigeradoras', 1),
(3, 'Cocinas', 'Observación TV', 1),
(4, 'Lavadoras', 'Observación Regrigeradoras', 1),
(5, 'Actualizacion', 'Actualizacion Obs', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_categoria`
--
ALTER TABLE `tm_categoria`
  ADD PRIMARY KEY (`cat_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_categoria`
--
ALTER TABLE `tm_categoria`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Base de datos: `zona_financiera_db`
--
CREATE DATABASE IF NOT EXISTS `zona_financiera_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `zona_financiera_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egreso`
--

CREATE TABLE `egreso` (
  `id` int(11) NOT NULL,
  `monto` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `egreso`
--

INSERT INTO `egreso` (`id`, `monto`) VALUES
(1, 1000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `id` int(11) NOT NULL,
  `monto` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`id`, `monto`) VALUES
(1, 2000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `totales`
--

CREATE TABLE `totales` (
  `id` int(11) NOT NULL,
  `total_egresos` double DEFAULT NULL,
  `total_ingresos` double DEFAULT NULL,
  `total_neto` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `totales`
--

INSERT INTO `totales` (`id`, `total_egresos`, `total_ingresos`, `total_neto`) VALUES
(1, 1000000, 2000000, 1000000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `egreso`
--
ALTER TABLE `egreso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `totales`
--
ALTER TABLE `totales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `egreso`
--
ALTER TABLE `egreso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `totales`
--
ALTER TABLE `totales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `zona_fit_db`
--
CREATE DATABASE IF NOT EXISTS `zona_fit_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `zona_fit_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `membresia` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `apellido`, `membresia`, `nombre`) VALUES
(1, 'santamaria', 11, 'carlos'),
(2, 'sfasd', 11111, 'saasd');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
