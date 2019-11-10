-- MySQL dump 10.13  Distrib 5.7.25, for Win64 (x86_64)
--
-- Host: localhost    Database: empresa
-- ------------------------------------------------------
-- Server version	5.7.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `antiguedad`
--

DROP TABLE IF EXISTS `antiguedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antiguedad` (
  `antiguedad` int(11) NOT NULL,
  `factor_compensacion` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`antiguedad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiguedad`
--

LOCK TABLES `antiguedad` WRITE;
/*!40000 ALTER TABLE `antiguedad` DISABLE KEYS */;
INSERT INTO `antiguedad` (`antiguedad`, `factor_compensacion`) VALUES (1,0.00),(2,0.50),(3,1.00),(4,2.00),(5,5.00),(6,5.50),(7,6.00),(8,7.50),(9,8.00),(10,10.00);
/*!40000 ALTER TABLE `antiguedad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `id_depto` int(2) NOT NULL,
  `nombre` varchar(20) DEFAULT 'NULL',
  `nssgted` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id_depto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` (`id_depto`, `nombre`, `nssgted`) VALUES (1,'DIRECCION','888665555'),(2,'ventas','678998102'),(4,'ADMINISTRACION','987654321'),(5,'INVESTIGACION','333445555');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `nss` varchar(12) NOT NULL,
  `nombre` varchar(30) DEFAULT 'NULL',
  `fecha_nac` varchar(10) DEFAULT 'NULL',
  `direccion` varchar(40) DEFAULT 'NULL',
  `ciudad` varchar(20) DEFAULT NULL,
  `id_depto` int(2) DEFAULT NULL,
  `antiguedad` int(11) DEFAULT NULL,
  PRIMARY KEY (`nss`),
  KEY `empfk1_idx` (`id_depto`),
  KEY `antiguedad` (`antiguedad`),
  CONSTRAINT `empfk1` FOREIGN KEY (`id_depto`) REFERENCES `departamento` (`id_depto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`antiguedad`) REFERENCES `antiguedad` (`antiguedad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` (`nss`, `nombre`, `fecha_nac`, `direccion`, `ciudad`, `id_depto`, `antiguedad`) VALUES ('333445555','Vizcarra Manuel','01/12/1945','Valle 638','Ensenada',5,4),('453453453','Esparza, Josefa','31/07/1962','Rosas 5631','Ensenada',5,5),('460177215','Jaime González','02/09/1980','Amapola 24','Tijuana Mx',2,5),('666884444','Nieto, Ramon','15/09/1952','espiga 957','Ensenada',5,7),('678190900','Rocio Medina','23/07/1985','Rio Bravo 1872','Tijuana Mx',2,7),('776655442','Salcedo, Oscar','18/11/1970','Geranios 156','Ensenada',1,8),('888665555','Botello, Jaime','11/11/1927','Sorgo 450','Ensenada',1,9),('977206721','Ileana Segura','19/10/1977','Mazatán 192','Tijuana Mx',2,10),('987987987','Jabbr, Ahmed','23/03/1959','dalias 980','Ensenada',4,10),('999887777','Zapata, Alicia','19/07/1958','Castillo 3321','Mexicali',4,10),('999999999','Cervantes, Selene','03/02/1977','Castillo 450','Ensenada',1,10);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyecto` (
  `id_proyecto` int(2) NOT NULL,
  `nombre` varchar(20) DEFAULT 'NULL',
  `ubicacion` varchar(20) DEFAULT 'NULL',
  `id_depto` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`),
  KEY `proyfk1_idx` (`id_depto`),
  CONSTRAINT `proyfk1` FOREIGN KEY (`id_depto`) REFERENCES `departamento` (`id_depto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` (`id_proyecto`, `nombre`, `ubicacion`, `id_depto`) VALUES (3,'productoz','Ensenada',5),(10,'automatizacion','Tijuana',4),(20,'reorganizacion','Tijuana Mx',1),(30,'nuevasprestaciones','Tijuana',4),(40,'Proyecto de ventas','Tijuana Mx',2);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puesto`
--

DROP TABLE IF EXISTS `puesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puesto` (
  `id_puesto` smallint(5) unsigned NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `salario` float DEFAULT NULL,
  PRIMARY KEY (`id_puesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puesto`
--

LOCK TABLES `puesto` WRITE;
/*!40000 ALTER TABLE `puesto` DISABLE KEYS */;
INSERT INTO `puesto` (`id_puesto`, `nombre`, `salario`) VALUES (100,'Gerente',40000),(200,'Jefe Departamento',20000),(300,'Administrador de Proyectos',25000),(400,'Investigador',18000),(500,'Vendedor',15000),(600,'Asistente Administrativo',12000);
/*!40000 ALTER TABLE `puesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabaja_en`
--

DROP TABLE IF EXISTS `trabaja_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabaja_en` (
  `nss` varchar(12) NOT NULL,
  `id_proyecto` int(2) NOT NULL,
  `horas` float DEFAULT NULL,
  `id_puesto` smallint(5) unsigned DEFAULT NULL,
  `sueldo` float DEFAULT NULL,
  PRIMARY KEY (`nss`,`id_proyecto`),
  KEY `trabfk2_idx` (`id_proyecto`),
  KEY `trabfk3_idx` (`id_puesto`),
  CONSTRAINT `trabfk1` FOREIGN KEY (`nss`) REFERENCES `empleado` (`nss`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `trabfk2` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `trabfk3` FOREIGN KEY (`id_puesto`) REFERENCES `puesto` (`id_puesto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabaja_en`
--

LOCK TABLES `trabaja_en` WRITE;
/*!40000 ALTER TABLE `trabaja_en` DISABLE KEYS */;
INSERT INTO `trabaja_en` (`nss`, `id_proyecto`, `horas`, `id_puesto`, `sueldo`) VALUES ('123456789',2,7.5,300,1707.02),('129834765',40,NULL,200,30000),('333445555',2,10,400,9364.17),('333445555',3,10,400,9364.17),('333445555',10,10,400,9364.17),('333445555',20,10,400,9364.17),('453453453',2,20,400,74913),('460177215',40,NULL,500,90000),('666884444',3,40,400,203930),('678190900',40,NULL,500,105000),('776655442',20,40,200,334104),('888665555',20,10,600,56184.9),('977206721',40,NULL,500,165000),('987654321',20,15,600,125896),('987654321',30,20,600,167861),('987987987',10,35,600,293757),('987987987',30,5,600,41965.3),('999887777',10,10,200,139885),('999887777',30,30,200,419653),('999999999',20,40,100,1119070);
/*!40000 ALTER TABLE `trabaja_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicacion_depto`
--

DROP TABLE IF EXISTS `ubicacion_depto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubicacion_depto` (
  `id_depto` int(2) NOT NULL,
  `ubicacion` varchar(15) NOT NULL,
  PRIMARY KEY (`id_depto`,`ubicacion`),
  CONSTRAINT `ubfk1` FOREIGN KEY (`id_depto`) REFERENCES `departamento` (`id_depto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicacion_depto`
--

LOCK TABLES `ubicacion_depto` WRITE;
/*!40000 ALTER TABLE `ubicacion_depto` DISABLE KEYS */;
INSERT INTO `ubicacion_depto` (`id_depto`, `ubicacion`) VALUES (1,'Tijuana Mx'),(2,'Tijuana Mx'),(4,'Tijuana'),(5,'Ensenada'),(5,'Mexicali');
/*!40000 ALTER TABLE `ubicacion_depto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-27  9:18:45
