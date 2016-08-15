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
  `file_size` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_files`
--

LOCK TABLES `user_files` WRITE;
/*!40000 ALTER TABLE `user_files` DISABLE KEYS */;
INSERT INTO `user_files` VALUES (48,'test folder','/var/www/html/websp/66-furqan/test folder',66,'folder',NULL,NULL),(49,'pogba.jpg','/var/www/html/websp/66-furqan/test folder/pogba.jpg',66,'file',48,NULL),(50,'manutd_cover.jpg','/var/www/html/websp/66-furqan/test folder/manutd_cover.jpg',66,'file',48,0),(51,'CWOWvg9U4AEptMn.jpg','/var/www/html/websp/66-furqan/test folder/CWOWvg9U4AEptMn.jpg',66,'file',48,0.026),(52,'chernobyl.jpg','/var/www/html/websp/66-furqan/chernobyl.jpg',66,NULL,NULL,0.093),(53,'captain_america.jpg','/var/www/html/websp/66-furqan/captain_america.jpg',66,NULL,NULL,0.128);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (66,'furqan','123','fnew@g.com');
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

-- Dump completed on 2016-08-15 17:27:06
