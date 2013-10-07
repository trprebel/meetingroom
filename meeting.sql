-- MySQL dump 10.13  Distrib 5.5.23, for Win64 (x86)
--
-- Host: localhost    Database: meeting
-- ------------------------------------------------------
-- Server version	5.5.23

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
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `operate` varchar(200) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'admin','登陆系统！','2013-09-28 09:36:33'),(2,'admin','登陆系统！','2013-09-28 10:24:05'),(3,'admin','登陆系统！','2013-09-28 10:26:03'),(4,'admin','修改会议室属性为：123234 12353 12353432 43234 可用','2013-09-28 10:27:09'),(5,'admin','登陆系统！','2013-09-29 08:57:17'),(6,'admin','预定会议室：123234，开始时间:2013-09-30 08:57:49，结束时间：2013-09-30 09:58:00','2013-09-29 08:58:12'),(7,'admin','登陆系统！','2013-09-29 09:03:08'),(8,'admin','登陆系统！','2013-09-29 09:05:35'),(9,'admin','登陆系统！','2013-09-29 09:07:51'),(10,'admin','修改会议室属性为：123234 12353 12353432 43234wer 可用','2013-09-29 09:12:57'),(11,'admin','登陆系统！','2013-09-29 09:14:40'),(12,'admin','修改会议室属性为：研发中心大会议室 13楼 进门右拐直走 研发中心 可用','2013-09-29 09:14:52'),(13,'admin','登陆系统！','2013-09-29 09:16:26'),(14,'admin','预定会议室：系统软件会议室，开始时间:2013-09-30 09:48:23，结束时间：2013-09-30 09:48:27','2013-09-29 09:48:31'),(15,'admin','登陆系统！','2013-09-29 10:23:05'),(16,'admin','登陆系统！','2013-09-29 10:24:14'),(17,'admin','登陆系统！','2013-09-29 10:24:48'),(18,'admin','登陆系统！','2013-09-29 10:25:48'),(19,'admin','登陆系统！','2013-09-29 10:28:24'),(20,'admin','登陆系统！','2013-09-29 10:29:40'),(21,'admin','登陆系统！','2013-09-29 10:31:32'),(22,'admin','登陆系统！','2013-09-29 10:31:48'),(23,'admin','登陆系统！','2013-09-29 10:32:04'),(24,'admin','登陆系统！','2013-09-29 11:14:26'),(25,'admin','登陆系统！','2013-09-29 11:16:22'),(26,'admin','创建会议室：软件设计所会议室','2013-09-29 11:16:37'),(27,'admin','登陆系统！','2013-09-29 11:23:48'),(28,'admin','修改会议室属性为：软件设计所会议室 15楼 进门直走左拐 软件设计所 可用','2013-09-29 11:24:01'),(29,'admin','登陆系统！','2013-09-29 11:29:26'),(30,'admin','修改会议室属性为：123234 12353 12353432654ky 43234wer 可用','2013-09-29 11:29:43'),(31,'admin','预定会议室：软件设计所会议室，开始时间:2013-10-01 11:30:00，结束时间：2013-10-01 12:30:05','2013-09-29 11:30:11'),(32,'admin','登陆系统！','2013-09-29 11:32:33'),(33,'admin','登陆系统！','2013-09-29 11:34:15'),(34,'admin','取消预定会议室：研发中心大会议室','2013-09-29 11:34:28'),(35,'admin','登陆系统！','2013-09-29 02:23:26'),(36,'admin','登陆系统！','2013-09-29 02:25:48'),(37,'admin','登陆系统！','2013-09-29 02:29:40'),(38,'admin','登陆系统！','2013-09-29 02:30:50'),(39,'admin','登陆系统！','2013-09-29 02:31:31'),(40,'admin','登陆系统！','2013-09-29 02:34:01'),(41,'admin','登陆系统！','2013-09-29 02:36:23'),(42,'admin','登陆系统！','2013-09-29 02:39:05'),(43,'admin','登陆系统！','2013-09-29 02:40:39'),(44,'admin','登陆系统！','2013-09-29 02:41:54'),(45,'admin','登陆系统！','2013-09-29 02:44:55'),(46,'admin','登陆系统！','2013-09-29 02:45:58'),(47,'admin','登陆系统！','2013-09-29 02:53:44'),(48,'admin','登陆系统！','2013-09-29 03:03:06'),(49,'admin','登陆系统！','2013-09-29 03:04:17'),(50,'admin','登陆系统！','2013-09-29 03:08:10'),(51,'admin','修改会议室属性为：123234 12353 123534326 43234wer 可用','2013-09-29 03:08:57'),(52,'admin','修改会议室属性为：123234 12353 123534326 43234wer 可用','2013-09-29 03:09:00'),(53,'admin','修改会议室属性为：123234 12353 123534326 43234wer 可用','2013-09-29 03:09:17'),(54,'admin','登陆系统！','2013-09-29 03:10:00'),(55,'admin','修改会议室属性为：123234 12353 123534326hjk 43234wer 可用','2013-09-29 03:10:09'),(56,'admin','登陆系统！','2013-09-29 03:12:18'),(57,'admin','修改会议室属性为：123234 12353 123534326hjk 43234werasd 可用','2013-09-29 03:12:28'),(58,'admin','登陆系统！','2013-09-29 03:13:09'),(59,'admin','修改会议室属性为：123234 12353 123534326hjk 43234wera 可用','2013-09-29 03:13:16'),(60,'admin','登陆系统！','2013-09-29 03:16:15'),(61,'admin','修改会议室属性为：123234 12353 123534326h 43234wera 可用','2013-09-29 03:16:23'),(62,'admin','登陆系统！','2013-09-29 03:18:04'),(63,'admin','取消预定会议室：软件设计所会议室','2013-09-29 03:18:21'),(64,'admin','登陆系统！','2013-09-29 03:24:12'),(65,'admin','登陆系统！','2013-09-29 03:46:45'),(66,'admin','修改会议室属性为：软件设计所会议室 15楼 进门直走左拐 软件设计所 不可用','2013-09-29 03:47:21'),(67,'admin','登陆系统！','2013-09-29 05:03:09'),(68,'admin','登陆系统！','2013-09-29 05:06:10'),(69,'admin','登陆系统！','2013-09-29 05:22:29'),(70,'admin','登陆系统！','2013-09-29 05:30:47'),(71,'admin','登陆系统！','2013-09-29 05:43:36'),(72,'admin','登陆系统！','2013-09-29 05:54:54'),(73,'admin','登陆系统！','2013-09-29 05:57:59'),(74,'admin','登陆系统！','2013-09-30 10:03:30'),(75,'admin','登陆系统！','2013-09-30 10:04:16'),(76,'admin','登陆系统！','2013-09-30 10:09:18'),(77,'admin','预定会议室：系统软件会议室，开始时间:2013-10-09 10:10:16，结束时间：2013-10-11 10:10:31','2013-09-30 10:10:37'),(78,'admin','预定会议室：研发中心大会议室，开始时间:2013-10-02 10:10:41，结束时间：2013-10-02 19:10:47','2013-09-30 10:10:53'),(79,'admin','登陆系统！','2013-09-30 10:22:32'),(80,'admin','登陆系统！','2013-09-30 10:23:38'),(81,'admin','登陆系统！','2013-09-30 10:25:04'),(82,'admin','登陆系统！','2013-09-30 10:25:31'),(83,'admin','登陆系统！','2013-09-30 10:25:47'),(84,'admin','登陆系统！','2013-09-30 10:30:30'),(85,'admin','登陆系统！','2013-09-30 10:32:12'),(86,'admin','登陆系统！','2013-09-30 10:32:32'),(87,'admin','登陆系统！','2013-09-30 10:33:03'),(88,'admin','登陆系统！','2013-09-30 10:33:56'),(89,'admin','登陆系统！','2013-09-30 10:35:36'),(90,'admin','登陆系统！','2013-09-30 10:39:21'),(91,'admin','登陆系统！','2013-09-30 10:41:09'),(92,'admin','登陆系统！','2013-09-30 10:42:32'),(93,'admin','登陆系统！','2013-09-30 10:43:46'),(94,'admin','登陆系统！','2013-09-30 10:44:19'),(95,'admin','登陆系统！','2013-09-30 10:45:00'),(96,'admin','登陆系统！','2013-09-30 10:46:33'),(97,'admin','登陆系统！','2013-09-30 10:47:47'),(98,'admin','登陆系统！','2013-09-30 10:48:12'),(99,'admin','登陆系统！','2013-09-30 10:49:43'),(100,'admin','登陆系统！','2013-09-30 10:51:33'),(101,'admin','登陆系统！','2013-09-30 10:54:30'),(102,'admin','登陆系统！','2013-09-30 10:55:51'),(103,'admin','登陆系统！','2013-09-30 10:57:50'),(104,'admin','登陆系统！','2013-09-30 10:59:37'),(105,'admin','登陆系统！','2013-09-30 11:00:09'),(106,'admin','登陆系统！','2013-09-30 11:03:20'),(107,'admin','登陆系统！','2013-09-30 02:11:38'),(108,'admin','登陆系统！','2013-09-30 02:37:46'),(109,'admin','创建会议室：研发中心大会议室','2013-09-30 02:38:10'),(110,'admin','创建会议室：系统软件会议室','2013-09-30 02:38:27'),(111,'admin','创建会议室：软件设计所会议室','2013-09-30 02:38:38'),(112,'admin','创建会议室：123','2013-09-30 02:38:47'),(113,'admin','登陆系统！','2013-09-30 02:39:09'),(114,'admin','登陆系统！','2013-09-30 02:42:09'),(115,'admin','预定会议室：123，开始时间:2013-09-30 14:43:01，结束时间：2013-09-30 15:43:04','2013-09-30 02:43:11'),(116,'admin','预定会议室：研发中心大会议室，开始时间:2013-10-02 14:43:19，结束时间：2013-10-02 16:43:23','2013-09-30 02:43:29'),(117,'admin','预定会议室：系统软件会议室，开始时间:2013-10-03 14:43:33，结束时间：2013-10-04 14:43:37','2013-09-30 02:43:41'),(118,'admin','预定会议室：软件设计所会议室，开始时间:2013-10-01 14:43:48，结束时间：2013-10-02 14:43:51','2013-09-30 02:43:54'),(119,'admin','预定会议室：研发中心大会议室，开始时间:2013-10-02 20:44:04，结束时间：2013-10-02 22:44:14','2013-09-30 02:44:20'),(120,'admin','预定会议室：123，开始时间:2013-10-07 14:44:53，结束时间：2013-10-07 15:44:57','2013-09-30 02:45:05'),(121,'admin','登陆系统！','2013-09-30 02:48:21'),(122,'admin','登陆系统！','2013-09-30 02:57:36'),(123,'admin','预定会议室：123，开始时间:2013-09-30 14:57:42，结束时间：2013-09-30 15:57:45','2013-09-30 02:57:49'),(124,'admin','预定会议室：123，开始时间:2013-10-01 14:57:53，结束时间：2013-10-01 14:57:57','2013-09-30 02:58:01'),(125,'admin','预定会议室：研发中心大会议室，开始时间:2013-10-02 14:58:06，结束时间：2013-10-02 14:58:09','2013-09-30 02:58:11'),(126,'admin','登陆系统！','2013-09-30 04:50:47'),(127,'admin','登陆系统！','2013-09-30 04:59:08'),(128,'admin','登陆系统！','2013-09-30 05:15:06'),(129,'admin','登陆系统！','2013-09-30 05:35:40'),(130,'admin','登陆系统！','2013-09-30 05:36:18'),(131,'admin','登陆系统！','2013-09-30 06:08:10'),(132,'admin','登陆系统！','2013-09-30 09:36:35'),(133,'admin','登陆系统！','2013-09-30 09:40:26'),(134,'admin','登陆系统！','2013-09-30 09:41:45'),(135,'admin','登陆系统！','2013-09-30 10:38:45'),(136,'admin','登陆系统！','2013-09-30 10:41:26'),(137,'admin','登陆系统！','2013-10-01 11:35:29'),(138,'admin','登陆系统！','2013-10-01 11:41:59'),(139,'admin','登陆系统！','2013-10-01 11:42:48'),(140,'admin','登陆系统！','2013-10-01 11:43:13'),(141,'admin','登陆系统！','2013-10-01 11:43:35'),(142,'admin','登陆系统！','2013-10-01 11:45:35'),(143,'admin','登陆系统！','2013-10-01 11:46:19'),(144,'admin','登陆系统！','2013-10-01 11:47:00'),(145,'admin','登陆系统！','2013-10-01 01:35:53'),(146,'admin','登陆系统！','2013-10-01 01:36:40'),(147,'admin','登陆系统！','2013-10-01 02:12:21'),(148,'admin','登陆系统！','2013-10-01 02:13:48'),(149,'admin','登陆系统！','2013-10-01 02:23:02'),(150,'admin','登陆系统！','2013-10-01 02:24:23'),(151,'admin','登陆系统！','2013-10-01 02:38:53'),(152,'admin','登陆系统！','2013-10-01 02:40:30'),(153,'admin','登陆系统！','2013-10-01 02:42:20'),(154,'admin','预定会议室：研发中心大会议室，开始时间:2013-10-03 14:54:23，结束时间：2013-10-03 15:54:28','2013-10-01 02:54:35'),(155,'admin','登陆系统！','2013-10-01 02:57:30'),(156,'admin','登陆系统！','2013-10-01 02:59:27'),(157,'admin','登陆系统！','2013-10-01 03:02:24'),(158,'admin','登陆系统！','2013-10-01 03:03:55'),(159,'admin','登陆系统！','2013-10-01 03:04:53'),(160,'admin','登陆系统！','2013-10-01 03:08:06'),(161,'admin','登陆系统！','2013-10-01 03:08:27'),(162,'admin','登陆系统！','2013-10-01 03:10:22'),(163,'admin','登陆系统！','2013-10-01 03:10:46'),(164,'admin','登陆系统！','2013-10-01 03:11:22'),(165,'admin','登陆系统！','2013-10-01 03:12:31'),(166,'admin','登陆系统！','2013-10-01 03:14:23'),(167,'admin','登陆系统！','2013-10-01 03:15:41'),(168,'admin','登陆系统！','2013-10-01 03:17:04'),(169,'admin','登陆系统！','2013-10-01 03:17:57'),(170,'admin','登陆系统！','2013-10-01 03:18:34'),(171,'admin','登陆系统！','2013-10-01 03:22:26'),(172,'admin','登陆系统！','2013-10-01 03:24:39'),(173,'admin','登陆系统！','2013-10-01 03:47:17'),(174,'admin','登陆系统！','2013-10-01 03:52:28'),(175,'admin','登陆系统！','2013-10-01 03:56:34'),(176,'admin','登陆系统！','2013-10-01 03:57:40'),(177,'admin','登陆系统！','2013-10-01 03:58:24'),(178,'admin','登陆系统！','2013-10-01 03:59:27'),(179,'admin','登陆系统！','2013-10-01 04:00:43'),(180,'admin','登陆系统！','2013-10-01 04:01:31'),(181,'admin','登陆系统！','2013-10-01 04:06:24'),(182,'admin','登陆系统！','2013-10-01 04:07:06'),(183,'admin','登陆系统！','2013-10-01 04:10:10'),(184,'admin','取消预定会议室：研发中心大会议室','2013-10-01 04:10:24'),(185,'admin','登陆系统！','2013-10-01 04:13:08'),(186,'admin','取消预定会议室：软件设计所会议室','2013-10-01 04:13:15'),(187,'admin','预定会议室：研发中心大会议室，开始时间:2013-10-03 16:14:51，结束时间：2013-10-03 16:14:55','2013-10-01 04:14:57'),(188,'admin','预定会议室：研发中心大会议室，开始时间:2013-10-04 16:14:59，结束时间：2013-10-04 16:15:02','2013-10-01 04:15:05'),(189,'admin','登陆系统！','2013-10-01 04:15:46'),(190,'admin','取消预定会议室：研发中心大会议室','2013-10-01 04:15:58'),(191,'admin','登陆系统！','2013-10-01 05:33:05'),(192,'admin','预定会议室：系统软件会议室，开始时间:2013-10-02 17:33:24，结束时间：2013-10-02 18:33:29','2013-10-01 05:33:48'),(193,'admin','预定会议室：软件设计所会议室，开始时间:2013-10-02 17:34:06，结束时间：2013-10-03 17:34:10','2013-10-01 05:34:14'),(194,'user1','登陆系统！','2013-10-01 05:35:06'),(195,'user1','预定会议室：电源所会议室，开始时间:2013-10-03 17:35:13，结束时间：2013-10-03 19:35:19','2013-10-01 05:35:25'),(196,'user1','预定会议室：软件设计所会议室，开始时间:2013-10-03 17:35:31，结束时间：2013-10-03 18:35:35','2013-10-01 05:35:41'),(197,'admin','登陆系统！','2013-10-01 05:48:38'),(198,'admin','登陆系统！','2013-10-01 05:54:11'),(199,'admin','登陆系统！','2013-10-01 05:55:50'),(200,'admin','登陆系统！','2013-10-01 05:57:19'),(201,'admin','登陆系统！','2013-10-01 10:59:17'),(202,'admin','登陆系统！','2013-10-01 11:01:05'),(203,'admin','登陆系统！','2013-10-02 02:27:13'),(204,'admin','登陆系统！','2013-10-02 02:27:49'),(205,'admin','登陆系统！','2013-10-02 02:42:38'),(206,'admin','登陆系统！','2013-10-02 02:45:07'),(207,'admin','登陆系统！','2013-10-02 02:55:34'),(208,'admin','登陆系统！','2013-10-02 02:59:53'),(209,'admin','登陆系统！','2013-10-02 03:01:16'),(210,'admin','登陆系统！','2013-10-02 03:06:03'),(211,'admin','登陆系统！','2013-10-02 03:09:43'),(212,'admin','登陆系统！','2013-10-02 03:15:28'),(213,'admin','登陆系统！','2013-10-02 03:17:07'),(214,'admin','登陆系统！','2013-10-02 03:19:26'),(215,'admin','登陆系统！','2013-10-02 03:20:33'),(216,'admin','登陆系统！','2013-10-02 03:21:58'),(217,'admin','登陆系统！','2013-10-02 03:32:14'),(218,'admin','登陆系统！','2013-10-02 03:33:24'),(219,'admin','登陆系统！','2013-10-02 03:34:56'),(220,'admin','登陆系统！','2013-10-02 03:36:21'),(221,'admin','登陆系统！','2013-10-02 03:38:07'),(222,'admin','登陆系统！','2013-10-02 03:38:27'),(223,'admin','登陆系统！','2013-10-02 03:39:19'),(224,'admin','登陆系统！','2013-10-02 03:40:30'),(225,'admin','登陆系统！','2013-10-02 03:43:08'),(226,'admin','登陆系统！','2013-10-02 03:44:38'),(227,'admin','登陆系统！','2013-10-02 03:45:51'),(228,'admin','登陆系统！','2013-10-02 03:57:02'),(229,'admin','登陆系统！','2013-10-02 03:58:55'),(230,'admin','登陆系统！','2013-10-02 03:59:52'),(231,'admin','登陆系统！','2013-10-02 04:00:34'),(232,'admin','登陆系统！','2013-10-02 04:01:09'),(233,'admin','登陆系统！','2013-10-02 04:01:44'),(234,'admin','登陆系统！','2013-10-02 04:04:34'),(235,'admin','登陆系统！','2013-10-02 04:05:39'),(236,'admin','登陆系统！','2013-10-02 04:08:02'),(237,'admin','登陆系统！','2013-10-02 04:09:30'),(238,'admin','登陆系统！','2013-10-02 04:10:27'),(239,'admin','登陆系统！','2013-10-02 04:11:39'),(240,'admin','登陆系统！','2013-10-02 04:12:15'),(241,'admin','登陆系统！','2013-10-02 04:14:33'),(242,'admin','登陆系统！','2013-10-02 04:19:50'),(243,'admin','登陆系统！','2013-10-02 04:23:20'),(244,'admin','登陆系统！','2013-10-02 04:24:14'),(245,'admin','登陆系统！','2013-10-02 04:27:41'),(246,'admin','登陆系统！','2013-10-02 05:06:45'),(247,'admin','预定会议室：研发中心大会议室，开始时间:2013-10-09 17:09:10，结束时间：2013-10-09 18:09:16','2013-10-02 05:09:23'),(248,'admin','登陆系统！','2013-10-02 05:14:35'),(249,'admin','登陆系统！','2013-10-02 05:18:50'),(250,'admin','登陆系统！','2013-10-02 05:20:14'),(251,'admin','登陆系统！','2013-10-02 05:22:51'),(252,'admin','登陆系统！','2013-10-02 05:24:08'),(253,'admin','登陆系统！','2013-10-02 05:27:39'),(254,'admin','登陆系统！','2013-10-02 05:28:27'),(255,'admin','取消预定会议室：软件设计所会议室','2013-10-02 05:30:15'),(256,'admin','登陆系统！','2013-10-02 05:41:00'),(257,'admin','登陆系统！','2013-10-02 05:43:10'),(258,'admin','登陆系统！','2013-10-02 06:03:48'),(259,'admin','登陆系统！','2013-10-02 11:00:28'),(260,'admin','登陆系统！','2013-10-02 11:03:02'),(261,'admin','登陆系统！','2013-10-03 12:39:50'),(262,'admin','登陆系统！','2013-10-03 12:17:17'),(263,'admin','登陆系统！','2013-10-03 12:18:33'),(264,'admin','登陆系统！','2013-10-03 12:22:42'),(265,'admin','登陆系统！','2013-10-03 12:27:17'),(266,'admin','登陆系统！','2013-10-03 12:29:26'),(267,'admin','登陆系统！','2013-10-03 12:36:41'),(268,'admin','登陆系统！','2013-10-03 01:43:20'),(269,'admin','登陆系统！','2013-10-03 02:10:02'),(270,'admin','登陆系统！','2013-10-03 02:11:45'),(271,'admin','登陆系统！','2013-10-03 02:18:24'),(272,'admin','登陆系统！','2013-10-03 02:20:37'),(273,'admin','登陆系统！','2013-10-03 02:52:13'),(274,'admin','登陆系统！','2013-10-03 02:57:22'),(275,'admin','登陆系统！','2013-10-03 02:58:10'),(276,'admin','登陆系统！','2013-10-05 06:05:21'),(277,'admin','登陆系统！','2013-10-05 08:51:58'),(278,'admin','登陆系统！','2013-10-05 08:52:51'),(279,'admin','登陆系统！','2013-10-05 09:43:07'),(280,'admin','登陆系统！','2013-10-05 10:13:59');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetingroom`
--

DROP TABLE IF EXISTS `meetingroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetingroom` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `mrname` varchar(50) NOT NULL,
  `floor` varchar(10) NOT NULL,
  `station` varchar(100) NOT NULL,
  `department` varchar(20) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `createtime` date NOT NULL,
  PRIMARY KEY (`mrname`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetingroom`
--

LOCK TABLES `meetingroom` WRITE;
/*!40000 ALTER TABLE `meetingroom` DISABLE KEYS */;
INSERT INTO `meetingroom` VALUES (4,'123456','123','123','432',0,'2013-09-30'),(5,'电源所会议室','15楼','进门直走100米','电源所',1,'2013-09-30'),(1,'研发中心大会议室','13楼','进门右拐','研发中心',1,'2013-09-30'),(2,'系统软件会议室','14楼','进门直走','系统软件所',1,'2013-09-30'),(3,'软件设计所会议室','15楼','进门直走','软件设计所',1,'2013-09-30');
/*!40000 ALTER TABLE `meetingroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservemr`
--

DROP TABLE IF EXISTS `reservemr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservemr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `mrname` varchar(50) NOT NULL,
  `starttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `mrname` (`mrname`),
  CONSTRAINT `mrname` FOREIGN KEY (`mrname`) REFERENCES `meetingroom` (`mrname`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservemr`
--

LOCK TABLES `reservemr` WRITE;
/*!40000 ALTER TABLE `reservemr` DISABLE KEYS */;
INSERT INTO `reservemr` VALUES (1,'admin','123456','2013-09-30 06:57:42','2013-09-30 07:57:45'),(2,'admin','123456','2013-10-01 06:57:53','2013-10-01 06:57:57'),(3,'admin','研发中心大会议室','2013-10-02 06:58:06','2013-10-02 06:58:09'),(5,'admin','电源所会议室','2013-10-02 08:43:51','2013-10-02 10:43:56'),(8,'admin','研发中心大会议室','2013-10-04 08:14:59','2013-10-04 08:15:02'),(9,'admin','系统软件会议室','2013-10-02 09:33:24','2013-10-02 10:33:29'),(11,'user1','电源所会议室','2013-10-03 09:35:13','2013-10-03 11:35:19'),(12,'user1','软件设计所会议室','2013-10-03 09:35:31','2013-10-03 10:35:35'),(13,'admin','研发中心大会议室','2013-10-09 09:09:10','2013-10-09 10:09:16');
/*!40000 ALTER TABLE `reservemr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `department` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','123','wer',1,1),('trprebel','123456','全球研发',1,1),('user1','123','fssdf',2,1),('user2','123','fstggsd',2,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-07 23:13:05
