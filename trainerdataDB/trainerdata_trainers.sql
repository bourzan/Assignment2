CREATE DATABASE  IF NOT EXISTS `trainerdata` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trainerdata`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: trainerdata
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainers` (
  `trainerid` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`trainerid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainers`
--

LOCK TABLES `trainers` WRITE;
/*!40000 ALTER TABLE `trainers` DISABLE KEYS */;
INSERT INTO `trainers` VALUES (1,'Tasos','Alexiadis','c#'),(2,'Iasonas','Valiades','python'),(3,'Apostolis','Vlahides','java'),(4,'Sophocles','Kontiades','python'),(5,'Vassilios','Kalliades','python'),(6,'Tolis','Teresilis','java'),(7,'LEfteris','Rubatos','java'),(8,'Pericles','Calidis','python'),(9,'Adonis','Mitratos','c#'),(10,'Tryfon','Barberiadis','c#'),(11,'Orestiada','Vasilopoulou','python'),(12,'Emilia','Stamopoulou','python'),(13,'Electra','Barouli','c#'),(14,'Kyveli','Gerotzi','c#'),(15,'Paraskevoula','Traina','java'),(16,'Gianna','Arvanitide','java'),(17,'Stavroula','Managiadi','java'),(18,'Argiro','Gianniadi','java'),(19,'Efthalia','Tripea','python'),(20,'Meropi','Xenoti','c#'),(21,'Iakovos','Sotirotis','python'),(22,'Venizelos','Katsaroulis','python'),(23,'Iosif','Milatos','c#'),(24,'Aristarchos','Kostides','java'),(25,'Demetrios','Andretis','python'),(26,'Theofylaktos','Antonallis','c#'),(27,'Ilias','Nicoliadis','java'),(28,'Anastasios','Artinallis','python'),(29,'Stamatios','Andreadas','c#'),(30,'Kyriakos','Cosmoglou','python');
/*!40000 ALTER TABLE `trainers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-04 22:15:00
