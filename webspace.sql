-- MySQL dump 10.13  Distrib 5.7.13, for Linux (x86_64)
--
-- Host: localhost    Database: webspace
-- ------------------------------------------------------
-- Server version	5.7.13-0ubuntu0.16.04.2

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
-- Table structure for table `user_files`
--

DROP TABLE IF EXISTS `user_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(64) NOT NULL,
  `file_path` varchar(500) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `dir_type` varchar(12) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_files`
--

LOCK TABLES `user_files` WRITE;
/*!40000 ALTER TABLE `user_files` DISABLE KEYS */;
INSERT INTO `user_files` VALUES (8,'grids.html','/var/www/html/websp/42-qasimkhokhar/grids.html',42,NULL,NULL),(9,'transcript_Jul30_2016_0832PM.htm','/var/www/html/websp/45-furqanharoon/transcript_Jul30_2016_0832PM.htm',45,NULL,NULL),(10,'Portal.rar','/var/www/html/websp/46-qasim/Portal.rar',46,NULL,NULL),(17,'FLIGHT SEARCH REQUIREMENTS.pdf','/var/www/html/websp/47-furqan/FLIGHT SEARCH REQUIREMENTS.pdf',47,NULL,NULL),(18,'Test folder','/var/www/html/websp/47-furqan/Test folder',47,'folder',NULL),(27,'second folder','/var/www/html/websp/47-furqan/Test folder/second folder',47,'folder',18);
/*!40000 ALTER TABLE `user_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing id of each user, unique index',
  `username` varchar(64) NOT NULL COMMENT 'user''s name, unique',
  `password` varchar(255) NOT NULL COMMENT 'user''s password in salted and hashed format',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'fu','password','f@g.com'),(2,'fu1','password','f1@g.com'),(3,'furqan','123456','furqan@gmail.com'),(4,'furqan','123456','furqan1@gmail.com'),(5,'furqan','123456','furqan12@gmail.com'),(6,'furqan','123456','furqan123@gmail.com'),(7,'furqan','123456','furqan1234@gmail.com'),(8,'furqan','123456','furqan123774@gmail.com'),(9,'furqan','123456','furqan1237754@gmail.com'),(10,'furqan','123456','df1@g.com'),(11,'furqan','123456','df2@g.com'),(12,'furqan','123456','df3@g.com'),(13,'qasim','12345','qasim@xyz.com'),(14,'qasim','1234','qasim1@xyz.com'),(15,'abc','123','abc@email.com'),(16,'abcx','123','abcx@email.com'),(17,'','',''),(25,'furqan','123','asda2@sdfc.ocm'),(29,'furqan1','sdasdas','asd@gmail.com'),(33,'furqan','adasd','sadas.yah@com.com'),(35,'asd','asd','asdas@sdasd.com'),(37,'furqan','sadasd','sadasd@com.cm'),(42,'qasimkhokhar','1234','qasimkhokhar@ucp.edu.pk'),(43,'shahbaz.telecomeng','1234','shahbaz.telecomeng@gmail.com'),(45,'furqanharoon','1234','furqanharoon@ucp.edu.pk'),(46,'qasim','123','qa@ss.com'),(47,'furqan','123456','f12@g.com'),(48,'tst','123','f11@g.com');
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

-- Dump completed on 2016-08-15 10:10:34
