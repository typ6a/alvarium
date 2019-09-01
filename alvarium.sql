-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: alvarium
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.19.04.1

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
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'PHP'),(2,'Web Development'),(3,'Design'),(4,'Hr'),(5,'Booking'),(6,'Frontend');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_department`
--

DROP TABLE IF EXISTS `employee_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_department` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `employee_id` int(4) DEFAULT NULL,
  `department_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_department`
--

LOCK TABLES `employee_department` WRITE;
/*!40000 ALTER TABLE `employee_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `fathername` varchar(50) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(2,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(3,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(4,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(5,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(6,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(7,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(8,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(9,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(10,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(11,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(12,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(13,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(14,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(15,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(16,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(17,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(18,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(19,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(20,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(21,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(22,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(23,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(24,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(25,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(26,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(27,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(28,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(29,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(30,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(31,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(32,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(33,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(34,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(35,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(36,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(37,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(38,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(39,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(40,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(41,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(42,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(43,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(44,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(45,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(46,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(47,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(48,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(49,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(50,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(51,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(52,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(53,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(54,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(55,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(56,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(57,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(58,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(59,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(60,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(61,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(62,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(63,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(64,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(65,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(66,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(67,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(68,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(69,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(70,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(71,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(72,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(73,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(74,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(75,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(76,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(77,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(78,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(79,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(80,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(81,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(82,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(83,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(84,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(85,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(86,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(87,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(88,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(89,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(90,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(91,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(92,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(93,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(94,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(95,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(96,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(97,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(98,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(99,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(100,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(101,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(102,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(103,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(104,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(105,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(106,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(107,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(108,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(109,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(110,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(111,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(112,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(113,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(114,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(115,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(116,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(117,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(118,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(119,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(120,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(121,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(122,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(123,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(124,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(125,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(126,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(127,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(128,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(129,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(130,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(131,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(132,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(133,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(134,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(135,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(136,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(137,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(138,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(139,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(140,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(141,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(142,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(143,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(144,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(145,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(146,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(147,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(148,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(149,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(150,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20),(151,'Tom','Cruise','Johnovich','28.10.1980','Programmer','Php','hourly',10.1),(152,'Silvester','Stallone','','15.01.1970','Junior web developer','Web development','monthly',1000),(153,'John','Rambo','Ivanovich','3 june 1969','Senior html developer','Web development','hourly',20);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-02  2:49:14
