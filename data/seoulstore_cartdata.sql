-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: seoulstore
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cartdata`
--

DROP TABLE IF EXISTS `cartdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cartdata` (
  `cartNo` int(11) DEFAULT NULL,
  `cartMemberId` varchar(20) DEFAULT NULL,
  `cartPrdName` varchar(100) DEFAULT NULL,
  `cartBrdName` varchar(100) DEFAULT NULL,
  `cartPrdImage` varchar(20) DEFAULT NULL,
  `cartPrdSale` tinyint(1) DEFAULT NULL,
  `cartBuyPrdPrice` int(11) DEFAULT NULL,
  `cartPrdDiscount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartdata`
--

LOCK TABLES `cartdata` WRITE;
/*!40000 ALTER TABLE `cartdata` DISABLE KEYS */;
INSERT INTO `cartdata` VALUES (1,'ersa56','[기모] GEPPETTO 제페토 크림','꼼파뇨','img/prdImg02.jpeg',1,72000,45),(2,'ersa56','[민니 착용] COLLAR STRIPE BOARDER KNIT···','로라로라','img/prdImg04.jpeg',1,79000,15),(3,'ersa56','[단독]퀼팅 퍼 카라 숏패딩 자켓 (2칼라)','오오엠엘','img/prdImg08.jpeg',1,139800,57),(4,'qwer','[기모] GEPPETTO 제페토 크림','꼼파뇨','img/prdImg02.jpeg',1,72000,45);
/*!40000 ALTER TABLE `cartdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-26 17:09:13
