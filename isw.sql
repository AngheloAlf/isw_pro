-- MySQL dump 10.13  Distrib 5.7.18, for macos10.12 (x86_64)
--
-- Host: localhost    Database: isw
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `keword_ticket`
--

DROP TABLE IF EXISTS `keword_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keword_ticket` (
  `id_ticket` int(10) NOT NULL,
  `id_keyword` int(10) NOT NULL,
  PRIMARY KEY (`id_ticket`,`id_keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keword_ticket`
--

LOCK TABLES `keword_ticket` WRITE;
/*!40000 ALTER TABLE `keword_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `keword_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kewords`
--

DROP TABLE IF EXISTS `kewords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kewords` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `palabra` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kewords`
--

LOCK TABLES `kewords` WRITE;
/*!40000 ALTER TABLE `kewords` DISABLE KEYS */;
/*!40000 ALTER TABLE `kewords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs_login`
--

DROP TABLE IF EXISTS `logs_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `ip_proxy` varchar(255) DEFAULT NULL,
  `conn_successful` tinyint(4) DEFAULT NULL,
  `timeOnline` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=191 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_login`
--

LOCK TABLES `logs_login` WRITE;
/*!40000 ALTER TABLE `logs_login` DISABLE KEYS */;
INSERT INTO `logs_login` VALUES (1,4,NULL,'2017-04-27 19:33:16','::ffff:192.168.56.1',NULL,NULL,NULL),(2,4,'admin','2017-04-27 19:46:11','::ffff:192.168.56.1',NULL,1,NULL),(3,-1,'laweadelaweaweonqlo','2017-04-27 19:46:25','::ffff:192.168.56.1',NULL,0,NULL),(4,-1,'asdasdasd','2017-04-27 19:48:01','::ffff:192.168.56.1',NULL,0,NULL),(5,4,'admin','2017-04-27 20:07:44','::ffff:192.168.56.1',NULL,1,NULL),(6,4,'admin','2017-04-27 20:14:58','::ffff:192.168.56.1',NULL,1,NULL),(7,4,'admin','2017-04-27 20:17:24','::ffff:192.168.56.1',NULL,1,NULL),(8,4,'admin','2017-04-27 20:18:38','::ffff:192.168.56.1',NULL,1,NULL),(9,4,'admin','2017-04-27 20:19:31','::ffff:192.168.56.1',NULL,1,3),(10,4,'admin','2017-04-27 20:48:27','::ffff:192.168.56.1',NULL,1,1),(11,4,'admin','2017-04-27 20:48:38','::ffff:192.168.56.1',NULL,1,0),(12,4,'admin','2017-04-27 20:49:32','::ffff:192.168.56.1',NULL,1,7),(13,1,'operador','2017-04-28 04:09:04','::ffff:127.0.0.1',NULL,1,NULL),(14,1,'operador','2017-04-28 04:10:30','::ffff:127.0.0.1',NULL,1,NULL),(15,1,'operador','2017-04-28 04:13:03','::ffff:127.0.0.1',NULL,1,NULL),(16,1,'operador','2017-04-28 04:14:09','::ffff:127.0.0.1',NULL,1,NULL),(17,4,'admin','2017-04-29 00:22:25','::ffff:127.0.0.1',NULL,1,NULL),(18,4,'admin','2017-04-29 00:37:33','::ffff:127.0.0.1',NULL,1,NULL),(19,4,'admin','2017-04-29 00:41:10','::ffff:127.0.0.1',NULL,1,NULL),(20,4,'admin','2017-04-29 01:15:06','::ffff:127.0.0.1',NULL,1,NULL),(21,4,'admin','2017-04-30 14:23:58','::ffff:127.0.0.1',NULL,1,NULL),(22,1,'operador','2017-04-30 14:27:28','::ffff:127.0.0.1',NULL,1,NULL),(23,1,'operador','2017-04-30 14:29:02','::ffff:127.0.0.1',NULL,1,NULL),(24,1,'operador','2017-04-30 14:30:22','::ffff:127.0.0.1',NULL,1,NULL),(25,1,'operador','2017-04-30 14:48:01','::ffff:127.0.0.1',NULL,1,NULL),(26,1,'operador','2017-04-30 16:52:41','::ffff:127.0.0.1',NULL,1,2407),(27,1,'operador','2017-04-30 17:32:56','::ffff:127.0.0.1',NULL,1,NULL),(28,1,'operador','2017-04-30 17:38:17','::ffff:127.0.0.1',NULL,1,NULL),(29,1,'operador','2017-04-30 17:43:25','::ffff:127.0.0.1',NULL,1,NULL),(30,2,'supervisor','2017-04-30 17:51:55','::ffff:127.0.0.1',NULL,1,11),(31,2,'supervisor','2017-04-30 17:52:12','::ffff:127.0.0.1',NULL,1,27),(32,1,'operador','2017-04-30 17:52:44','::ffff:127.0.0.1',NULL,1,NULL),(33,2,'supervisor','2017-04-30 18:10:18','::ffff:127.0.0.1',NULL,1,NULL),(34,1,'operador','2017-04-30 18:39:12','::ffff:127.0.0.1',NULL,1,NULL),(35,1,'operador','2017-04-30 18:42:15','::ffff:127.0.0.1',NULL,1,93),(36,2,'supervisor','2017-04-30 19:10:24','::ffff:127.0.0.1',NULL,1,NULL),(37,2,'supervisor','2017-04-30 19:16:23','::ffff:127.0.0.1',NULL,1,NULL),(38,1,'operador','2017-04-30 19:18:27','::ffff:127.0.0.1',NULL,1,NULL),(39,1,'operador','2017-04-30 19:20:03','::ffff:127.0.0.1',NULL,1,NULL),(40,2,'supervisor','2017-04-30 19:21:36','::ffff:127.0.0.1',NULL,1,NULL),(41,-1,'supervisor','2017-04-30 19:22:10','::ffff:127.0.0.1',NULL,0,NULL),(42,2,'supervisor','2017-04-30 19:22:16','::ffff:127.0.0.1',NULL,1,NULL),(43,2,'supervisor','2017-04-30 19:52:18','::ffff:127.0.0.1',NULL,1,NULL),(44,2,'supervisor','2017-04-30 19:55:39','::ffff:127.0.0.1',NULL,1,NULL),(45,2,'supervisor','2017-04-30 19:56:06','::ffff:127.0.0.1',NULL,1,NULL),(46,2,'supervisor','2017-04-30 19:56:43','::ffff:127.0.0.1',NULL,1,NULL),(47,1,'operador','2017-04-30 19:57:24','::ffff:127.0.0.1',NULL,1,12),(48,2,'supervisor','2017-04-30 20:01:50','::ffff:127.0.0.1',NULL,1,5373),(49,2,'supervisor','2017-04-30 21:31:32','::ffff:127.0.0.1',NULL,1,NULL),(50,2,'supervisor','2017-04-30 21:33:48','::ffff:127.0.0.1',NULL,1,NULL),(51,2,'supervisor','2017-04-30 21:46:15','::ffff:127.0.0.1',NULL,1,NULL),(52,4,'admin','2017-04-30 23:29:02','::ffff:127.0.0.1',NULL,1,16),(53,4,'admin','2017-04-30 23:29:24','::ffff:127.0.0.1',NULL,1,81),(54,1,'operador','2017-04-30 23:30:49','::ffff:127.0.0.1',NULL,1,31),(55,2,'supervisor','2017-04-30 23:31:26','::ffff:127.0.0.1',NULL,1,NULL),(56,1,'operador','2017-04-30 23:47:54','::ffff:127.0.0.1',NULL,1,18),(57,2,'supervisor','2017-04-30 23:48:21','::ffff:127.0.0.1',NULL,1,2166),(58,2,'supervisor','2017-05-01 01:13:47','::ffff:127.0.0.1',NULL,1,649),(59,2,'supervisor','2017-05-01 01:25:16','::ffff:127.0.0.1',NULL,1,NULL),(60,-1,'supervisor','2017-05-01 15:50:10','::ffff:127.0.0.1',NULL,0,NULL),(61,-1,'supervisor','2017-05-01 15:50:40','::ffff:127.0.0.1',NULL,0,NULL),(62,-1,'operador','2017-05-01 15:55:53','::ffff:127.0.0.1',NULL,0,NULL),(63,-1,'operador','2017-05-01 15:56:44','::ffff:127.0.0.1',NULL,0,NULL),(64,-1,'operador','2017-05-01 16:12:14','::ffff:127.0.0.1',NULL,0,NULL),(65,-1,'admin','2017-05-01 16:12:53','::ffff:127.0.0.1',NULL,0,NULL),(66,-1,'nuevoUsuario','2017-05-01 16:13:08','::ffff:127.0.0.1',NULL,0,NULL),(67,2,'supervisor','2017-05-01 16:14:09','::ffff:127.0.0.1',NULL,1,19),(68,4,'admin','2017-05-01 16:14:33','::ffff:127.0.0.1',NULL,1,NULL),(69,2,'supervisor','2017-05-01 16:21:53','::ffff:127.0.0.1',NULL,1,3),(70,4,'admin','2017-05-01 16:22:02','::ffff:127.0.0.1',NULL,1,30),(71,6,'usuario','2017-05-01 16:22:37','::ffff:127.0.0.1',NULL,1,130),(72,4,'admin','2017-05-01 16:24:54','::ffff:127.0.0.1',NULL,1,NULL),(73,-1,'admin','2017-05-01 16:27:20','::ffff:127.0.0.1',NULL,0,NULL),(74,4,'admin','2017-05-01 16:27:24','::ffff:127.0.0.1',NULL,1,NULL),(75,4,'admin','2017-05-01 16:28:07','::ffff:127.0.0.1',NULL,1,NULL),(76,4,'admin','2017-05-01 16:34:42','::ffff:127.0.0.1',NULL,1,853),(77,1,'operador','2017-05-01 16:49:02','::ffff:127.0.0.1',NULL,1,NULL),(78,4,'admin','2017-05-01 17:13:17','::ffff:127.0.0.1',NULL,1,NULL),(79,4,'admin','2017-05-01 17:14:23','::ffff:127.0.0.1',NULL,1,NULL),(80,4,'admin','2017-05-01 17:19:42','::ffff:127.0.0.1',NULL,1,NULL),(81,4,'admin','2017-05-01 17:22:10','::ffff:127.0.0.1',NULL,1,NULL),(82,4,'admin','2017-05-01 17:23:29','::ffff:127.0.0.1',NULL,1,115),(83,-1,'admin','2017-05-01 17:25:45','::ffff:127.0.0.1',NULL,0,NULL),(84,4,'admin','2017-05-01 17:25:51','::ffff:127.0.0.1',NULL,1,4),(85,1,'operador','2017-05-01 17:26:02','::ffff:127.0.0.1',NULL,1,399),(86,4,'admin','2017-05-01 17:32:44','::ffff:127.0.0.1',NULL,1,NULL),(87,4,'admin','2017-05-01 17:38:30','::ffff:127.0.0.1',NULL,1,NULL),(88,4,'admin','2017-05-01 17:42:19','::ffff:127.0.0.1',NULL,1,NULL),(89,4,'admin','2017-05-01 17:42:56','::ffff:127.0.0.1',NULL,1,NULL),(90,4,'admin','2017-05-01 17:45:41','::ffff:127.0.0.1',NULL,1,NULL),(91,4,'admin','2017-05-01 17:46:56','::ffff:127.0.0.1',NULL,1,NULL),(92,4,'admin','2017-05-01 17:48:51','::ffff:127.0.0.1',NULL,1,NULL),(93,4,'admin','2017-05-01 17:50:49','::ffff:127.0.0.1',NULL,1,NULL),(94,4,'admin','2017-05-01 17:55:06','::ffff:127.0.0.1',NULL,1,NULL),(95,4,'admin','2017-05-01 17:56:53','::ffff:127.0.0.1',NULL,1,NULL),(96,4,'admin','2017-05-01 17:58:25','::ffff:127.0.0.1',NULL,1,NULL),(97,4,'admin','2017-05-01 18:03:14','::ffff:127.0.0.1',NULL,1,2166),(98,2,'supervisor','2017-05-01 18:52:22','::ffff:127.0.0.1',NULL,1,NULL),(99,1,'operador','2017-05-01 19:01:22','::ffff:127.0.0.1',NULL,1,11),(100,5,'nuevoUsuario','2017-05-01 19:01:49','::ffff:127.0.0.1',NULL,1,NULL),(101,-1,'nuevoUsuario','2017-05-01 19:04:06','::ffff:127.0.0.1',NULL,0,NULL),(102,5,'nuevoUsuario','2017-05-01 19:04:12','::ffff:127.0.0.1',NULL,1,NULL),(103,5,'nuevoUsuario','2017-05-01 19:05:21','::ffff:127.0.0.1',NULL,1,NULL),(104,4,'admin','2017-05-02 00:31:22','::ffff:127.0.0.1',NULL,1,37),(105,2,'supervisor','2017-05-02 00:36:59','::ffff:127.0.0.1',NULL,1,388),(106,-1,'asd','2017-05-02 00:59:34','::ffff:127.0.0.1',NULL,0,NULL),(107,-1,'asd','2017-05-02 01:00:38','::ffff:127.0.0.1',NULL,0,NULL),(108,-1,'asd','2017-05-02 01:00:46','::ffff:127.0.0.1',NULL,0,NULL),(109,-1,'asd','2017-05-02 01:01:08','::ffff:127.0.0.1',NULL,0,NULL),(110,2,'supervisor','2017-05-02 01:01:37','::ffff:127.0.0.1',NULL,1,NULL),(111,1,'operador','2017-05-02 00:07:43','::ffff:127.0.0.1',NULL,1,NULL),(112,4,'admin','2017-05-02 01:08:33','::ffff:127.0.0.1',NULL,1,NULL),(113,4,'admin','2017-05-02 01:11:51','::ffff:127.0.0.1',NULL,1,NULL),(114,4,'admin','2017-05-02 01:13:00','::ffff:127.0.0.1',NULL,1,NULL),(115,2,'supervisor','2017-05-02 13:24:08','::ffff:127.0.0.1',NULL,1,NULL),(116,1,'operador','2017-05-02 14:15:58','::ffff:127.0.0.1',NULL,1,NULL),(117,2,'supervisor','2017-05-02 14:31:04','::ffff:127.0.0.1',NULL,1,NULL),(118,2,'supervisor','2017-05-02 14:32:32','::ffff:127.0.0.1',NULL,1,NULL),(119,2,'supervisor','2017-05-02 14:38:18','::ffff:127.0.0.1',NULL,1,NULL),(120,2,'supervisor','2017-05-02 14:50:23','::ffff:127.0.0.1',NULL,1,NULL),(121,2,'supervisor','2017-05-02 14:52:36','::ffff:127.0.0.1',NULL,1,NULL),(122,2,'supervisor','2017-05-02 14:56:18','::ffff:127.0.0.1',NULL,1,NULL),(123,2,'supervisor','2017-05-02 15:01:39','::ffff:127.0.0.1',NULL,1,NULL),(124,2,'supervisor','2017-05-02 15:03:34','::ffff:127.0.0.1',NULL,1,NULL),(125,2,'supervisor','2017-05-02 15:19:34','::ffff:127.0.0.1',NULL,1,NULL),(126,2,'supervisor','2017-05-02 15:23:32','::ffff:127.0.0.1',NULL,1,NULL),(127,2,'supervisor','2017-05-02 15:28:28','::ffff:127.0.0.1',NULL,1,NULL),(128,2,'supervisor','2017-05-02 15:29:28','::ffff:127.0.0.1',NULL,1,NULL),(129,2,'supervisor','2017-05-02 15:31:24','::ffff:127.0.0.1',NULL,1,NULL),(130,4,'admin','2017-05-02 19:36:59','::ffff:127.0.0.1',NULL,1,NULL),(131,4,'admin','2017-05-02 19:43:03','::ffff:127.0.0.1',NULL,1,NULL),(132,4,'admin','2017-05-02 20:19:08','::ffff:127.0.0.1',NULL,1,341),(133,3,'jefe','2017-05-02 20:24:52','::ffff:127.0.0.1',NULL,1,5),(134,4,'admin','2017-05-02 20:25:00','::ffff:127.0.0.1',NULL,1,4475),(135,4,'admin','2017-05-02 21:40:37','::ffff:127.0.0.1',NULL,1,NULL),(136,4,'admin','2017-05-03 02:37:19','::ffff:127.0.0.1',NULL,1,NULL),(137,4,'admin','2017-05-03 02:53:48','::ffff:127.0.0.1',NULL,1,NULL),(138,4,'admin','2017-05-03 02:57:43','::ffff:127.0.0.1',NULL,1,501),(139,2,'supervisor','2017-05-03 03:06:08','::ffff:127.0.0.1',NULL,1,112),(140,4,'admin','2017-05-03 03:08:06','::ffff:127.0.0.1',NULL,1,54),(141,4,'admin','2017-05-03 03:09:04','::ffff:127.0.0.1',NULL,1,18),(142,2,'supervisor','2017-05-03 03:09:26','::ffff:127.0.0.1',NULL,1,109),(143,2,'supervisor','2017-05-03 03:11:22','::ffff:127.0.0.1',NULL,1,57),(144,1,'operador','2017-05-03 03:12:39','::ffff:127.0.0.1',NULL,1,85),(145,-1,'nuevoUsuario','2017-05-03 03:14:08','::ffff:127.0.0.1',NULL,0,NULL),(146,-1,'nuevoUsuario','2017-05-03 03:14:14','::ffff:127.0.0.1',NULL,0,NULL),(147,-1,'nuevoUsuario','2017-05-03 03:14:19','::ffff:127.0.0.1',NULL,0,NULL),(148,2,'supervisor','2017-05-03 03:15:01','::ffff:127.0.0.1',NULL,1,17),(149,1,'operador','2017-05-03 03:15:24','::ffff:127.0.0.1',NULL,1,NULL),(150,2,'supervisor','2017-05-03 03:35:20','::ffff:127.0.0.1',NULL,1,612),(151,1,'operador','2017-05-03 03:45:35','::ffff:127.0.0.1',NULL,1,120),(152,2,'supervisor','2017-05-03 03:47:39','::ffff:127.0.0.1',NULL,1,72),(153,4,'admin','2017-05-03 03:48:54','::ffff:127.0.0.1',NULL,1,NULL),(154,4,'admin','2017-05-03 03:52:41','::ffff:127.0.0.1',NULL,1,NULL),(155,4,'admin','2017-05-03 03:54:57','::ffff:127.0.0.1',NULL,1,NULL),(156,4,'admin','2017-05-03 03:55:38','::ffff:127.0.0.1',NULL,1,1095),(157,1,'operador','2017-05-03 04:15:02','::ffff:127.0.0.1',NULL,1,NULL),(158,4,'admin','2017-05-03 04:46:43','::ffff:127.0.0.1',NULL,1,NULL),(159,2,'supervisor','2017-05-18 22:30:00','::ffff:127.0.0.1',NULL,1,NULL),(160,2,'supervisor','2017-05-18 23:25:01','::ffff:127.0.0.1',NULL,1,NULL),(161,2,'supervisor','2017-06-04 20:50:06','::ffff:127.0.0.1',NULL,1,NULL),(162,2,'supervisor','2017-06-04 21:14:30','::ffff:127.0.0.1',NULL,1,NULL),(163,2,'supervisor','2017-06-04 21:38:11','::ffff:127.0.0.1',NULL,1,NULL),(164,1,'operador','2017-06-04 22:50:42','::ffff:127.0.0.1',NULL,1,NULL),(165,1,'operador','2017-06-04 23:24:36','::ffff:127.0.0.1',NULL,1,NULL),(166,1,'operador','2017-06-04 23:32:05','::ffff:127.0.0.1',NULL,1,NULL),(167,1,'operador','2017-06-04 23:32:34','::ffff:127.0.0.1',NULL,1,4604),(168,2,'supervisor','2017-06-05 01:01:29','::ffff:127.0.0.1',NULL,1,82),(169,1,'operador','2017-06-05 01:02:55','::ffff:127.0.0.1',NULL,1,NULL),(170,2,'supervisor','2017-06-05 01:06:44','::ffff:127.0.0.1',NULL,1,18),(171,2,'supervisor','2017-06-05 01:07:08','::ffff:127.0.0.1',NULL,1,3),(172,1,'operador','2017-06-05 01:07:16','::ffff:127.0.0.1',NULL,1,NULL),(173,2,'supervisor','2017-06-05 01:25:10','::ffff:127.0.0.1',NULL,1,21),(174,3,'jefe','2017-06-05 01:25:34','::ffff:127.0.0.1',NULL,1,NULL),(175,3,'jefe','2017-06-05 01:33:06','::ffff:127.0.0.1',NULL,1,1469),(176,2,'supervisor','2017-06-05 01:57:39','::ffff:127.0.0.1',NULL,1,536),(177,3,'jefe','2017-06-05 02:06:40','::ffff:127.0.0.1',NULL,1,561),(178,3,'jefe','2017-06-05 02:16:07','::ffff:127.0.0.1',NULL,1,NULL),(179,3,'jefe','2017-06-05 02:30:01','::ffff:127.0.0.1',NULL,1,NULL),(180,3,'jefe','2017-06-05 02:30:56','::ffff:127.0.0.1',NULL,1,NULL),(181,1,'operador','2017-06-05 15:28:47','::ffff:127.0.0.1',NULL,1,32),(182,2,'supervisor','2017-06-05 15:29:23','::ffff:127.0.0.1',NULL,1,NULL),(183,2,'supervisor','2017-06-05 21:19:28','::ffff:127.0.0.1',NULL,1,4965),(184,1,'operador','2017-06-05 22:42:18','::ffff:127.0.0.1',NULL,1,2322),(185,2,'supervisor','2017-06-05 23:21:06','::ffff:127.0.0.1',NULL,1,NULL),(186,1,'operador','2017-06-05 23:48:09','::ffff:127.0.0.1',NULL,1,105),(187,2,'supervisor','2017-06-05 23:49:58','::ffff:127.0.0.1',NULL,1,22),(188,1,'operador','2017-06-05 23:50:24','::ffff:127.0.0.1',NULL,1,NULL),(189,1,'operador','2017-06-05 23:51:41','::ffff:127.0.0.1',NULL,1,NULL),(190,2,'supervisor','2017-06-06 05:17:42','::ffff:127.0.0.1',NULL,1,NULL);
/*!40000 ALTER TABLE `logs_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `userCreator` int(11) DEFAULT NULL,
  `accepted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fecha` datetime DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (6,1,'Te han asignado un ticket.',2,0,'2017-06-05 19:50:15','/users/viewTickets/3');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketdata`
--

DROP TABLE IF EXISTS `ticketdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ticketId` int(10) unsigned NOT NULL,
  `userId` int(10) unsigned NOT NULL,
  `fecha` datetime NOT NULL,
  `antecedente` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `aceptado` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `eliminado` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketdata`
--

LOCK TABLES `ticketdata` WRITE;
/*!40000 ALTER TABLE `ticketdata` DISABLE KEYS */;
INSERT INTO `ticketdata` VALUES (1,3,2,'2017-05-02 15:04:00','me jakiaron','pauta6.pdf',0,0),(2,3,2,'2017-05-02 15:23:48','me jakiaron denuvo :C',NULL,0,0),(3,3,2,'2017-05-02 15:25:55','asd','Requerimientos .pdf',0,0),(4,3,2,'2017-05-02 15:28:57','asdasdasd','Requerimientos .pdf',0,0),(5,3,2,'2017-05-02 15:31:47','adsasdadadds','new Requerimientos .pdf',0,0);
/*!40000 ALTER TABLE `ticketdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `propietario` int(10) unsigned NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_aplazado` date DEFAULT NULL,
  `encargado` int(11) DEFAULT NULL,
  `fuente` varchar(255) DEFAULT NULL,
  `ip_origen` varchar(255) DEFAULT NULL,
  `ip_destino` varchar(255) DEFAULT NULL,
  `puerto` varchar(255) DEFAULT NULL,
  `protocolo` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `intencionalidad` varchar(255) DEFAULT NULL,
  `subarea` varchar(255) DEFAULT NULL,
  `sistema_seguridad` varchar(255) DEFAULT NULL,
  `fecha_operacion` datetime DEFAULT NULL,
  `dias_transcurridos` int(255) unsigned DEFAULT NULL,
  `comentarios` varchar(255) DEFAULT NULL,
  `correo_origen` varchar(255) DEFAULT NULL,
  `correo_afectado` varchar(255) DEFAULT NULL,
  `eliminado` tinyint(3) unsigned DEFAULT '0',
  `eliminado_por` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (3,1,'2017-04-30 17:39:12',NULL,1,'asd','asd','asd','asd','asd','asd','asd','asd','asd','2016-08-05 00:00:00',NULL,'asd','asd@asd.com','asd@asd.com',0,NULL),(4,2,'2017-04-30 23:32:39','2017-06-10',1,'asd','asd','asd','asd','asd','asd','asd','asd','asd','2017-04-18 00:00:00',NULL,'asd','asd@asd.com','asd@asd.com',0,NULL),(5,2,'2017-05-03 03:10:28',NULL,NULL,'fuente','123.123.123.123','123.123.123.123','9999','protocolo','tipo','intencionalidad','sub','seguridad','2017-05-31 00:00:00',NULL,'comentarios','asd@asd.com','asd@asd.com',1,1),(6,2,'2017-06-05 01:02:26',NULL,1,'fuente','0.0.0.0','1.1.1.1','443','asd','asd','asd','asd','asd','2017-06-21 00:00:00',NULL,'asd','asd@asd.com','asd@asd.com',0,1);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketskeywords`
--

DROP TABLE IF EXISTS `ticketskeywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketskeywords` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ticketId` int(10) unsigned NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketskeywords`
--

LOCK TABLES `ticketskeywords` WRITE;
/*!40000 ALTER TABLE `ticketskeywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticketskeywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` int(11) NOT NULL COMMENT '0=operador;1=supervisor;2=jefe;3=admin',
  `deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'operador','$2a$08$R9JAOmzbQ/bKw8TQHavWluGxMxEqTB4tstCRHMDg52ucHHi2hdyHK',0,0),(2,'supervisor','$2a$08$R9JAOmzbQ/bKw8TQHavWluGxMxEqTB4tstCRHMDg52ucHHi2hdyHK',1,0),(3,'jefe','$2a$08$R9JAOmzbQ/bKw8TQHavWluGxMxEqTB4tstCRHMDg52ucHHi2hdyHK',2,0),(4,'admin','$2a$08$K3oKGnPhuojiHJUJzQ0Kz.VA0aNDOHDEG1OPtVONwCknj4FUbktHu',3,0),(5,'nuevoUsuario','$2a$08$9CEPQaWUTz2Zwesib3Rtku411Cucf/f9JUy8940.xdgmoJAiEVG.e',0,0),(8,'usuarioParaEliminar','$2a$08$7NGZu1y6ImjBYSECGGTIxuP0NdElwQYOzRy7CHBZ/ak9sgNXfC2qq',2,1);
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

-- Dump completed on 2017-06-06  9:59:05
