-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mudapp2
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `commodities` varchar(45) NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `origin` varchar(45) NOT NULL,
  `destination` varchar(45) NOT NULL,
  `fare` int NOT NULL,
  `userId` varchar(45) NOT NULL,
  `provider_providerId` varchar(45) NOT NULL,
  `orderId` varchar(45) NOT NULL,
  PRIMARY KEY (`orderId`),
  KEY `fk_ticket_provider1_idx` (`provider_providerId`),
  KEY `fk_ticket_user` (`userId`),
  CONSTRAINT `fk_ticket_provider1` FOREIGN KEY (`provider_providerId`) REFERENCES `provider` (`providerId`),
  CONSTRAINT `fk_ticket_user` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES ('Whole Flat','2024-01-19 00:00:00.000000','Barceloneta','Raval',320,'ernesto.vlc','rgarcia','515178'),('Whole Flat','2024-01-20 00:00:00.000000','Barceloneta','Sant Andreu',450,'jaumecf','rgarcia','515179'),('Whole Room','2024-01-20 00:00:00.000000','Bogatell','Sarria',120,'mdvfz','rgarcia','515180'),('Whole Room','2024-01-13 00:00:00.000000','Sants','Poble Nou',100,'taniam','rgarcia','515181');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-15 15:53:02
