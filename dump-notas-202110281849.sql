-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: notas
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'musica'),(2,'deportes'),(3,'peliculas'),(4,'comidas'),(5,'compras'),(6,'tareas de playground'),(7,'libros'),(8,'medicos'),(9,'eventos'),(10,'verduleria');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_date` date NOT NULL,
  `modfication_date` date NOT NULL,
  `can_be_deleted` tinyint(4) NOT NULL,
  `user_note` int(11) NOT NULL,
  `note_category` int(11) NOT NULL,
  `description_note` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ac5558aa-e65d-466a-a5d7-5dd4db7a60df` (`user_note`),
  KEY `FK_83b21117-95c4-4a3c-9fe2-9b486a5882de` (`note_category`),
  CONSTRAINT `FK_83b21117-95c4-4a3c-9fe2-9b486a5882de` FOREIGN KEY (`note_category`) REFERENCES `categories` (`id`),
  CONSTRAINT `FK_ac5558aa-e65d-466a-a5d7-5dd4db7a60df` FOREIGN KEY (`user_note`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'2021-10-28','2021-10-28',1,1,1,'escucha el nuevo album de madonna'),(2,'2021-10-28','2021-10-28',0,1,2,'partido de basquet mañana a las 18'),(3,'2021-10-28','2021-10-28',1,7,3,'estreno avatar teatro'),(4,'2021-10-28','2021-10-28',1,2,4,'encargar la comida para el cumple de Julieta'),(5,'2021-10-28','2021-10-28',1,4,5,'ir al supermercado'),(6,'2021-10-28','2021-10-28',1,3,6,'terminar actividades de DB'),(7,'2021-10-28','2021-10-28',1,7,7,'terminar el capitulo 8 de Harry Potter'),(8,'2021-10-28','2021-10-28',1,6,8,'gastroenterologo a las 19'),(9,'2021-10-28','2021-10-28',1,5,9,'jueves despedida Andrea'),(10,'2021-10-28','2021-10-28',1,8,10,'comprar frutas de estacion para el desayuno');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `e_mail` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Carolina','Pitari','cfpitari@gmail.com'),(2,'Lautaro','Melchiori','lauty@gmail.com'),(3,'Maria',' Rufinatti','maria@gmail.com'),(4,'Pedro','Lopez','peter@yahoo.com.ar'),(5,'Florencia','Perez','flor@hotmail.com'),(6,'Julieta','Sanchez','juli@hotmail.com'),(7,'Jorge','Logioco','georgie@gmail.com'),(8,'Marcos','Ramirez','mark@hotmail.com'),(9,'Federico','Eguia','feguia@gmail.com'),(10,'Silvina','Blastein','blastein@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'notas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-28 18:49:58
