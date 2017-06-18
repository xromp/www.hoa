-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: hoa
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `collection_line`
--

DROP TABLE IF EXISTS `collection_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_line` (
  `collection_lineid` int(11) NOT NULL AUTO_INCREMENT,
  `collectionid` int(11) NOT NULL,
  `entityvalue1` varchar(60) DEFAULT NULL,
  `entityvalue2` varchar(60) DEFAULT NULL,
  `entityvalue3` varchar(60) DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`collection_lineid`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_line`
--

LOCK TABLES `collection_line` WRITE;
/*!40000 ALTER TABLE `collection_line` DISABLE KEYS */;
INSERT INTO `collection_line` VALUES (1,12,'12',NULL,NULL,'2017-06-09 01:57:19','2017-06-09 01:57:19'),(2,13,'12',NULL,NULL,'2017-06-09 02:08:51','2017-06-09 02:08:51'),(3,14,'12',NULL,NULL,'2017-06-09 02:11:41','2017-06-09 02:11:41'),(4,17,'JAN',NULL,NULL,'2017-06-09 02:42:37','2017-06-09 02:42:37'),(5,19,'JAN',NULL,NULL,'2017-06-09 02:48:13','2017-06-09 02:48:13'),(6,19,'FEB',NULL,NULL,'2017-06-09 02:48:14','2017-06-09 02:48:14'),(7,19,'MAR',NULL,NULL,'2017-06-09 02:48:14','2017-06-09 02:48:14'),(8,19,'APR',NULL,NULL,'2017-06-09 02:48:14','2017-06-09 02:48:14'),(9,21,'JAN','2017',NULL,'2017-06-09 02:49:06','2017-06-09 02:49:06'),(10,21,'FEB','2017',NULL,'2017-06-09 02:49:06','2017-06-09 02:49:06'),(11,21,'MAR','2017',NULL,'2017-06-09 02:49:06','2017-06-09 02:49:06'),(12,21,'APR','2017',NULL,'2017-06-09 02:49:06','2017-06-09 02:49:06'),(13,25,'JAN','2017',NULL,'2017-06-09 03:09:05','2017-06-09 03:09:05'),(14,25,'FEB','2017',NULL,'2017-06-09 03:09:05','2017-06-09 03:09:05'),(15,25,'MAR','2017',NULL,'2017-06-09 03:09:05','2017-06-09 03:09:05'),(16,25,'APR','2017',NULL,'2017-06-09 03:09:05','2017-06-09 03:09:05'),(17,26,'201','WEV-001',NULL,'2017-06-09 03:09:58','2017-06-09 03:09:58'),(18,26,'FEB','2017',NULL,'2017-06-09 03:09:58','2017-06-09 03:09:58'),(19,26,'MAR','2017',NULL,'2017-06-09 03:09:58','2017-06-09 03:09:58'),(20,26,'APR','2017',NULL,'2017-06-09 03:09:59','2017-06-09 03:09:59'),(21,31,'201','WEV-001',NULL,'2017-06-09 03:41:37','2017-06-09 03:41:37'),(22,31,'FEB','2017',NULL,'2017-06-09 03:41:37','2017-06-09 03:41:37'),(23,31,'MAR','2017',NULL,'2017-06-09 03:41:37','2017-06-09 03:41:37'),(24,31,'APR','2017',NULL,'2017-06-09 03:41:37','2017-06-09 03:41:37'),(26,33,'201','WEV-001',NULL,'2017-06-09 03:42:37','2017-06-09 03:42:37'),(27,33,'FEB','2017',NULL,'2017-06-09 03:42:37','2017-06-09 03:42:37'),(28,33,'MAR','2017',NULL,'2017-06-09 03:42:37','2017-06-09 03:42:37'),(29,33,'APR','2017',NULL,'2017-06-09 03:42:37','2017-06-09 03:42:37'),(30,34,'JAN','2017',NULL,'2017-06-09 04:44:50','2017-06-09 04:44:50'),(31,34,'FEB','2017',NULL,'2017-06-09 04:44:50','2017-06-09 04:44:50'),(32,34,'MAR','2017',NULL,'2017-06-09 04:44:50','2017-06-09 04:44:50'),(33,34,'APR','2017',NULL,'2017-06-09 04:44:50','2017-06-09 04:44:50'),(34,35,'JAN','2017',NULL,'2017-06-09 06:18:27','2017-06-09 06:18:27'),(35,35,'FEB','2017',NULL,'2017-06-09 06:18:27','2017-06-09 06:18:27'),(36,35,'MAR','2017',NULL,'2017-06-09 06:18:27','2017-06-09 06:18:27'),(37,35,'APR','2017',NULL,'2017-06-09 06:18:27','2017-06-09 06:18:27'),(38,36,'JAN','2017',NULL,'2017-06-09 06:21:47','2017-06-09 06:21:47'),(39,36,'FEB','2017',NULL,'2017-06-09 06:21:47','2017-06-09 06:21:47'),(40,36,'MAR','2017',NULL,'2017-06-09 06:21:47','2017-06-09 06:21:47'),(41,36,'APR','2017',NULL,'2017-06-09 06:21:47','2017-06-09 06:21:47'),(42,37,'JAN','2017',NULL,'2017-06-09 06:27:03','2017-06-09 06:27:03'),(43,37,'FEB','2017',NULL,'2017-06-09 06:27:03','2017-06-09 06:27:03'),(44,37,'MAR','2017',NULL,'2017-06-09 06:27:03','2017-06-09 06:27:03'),(45,37,'APR','2017',NULL,'2017-06-09 06:27:03','2017-06-09 06:27:03'),(46,38,'JAN','2017',NULL,'2017-06-09 06:29:24','2017-06-09 06:29:24'),(47,38,'FEB','2017',NULL,'2017-06-09 06:29:24','2017-06-09 06:29:24'),(48,38,'MAR','2017',NULL,'2017-06-09 06:29:24','2017-06-09 06:29:24'),(49,38,'APR','2017',NULL,'2017-06-09 06:29:24','2017-06-09 06:29:24'),(50,41,'JAN','2017',NULL,'2017-06-09 18:36:26','2017-06-09 18:36:26'),(51,42,'JAN','2017',NULL,'2017-06-12 05:49:25','2017-06-12 05:49:25'),(52,46,'S-120','WEI-100',NULL,'2017-06-12 11:47:53','2017-06-12 11:47:53'),(53,47,'100','S-100',NULL,'2017-06-13 09:11:09','2017-06-13 09:11:09'),(54,48,NULL,NULL,NULL,'2017-06-13 11:11:58','2017-06-13 11:11:58'),(55,48,NULL,NULL,NULL,'2017-06-13 11:11:58','2017-06-13 11:11:58'),(56,49,'JAN','2017',NULL,'2017-06-13 17:19:35','2017-06-13 17:19:35'),(57,49,'FEB','2017',NULL,'2017-06-13 17:19:35','2017-06-13 17:19:35'),(58,50,'JAN','2017',NULL,'2017-06-14 07:22:37','2017-06-14 07:22:37'),(59,51,NULL,NULL,NULL,'2017-06-15 06:30:32','2017-06-15 06:30:32'),(60,52,'001','WED-000',NULL,'2017-06-15 10:07:31','2017-06-15 10:07:31'),(61,52,'002','WED-001',NULL,'2017-06-15 10:07:31','2017-06-15 10:07:31'),(62,53,'S-120','FEU-900',NULL,'2017-06-15 10:37:45','2017-06-15 10:37:45'),(63,54,'JAN','2017',NULL,'2017-06-15 10:54:15','2017-06-15 10:54:15'),(64,54,'FEB','2017',NULL,'2017-06-15 10:54:15','2017-06-15 10:54:15'),(65,54,'MAR','2017',NULL,'2017-06-15 10:54:15','2017-06-15 10:54:15'),(66,55,'JAN','2017',NULL,'2017-06-16 20:26:17','2017-06-16 20:26:17'),(67,56,'JAN','2017',NULL,'2017-06-16 20:26:37','2017-06-16 20:26:37'),(68,57,NULL,NULL,NULL,'2017-06-16 20:26:49','2017-06-16 20:26:49'),(69,58,NULL,NULL,NULL,'2017-06-16 20:26:55','2017-06-16 20:26:55'),(70,59,NULL,NULL,NULL,'2017-06-16 20:27:02','2017-06-16 20:27:02'),(71,60,NULL,NULL,NULL,'2017-06-16 20:27:07','2017-06-16 20:27:07'),(72,61,NULL,NULL,NULL,'2017-06-16 20:27:13','2017-06-16 20:27:13'),(73,62,NULL,NULL,NULL,'2017-06-16 20:27:18','2017-06-16 20:27:18'),(74,63,NULL,NULL,NULL,'2017-06-16 20:27:24','2017-06-16 20:27:24'),(75,64,NULL,NULL,NULL,'2017-06-16 20:27:29','2017-06-16 20:27:29'),(76,65,NULL,NULL,NULL,'2017-06-17 02:12:49','2017-06-17 02:12:49'),(77,66,'JAN','2017',NULL,'2017-06-17 03:32:57','2017-06-17 03:32:57'),(78,67,NULL,NULL,NULL,'2017-06-17 07:02:37','2017-06-17 07:02:37');
/*!40000 ALTER TABLE `collection_line` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-17 19:29:42