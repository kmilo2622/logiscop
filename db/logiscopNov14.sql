-- MySQL dump 10.13  Distrib 5.7.16, for Linux (i686)
--
-- Host: localhost    Database: logiscop
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `afiliacions`
--

DROP TABLE IF EXISTS `afiliacions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afiliacions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `afiliacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `precio` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `afiliacions`
--

LOCK TABLES `afiliacions` WRITE;
/*!40000 ALTER TABLE `afiliacions` DISABLE KEYS */;
INSERT INTO `afiliacions` VALUES (1,'Basico','EPS + ARL',69900,'2016-11-15 00:14:00','2016-11-15 00:14:00'),(2,'Complementario','EPS + ARL + CAJA',89900,'2016-11-15 00:15:50','2016-11-15 00:15:50'),(3,'Proteccion','EPS + ARL + PENSION',186900,'2016-11-15 00:16:47','2016-11-15 00:16:47'),(4,'Integral','EPS + ARL + PENSION + CAJA',199900,'2016-11-15 00:17:43','2016-11-15 00:17:43');
/*!40000 ALTER TABLE `afiliacions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficiarios`
--

DROP TABLE IF EXISTS `beneficiarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `beneficiarios` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiarios`
--

LOCK TABLES `beneficiarios` WRITE;
/*!40000 ALTER TABLE `beneficiarios` DISABLE KEYS */;
INSERT INTO `beneficiarios` VALUES (1,'Si tengo, mi(s) hijos(as)','2016-11-15 01:24:10','2016-11-15 01:24:10'),(2,'Si, mi conyugue','2016-11-15 01:24:10','2016-11-15 01:24:10'),(3,'Si, mis padres dependen economicamente de mi','2016-11-15 01:24:10','2016-11-15 01:24:10');
/*!40000 ALTER TABLE `beneficiarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cajas`
--

DROP TABLE IF EXISTS `cajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cajas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caja` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajas`
--

LOCK TABLES `cajas` WRITE;
/*!40000 ALTER TABLE `cajas` DISABLE KEYS */;
INSERT INTO `cajas` VALUES (1,'Colsubsidio',11001,'2016-11-15 01:19:48','2016-11-15 01:19:48'),(2,'Compensar',11001,'2016-11-15 01:19:48','2016-11-15 01:19:48'),(3,'Comfama',5001,'2016-11-15 01:19:48','2016-11-15 01:19:48'),(4,'Comfrem',50001,'2016-11-15 01:19:48','2016-11-15 01:19:48'),(5,'Comfenalco',63001,'2016-11-15 01:19:48','2016-11-15 01:19:48'),(6,'Comfamiliar',66001,'2016-11-15 01:19:48','2016-11-15 01:19:48');
/*!40000 ALTER TABLE `cajas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudads`
--

DROP TABLE IF EXISTS `ciudads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudads` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` int(10) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `id_departamento` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudads`
--

LOCK TABLES `ciudads` WRITE;
/*!40000 ALTER TABLE `ciudads` DISABLE KEYS */;
INSERT INTO `ciudads` VALUES (1,11001,'Bogota',1,'2016-11-15 01:14:23','2016-11-15 01:14:23'),(2,5001,'Medellin',2,'2016-11-15 01:14:23','2016-11-15 01:14:23'),(3,50001,'Villavicencio',3,'2016-11-15 01:14:23','2016-11-15 01:14:23'),(4,63001,'Armenia',4,'2016-11-15 01:14:23','2016-11-15 01:14:23'),(5,76001,'Cali',5,'2016-11-15 01:14:23','2016-11-15 01:14:23'),(6,66001,'Pereira',6,'2016-11-15 01:14:23','2016-11-15 01:14:23');
/*!40000 ALTER TABLE `ciudads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `cedula` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contrasena` varchar(255) CHARACTER SET utf8 NOT NULL,
  `nacimiento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `edad` int(11) NOT NULL,
  `celular` bigint(20) DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `referido` int(11) DEFAULT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `id_riesgo` int(11) DEFAULT NULL,
  `id_afiliacion` int(11) DEFAULT NULL,
  `id_eps` int(11) DEFAULT NULL,
  `id_caja` int(11) DEFAULT NULL,
  `id_beneficiario` int(11) DEFAULT NULL,
  `id_pension` int(11) DEFAULT NULL,
  `id_enfermedad` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'John Arij',1023026521,'juanca-arroyave@hotmail.com','mama45','26-03-1998',1,18,3216226647,NULL,NULL,11001,1,1,1,1,2,1,NULL,'2016-11-14 03:49:53','2016-11-14 03:49:53');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `departamento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_p_s`
--

DROP TABLE IF EXISTS `e_p_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e_p_s` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eps` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_p_s`
--

LOCK TABLES `e_p_s` WRITE;
/*!40000 ALTER TABLE `e_p_s` DISABLE KEYS */;
INSERT INTO `e_p_s` VALUES (1,'Cafesalud','2016-11-15 00:33:10','2016-11-15 00:33:10'),(2,'Coomeva','2016-11-15 00:33:10','2016-11-15 00:33:10'),(3,'Compensar','2016-11-15 00:33:10','2016-11-15 00:33:10'),(4,'Cruz Blanca','2016-11-15 00:33:10','2016-11-15 00:33:10'),(5,'Famisanar','2016-11-15 00:33:10','2016-11-15 00:33:10'),(6,'Nueva EPS','2016-11-15 00:33:10','2016-11-15 00:33:10'),(7,'Salud Total','2016-11-15 00:33:10','2016-11-15 00:33:10'),(8,'Sanitas','2016-11-15 00:33:10','2016-11-15 00:33:10'),(9,'Sura','2016-11-15 00:33:10','2016-11-15 00:33:10');
/*!40000 ALTER TABLE `e_p_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermedads`
--

DROP TABLE IF EXISTS `enfermedads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enfermedads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `enfermedades` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermedads`
--

LOCK TABLES `enfermedads` WRITE;
/*!40000 ALTER TABLE `enfermedads` DISABLE KEYS */;
/*!40000 ALTER TABLE `enfermedads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'activo',NULL,NULL),(2,'inactivo',NULL,NULL);
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_11_13_212941_create_clientes_table',1),(4,'2016_11_13_222334_create_riesgos_table',1),(5,'2016_11_13_222632_create_ciudads_table',1),(6,'2016_11_13_222718_create_departamentos_table',1),(7,'2016_11_13_222811_create_afiliacions_table',1),(8,'2016_11_13_222916_create_e_p_s_table',1),(9,'2016_11_13_222950_create_cajas_table',1),(10,'2016_11_13_223058_create_beneficiarios_table',1),(11,'2016_11_13_223138_create_pensions_table',1),(12,'2016_11_13_223228_create_enfermedads_table',1),(13,'2016_11_13_223327_create_estados_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pensions`
--

DROP TABLE IF EXISTS `pensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pensions`
--

LOCK TABLES `pensions` WRITE;
/*!40000 ALTER TABLE `pensions` DISABLE KEYS */;
INSERT INTO `pensions` VALUES (1,'Proteccion','2016-11-15 01:26:02','2016-11-15 01:26:02'),(2,'Porvenir','2016-11-15 01:26:02','2016-11-15 01:26:02'),(3,'Colpensiones','2016-11-15 01:26:02','2016-11-15 01:26:02'),(4,'Colfondos','2016-11-15 01:26:02','2016-11-15 01:26:02'),(5,'OldMutual','2016-11-15 01:26:02','2016-11-15 01:26:02');
/*!40000 ALTER TABLE `pensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riesgos`
--

DROP TABLE IF EXISTS `riesgos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `riesgos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nivel` int(11) NOT NULL,
  `riesgo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riesgos`
--

LOCK TABLES `riesgos` WRITE;
/*!40000 ALTER TABLE `riesgos` DISABLE KEYS */;
INSERT INTO `riesgos` VALUES (1,1,'Personal de oficinas , Vendedores, Zapateros, Servicio Doméstico, Administradores, Amas de Casa.','2016-11-15 00:21:37','2016-11-15 00:21:37'),(2,2,'Billares, Personal de Restaurante, Ferreterías, Confecciones, Labor Agrícola','2016-11-15 00:22:32','2016-11-15 00:22:32'),(3,3,'Cerrajero, Mecánico, Ebanista, Pintores sin Altura, Electricista','2016-11-15 00:23:25','2016-11-15 00:23:25'),(4,4,'Conductores, Ayudantes','2016-11-15 00:23:49','2016-11-15 00:23:49'),(5,5,'Construcción, Químicos, Escoltas, Pintores y personal de Alturas','2016-11-15 00:24:38','2016-11-15 00:24:38');
/*!40000 ALTER TABLE `riesgos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-14 15:40:59
