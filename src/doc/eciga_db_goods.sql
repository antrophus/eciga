-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: eciga_db
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `gno` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `descript` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `imgSize` int DEFAULT NULL,
  `imgPath` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `imgName` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`gno`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (26,'하이브리드 3.0 카고 컨테이너 에디션',99000,'비싸구 쿨한 신상 전담',30437,'C:\\javaStudy\\upload\\172595611578280484f54-569b-41e1-a0f5-d695167d3851.jpeg','172595611578280484f54-569b-41e1-a0f5-d695167d3851.jpeg'),(27,'카고담배',99000,'신상품 제 2탄',30437,'C:\\javaStudy\\upload\\1725956192878e1e658bb-b2ab-4e4d-a3f1-8f2498367d37.jpeg','1725956192878e1e658bb-b2ab-4e4d-a3f1-8f2498367d37.jpeg'),(28,'하이브리드 3.0 정열의 레드',99000,'빨강 전담입니다.',51710,'C:\\javaStudy\\upload\\1725956238340af941642-19d8-4e98-93c1-65095dde1adc.jpg','1725956238340af941642-19d8-4e98-93c1-65095dde1adc.jpg'),(29,'카고 3.0 노랑',88000,'귀여운 피카추 색깔 전담',47283,'C:\\javaStudy\\upload\\17259562736237a978842-8404-42d5-b429-f07d95ab06b2.jpg','17259562736237a978842-8404-42d5-b429-f07d95ab06b2.jpg');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-12 17:54:23
