-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: finalprojectworkspace
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `LocationID` int NOT NULL AUTO_INCREMENT,
  `Address` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Zipcode` int DEFAULT NULL,
  PRIMARY KEY (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'5225 Pearl Dr','IN',47715),(2,'1999 6th Street','IN',47715),(3,'2881 Mountain Ln','IN',47701),(4,'5600 E Virginia St','IN',47715),(5,'5310 Pearl Dr B','IN',47711),(6,'123 Elm St','IN',47716),(7,'456 Oak Ave','IN',47721),(8,'789 Pine Rd','IN',47725),(9,'101 Apple Blvd','IN',47701),(10,'202 Cherry Ln','IN',47725),(11,'303 Peach St','IN',47706),(12,'404 Berry St','IN',47704),(13,'505 Plum Pl','IN',47714),(14,'606 Lemon Ln','IN',47711),(15,'707 Orange Ave','IN',47711),(16,'808 Pear Pkwy','IN',47715),(17,'909 Willow Ln','IN',47715),(18,'1010 Grape St','IN',47715),(19,'1111 Alder Ave','IN',47715),(20,'1212 Beach St','IN',47708),(21,'1313 Fir Dr','IN',47721),(22,'1414 Spruce St','IN',47725),(23,'1515 Hemlock Pl','IN',47728),(24,'1616 Sequoia Ln','IN',47737),(25,'1717 Magnolia St','IN',47747),(26,'1818 Dogwood Ave','IN',47750),(27,'1919 Hawthorn Dr','IN',47715),(28,'2020 Juniper Rd','IN',47715),(29,'2121 Yew Blvd','IN',47722),(30,'2222 Holly St','IN',47725),(31,'2323 Redwood Ave','IN',47730),(32,'2424 Sycamore Pkwy','IN',47734),(33,'2525 Chestnut St','IN',47706);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-30  9:16:29
