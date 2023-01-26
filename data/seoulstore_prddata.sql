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
-- Table structure for table `prddata`
--

DROP TABLE IF EXISTS `prddata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `prddata` (
  `prd_No` int(11) NOT NULL AUTO_INCREMENT,
  `prd_kind` varchar(20) DEFAULT NULL,
  `brd_name` varchar(20) DEFAULT NULL,
  `prd_name` varchar(40) DEFAULT NULL,
  `prd_price` int(11) DEFAULT NULL,
  `prd_count` int(11) DEFAULT NULL,
  `prd_img` varchar(30) DEFAULT NULL,
  `prd_content` varchar(30) DEFAULT NULL,
  `prd_discount_rate` int(11) DEFAULT NULL,
  `prd_salesCount` int(11) DEFAULT NULL,
  `prd_likesCount` int(11) DEFAULT NULL,
  `prd_new` tinyint(1) DEFAULT NULL,
  `prd_sale` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`prd_No`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prddata`
--

LOCK TABLES `prddata` WRITE;
/*!40000 ALTER TABLE `prddata` DISABLE KEYS */;
INSERT INTO `prddata` VALUES (1,'hat','아노에틱','ANC WOOL TWISTED BUCKET HAT_BLACK',48000,100,'img/prdImg01.jpeg','img/prd_content01.jpg',27,48,1203,0,1),(2,'hoodie','꼼파뇨','[기모] GEPPETTO 제페토 크림',72000,100,'img/prdImg02.jpeg','img/prd_content02.jpg',45,98,20512,0,1),(3,'bag','무르','보네백 (6color)',102000,100,'img/prdImg03.jpeg','img/prd_content03.jpg',35,97,664,0,1),(4,'top','로라로라','[민니 착용] COLLAR STRIPE BOARDER KNIT···',79000,100,'img/prdImg04.jpeg','img/prd_content04.jpg',15,96,5797,0,1),(5,'bag','앨리스마샤','러비 10Colors 미니 셔링백',69000,100,'img/prdImg05.jpeg','img/prd_content05.jpg',15,95,1236,0,1),(6,'pants','판도라핏','[단독판매][WIDE] Maple jeans Black',56000,100,'img/prdImg06.jpeg','img/prd_content06.jpg',25,94,724,0,1),(7,'hoodie','키르시','[단독판매] WITTY BUNNY HOODIE [NAVY]',69000,100,'img/prdImg07.jpeg','img/prd_content07.jpg',5,93,1501,0,1),(8,'outer','오오엠엘','[단독]퀼팅 퍼 카라 숏패딩 자켓 (2칼라)',139800,100,'img/prdImg08.jpeg','img/prd_content08.jpg',57,92,448,0,1),(9,'outer','게스','[수지 착용][POP]여성 레글런 크롭 푸퍼',158000,100,'img/prdImg09.jpeg','img/prd_content09.jpg',40,91,5053,0,1),(10,'outer','콜릿','[NCT 재현, 라붐 해인, CLC예은 착용] WOMEN 오버···',219000,100,'img/prdImg10.jpeg','img/prd_content10.jpg',27,90,22733,0,1),(11,'outer','닉앤니콜','PUFFER HIGH NECK SHORT PADDING_CRE···',199000,100,'img/prdImg11.jpeg','img/prd_content11.jpg',55,89,654,0,1),(12,'outer','파르티멘토 우먼','숏 더플 코트_아이보리',144000,100,'img/prdImg12.jpeg','img/prd_content12.jpg',42,88,520,0,1),(13,'beauty','한율','<오복컬렉션> 한율 달빛유자 2종 세트 + [사은품 증정]',60000,100,'img/prdImg13.jpeg','img/prd_content13.jpg',24,20,4,1,1),(14,'beauty','파파레서피','블레미쉬 효소 파우더 클렌저 [증정:블레미쉬 크림 7ml * ···',18000,100,'img/prdImg14.jpeg','img/prd_content14.jpg',18,20,11,0,1),(15,'beauty','데이지크','데이지크 섀도우 팔레트 1호~16호',34000,100,'img/prdImg15.jpeg','img/prd_content15.jpg',19,86,63,0,1),(16,'beauty','롬앤','[롬앤] NEW 글래스팅 멜팅 밤',13000,100,'img/prdImg16.jpeg','img/prd_content16.jpg',24,85,75,0,1),(17,'outer','아방','Diamond Quilting Long Hood Jumper ···',166000,100,'img/prdImg17.jpeg','img/prd_content17.jpg',30,40,22,1,1),(18,'outer','마나비스세븐','Wool High Neck Toggle Half Coat Iv···',279000,100,'img/prdImg18.jpeg','img/prd_content18.jpg',20,83,8,1,1),(19,'bag','밸럽','[22FW] Landyn bag_Brown',279000,100,'img/prdImg19.jpeg','img/prd_content19.jpg',32,82,6,1,1),(20,'shoes','노스페이스','[해외] 우먼스 노스페이스 써모볼 트랙션 뮬 V 블랙 NF0A···',154900,100,'img/prdImg20.jpeg','img/prd_content20.jpg',45,0,19,1,1);
/*!40000 ALTER TABLE `prddata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-26  0:19:27
