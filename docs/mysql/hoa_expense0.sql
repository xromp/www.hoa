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
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense` (
  `expenseid` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(25) DEFAULT NULL,
  `orno` varchar(25) DEFAULT NULL,
  `pcv` int(10) NOT NULL,
  `ordate` date DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `establishment` varchar(250) DEFAULT NULL,
  `posted` bit(1) DEFAULT b'0',
  `deleted` bit(1) DEFAULT b'0',
  `remarks` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  PRIMARY KEY (`expenseid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
INSERT INTO `expense` VALUES (1,'UTILITIES','1',0,'2017-01-01',125.00,NULL,'','\0','remarks','2017-06-14 00:00:00','2017-06-14 14:17:51',1),(3,'CARSTICKER','2',0,'2017-06-03',100.00,NULL,'','\0',NULL,'2017-06-15 04:05:35','2017-06-15 04:05:35',NULL),(4,'CARSTICKER','3',0,'2017-06-01',500.00,NULL,'','',NULL,'2017-06-15 04:06:11','2017-06-15 04:06:11',NULL),(5,'GASOLINE','14',0,'2017-06-22',0.00,NULL,'','\0','1','2017-06-15 05:24:59','2017-06-15 05:24:59',NULL),(6,'UTILITIES','5',0,'2017-06-16',55.00,NULL,'','','This Remarks','2017-06-15 05:26:43','2017-06-15 05:26:43',NULL),(7,'UTILITIES','7',0,'2017-06-15',75.00,NULL,'','\0','This for water','2017-06-15 05:30:15','2017-06-15 05:30:15',NULL),(8,'UTILITIES','OR-001',0,'2017-06-15',100.00,NULL,'','\0','Office Expense','2017-06-15 10:09:55','2017-06-15 10:09:55',NULL),(9,'UTILITIES','OR-002',0,'2017-06-15',1000.00,NULL,'','\0','FOR WATER','2017-06-15 10:15:40','2017-06-15 10:15:40',NULL),(10,'GASOLINE','OR-003',0,'2017-06-15',100.00,NULL,'','\0','Roving','2017-06-15 10:17:35','2017-06-15 10:17:35',NULL),(11,'UTILITIES','3',0,'2017-06-17',1.00,'Meralco','','\0','This for expense','2017-06-16 20:59:24','2017-06-16 20:59:24',NULL),(18,'UTILITIES','4',1,'2017-06-17',1.00,'r','','\0',NULL,'2017-06-16 21:20:08','2017-06-16 21:20:08',NULL),(19,'UTILITIES','11',2,'2017-06-17',1.00,'1','','\0','s','2017-06-16 21:20:35','2017-06-16 21:20:35',NULL),(20,'UTILITIES','12',3,'2017-06-17',12.00,'1','','\0',NULL,'2017-06-16 21:22:00','2017-06-16 21:22:00',NULL),(21,'UTILITIES','5',4,'2017-06-17',1.00,'1','','\0',NULL,'2017-06-16 21:22:28','2017-06-16 21:22:28',NULL),(22,'UTILITIES','13',5,'2017-06-17',2.00,'q','','\0',NULL,'2017-06-16 21:24:32','2017-06-16 21:24:32',NULL),(23,'UTILITIES','5000',6,'2017-06-17',100.00,'Meralco','\0','','Sample','2017-06-17 01:49:53','2017-06-17 01:49:53',NULL);
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-17 19:29:43