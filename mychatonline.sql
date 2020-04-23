-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: mychatonline
-- ------------------------------------------------------
-- Server version	5.7.28-log

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
-- Table structure for table `listfriend`
--

DROP TABLE IF EXISTS `listfriend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listfriend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yourname` varchar(200) NOT NULL,
  `yourfreind` varchar(50) NOT NULL,
  `acceptstatus` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listfriend`
--

LOCK TABLES `listfriend` WRITE;
/*!40000 ALTER TABLE `listfriend` DISABLE KEYS */;
/*!40000 ALTER TABLE `listfriend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listjoinroom`
--

DROP TABLE IF EXISTS `listjoinroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listjoinroom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member` varchar(50) NOT NULL,
  `nameroom` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listjoinroom`
--

LOCK TABLES `listjoinroom` WRITE;
/*!40000 ALTER TABLE `listjoinroom` DISABLE KEYS */;
/*!40000 ALTER TABLE `listjoinroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `socketID` varchar(100) DEFAULT NULL,
  `avartar` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (6,'quanghai','827ccb0eea8a706c4c34a16891f84e7b','FmiItuPm4qTzdxc0AAAD','http://res.cloudinary.com/dw1daewzm/image/upload/v1587379263/qgc5ivdhhumkrem0w8lz.jpg'),(7,'haimtp','827ccb0eea8a706c4c34a16891f84e7b','8w_YdkwSvBVyQqHmAAAA',NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromUser` varchar(50) NOT NULL,
  `toUser` varchar(50) NOT NULL,
  `mess` text,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (138,'quanghai','haimtp','m','2020-04-10 06:41:11'),(139,'quanghai','haimtp','h','2020-04-11 07:19:18'),(140,'quanghai','haimtp','h','2020-04-11 07:19:25'),(141,'quanghai','haimtp','h','2020-04-11 07:19:26'),(142,'quanghai','haimtp','h','2020-04-11 07:19:27'),(143,'quanghai','haimtp','h','2020-04-11 07:19:27'),(144,'quanghai','haimtp','h','2020-04-11 07:19:27'),(145,'quanghai','haimtp','h','2020-04-11 07:19:28'),(146,'quanghai','haimtp','h','2020-04-11 07:19:28'),(147,'quanghai','haimtp','h','2020-04-11 07:19:29'),(148,'quanghai','haimtp','h','2020-04-11 07:19:30'),(149,'quanghai','haimtp','h','2020-04-11 07:19:30'),(150,'quanghai','haimtp','h','2020-04-11 07:19:31'),(151,'quanghai','haimtp','h','2020-04-11 07:19:31'),(152,'quanghai','haimtp','h','2020-04-11 07:19:31'),(153,'quanghai','haimtp','h','2020-04-11 07:19:32'),(154,'quanghai','haimtp','h','2020-04-11 07:19:32'),(155,'quanghai','haimtp','h','2020-04-11 07:19:32'),(156,'quanghai','haimtp','h','2020-04-11 07:19:33'),(157,'quanghai','haimtp','h','2020-04-11 07:19:33'),(158,'quanghai','haimtp','h','2020-04-11 07:19:33'),(159,'quanghai','haimtp','h','2020-04-11 07:19:34'),(160,'quanghai','haimtp','h','2020-04-11 07:19:34'),(161,'quanghai','haimtp','h','2020-04-11 07:19:34'),(162,'quanghai','haimtp','h','2020-04-11 07:19:35'),(163,'quanghai','haimtp','h','2020-04-11 07:19:35'),(164,'quanghai','haimtp','h','2020-04-11 07:19:35'),(165,'quanghai','haimtp','h','2020-04-11 07:19:36'),(166,'quanghai','haimtp','h','2020-04-11 07:19:36'),(167,'quanghai','haimtp','h','2020-04-11 07:19:36'),(168,'quanghai','haimtp','h','2020-04-11 07:19:37'),(169,'quanghai','haimtp','h','2020-04-11 07:19:37'),(170,'quanghai','haimtp','h','2020-04-11 07:19:38'),(171,'quanghai','haimtp','h','2020-04-11 07:19:38'),(172,'quanghai','haimtp','h','2020-04-11 07:19:38'),(173,'quanghai','haimtp','h','2020-04-11 07:19:39'),(174,'quanghai','haimtp','h','2020-04-11 07:19:39'),(175,'quanghai','haimtp','h','2020-04-11 07:19:39'),(176,'quanghai','haimtp','h','2020-04-11 07:19:39'),(177,'quanghai','haimtp','h','2020-04-11 07:19:40'),(178,'quanghai','haimtp','h','2020-04-11 07:19:40'),(179,'quanghai','haimtp','h','2020-04-11 07:19:40'),(180,'quanghai','haimtp','h','2020-04-11 07:19:41'),(181,'quanghai','haimtp','h','2020-04-11 07:19:41'),(182,'quanghai','haimtp','h','2020-04-11 07:19:41'),(183,'quanghai','haimtp','h','2020-04-11 07:19:42'),(184,'quanghai','haimtp','h','2020-04-11 07:19:42'),(185,'quanghai','haimtp','h','2020-04-11 07:19:42'),(186,'quanghai','haimtp','h','2020-04-11 07:19:43'),(187,'quanghai','haimtp','h','2020-04-11 07:19:43'),(188,'quanghai','haimtp','h','2020-04-11 07:19:43'),(189,'quanghai','haimtp','h','2020-04-11 07:19:44'),(190,'quanghai','haimtp','h','2020-04-11 07:19:44'),(191,'quanghai','haimtp','h','2020-04-11 07:19:44'),(192,'quanghai','haimtp','h','2020-04-11 07:19:45'),(193,'quanghai','haimtp','h','2020-04-11 07:19:45'),(194,'quanghai','haimtp','h','2020-04-11 07:19:45'),(195,'quanghai','haimtp','h','2020-04-11 07:19:45'),(196,'quanghai','haimtp','h','2020-04-11 07:19:46'),(197,'quanghai','haimtp','h','2020-04-11 07:19:46'),(198,'quanghai','haimtp','h','2020-04-11 07:19:46'),(199,'quanghai','haimtp','h','2020-04-11 07:19:47'),(200,'haimtp','quanghai','g','2020-04-11 08:25:01'),(201,'haimtp','quanghai','d','2020-04-11 08:25:02');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameroom` varchar(200) NOT NULL,
  `adminroom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-23 20:14:38
