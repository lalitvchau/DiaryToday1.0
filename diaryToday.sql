-- MySQL dump 10.13  Distrib 5.7.21, for Win32 (AMD64)
--
-- Host: localhost    Database: diarytodaydb
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `diary_today_user`
--

DROP TABLE IF EXISTS `diary_today_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diary_today_user` (
  `username` varchar(255) NOT NULL,
  `version` bigint(20) NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diary_today_user`
--

LOCK TABLES `diary_today_user` WRITE;
/*!40000 ALTER TABLE `diary_today_user` DISABLE KEYS */;
INSERT INTO `diary_today_user` VALUES ('arunKumar',0,'Bangalore','Male','Arun Kumar','abcd1234'),('lalitvchau',0,'Bangalore','Male','Lalit Kumar','abcd1234'),('ram_user',0,'Bangalore','Male','Ram Kumar','abcd1234');
/*!40000 ALTER TABLE `diary_today_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_table`
--

DROP TABLE IF EXISTS `status_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `msg` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_table`
--

LOCK TABLES `status_table` WRITE;
/*!40000 ALTER TABLE `status_table` DISABLE KEYS */;
INSERT INTO `status_table` VALUES (1,0,'2018-02-09 21:14:07','This is my status to write in The Diary about today .........','Lalit Kumar','lalitvchau'),(2,0,'2018-02-09 21:16:11','It was awesome day start with the cloudy sunrise.\r\nIt was nice raining at evening time.\r\n\r\n\r\nEnjoy life ...','Lalit Kumar','lalitvchau'),(3,0,'2018-02-09 21:33:39','This is Ram.\r\nI am a user of The Diary Today.\r\nLet have fun and share about your day ..\r\n<:\r\n..\r\n@@@@@\r\n@@@','Ram Kumar','ram_user'),(4,0,'2018-02-09 21:37:39','This is My first status on Diary today.\r\n\r\nHappy to here ..','Arun Kumar','arunKumar'),(5,0,'2018-02-09 21:53:14','It was sunny and rainy day.\r\n\r\nIt was awesome to share with you all my days.\r\n\r\nHave a nice Day !','Lalit Kumar','lalitvchau'),(6,0,'2018-02-09 22:01:49','I’am SORRY that I\'m not updating my FACEBOOK status.\r\n MY CAT ATE MY MOUSE.','Ram Kumar','ram_user');
/*!40000 ALTER TABLE `status_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-05 14:43:33
