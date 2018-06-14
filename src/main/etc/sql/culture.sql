-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: marxism
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `culture_item`
--

DROP TABLE IF EXISTS `culture_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `culture_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `long_description` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_73qoy8cidy2l7714hnvnfr17y` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `culture_item`
--

LOCK TABLES `culture_item` WRITE;
/*!40000 ALTER TABLE `culture_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `culture_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marxism_website_culture_items`
--

DROP TABLE IF EXISTS `marxism_website_culture_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marxism_website_culture_items` (
  `marxism_website_id` bigint(20) NOT NULL,
  `culture_items_id` bigint(20) NOT NULL,
  `carousel_item_index` int(11) NOT NULL,
  PRIMARY KEY (`marxism_website_id`,`carousel_item_index`),
  KEY `FKmqfapf2hapa2w90jqhw33509n` (`culture_items_id`),
  CONSTRAINT `FK81i93vvgtifdpdh836itnr8f5` FOREIGN KEY (`marxism_website_id`) REFERENCES `marxism_website` (`id`),
  CONSTRAINT `FKmqfapf2hapa2w90jqhw33509n` FOREIGN KEY (`culture_items_id`) REFERENCES `culture_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marxism_website_culture_items`
--

LOCK TABLES `marxism_website_culture_items` WRITE;
/*!40000 ALTER TABLE `marxism_website_culture_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `marxism_website_culture_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-14 21:34:35
