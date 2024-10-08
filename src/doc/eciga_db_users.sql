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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `uno` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hp` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birth` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` int DEFAULT NULL,
  `status` int DEFAULT '1',
  PRIMARY KEY (`uno`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'555','555','5555','010-5555-5555','서울시 서초구5','19950505',0,1),(3,'111','111','1111','010-1111-1111','서울시 서초구','19900909',0,1),(4,'222','222','2222','010-2222-2222','서울시 서초구2','19920202',1,1),(5,'333','333','3333','010-3333-3333','서울시 서초구3','19930303',0,1),(6,'444','444','4444','010-4444-4444','서울시 서초구4','19940404',1,1),(7,'admin1','adminpass','관리자','010-0000-0000','서울시 서초구','1980-01-01',0,1),(8,'user1','password1','홍길동1','010-1234-1001','서울시 서초구','1990-01-01',1,1),(9,'user2','password2','홍길동2','010-1234-1002','서울시 서초구','1990-01-02',1,1),(10,'user3','password3','홍길동3','010-1234-1003','서울시 서초구','1990-01-03',1,1),(11,'user4','password4','홍길동4','010-1234-1004','서울시 서초구','1990-01-04',1,1),(12,'user5','password5','홍길동5','010-1234-1005','서울시 서초구','1990-01-05',1,1),(13,'user6','password6','홍길동6','010-1234-1006','서울시 서초구','1990-01-06',1,1),(14,'user7','password7','홍길동7','010-1234-1007','서울시 서초구','1990-01-07',1,1),(15,'user8','password8','홍길동8','010-1234-1008','서울시 서초구','1990-01-08',1,1),(16,'user9','password9','홍길동9','010-1234-1009','서울시 서초구','1990-01-09',1,1),(17,'user10','password10','홍길동10','010-1234-1010','서울시 서초구','1990-01-10',1,1),(18,'user11','password11','홍길동11','010-1234-1011','서울시 서초구','1990-01-11',1,1),(19,'user12','password12','홍길동12','010-1234-1012','서울시 서초구','1990-01-12',1,1),(20,'user13','password13','홍길동13','010-1234-1013','서울시 서초구','1990-01-13',1,1),(21,'user14','password14','홍길동14','010-1234-1014','서울시 서초구','1990-01-14',1,1),(22,'user15','password15','홍길동15','010-1234-1015','서울시 서초구','1990-01-15',1,1),(23,'user16','password16','홍길동16','010-1234-1016','서울시 서초구','1990-01-16',1,1),(24,'user17','password17','홍길동17','010-1234-1017','서울시 서초구','1990-01-17',1,1),(25,'user18','password18','홍길동18','010-1234-1018','서울시 서초구','1990-01-18',1,1),(26,'user19','password19','홍길동19','010-1234-1019','서울시 서초구','1990-01-19',1,1),(27,'user20','password20','홍길동20','010-1234-1020','서울시 서초구','1990-01-20',1,1),(28,'user21','password21','홍길동21','010-1234-1021','서울시 서초구','1990-01-21',1,1),(29,'user22','password22','홍길동22','010-1234-1022','서울시 서초구','1990-01-22',1,1),(30,'user23','password23','홍길동23','010-1234-1023','서울시 서초구','1990-01-23',1,1),(31,'user24','password24','홍길동24','010-1234-1024','서울시 서초구','1990-01-24',1,1),(32,'user25','password25','홍길동25','010-1234-1025','서울시 서초구','1990-01-25',1,1),(33,'user26','password26','홍길동26','010-1234-1026','서울시 서초구','1990-01-26',1,1),(34,'user27','password27','홍길동27','010-1234-1027','서울시 서초구','1990-01-27',1,1),(35,'user28','password28','홍길동28','010-1234-1028','서울시 서초구','1990-01-28',1,1),(36,'user29','password29','홍길동29','010-1234-1029','서울시 서초구','1990-01-29',1,1),(37,'user30','password30','홍길동30','010-1234-1030','서울시 서초구','1990-01-30',1,1),(38,'user31','password31','홍길동31','010-1234-1031','서울시 서초구','1990-01-31',1,1),(39,'user32','password32','홍길동32','010-1234-1032','서울시 서초구','1990-02-01',1,1),(40,'user33','password33','홍길동33','010-1234-1033','서울시 서초구','1990-02-02',1,1),(41,'user34','password34','홍길동34','010-1234-1034','서울시 서초구','1990-02-03',1,1),(42,'user35','password35','홍길동35','010-1234-1035','서울시 서초구','1990-02-04',1,1),(43,'user36','password36','홍길동36','010-1234-1036','서울시 서초구','1990-02-05',1,1),(44,'user37','password37','홍길동37','010-1234-1037','서울시 서초구','1990-02-06',1,1),(45,'user38','password38','홍길동38','010-1234-1038','서울시 서초구','1990-02-07',1,1),(46,'user39','password39','홍길동39','010-1234-1039','서울시 서초구','1990-02-08',1,1),(47,'user40','password40','홍길동40','010-1234-1040','서울시 서초구','1990-02-09',1,1),(48,'user41','password41','홍길동41','010-1234-1041','서울시 서초구','1990-02-10',1,1),(49,'user42','password42','홍길동42','010-1234-1042','서울시 서초구','1990-02-11',1,1),(50,'user43','password43','홍길동43','010-1234-1043','서울시 서초구','1990-02-12',1,1),(51,'user44','password44','홍길동44','010-1234-1044','서울시 서초구','1990-02-13',1,1),(52,'user45','password45','홍길동45','010-1234-1045','서울시 서초구','1990-02-14',1,1),(53,'user46','password46','홍길동46','010-1234-1046','서울시 서초구','1990-02-15',1,1),(54,'user47','password47','홍길동47','010-1234-1047','서울시 서초구','1990-02-16',1,1),(55,'user48','password48','홍길동48','010-1234-1048','서울시 서초구','1990-02-17',1,1),(56,'user49','password49','홍길동49','010-1234-1049','서울시 서초구','1990-02-18',1,1),(57,'user50','password50','홍길동50','010-1234-1050','서울시 서초구','1990-02-19',1,1),(58,'user51','password51','홍길동51','010-1234-1051','서울시 서초구','1990-02-20',1,1),(59,'user52','password52','홍길동52','010-1234-1052','서울시 서초구','1990-02-21',1,1),(60,'user53','password53','홍길동53','010-1234-1053','서울시 서초구','1990-02-22',1,1),(61,'user54','password54','홍길동54','010-1234-1054','서울시 서초구','1990-02-23',1,1),(62,'user55','password55','홍길동55','010-1234-1055','서울시 서초구','1990-02-24',1,1),(63,'user56','password56','홍길동56','010-1234-1056','서울시 서초구','1990-02-25',1,1),(64,'user57','password57','홍길동57','010-1234-1057','서울시 서초구','1990-02-26',1,1),(65,'user58','password58','홍길동58','010-1234-1058','서울시 서초구','1990-02-27',1,1),(66,'user59','password59','홍길동59','010-1234-1059','서울시 서초구','1990-02-28',1,1),(67,'user60','password60','홍길동60','010-1234-1060','서울시 서초구','1990-03-01',1,1),(68,'user61','password61','홍길동61','010-1234-1061','서울시 서초구','1990-03-02',1,1),(69,'user62','password62','홍길동62','010-1234-1062','서울시 서초구','1990-03-03',1,1),(70,'user63','password63','홍길동63','010-1234-1063','서울시 서초구','1990-03-04',1,1),(71,'user64','password64','홍길동64','010-1234-1064','서울시 서초구','1990-03-05',1,1),(72,'user65','password65','홍길동65','010-1234-1065','서울시 서초구','1990-03-06',1,1),(73,'user66','password66','홍길동66','010-1234-1066','서울시 서초구','1990-03-07',1,1),(74,'user67','password67','홍길동67','010-1234-1067','서울시 서초구','1990-03-08',1,1),(75,'user68','password68','홍길동68','010-1234-1068','서울시 서초구','1990-03-09',1,1),(76,'user69','password69','홍길동69','010-1234-1069','서울시 서초구','1990-03-10',1,1),(77,'user70','password70','홍길동70','010-1234-1070','서울시 서초구','1990-03-11',1,1),(78,'user71','password71','홍길동71','010-1234-1071','서울시 서초구','1990-03-12',1,1),(79,'user72','password72','홍길동72','010-1234-1072','서울시 서초구','1990-03-13',1,1),(80,'user73','password73','홍길동73','010-1234-1073','서울시 서초구','1990-03-14',1,1),(81,'user74','password74','홍길동74','010-1234-1074','서울시 서초구','1990-03-15',1,1),(82,'user75','password75','홍길동75','010-1234-1075','서울시 서초구','1990-03-16',1,1),(83,'user76','password76','홍길동76','010-1234-1076','서울시 서초구','1990-03-17',1,1),(84,'user77','password77','홍길동77','010-1234-1077','서울시 서초구','1990-03-18',1,1),(85,'user78','password78','홍길동78','010-1234-1078','서울시 서초구','1990-03-19',1,1),(86,'user79','password79','홍길동79','010-1234-1079','서울시 서초구','1990-03-20',1,1),(87,'user80','password80','홍길동80','010-1234-1080','서울시 서초구','1990-03-21',1,1),(88,'user81','password81','홍길동81','010-1234-1081','서울시 서초구','1990-03-22',1,1),(89,'user82','password82','홍길동82','010-1234-1082','서울시 서초구','1990-03-23',1,1),(90,'user83','password83','홍길동83','010-1234-1083','서울시 서초구','1990-03-24',1,1),(91,'user84','password84','홍길동84','010-1234-1084','서울시 서초구','1990-03-25',1,1),(92,'user85','password85','홍길동85','010-1234-1085','서울시 서초구','1990-03-26',1,1),(93,'user86','password86','홍길동86','010-1234-1086','서울시 서초구','1990-03-27',1,1),(94,'user87','password87','홍길동87','010-1234-1087','서울시 서초구','1990-03-28',1,1),(95,'user88','password88','홍길동88','010-1234-1088','서울시 서초구','1990-03-29',1,1),(96,'user89','password89','홍길동89','010-1234-1089','서울시 서초구','1990-03-30',1,1),(97,'user90','password90','홍길동90','010-1234-1090','서울시 서초구','1990-03-31',1,1),(98,'user91','password91','홍길동91','010-1234-1091','서울시 서초구','1990-04-01',1,2),(99,'user92','password92','홍길동92','010-1234-1092','서울시 서초구','1990-04-02',1,2),(100,'user93','password93','홍길동93','010-1234-1093','서울시 서초구','1990-04-03',1,2),(101,'user94','password94','홍길동94','010-1234-1094','서울시 서초구','1990-04-04',1,3),(102,'user95','password95','홍길동95','010-1234-1095','서울시 서초구','1990-04-05',1,3),(103,'user96','password96','홍길동96','010-1234-1096','서울시 서초구','1990-04-06',1,3),(104,'user97','password97','홍길동97','010-1234-1097','서울시 서초구','1990-04-07',1,3),(105,'user98','password98','홍길동98','010-1234-1098','서울시 서초구','1990-04-08',1,0),(106,'user99','password99','홍길동99','010-1234-1099','서울시 서초구','1990-04-09',1,0);
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

-- Dump completed on 2024-09-12 17:54:24
