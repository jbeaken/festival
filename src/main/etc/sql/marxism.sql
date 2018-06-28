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
-- Current Database: `marxism`
--

USE `marxism`;

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `icon` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `text` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carousel_item`
--

DROP TABLE IF EXISTS `carousel_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carousel_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_a8gssp8bi915rjf9x7gedbwn3` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carousel_item`
--

LOCK TABLES `carousel_item` WRITE;
/*!40000 ALTER TABLE `carousel_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `carousel_item` ENABLE KEYS */;
UNLOCK TABLES;

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
  `video_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_73qoy8cidy2l7714hnvnfr17y` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `culture_item`
--

LOCK TABLES `culture_item` WRITE;
/*!40000 ALTER TABLE `culture_item` DISABLE KEYS */;
INSERT INTO `culture_item` VALUES (1,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-images-trump-roast.jpg','Hosted by comedians Johnny Cochrane, Don Biswas and Jasmine Fischer, what better way to gear up for Trump&apos;s visit than making jokes at his expense? Friday 8.30pm','Trump comedy roast','Trump comedy roast',NULL),(2,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-young-marx.jpg','Award-winning film by Raoul Peck, director of I Am Not Your Negro. It follows a discussion with Alex Callinicos on Marx: The Revolutionary. Saturday 7pm','Young Karl Marx','The Young Karl Marx film screening','https://www.youtube.com/watch?v=hVTDoZLssg8'),(3,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-disco.jpg','Author Yuri Prasad and Liz Wheatley follow their discussion on the radical history of disco with a night of music and DJs. Saturday 7pm','Disco','A Rebel&apos;s Guide to Disco ',NULL),(4,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-apartheid-london-recruits.jpg','A special Q & A and taster of a documentary that tells the secret story of how young activists in Britain carried out daring missions in apartheid South Africa to subvert the regime. Friday 8.45pm','London recruits','London recruits',NULL),(5,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-MLK-installation.jpg','FREEDOM is an immersive three-screen video installation that intersects footage of Martin Luther King with the struggle against racism today  All day Sat & Sun','FREEDOM','FREEDOM',NULL),(6,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-freesia.jpg','Freesia film screening -  An award winning film that looks at Islamophobia in Britain today, Freesia follows the story of three families in Bradford. Friday 9pm','Freesia','Freesia film screening','https://www.youtube.com/watch?v=F6vL1wpaRZ0'),(7,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-calais-children.jpg','Director Sue Clayton for a Q&A with her award-winning film. Saturday 7pm','Calais Children','Calais Children: A Case to Answer film screening','https://www.youtube.com/watch?v=Pc5lrWKFPI8'),(8,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-black-voices.jpg','Musician and author Dave Randall debates anti-racism and music. Sunday 2pm','Black voices','Black voices, white visions: music, racism & identity',NULL),(9,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-after-party.jpg','with music from the Fred Hampton Appreciation Society an eight-piece band based in north-west London who make music to move your head, heart and feet. Sunday 6.30pm','Marxism After Party','Marxism After Party','https://www.youtube.com/watch?v=I1naf38k7gs');
/*!40000 ALTER TABLE `culture_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marxism_website`
--

DROP TABLE IF EXISTS `marxism_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marxism_website` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `about_heading` varchar(255) NOT NULL,
  `about_line2` varchar(255) DEFAULT NULL,
  `about_line3` varchar(255) DEFAULT NULL,
  `about_text` text NOT NULL,
  `apply_ticket_discount` bit(1) NOT NULL,
  `audio_url` varchar(255) NOT NULL,
  `contact_address1` varchar(255) NOT NULL,
  `contact_address2` varchar(255) NOT NULL,
  `contact_address3` varchar(255) NOT NULL,
  `contact_address4` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_heading` varchar(255) NOT NULL,
  `contact_line2` varchar(255) NOT NULL,
  `contact_telephone` varchar(255) NOT NULL,
  `discount_amount` int(11) NOT NULL,
  `discount_code` varchar(255) DEFAULT NULL,
  `discount_text` varchar(255) NOT NULL,
  `gallery_url` varchar(255) NOT NULL,
  `is_live` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pricing_day_ticketfe` int(11) NOT NULL,
  `pricing_day_tickethe` int(11) NOT NULL,
  `pricing_day_ticket_unwaged` int(11) NOT NULL,
  `pricing_day_ticket_waged` int(11) NOT NULL,
  `pricing_flexi_ticketfe` int(11) NOT NULL,
  `pricing_flexi_tickethe` int(11) NOT NULL,
  `pricing_flexi_ticket_unwaged` int(11) NOT NULL,
  `pricing_flexi_ticket_waged` int(11) NOT NULL,
  `pricing_full_eventfe` int(11) NOT NULL,
  `pricing_full_eventhe` int(11) NOT NULL,
  `pricing_full_event_unwaged` int(11) NOT NULL,
  `pricing_full_event_waged` int(11) NOT NULL,
  `pricing_heading` varchar(255) NOT NULL,
  `pricing_text` text NOT NULL,
  `show_about` bit(1) NOT NULL,
  `show_booking` bit(1) NOT NULL,
  `show_contact` bit(1) NOT NULL,
  `show_culture_items` bit(1) NOT NULL,
  `show_discount_code` bit(1) NOT NULL,
  `show_gallery` bit(1) NOT NULL,
  `show_pricing` bit(1) NOT NULL,
  `show_speakers` bit(1) NOT NULL,
  `show_themes` bit(1) NOT NULL,
  `show_video` bit(1) NOT NULL,
  `theme_heading` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `videos_url` varchar(255) NOT NULL,
  `welcome_text1` varchar(255) NOT NULL,
  `welcome_text2` varchar(255) DEFAULT NULL,
  `welcome_text3` varchar(255) DEFAULT NULL,
  `welcome_text4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marxism_website`
--

LOCK TABLES `marxism_website` WRITE;
/*!40000 ALTER TABLE `marxism_website` DISABLE KEYS */;
INSERT INTO `marxism_website` VALUES (1,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'Marxism 2018','A festival of socialist ideas','5 - 8 July, central London','If you were excited by Jeremy Corbyn&apos;s election as Labour leader, horrified by Donald Trump, want to challenge racism and oppression, desire action over climate change or are looking for an alternative to austerity and war then Marxism Festival 2018 is the place for you. Thousands of activists, campaigners, trade unionists, students, writers and academics will come together at over 130 different meetings.','\0','','Marxism Festival 2018','PO BOX 74955','London','E16 9EJ','info@marxismfestival.org.uk','Get in touch with us','Do not hesitate to drop us a line. Tel : 020 7840 5620','020 7840 5620',500,'student18','Book before Wednesday 28 March for a £5 discount on your booking!','','','2018',10,15,15,20,10,15,15,20,20,30,30,55,'Ticket prices','Advance tickets are much cheaper than those bought on the door, so if you book before 5pm on 4 July you&apos;ll save at least £10. The festival is a not-for-profit event and we keep ticket prices as low as possible. But we do have to charge for entry to cover the high costs of the venues, creche, staffing and accommodation.','','','','','','','','','','','Marxism Festival 2018','https://www.youtube.com/watch?v=MQHlKuJhF9&autoplay=1','','Marxism Festival 2018','A festival of socialist ideas','5 - 8 July, Central London',NULL);
/*!40000 ALTER TABLE `marxism_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marxism_website_about`
--

DROP TABLE IF EXISTS `marxism_website_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marxism_website_about` (
  `marxism_website_id` bigint(20) NOT NULL,
  `abouts_id` bigint(20) NOT NULL,
  `about_item_index` int(11) NOT NULL,
  PRIMARY KEY (`marxism_website_id`,`about_item_index`),
  KEY `FKnqjtcps7a3if35es3th2jw322` (`abouts_id`),
  CONSTRAINT `FK241cbvt54b2mx07xysshaayf5` FOREIGN KEY (`marxism_website_id`) REFERENCES `marxism_website` (`id`),
  CONSTRAINT `FKnqjtcps7a3if35es3th2jw322` FOREIGN KEY (`abouts_id`) REFERENCES `about` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marxism_website_about`
--

LOCK TABLES `marxism_website_about` WRITE;
/*!40000 ALTER TABLE `marxism_website_about` DISABLE KEYS */;
/*!40000 ALTER TABLE `marxism_website_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marxism_website_carousel_items`
--

DROP TABLE IF EXISTS `marxism_website_carousel_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marxism_website_carousel_items` (
  `marxism_website_id` bigint(20) NOT NULL,
  `carousel_items_id` bigint(20) NOT NULL,
  `carousel_item_index` int(11) NOT NULL,
  PRIMARY KEY (`marxism_website_id`,`carousel_item_index`),
  KEY `FKp0rn8htbkcv4d6b8srsr362me` (`carousel_items_id`),
  CONSTRAINT `FK72ucs3lbki7l7scaa3sxo4uud` FOREIGN KEY (`marxism_website_id`) REFERENCES `marxism_website` (`id`),
  CONSTRAINT `FKp0rn8htbkcv4d6b8srsr362me` FOREIGN KEY (`carousel_items_id`) REFERENCES `carousel_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marxism_website_carousel_items`
--

LOCK TABLES `marxism_website_carousel_items` WRITE;
/*!40000 ALTER TABLE `marxism_website_carousel_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `marxism_website_carousel_items` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marxism_website_culture_items`
--

LOCK TABLES `marxism_website_culture_items` WRITE;
/*!40000 ALTER TABLE `marxism_website_culture_items` DISABLE KEYS */;
INSERT INTO `marxism_website_culture_items` VALUES (1,1,0),(1,2,1),(1,3,2),(1,4,3),(1,5,4),(1,6,5),(1,7,6),(1,8,7),(1,9,8);
/*!40000 ALTER TABLE `marxism_website_culture_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marxism_website_speakers`
--

DROP TABLE IF EXISTS `marxism_website_speakers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marxism_website_speakers` (
  `marxism_website_id` bigint(20) NOT NULL,
  `speakers_id` bigint(20) NOT NULL,
  `speaker_index` int(11) NOT NULL,
  PRIMARY KEY (`marxism_website_id`,`speaker_index`),
  KEY `FKea9t3x9pggoj3taygh8hqouxg` (`speakers_id`),
  CONSTRAINT `FKea9t3x9pggoj3taygh8hqouxg` FOREIGN KEY (`speakers_id`) REFERENCES `speaker` (`id`),
  CONSTRAINT `FKepom9tlu7o0imp3k4bx4ls1oe` FOREIGN KEY (`marxism_website_id`) REFERENCES `marxism_website` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marxism_website_speakers`
--

LOCK TABLES `marxism_website_speakers` WRITE;
/*!40000 ALTER TABLE `marxism_website_speakers` DISABLE KEYS */;
INSERT INTO `marxism_website_speakers` VALUES (1,1,0),(1,2,1),(1,3,2),(1,4,3),(1,5,4),(1,6,5),(1,7,6),(1,8,7),(1,9,8),(1,10,9),(1,11,10),(1,12,11),(1,13,12),(1,14,13),(1,15,14),(1,16,15),(1,17,16),(1,18,17),(1,19,18),(1,20,19),(1,21,20),(1,22,21),(1,23,22),(1,24,23),(1,25,24),(1,26,25),(1,27,26),(1,28,27),(1,29,28),(1,30,29);
/*!40000 ALTER TABLE `marxism_website_speakers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marxism_website_themes`
--

DROP TABLE IF EXISTS `marxism_website_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marxism_website_themes` (
  `marxism_website_id` bigint(20) NOT NULL,
  `themes_id` bigint(20) NOT NULL,
  `theme_index` int(11) NOT NULL,
  PRIMARY KEY (`marxism_website_id`,`theme_index`),
  KEY `FKn6m1cujbt2gpn64ny95yfoxhk` (`themes_id`),
  CONSTRAINT `FK62vjylcsbwut7anxoh1np7qb5` FOREIGN KEY (`marxism_website_id`) REFERENCES `marxism_website` (`id`),
  CONSTRAINT `FKn6m1cujbt2gpn64ny95yfoxhk` FOREIGN KEY (`themes_id`) REFERENCES `theme` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marxism_website_themes`
--

LOCK TABLES `marxism_website_themes` WRITE;
/*!40000 ALTER TABLE `marxism_website_themes` DISABLE KEYS */;
INSERT INTO `marxism_website_themes` VALUES (1,1,0),(1,2,1),(1,3,2),(1,4,3),(1,5,4),(1,6,5),(1,7,6),(1,8,7),(1,9,8);
/*!40000 ALTER TABLE `marxism_website_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting`
--

DROP TABLE IF EXISTS `meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `day` varchar(255) NOT NULL,
  `description` text,
  `speakers` varchar(255) DEFAULT NULL,
  `time` varchar(255) NOT NULL,
  `title` varchar(500) NOT NULL,
  `marxism_website_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpkxmuqworv9rfk8abd97qw1q2` (`marxism_website_id`),
  CONSTRAINT `FKpkxmuqworv9rfk8abd97qw1q2` FOREIGN KEY (`marxism_website_id`) REFERENCES `marxism_website` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1474 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting`
--

LOCK TABLES `meeting` WRITE;
/*!40000 ALTER TABLE `meeting` DISABLE KEYS */;
INSERT INTO `meeting` VALUES (1345,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','We have seen an explosion of trans awareness and activism over the last few years, but we\'ve also seen attempts by the bigots to stigmatise trans people. Shockingly, some on the Left have beeen hesistant to support trans people in their fight for liberation. Join author and activist Laura Miles to debate the arguments and discuss how we can build solidarity with trans resistance today. ','Laura Miles','12.30','The fight for trans liberation',1),(1346,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','Martin Empson, author of Land and Labour, will be discussing why the Anthropocene matters for climate activists','Martin Empson','12.30','What does the Anthropocene mean for revolutionary strategy?',1),(1347,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Nadia Sayed','12.30','Workshop: Do we need violence to get real social change?',1),(1348,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','','Chin Chukwudinma','12.30','Africa and Imperialism today',1),(1349,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','The Brexit crisis for the Tories continues to rumble on, with resignations, splits and rows a regular feature. However, Labour and Corbyn have been stuck on the issue, and it seems the Tories are being let off the hook. Join the debate on how the Left can agin from the Tory crisis.','','14.30','Brexit & the Tory crisis: How can the Left gain?',1),(1350,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','The legacy of slavery and empire weighs heavy in education, from statues of Rhodes on campus to a narrow curriculum that excludes Black thinkers and writers. It is therefore no suprise that movements have sprung up to decolonise education. Join Talat Ahmed and Harjeevan Gill to debate how we can confront the legacy of slavery and empire.','','14.30','Debate: Decolonising education: confronting the legacy of slavery & empire',1),(1351,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','','Camilla Royle','14.30','Is science political?',1),(1352,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','','','14.30','What would socialism be like?',1),(1353,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','','Ron Margulies','16.15','Turkey, the Kurds and the great powers',1),(1354,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','','Jad Bouharoun','16.15','A Marxist history of early Islam',1),(1355,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','From Tommy Robinson to the \'Snowflake Generation\', the question of free speech is used by the right to attack the Left as being intolerant and totalitarian. Should we support absolute free speech? Should the far right be no platformed? Join this workshop to debate these questions and more. ','Lewis Nielsen','16.15','Workshop: Snowflake generation? Who decides free speech?',1),(1356,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','','Julie Sherry','16.15','What do we mean by class?',1),(1357,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','','Ken Olende','16.15','What was unique about the translatlantic slave trade?',1),(1358,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','The opening rally is a highlight of Marxism and will feature speakers including pro-choice activists from Ireland, anti-racist activists and campaigners from around the world. Don\'t miss it!','','19.00','Opening rally: Taking on Trump - resisting racism, oppression, war & austerity',1),(1359,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','The Rushdie affair is often seen as a turning point for modern islamophobia in Britain. Hassan Mahamdallie, editor of Critical Muslim, will be discussing the legacy of the Rushdie affair and its relevance today.','Hassan Mahamdallie','10.00','30 years since Salman Rushdie: A turning point for British Muslims?',1),(1360,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Jan Nielsen','10.00','The politics of food',1),(1361,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Yunus Bakhsh','10.00','50 years on: How did the US lose in Vietnam?',1),(1362,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Adrian Budd','10.00','Where is China going?',1),(1363,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Joseph Choonara, author of A Reader\'s Guide to Capital, will be leading a specialcourse aimed at those aiming to read Marx\'s Capital. Timings may differ from those of other meetings, although the lunchbreak will remain unchanged. ','Joseph Choonara','10.00','Introduction to Capital course',1),(1364,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Alan Kenny','10.00','Workshop: What would a revolution look like?',1),(1365,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Charlie Kimber','11.45','50 years on: What is the role of Socialist Worker today?',1),(1366,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Amy Leather','11.45','Why does capitalism love plastic?',1),(1367,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Talat Ahmed','11.45','Black Thinkers Matter: who was Frantz Fanon?',1),(1368,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Anne Alexander','11.45','The rise of Saudi Arabia and the political economy of the Gulf',1),(1369,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Joseph Choonara, author of A Reader\'s Guide to Capital, will be leading a specialcourse aimed at those aiming to read Marx\'s Capital. Timings may differ from those of other meetings, although the lunchbreak will remain unchanged. ','Joseph Choonara','11.45','Introduction to Capital course (cont\'d)',1),(1370,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Lucia Pradella','11.45','Italy and the fight against racism',1),(1371,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Trump\'s chaotic regime has represented a crisis for liberal capitalism, not least through his threats of trade wars and real wars. Alex Callinicos will be debating his first 18 months in power.','Alex Callinicos','14.30','Trump, trade wars & real wars',1),(1372,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Angela Davis, civil rights and Black Panther activist, remains a figurehead and face of resistance around the world. The meeting will be discussing the life and politics of a revolutionary.','Esme Choonara','14.30','Black thinkers matter:Angela Davis: Women, race and class',1),(1373,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Patrick Nielsen','14.30','Workshop Fake News: does the Media control our minds?',1),(1374,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Martin is an author and activist and will be launching his new book discussing  Class Struggle and Change in the English Countryside.','Martin Empson','14.30','Booklaunch: Kill all the Gentlemen',1),(1375,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Noel Halifax','14.30','What happened to Queer Theory?',1),(1376,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Joseph Choonara, author of A Reader\'s Guide to Capital, will be leading a specialcourse aimed at those aiming to read Marx\'s Capital. Timings may differ from those of other meetings, although the lunchbreak will remain unchanged. ','Joseph Choonara','14.30','Introduction to Capital course (cont\'d)',1),(1377,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Maxine Bowler','14.30','Marxism and religion: sigh of the oppressed?',1),(1378,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','A special panel marking 50 years since 1968 will discuss it\'s relevance today. It was after all the year the world caught fire, from the student movement in France to the riots in Los Angeles.','Maria Styllou, Matt Collins','16.15','Debate: The fire last time: what is the legacy of 1968?',1),(1379,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','','16.15','Who are the (Democratic) Football Lads Alliance?',1),(1380,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','We\'re joined by a panel of housing activists as well as special guests from the Labour Party and Green Party to discuss the fight for social housing.','Panel','16.15','Debate: From demolitions to social cleansing: the class war on housing',1),(1381,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Peyman Jafari','16.15','Iran on the brink',1),(1382,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Antony Hamilton','16.15','Workshop: The concept of race: What does it mean to be Black?',1),(1383,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Celia Hutchison','16.15','Workshop: Where does sexism come from?',1),(1384,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','We\'re joined by Dave Ward, General Secretary of CWU, and Ian Hodson, President of BFAWU, to debate the fight against austerity in the era of Corbyn.','Martin Upchurch','16.15','What is the future with Artificial Intellingence and robots?',1),(1385,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Dave Ward, Ian Hodson','19.00','Debate Labour and the fight against austerity',1),(1386,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Sheila Coleman from the Hillsborough Justice Campaign and campaigning lawyer Gareth Peirce join us to discuss Injustice & the British State.','Sheila Coleman & Gareth Peirce','19.00','Injustice and the British State',1),(1387,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Ronnie Kasrils, served in the South African liberation movement all his adult life, was chief of intelligence in the ANCs military wing, organised operations from exile including that of the London Recruits, served in Mandela\'s government as deputy minister of Defence, followed by other portfolios to 2008 when he resigned and became active as a critic of the ANC. Internationally active with Palestine Solidarity and author of several books. This will be followed by a special taster of new film \'The London Recruits\', including Q & A witrh those involved.','Ronnie Kasrils','19.00','South Africa after Zuma',1),(1388,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','John Molyneux','19.00','Is there progress in art?',1),(1389,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','A recent spate of killings has ignited debates about crime, its relationship to gangs, and the role of the police. Over 50 murder investigations have been opened in London 2018—and most victims are young and black. \n\nMuch of the media blame the emergence of “postcode gangs” launching “turf wars” for the attacks. Dean Ryan, a youth worker in Hackeny, will be exploring the real reasons behind gun and knife crime. ','Dean Ryan','19.00','Gun and knife crime: why are young people killing each other?',1),(1390,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Helen Salmon','19.00','The case against borders: why we oppose all immigration controls',1),(1391,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','(https://www.facebook.com/events/167140864132481/) Hosted by comedians Johnny Cochrane and Jasmine Fischer, what better way to gear up for Trump\'s visit?','','21.00','Culture: Trump Comedy Roast',1),(1392,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','An award winning film that looks at Islamophobia in Britain today, Freesia follows the story of three families in Bradford. More info at https://www.imdb.com/title/tt4474930/','','21.00','Culture: Freesia film screening',1),(1393,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Following the meeting South Africa after Zuma with Ronnie Kasrils, freedom fighter in Apartheid South Africa, Marxism Festival is very pleased to host a special film trailer premier:The LONDON RECRUITS: A documentary that tells the secret story of how young activists in Britain carried out daring missions in apartheid South Africa to subvert the regime. More info at https://www.londonrecruits.com/','','21.00','Culture: London recruits screening',1),(1394,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','','John Molyneux','10.00','Is Leninism authoritarian?',1),(1395,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','','Phil Marfleet','10.00','Iraq: What happened next?',1),(1396,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','','Sarah Bates','10.00','How did women win the vote?',1),(1397,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','','Anna Gluckstein','10.00','Antisemitism and the far right today',1),(1398,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','','Ameen Hadi','10.00','Who were the real Black panthers?',1),(1399,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','Part of our series of meetings to discussing the legacy of 1968: the year the world caught fire. ','Colm Bryce','10.00','When students and workers united: May 1968',1),(1400,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','','Sabby Sagall','10.00','Music and capitalism',1),(1401,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','A socialist may be the next Prime Minister of Britain. This opens up huge possibilities, but also throws up big questions. Is revolution still relevant in the era of Corbyn? Join the debate with Charlie Kimber, editor of Socialist Worker newspaper.','Charlie Kimber','11.45','Revolutionary politics in the era of Corbyn',1),(1402,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','One year on from the Grenfell disaster, the fight for justice continues. Families are still yet to be permanently rehoused, while the companies and politicians responsible for Grenfell continue to walk free. This special panel - including Moyra Samuels from Justice4Grenfell and firefighter Lucy Masoud - will be debating how we can get justice for Grenfell.','Moyra Samuels, Lucy Masoud','11.45','One year on: Grenfell & the fight for Justice',1),(1403,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','Michael Roberts is a Marxist economist (https://thenextrecession.wordpress.com/). He wil (try!) to discuss Marx\'s three laws of motion in just 30 minutes! See if he can do it.','Michael Roberts','11.45','Marx\'s laws of motion in 30 minutes',1),(1404,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','The Trojan Horse scandal in Birmingham was an islamophobic attempt to stigmatise Muslim communities, and is emblematic of the systematic racism at the heart of the Prevent strategy. John Holmwood, who wrote a book on the topic will be joined by Tahir Alam, a former governor of one of the schools in question.','John Holmwood, Tahir Alam','11.45','Trojan Horse, Prevent and fighting Islamophobia',1),(1405,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Are humans different from animals? Should all species be treated equally? Does speciesism exist? Join socialist scientist John Parrington to discuss these questions and more. ','John Parrington','11.45','What makes humans different from animals?',1),(1406,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','','Gary McFarlane','11.45','Wakanda forever: Africa before colonisation',1),(1407,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','','Kevin Doogan','11.45','Is the welfare state finished?',1),(1408,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','In both Poland and Hungary, far right or fascist groups are either in government or have mobilised huge numbers on the streets. Antisemitism and islamophobia are at their core. Does this mean fascism is back in Eastern Europe? Polish and Hungarian anti-fascists will be flying over to discuss.','Andy Zebrowski & others','11.45','Is fascism back in Eastern Europe?',1),(1409,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','We keep being told that the world economy will begin to recover, and that the darkest financial days are behind us. Does capitalism have a way  out of the current economic crisis? Join Michael Roberts, Marxist economist, to discuss','Michael Roberts','14.30','World economy: Is the long depression over?',1),(1410,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','The big debate:The Corbyn movement is at a crucial juncture. Socialist ideas are popular again, and the Tories are on the back foot. However it feels that since the election last year, there has been somewhat of a stalemate. What way forward for Corbyn and the fight for socialism. Mark Perryman, editor of the Corbyn moment, will be debating Mark L Thomas on where next?','Mark Perryman, Mark L Thomas','14.30','Debate: Corbyn, Labour & the future of British politics',1),(1411,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','From Trump to Tommy Robinson, we\'ve seen a resurgence of the far right. Recently up to 15,000 supporters of Tommy Robinson marched in London.','Weyman Bennett','14.30','Fascism, the far right and racist populism today',1),(1412,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','','Amy Leather ','14.30','#MeToo: fighting sexism & the system',1),(1413,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/1670563616332870/) The crisis in Catalonia may have been slipped down the headlines, but it is by no means over. The recent resignation of Rajoy has opened up possibilities for the movemet to push back. And what does the independence crisis say about the nature of the European Union? Activists from the Catalonia including David Karvala will be flying over to join the debate.','David Karvala & others','14.30','Debate: Catalonia & the crisis in Europe',1),(1414,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','The crisis in education continues to deepen, from teacher workloads to endless testing of children. Is another education system possible? Alex Kenny from the NEU executive will be joined by Paddy dé Cléir and Lisa Tunnell from the Young Teachers Network.','Alex Kenny, Lisa Tunnell & others','14.30','Is another education possible?',1),(1415,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','In many ways disabled people have been at the forefront of austerity. The government has rought in a culture that has treated those on benefits as scroungers and victims. But they\'re not - join Disabled People Against Cuts to hear their tales of resistance and discuss the fightback','Disabled People Against Cuts','14.30','Disability, oppression & resistance',1),(1416,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Mike Wayne teaches film, television and media studies. He is the co-editor (with Deirdre O’Neill) of Considering Class: Theory, Culture and the Media in the 21st Century and co-director of with Deirdre O\'Neill of feature doc The Acting Class.\n\nDeirdre O\'Neill is a lecturer and filmmaker. Her new book is Film as a Radical Pedagogic tool. She is the co-coordinator of the Inside Film Project.\n\nShe has co-directed (with Mike Wayne) two films Listen to Venezuela and Condition of the Working Class.\n\nTheir latest film The Acting Class is currently touring the country.','Dee O\'Brien & Mike Wayne','14.30','Considering class: theory, culture and media in the 21st century',1),(1417,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','','Mani Tanoh','14.30','Do British people benefit from the oppression of the Global South',1),(1418,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','','','14.30','Dylan Thomas: Poetry and politics',1),(1419,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/633990273607227/) John Bellamy Foster is editor of Monthly Review in the US and is author of many books discussing the environment. He\'ll be discussing how why socialist politics must be at the heart of any real attempt to fight climate change and for a sustainable planet.','John Bellamy Foster','16.15','Marxian theory & eco-revolution',1),(1420,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Janet\'s brother Christopher was racially abused and killed in police custody in 1998. In the 20 years since she has been a fearless fighter for justice, and it recently emerged the police admitted to spying on her during the justice campaign. Hear her story.','Janet Alder, Brian Richardson','16.15','25 years on from Stephen Lawrence: Police, racism & the state',1),(1421,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Could a Labour government really end austerity? How would Corbyn defend himself against the inevitable attacks from the ruling class? What role would the movement on the streets and workplaces play? Join Charlie Kimber and special guests to discuss these questions and more. ','Charlie Kimber and special guests','16.15','Debate: What would a Labour government look like?',1),(1422,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Mental Distress has become one of the key “public issues” of the 21st century. According to the World Health Organisation, depression currently affects 350 million people worldwide. In his new book Politics of the Mind: Marxism and Mental Distress Iain Ferguson looks at the link between the economic and political system under which we live – capitalism – and the enormously high levels of mental distress which we see in the world today. At this meeting Iain will discuss how we can better understand mental distress using an historical and materialist Marxist approach as well as how new movements over the last few years have shaped responses to mental health issues.\n','Iain Ferguson','16.15','Booklaunch: Politics of the mind: Marxism & mental distress',1),(1423,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/1635619956491099/) The abortion campaign in Ireland was inspiring and involved millions of working class women fighting back against the bigotry of church and state. We\'re delighted to be hosting Brid Smith - a member of the Irish Parliament - alongside Abortion Wars author Judith Orr to discuss the fight for abortion rights today.','Brid Smith TD, Judith Orr','16.15','From Ireland to Trump: The fight for abortion rights',1),(1424,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Alfred Saad Filho, author of a new book on Brazil, will be debating with Raquel Varela the current political situation in Brazil.','Alfredo Saad-filho, Raquel Varela','16.15','Brazil: Neoliberalism vs democracy',1),(1425,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','','','16.15','Gig work, the platform economy & class struggle',1),(1426,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Revolutions that are defeated are soon forgotten. Yet of all the upheavals after WWI, it was events in Germany that prompted British Prime Minister David Lloyd George to wrie \'The whole existing order, in its political, social and economic aspects, is questioned by the masses from one end of Europe to the other.\' Michael Bradley will be assessing the 100th anniversary of the Lost Revolution in Germany. ','Michael Bradley','16.15','The lost revolution: 100 years on from the German revolution',1),(1427,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Spoken word artist Kurly will be leading a particpatory workshop open to all. Get your rhymes ready!','Kurly','16.15','Spoken word workshop',1),(1428,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','We\'ll be joined by Mani Tanoh from Ghana and Willet Hanyani from Zimbabwe to discuss class struggle in Africa.','Mani Tanoh','16.15','From African Marxism to neoliberalism',1),(1429,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/604582456584128/) This year marks the 200th anniversary of the birth of Karl Marx. Alex Callinicos, author of The Revolutionary Ideas of Karl Marx, will be reclaiming Marx as a revolutionary for today. Followed y a film screening of The Young Karl Marx.','Alex Callinicos','19.00','Marx the revolutionary',1),(1430,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','The pro-Palestine movement has been under fierce attack, from university campuses to the Labour Party. We\'ll be joined by Palestinian author and activist Ghada Karmi and Jewish Voice for Labour member Jonathan Rosenhead to debate the silencing of Palestine.','Ghada Karmi, Jonathan Rosenhead','19.00','Palestine & the rhetoric of free speech',1),(1431,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Uncover the radical history of the music that filled the dance floors, challenged oppression and became a scourge of the right.','Yuri Prasad & Liz Wheatley','19.00','A rebel\'s guide to disco',1),(1432,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','50 years ago, Enoch Powell made a inflamatory speech that whipped up racism towards migrants. He was sacked the next day, but over the years conservatives and racists have tried to rehabilitate his reputation and argue that his anti-migrant racism may have been well placed. We\'ll be joined by author and activist Patrick Vernon and Dr Shirin Hirsch to discuss the legacy of Powell\'s speech today.','Patrick Vernon, Shirin Hirsch','19.00','Enoch Powell & rivers of blood: 50 years on',1),(1433,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','The McStrike early this year was inspiring - low paid workers organising in the most difficult of conditions. A McStriker in the UK will be joined by Pam Frache from Fight for 15 in Canada to discuss the global fight to organise the unorganised.','McStriker, Pam Frache','19.00','Organising the unorganised',1),(1434,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/254956981941042/) This award winning film tells the story of the children left behind in Calais by the British and French Authorities. It follows a Q & A with director Sue Clayton ','Sue Clayton','19.00','Film screening: Calais children: A Case to answer Q & A',1),(1435,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','','Tony Sullivan','19.00','Fashion & Capitalism',1),(1436,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/604582456584128/) A rare chance to see the award winning film by Raoul Peck, director of \'I am Not Negro\', which looks at how Karl Marx and Friedrich Engels became comrades and revolutionaries.','','21.00','The Young Karl Marx film screening',1),(1437,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','DJ\'s Yuri Prasad and Liz Wheatley follow their discussion on the radical history of disco with a night of music and DJs in Student Central','DJ Liz Wheatley & Yuri Prasad','21.00','Rebel\'s Guide to Disco',1),(1438,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','Syrian socialist Ghayath Naisse will be leading a discussion on Who is to blame for the horror in Syria?','Ghayath Naisse','10.00','Who is to blame for the horror in Syria?',1),(1439,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','Sue Caldwell','10.00','Do privilege theory & intersectionality help fight oppression?',1),(1440,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','NUT National Executive member Jess Edwards will be leading a discussion on how we learn, and how radical pedagogy can provide an alternative to the crisis in education.','Jess Edwards','10.00','How do we learn? Pedagogy & education today',1),(1441,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','','10.00','Scotland, independence & the Left',1),(1442,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','Nike Johnson','10.00','Black Thinkers Matter: Malcolm X & the fight against racism',1),(1443,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','Tomas Tengely-Evans','10.00','1968: The Prague Spring and the rupturing of Stalinism',1),(1444,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','Sarah Ensor','10.00','Capitalism & extinction',1),(1445,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','The work of Antonio Gramsci is often hijacked by right wingers, but Gramsci\'s works are key to a Marxist understanding and method. Alex Callinicos will be reclaiming Gramsci for today. ','Alex Callinicos','11.45','Gramsci & the art of politics',1),(1446,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','It\'s been revealed that 2017 had the lowest strike figures since records began. What does this mean for trade union tactics today? How can we build in the workplace in period of low struggle? SWP Industrial organiser Mark L Thomas will be discussing these questions and more. ','Mark L Thomas','11.45','Building in the unions & workplace',1),(1447,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','(https://www.facebook.com/events/1840185549373229/) The hijab has been at the forefront of islamophobia, from the ban in France to racist attacks here. There is also some confusion within the Left, with many falling into pseudo-feminist arguments that criticise Islam. Siema Iqbal (AVOW), Naima Omar and Latifa Abouchakra (NEU member) will be discussing the fight to defend a woman\'s right to wear the hijab.','Naima Omar, Siema Iqbal, :Latifa Abouchakra','11.45','A woman\'s right to chooseIslamophobia & the hijab',1),(1448,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','Author and activist Judith Orr will be discussing the potential imperialist clashes in the era of Trump and Putin','Judith Orr','11.45','Are we heading for a new Cold War?',1),(1449,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','We\'ve recently seen an explosion of debate surrounding the legacy of slavery and empire, much of it centred on the statues of that era. Author and activist Brian Richardson will be debating whether they should all fall.','Brian Richardson','11.45','Who gets to be remembered: Should all the statues fall?',1),(1450,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Fran Manning','11.45','Workshop: Is human nature a barrier to socialism?',1),(1451,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','Author Alan Gibbons launches the second book of his Russian Revolution trilogy','Alan Gibbons','11.45','Booklaunch: Reason in revolt',1),(1452,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Richard Donnelly','11.45','Workshop: What is the dialectic?',1),(1453,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','(https://www.facebook.com/events/196048077711172/) Ilan Pappé is one of the most prominent anti-Zionist scholars in the world, and has written a number of celebrated books on the topic. Ilan will be discussing The day after: opportunities and dangers for Palestine in the era of Trump.','Ilan Pappé','14.00','Palestine in the era of Trump',1),(1454,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','(https://www.facebook.com/events/1936843079719073/). We\'ve recently seen the far right movement in Britain attempt to make the kind of breakthrough made by their European counterparts. This special panel willl bring together antifascists from across Europe to debate the fightback against the far right. Speakers include Christine Buchholz (MP in Germany), David Albrich (Austria) and Petros Constantinou (Greece)','Christine Buchholz, David Albrich & more','14.00','Resisting the far right & fascism in Europe',1),(1455,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','A special panel will be discussing Class, Pride & Protest: the fight for LGBT+ Liberation. Speakers include Nicola Field (Lesbians and Gays Support the Miners), Charlie Kiss (Trans activist), Peter Purton (author of Trade Unions & LGBT Rights)  & Edward Sesange (Diamond African LGBTI Group).','Nicola Field and others','14.00','Class, Pride and protest: Fighting for LGBT+ liberation',1),(1456,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','From HE to FE, this year has seen massive attacks but also huge resistance. A panel of activists will be discussing where next in the fight to defend education. Speakers include Nita Sanghera (UCU Vice-President elect) and UCU activists.','Nita Sanghera and others','14.00','Universities and colleges, neoliberalism & resistance',1),(1457,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','Suzanne Jeffrey will be joined by anti-fracking activists to discuss how dirty enegry is tied into capitalism, and how we can build a movement to take it on.','','14.00','Dirty energy & capitalism: what\'s the real story',1),(1458,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','A panel of NHS campaigners will come together on the NHS\' 70th birthday to debate how we can fight to save it. ','','14.00','NHS @ 70: How can we fight to defend it?',1),(1459,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','Musician and author Dave Randall  will be leading a discussion on the anti-racist legacies of music. Dave has toured the world playing with Faithless and Sinead O\'Connor.','Dave Randall','14.00','Black voices, white visions: Music, racism and identity',1),(1460,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','On the 50th anniversary of the assassination of Martin Luther King, politicians will queue to pay their respects.\n\nThey will smother his memory with praise but none will acknowledge the truth - that King was a radical who wanted a complete transformation of society.\n\nWhere in their vision is the King who stood out against the Vietnam War, who pledged to organise a poor people\'s march on Washington and who mounted a devastating critique of capitalism?\n\nWhat about the King who talked of revolution and who the FBI labelled \"the most dangerous Negro in America\"?\n\nWhere is the King who was gunned down in Memphis while supporting striking workers? Author & journalist Yuri Prasad will be discussing King\'s radical legacy. \n\n','Yuri Prasad','14.00','Booklaunch: A Rebel\'s Guide to Martin Luther King',1),(1461,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','From the abortion referendum to the water charges movement, Ireland has seen profound struggles for social change. Richard Boyd-Barrett, member of the Irish Parliament, will be discussing the prospects for the socialist Left in Ireland. ','Richard Boyd Barrett TD','14.00','Prospects for the socialist Left in Ireland',1),(1462,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Naima Omar','14.00','Workshop: Marx & Alienation',1),(1463,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','The Windrush scandal has exposed the racism at the heart of the British state, and has revealed the true nature of the \'hostile environment\'. It has also raised questions of \'good\' migrants and \'bad\' migrants, and what it means to be \'British\'. Join Weyman Bennett to debate these questions and more.','Weyman Bennett','15.45','After Windrush: what does it mean to be British?',1),(1464,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','The Labour right and supporters of Israel have smeared the Left and pro-Palestine movement as being antisemitic. While of course any instance of antisemitism must be vigorously opposed, we can not allow the right to use false smears to silence criticism of Israel and support for Palestine. Naomi Wimbourne-Idrissi from Jewish Voice for Labour and Rob Ferguson will be joined by other activists to discuss the politics behind the smears, and how we can counter them.','Naomi Wimbourne-Idrissi, Rob Ferguson','15.45','Corbyn, antisemitism & justice for Palestine',1),(1465,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','Panos is editor of Socialist Worker\'s sister paper Workers\' Solidarity and will be looking at the experience Syriza in Greece and Left reformism in Europe. ','Panos Garganos','15.45','The experience of Left reformism in Europe',1),(1466,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','John Bellamy Foster is editor of Monthly Review in the US. He\'ll be joining a panel discussing how resistance has characterized Trump\'s first few years in power. ','John Bellamy Foster & others','15.45','This is America: resistance to Trump',1),(1467,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','Bea Kay','15.45','Islamophobia and child abuse: challenging the myths',1),(1468,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','Sheila McGregor','15.45','Social reproduction theory: capital & women\'s oppression',1),(1469,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','From Catalonia to Scotland, independence struggles have raised questions for the Left. ','Hector Sierra','15.45','Marxism and the fight for national liberation',1),(1470,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','','15.45','Workshop: Marxism & history',1),(1471,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','','15.45','Resistance and racism in France',1),(1472,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','The closing rally will bring together activists and campaigners speaking on the fight for a different world.','','17.30','Closing rally: After Trump-  the battle for the future',1),(1473,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','with music from the Fred Hampton Appreciation Society an eight-piece band based in north-west London who make music to move your head, heart and feet','Fred Hampton Appreciation Society','18.30','Marxism 2018 Afterparty',1);
/*!40000 ALTER TABLE `meeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speaker`
--

DROP TABLE IF EXISTS `speaker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speaker` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `long_description` varchar(3000) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `short_description` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speaker`
--

LOCK TABLES `speaker` WRITE;
/*!40000 ALTER TABLE `speaker` DISABLE KEYS */;
INSERT INTO `speaker` VALUES (1,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'Ilan-Pappe.jpg',' Ilan Pappe is the director of the European Centre for Palestine Studies at the University of Exeter and the author of twenty books, the last one is <b>The Biggest Prison on Earth: a History of the Israeli Occupation.</b>','Ilan Pappé','Ilan Papp&eacute; is an anti-Zionist academic who has written books including The Ethnic Cleansing of Palestine. He will be discussing <b>Opportunities and Dangers for Palestine in the Trump era.</b>'),(2,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'janet-alder.jpg',NULL,'Janet Alder','Janet Alder is the sister of Christopher Alder who was killed in police custody. She will be speaking on <b>Black Lives Matter: Police, racism and the state.</b>'),(3,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'john-bellamy-foster.jpg',NULL,'John Bellamy Foster','John Bellamy Foster is a Marxist ecologist and author. He will debate <b>Marxian ecology vs ecological escapism: the revolutionary necessity of our time.</b>'),(4,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'ghada-karmi.jpg',NULL,'Ghada Karmi','Ghada Karmi is a Palestinian author, academic and activist. She will be discussing <b>Palestine and the rhetoric of free speech.</b>'),(5,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'michael-roberts.jpg','Michael Roberts is a Marxist economist who has worked in the City of London for over 30 years. He is author of <b>The Great Recession - a Marxist view (Lulu, 2009)</b> and <b>The Long Depression (Haymarket 2016).</b><br/><br/>Forthcoming is <b>Marx 200: a modern view of Marx’s economics 200 years after his birth (Lulu 2018)</b> and jointly with G Carchedi, <b>The World in Crisis: empirical backing for Marx’s law of profitability (Haymarket 2018)</b>.<br/><br/>He blogs at: <a href=\"https://thenextrecession.wordpress.com\">thenextrecession.wordpress.com</a>','Michael Roberts','Michael Roberts is a Marxist economist who writes regularly on the economy. He will be speaking on <b>The Long Depression and economic crisis</b>'),(6,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'christine-buchholz.jpg',NULL,'Christine Buchholz','Christine Buchholz, an MP for Die Linke in Germany joins Petros Constantinou from KEERFA in Greece and David Albrich from Austria to discuss <b>The far right in Europe</b>'),(7,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'sheila-coleman.jpg',NULL,'Sheila Coleman','Sheila is part of the Hillsborough Justice Campaign and will speak as part of a panel on <b>Injustice and the British state</b>'),(8,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'gareth-peirce.jpg',NULL,'Gareth Peirce','Gareth is a human rights lawyer who has working on many high profile cases involving miscarriages of justice. She will speak at a special panel meeting - <b>One year on: Grenfell and the fight for justice</b>'),(9,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'dave-ward.jpg',NULL,'Dave Ward','Dave is General Secretary of the post workers union CWU. He will join Ian Hodson from BFAWU and others to discuss <b>Labour and fight against austerity</b>'),(10,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'ian-hodson.jpg',NULL,'Ian Hodson','Ian, President of BFAWU, and strikers from McDonalds will be part of many panels debating <b>Corbyn, Labour and the future of British politics</b>'),(11,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'moyra-samuels.jpg',NULL,'Moyra Samuels','Moyra is a member of the Justice4Grenfell campaign and one year on from the Grenfell tragedy will be part of a panel on <b>Injustice and the British state.</b>'),(12,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'alex-callinicos.jpg',NULL,'Alex Callinicos','Alex Callinicos, author of the Revolutionary Ideas of Karl Marx and will be discussing <b>Trump, tariffs and trade wars.</b>'),(13,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'brid-smith.jpg',NULL,'Brid Smith','Brid is a TD in the Irish Parliament for People Before Profit. She has been heavily involved in the campaign to Repeal the 8th amendment, and will be joining a panel on <b>Abortion rights today.</b>'),(14,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'jonathan-rosenhead.jpg',NULL,'Jonathan Rosenhead','Jonathan is a member of Jewish Voice for Labour and will be joining a panel debating <b>Zionism, antisemitism and Palestine solidarity</b>'),(15,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'ronnie.jpg','Ronnie Kasrils served in the South African liberation movement all his adult life, was chief of intelligence in the ANCs military wing, organised operations from exile including that of the London Recruits, served in Mandela&quot;s government as deputy minister of Defence, followed by other portfolios to 2008 when he resigned and became active as a critic of the ANC.<br/><br/>Internationally active with Palestine Solidarity and author of several books. Regards socialism as the only way to preserve humanity and the planet. He will speak on South Africa after Zuma','Ronnie Kasrils','Ronnie Kasrils served in the South African liberation movement all his adult life. He will speak on <b>South Africa after Zuma</b>'),(16,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'Nita-Sanghera.jpg','As an access to HE lecturer, working at SCCB Bournville campus, Nita is familiar with the ever present spectre of the Conservatives marketisation of education, and whatever else they can get their hands on.<br/><br/>She is an active member of UCU, and has recently become Vice President elect.','Nita Sanghera','Nita is the UCU vice-President elect and will be joining a panel debating the <b>marketization of Higher Education</b>'),(17,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'mark-perryman.jpg',NULL,'Mark Perryman','Mark is a founder of Philosophy Football and editor of The Corbyn Effect. He&apos;ll be debating <b>Corbyn and the future of British politics</b> with Mark L Thomas from the SWP.'),(18,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'naima-omar.jpg',NULL,'Naima Omar','Naima is an activist with Stand Up to Racism and will lead a panel discussing <b>A woman’s right to choose: defending the Hijab.</b>'),(19,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'alan-gibbons.jpg','Alan is the author of some seventy books and was one of the organisers of the Campaign for the Book and the <b>Speak up for Libraries Coalition</b> that spearheaded the fight to defend the public library service.<br/><br/>Alan is a prolific speaker on education and public service. The final volumes of his Revolution trilogy charting the Russian Revolution are published in 2018.<br/><br/>He is a member of the Labour Party and is speaking in a personal capacity.','Alan Gibbons','Award winning writer and Labour Party member Alan Gibbons speaks on the second book of his Russian Revolution trilogy.'),(20,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'deirdre-o-neill.jpg','Mike Wayne teaches film, television and media studies. He is the co-editor (with Deirdre O’Neill) of <b>Considering Class: Theory, Culture and the Media in the 21st Century</b> and co-director of with Deirdre O&#39;Neill of feature doc <b>The Acting Class.</b><br/><br/>Deirdre O&#39;Neill is a lecturer and filmmaker. Her new book is Film as a Radical Pedagogic tool. She is the co-coordinator of the <a href=\"http://www.insidefilm.org\">Inside Film Project</a>.<br/><br/>She has co-directed (with Mike Wayne) two films <a href=\"http://listentovenezuela.info\">Listen to Venezuela</a> and <a href=\"http://www.conditionoftheworkingclass.info\">Condition of the Working Class</a>.<br/><br/>Their latest film <b>The Acting Class</b> is currently touring the country.','Deirdre O’Neill','Film makers Deirdre O&#39;Neill and Mike Wayne will be leading a discussion on <b>Considering class: theory, culture and the media in the 21st century.</b>'),(21,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'dave-randall.jpg','Dave Randall is a musician, writer and activist.<br/><br/>He has toured the world playing guitar for Faithless, Sinead O&apos;Connor and others and is the author of Sound System: The Political Power of Music.','Dave Randall','Dave Randall is a musician who has played with Faithless and Sinead O’Connor, and he is author of Sound System: The Political Power of Music.'),(22,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'talat-ahmed.jpg',NULL,'Talat Ahmed','Talat is a lecturer and anti-racist activist based in Edinburgh. She will be leading a panel on <b>Decolonising education: confronting the legacy of slavery and empire</b>'),(23,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'john-holmwood.jpg',NULL,'John Holmwood','John Holmwood is author of Countering Extremism in British Schools – the Truth About the Trojan Horse Affair, and he will join a panel to discuss <b>Islamophobia and education.</b>'),(24,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'Lucia-Pradella.jpg',NULL,'Lucia Pradella','Lucia is an academic and activist in UCU. She’ll be speaking on <b>Italy, racism and the rise of the far right</b>'),(25,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'weyman-bennett.jpg',NULL,'Weyman Bennett','Weyman Bennett is the co-convenor of Stand Up to Racism. He will be analysing <b>Fascism, the far right and racist populism today</b>'),(26,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'maria-styllou.jpg',NULL,'Maria Styllou','Maria is a socialist activist in Greece and was a part of the 1968 student movement at the LSE. She&apos;ll be discussing <b>The legacy of 1968</b>'),(27,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'richard-boyd-barrett.jpg',NULL,'Richard Boyd-Barrett TD','Richard is a TD in the Irish Parliament with People Before Profit. He&apos;ll be part of a panel debating <b>The fight against austerity in Europe.</b>'),(28,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'alfredo-saad-filho.jpg',NULL,'Alfredo Saad-Filho','Alfredo Marxist economist who writes on Latin America. He&apos;ll be launching his new book Brazil: Neoliberalism Versus Democracy'),(29,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'judith-orr.jpg',NULL,'Judith Orr','Judith is an author and activist. She will be leading a discussion on <b>Are we heading for a new Cold War?</b>'),(30,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'iain-ferguson.jpg',NULL,'Iain Ferguson','Iain Ferguson is a social worker and part of Social Work Action Network. He will be launching his new book Politics of the Mind: Marxism and Mental Distress.'),(31,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'yuri-prasad.jpg',NULL,'Yuri Prasad','Yuri is a journalist on Socialist Worker and he’ll be launching his new book A Rebel&apos;s Guide to Martin Luther King.'),(32,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'sally-campbell.jpg',NULL,'Sally Campbell','Sally is editor of Socialist Review  and leads a panel on <b>#MeToo: fighting everyday sexism</b>'),(33,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'ghayath-naisse.jpg',NULL,'Ghayath Naisse','Ghayath is a Syrian socialist and in the context of war, imperialism and counter revolution he&apos;ll be debating <b>Syria today.</b>');
/*!40000 ALTER TABLE `speaker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `long_description` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_kos4rdub1av4d5wt6wocsdb7t` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES (1,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'labour-corbyn-image-360-x-240px.jpg','Jeremy Corbyn&apos;s success at last year&apos;s general election shattered the Tories and transformed the political situation here in Britain. Meetings at Marxism Festival will debate the issues facing Corbyn and Labour and discuss how we can mobilise to bring about fundamental change.','Corbyn','Jeremy Corbyn, the Labour Party and the fight for socialism'),(2,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'racism-image-360-x-240px.jpg','Far right and fascist forces have grown across Europe and the bigoted presidency of Donald Trump adds to the instability across the globe.  Meanwhile hundreds of refugees continue to die as they flee war and persecution. At Marxism Festival we will discuss how best to respond to these challenges.','Racism','Resisting the racist backlash and the rise of fascism across Europe'),(3,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'marx-image-360-x-240px.jpg','Karl Marx was an anti-capitalist and revolutionary. But 200 years on from his birth are his ideas still relevant today? We will explore Marx&apos;s economic insights for a system in crisis as well as his method for understanding the world today.','Marx','#Marx200 Anniversary – was Marx right?'),(4,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'climate-change-image-360-x-240px.jpg','With a climate change denier in the White House and fossil fuel use locked into capitalism - how can we act to stop catastrophic climate change?  We will discuss how Marxist ideas help shed light on an understanding of nature, ecology and the environment.','Climate Change','Capitalism and climate change'),(5,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'MeToo-image-360-x-240px.jpg','Headlines about the issue of sexual harassment have led to the #MeToo campaign with millions of women sharing their experiences.  There is a growing movement challenging ideas about gender and sexuality. But how can we build a collective response to the sexism structured into our society?','Me Too','#MeToo: challenging sexism and the system'),(6,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'imperialism-image-360-x-240px.jpg','From Syria to Palestine the Middle East is on fire – a terrible consequence of western colonialism and imperialism.  We will look at how war is endemic to capitalism, discuss the latest developments in the carve up of the world and crucially ask how we can organise to stop the bloodshed.','Imperialism','War, imperialism, the Middle East and Palestine'),(7,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'trans-lgbt-image-360-x-240px.jpg','There is an offensive against transgender people – with attacks from the right wing media and the tripling of transphobic hate crime in the last five years. Meetings will discuss the fight for LGBT+ liberation, how trans people have fought as part of the wider movement for sexual liberation, and why trans rights are a demand every socialist and trade unionist should support.','LGBT','Marxism, Trans politics and the fight for LGBT+ liberation'),(8,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'Trump-image-360-x-240px.jpg','The election as US president of an openly misogynistic, transphobic bigot who built his campaign on racist scapegoating has driven those who want to challenge oppression out onto the streets. We will discuss developments in the US and the potential for resistance to take on Trump.','Trump','Donald Trump, the US and resistance'),(9,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'class-struggle-image-360-x-240px.jpg','How can we resist the Tories offensive on working class people? Has the working class lost its power? How should we organise at work? And is there even a future of work or will robots take over? These are just some of the questions we will seek to address at Marxism Festival.','Class','Class, struggle and the trade unions today');
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme_meetings`
--

DROP TABLE IF EXISTS `theme_meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme_meetings` (
  `themes_id` bigint(20) NOT NULL,
  `meetings_id` bigint(20) NOT NULL,
  KEY `FK29v8cov836069ei39ubn9fl51` (`meetings_id`),
  KEY `FKmu9dwn8yoxitg3eiha89sldk9` (`themes_id`),
  CONSTRAINT `FK29v8cov836069ei39ubn9fl51` FOREIGN KEY (`meetings_id`) REFERENCES `meeting` (`id`),
  CONSTRAINT `FKmu9dwn8yoxitg3eiha89sldk9` FOREIGN KEY (`themes_id`) REFERENCES `theme` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme_meetings`
--

LOCK TABLES `theme_meetings` WRITE;
/*!40000 ALTER TABLE `theme_meetings` DISABLE KEYS */;
INSERT INTO `theme_meetings` VALUES (7,1345),(4,1346),(1,1347),(2,1348),(1,1349),(2,1350),(1,1352),(6,1353),(6,1354),(1,1355),(9,1356),(6,1357),(2,1359),(4,1360),(6,1361),(6,1362),(3,1363),(1,1364),(1,1365),(4,1366),(2,1367),(6,1367),(6,1368),(3,1369),(2,1370),(8,1371),(2,1372),(5,1372),(7,1375),(3,1376),(3,1377),(2,1379),(6,1381),(2,1382),(5,1383),(9,1384),(1,1385),(9,1385),(9,1389),(2,1389),(2,1390),(1,1394),(6,1395),(5,1396),(2,1397),(2,1398),(1,1401),(1,1401),(3,1403),(2,1404),(2,1406),(6,1406),(1,1407),(2,1408),(3,1409),(1,1410),(2,1411),(5,1412),(7,1415),(6,1417),(4,1419),(2,1420),(1,1421),(7,1422),(5,1423),(9,1425),(3,1429),(6,1430),(2,1432),(9,1433),(2,1434),(6,1438),(5,1439),(2,1439),(2,1442),(4,1444),(9,1446),(2,1447),(6,1448),(2,1449),(6,1449),(1,1450),(3,1452),(6,1453),(8,1453),(2,1454),(7,1455),(4,1457),(2,1460),(1,1461),(3,1462),(2,1463),(1,1464),(6,1464),(8,1466),(2,1467),(5,1468),(3,1470);
/*!40000 ALTER TABLE `theme_meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `marxism`
--

USE `marxism`;

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `icon` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `text` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carousel_item`
--

DROP TABLE IF EXISTS `carousel_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carousel_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_a8gssp8bi915rjf9x7gedbwn3` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carousel_item`
--

LOCK TABLES `carousel_item` WRITE;
/*!40000 ALTER TABLE `carousel_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `carousel_item` ENABLE KEYS */;
UNLOCK TABLES;

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
  `video_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_73qoy8cidy2l7714hnvnfr17y` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `culture_item`
--

LOCK TABLES `culture_item` WRITE;
/*!40000 ALTER TABLE `culture_item` DISABLE KEYS */;
INSERT INTO `culture_item` VALUES (1,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-images-trump-roast.jpg','Hosted by comedians Johnny Cochrane, Don Biswas and Jasmine Fischer, what better way to gear up for Trump&apos;s visit than making jokes at his expense? Friday 8.30pm','Trump comedy roast','Trump comedy roast',NULL),(2,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-young-marx.jpg','Award-winning film by Raoul Peck, director of I Am Not Your Negro. It follows a discussion with Alex Callinicos on Marx: The Revolutionary. Saturday 7pm','Young Karl Marx','The Young Karl Marx film screening','https://www.youtube.com/watch?v=hVTDoZLssg8'),(3,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-disco.jpg','Author Yuri Prasad and Liz Wheatley follow their discussion on the radical history of disco with a night of music and DJs. Saturday 7pm','Disco','A Rebel&apos;s Guide to Disco ',NULL),(4,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-apartheid-london-recruits.jpg','A special Q & A and taster of a documentary that tells the secret story of how young activists in Britain carried out daring missions in apartheid South Africa to subvert the regime. Friday 8.45pm','London recruits','London recruits',NULL),(5,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-MLK-installation.jpg','FREEDOM is an immersive three-screen video installation that intersects footage of Martin Luther King with the struggle against racism today  All day Sat & Sun','FREEDOM','FREEDOM',NULL),(6,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-freesia.jpg','Freesia film screening -  An award winning film that looks at Islamophobia in Britain today, Freesia follows the story of three families in Bradford. Friday 9pm','Freesia','Freesia film screening','https://www.youtube.com/watch?v=F6vL1wpaRZ0'),(7,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-calais-children.jpg','Director Sue Clayton for a Q&A with her award-winning film. Saturday 7pm','Calais Children','Calais Children: A Case to Answer film screening','https://www.youtube.com/watch?v=Pc5lrWKFPI8'),(8,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-black-voices.jpg','Musician and author Dave Randall debates anti-racism and music. Sunday 2pm','Black voices','Black voices, white visions: music, racism & identity',NULL),(9,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'m2018-culture-image-after-party.jpg','with music from the Fred Hampton Appreciation Society an eight-piece band based in north-west London who make music to move your head, heart and feet. Sunday 6.30pm','Marxism After Party','Marxism After Party','https://www.youtube.com/watch?v=I1naf38k7gs');
/*!40000 ALTER TABLE `culture_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marxism_website`
--

DROP TABLE IF EXISTS `marxism_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marxism_website` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `about_heading` varchar(255) NOT NULL,
  `about_line2` varchar(255) DEFAULT NULL,
  `about_line3` varchar(255) DEFAULT NULL,
  `about_text` text NOT NULL,
  `apply_ticket_discount` bit(1) NOT NULL,
  `audio_url` varchar(255) NOT NULL,
  `contact_address1` varchar(255) NOT NULL,
  `contact_address2` varchar(255) NOT NULL,
  `contact_address3` varchar(255) NOT NULL,
  `contact_address4` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_heading` varchar(255) NOT NULL,
  `contact_line2` varchar(255) NOT NULL,
  `contact_telephone` varchar(255) NOT NULL,
  `discount_amount` int(11) NOT NULL,
  `discount_code` varchar(255) DEFAULT NULL,
  `discount_text` varchar(255) NOT NULL,
  `gallery_url` varchar(255) NOT NULL,
  `is_live` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pricing_day_ticketfe` int(11) NOT NULL,
  `pricing_day_tickethe` int(11) NOT NULL,
  `pricing_day_ticket_unwaged` int(11) NOT NULL,
  `pricing_day_ticket_waged` int(11) NOT NULL,
  `pricing_flexi_ticketfe` int(11) NOT NULL,
  `pricing_flexi_tickethe` int(11) NOT NULL,
  `pricing_flexi_ticket_unwaged` int(11) NOT NULL,
  `pricing_flexi_ticket_waged` int(11) NOT NULL,
  `pricing_full_eventfe` int(11) NOT NULL,
  `pricing_full_eventhe` int(11) NOT NULL,
  `pricing_full_event_unwaged` int(11) NOT NULL,
  `pricing_full_event_waged` int(11) NOT NULL,
  `pricing_heading` varchar(255) NOT NULL,
  `pricing_text` text NOT NULL,
  `show_about` bit(1) NOT NULL,
  `show_booking` bit(1) NOT NULL,
  `show_contact` bit(1) NOT NULL,
  `show_culture_items` bit(1) NOT NULL,
  `show_discount_code` bit(1) NOT NULL,
  `show_gallery` bit(1) NOT NULL,
  `show_pricing` bit(1) NOT NULL,
  `show_speakers` bit(1) NOT NULL,
  `show_themes` bit(1) NOT NULL,
  `show_video` bit(1) NOT NULL,
  `theme_heading` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `videos_url` varchar(255) NOT NULL,
  `welcome_text1` varchar(255) NOT NULL,
  `welcome_text2` varchar(255) DEFAULT NULL,
  `welcome_text3` varchar(255) DEFAULT NULL,
  `welcome_text4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marxism_website`
--

LOCK TABLES `marxism_website` WRITE;
/*!40000 ALTER TABLE `marxism_website` DISABLE KEYS */;
INSERT INTO `marxism_website` VALUES (1,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'Marxism 2018','A festival of socialist ideas','5 - 8 July, central London','If you were excited by Jeremy Corbyn&apos;s election as Labour leader, horrified by Donald Trump, want to challenge racism and oppression, desire action over climate change or are looking for an alternative to austerity and war then Marxism Festival 2018 is the place for you. Thousands of activists, campaigners, trade unionists, students, writers and academics will come together at over 130 different meetings.','\0','','Marxism Festival 2018','PO BOX 74955','London','E16 9EJ','info@marxismfestival.org.uk','Get in touch with us','Do not hesitate to drop us a line. Tel : 020 7840 5620','020 7840 5620',500,'student18','Book before Wednesday 28 March for a £5 discount on your booking!','','','2018',10,15,15,20,10,15,15,20,20,30,30,55,'Ticket prices','Advance tickets are much cheaper than those bought on the door, so if you book before 5pm on 4 July you&apos;ll save at least £10. The festival is a not-for-profit event and we keep ticket prices as low as possible. But we do have to charge for entry to cover the high costs of the venues, creche, staffing and accommodation.','','','','','','','','','','','Marxism Festival 2018','https://www.youtube.com/watch?v=MQHlKuJhF9&autoplay=1','','Marxism Festival 2018','A festival of socialist ideas','5 - 8 July, Central London',NULL);
/*!40000 ALTER TABLE `marxism_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marxism_website_about`
--

DROP TABLE IF EXISTS `marxism_website_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marxism_website_about` (
  `marxism_website_id` bigint(20) NOT NULL,
  `abouts_id` bigint(20) NOT NULL,
  `about_item_index` int(11) NOT NULL,
  PRIMARY KEY (`marxism_website_id`,`about_item_index`),
  KEY `FKnqjtcps7a3if35es3th2jw322` (`abouts_id`),
  CONSTRAINT `FK241cbvt54b2mx07xysshaayf5` FOREIGN KEY (`marxism_website_id`) REFERENCES `marxism_website` (`id`),
  CONSTRAINT `FKnqjtcps7a3if35es3th2jw322` FOREIGN KEY (`abouts_id`) REFERENCES `about` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marxism_website_about`
--

LOCK TABLES `marxism_website_about` WRITE;
/*!40000 ALTER TABLE `marxism_website_about` DISABLE KEYS */;
/*!40000 ALTER TABLE `marxism_website_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marxism_website_carousel_items`
--

DROP TABLE IF EXISTS `marxism_website_carousel_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marxism_website_carousel_items` (
  `marxism_website_id` bigint(20) NOT NULL,
  `carousel_items_id` bigint(20) NOT NULL,
  `carousel_item_index` int(11) NOT NULL,
  PRIMARY KEY (`marxism_website_id`,`carousel_item_index`),
  KEY `FKp0rn8htbkcv4d6b8srsr362me` (`carousel_items_id`),
  CONSTRAINT `FK72ucs3lbki7l7scaa3sxo4uud` FOREIGN KEY (`marxism_website_id`) REFERENCES `marxism_website` (`id`),
  CONSTRAINT `FKp0rn8htbkcv4d6b8srsr362me` FOREIGN KEY (`carousel_items_id`) REFERENCES `carousel_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marxism_website_carousel_items`
--

LOCK TABLES `marxism_website_carousel_items` WRITE;
/*!40000 ALTER TABLE `marxism_website_carousel_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `marxism_website_carousel_items` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marxism_website_culture_items`
--

LOCK TABLES `marxism_website_culture_items` WRITE;
/*!40000 ALTER TABLE `marxism_website_culture_items` DISABLE KEYS */;
INSERT INTO `marxism_website_culture_items` VALUES (1,1,0),(1,2,1),(1,3,2),(1,4,3),(1,5,4),(1,6,5),(1,7,6),(1,8,7),(1,9,8);
/*!40000 ALTER TABLE `marxism_website_culture_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marxism_website_speakers`
--

DROP TABLE IF EXISTS `marxism_website_speakers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marxism_website_speakers` (
  `marxism_website_id` bigint(20) NOT NULL,
  `speakers_id` bigint(20) NOT NULL,
  `speaker_index` int(11) NOT NULL,
  PRIMARY KEY (`marxism_website_id`,`speaker_index`),
  KEY `FKea9t3x9pggoj3taygh8hqouxg` (`speakers_id`),
  CONSTRAINT `FKea9t3x9pggoj3taygh8hqouxg` FOREIGN KEY (`speakers_id`) REFERENCES `speaker` (`id`),
  CONSTRAINT `FKepom9tlu7o0imp3k4bx4ls1oe` FOREIGN KEY (`marxism_website_id`) REFERENCES `marxism_website` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marxism_website_speakers`
--

LOCK TABLES `marxism_website_speakers` WRITE;
/*!40000 ALTER TABLE `marxism_website_speakers` DISABLE KEYS */;
INSERT INTO `marxism_website_speakers` VALUES (1,1,0),(1,2,1),(1,3,2),(1,4,3),(1,5,4),(1,6,5),(1,7,6),(1,8,7),(1,9,8),(1,10,9),(1,11,10),(1,12,11),(1,13,12),(1,14,13),(1,15,14),(1,16,15),(1,17,16),(1,18,17),(1,19,18),(1,20,19),(1,21,20),(1,22,21),(1,23,22),(1,24,23),(1,25,24),(1,26,25),(1,27,26),(1,28,27),(1,29,28),(1,30,29);
/*!40000 ALTER TABLE `marxism_website_speakers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marxism_website_themes`
--

DROP TABLE IF EXISTS `marxism_website_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marxism_website_themes` (
  `marxism_website_id` bigint(20) NOT NULL,
  `themes_id` bigint(20) NOT NULL,
  `theme_index` int(11) NOT NULL,
  PRIMARY KEY (`marxism_website_id`,`theme_index`),
  KEY `FKn6m1cujbt2gpn64ny95yfoxhk` (`themes_id`),
  CONSTRAINT `FK62vjylcsbwut7anxoh1np7qb5` FOREIGN KEY (`marxism_website_id`) REFERENCES `marxism_website` (`id`),
  CONSTRAINT `FKn6m1cujbt2gpn64ny95yfoxhk` FOREIGN KEY (`themes_id`) REFERENCES `theme` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marxism_website_themes`
--

LOCK TABLES `marxism_website_themes` WRITE;
/*!40000 ALTER TABLE `marxism_website_themes` DISABLE KEYS */;
INSERT INTO `marxism_website_themes` VALUES (1,1,0),(1,2,1),(1,3,2),(1,4,3),(1,5,4),(1,6,5),(1,7,6),(1,8,7),(1,9,8);
/*!40000 ALTER TABLE `marxism_website_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting`
--

DROP TABLE IF EXISTS `meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `day` varchar(255) NOT NULL,
  `description` text,
  `speakers` varchar(255) DEFAULT NULL,
  `time` varchar(255) NOT NULL,
  `title` varchar(500) NOT NULL,
  `marxism_website_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpkxmuqworv9rfk8abd97qw1q2` (`marxism_website_id`),
  CONSTRAINT `FKpkxmuqworv9rfk8abd97qw1q2` FOREIGN KEY (`marxism_website_id`) REFERENCES `marxism_website` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1474 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting`
--

LOCK TABLES `meeting` WRITE;
/*!40000 ALTER TABLE `meeting` DISABLE KEYS */;
INSERT INTO `meeting` VALUES (1345,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','We have seen an explosion of trans awareness and activism over the last few years, but we\'ve also seen attempts by the bigots to stigmatise trans people. Shockingly, some on the Left have beeen hesistant to support trans people in their fight for liberation. Join author and activist Laura Miles to debate the arguments and discuss how we can build solidarity with trans resistance today. ','Laura Miles','12.30','The fight for trans liberation',1),(1346,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','Martin Empson, author of Land and Labour, will be discussing why the Anthropocene matters for climate activists','Martin Empson','12.30','What does the Anthropocene mean for revolutionary strategy?',1),(1347,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Nadia Sayed','12.30','Workshop: Do we need violence to get real social change?',1),(1348,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','','Chin Chukwudinma','12.30','Africa and Imperialism today',1),(1349,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','The Brexit crisis for the Tories continues to rumble on, with resignations, splits and rows a regular feature. However, Labour and Corbyn have been stuck on the issue, and it seems the Tories are being let off the hook. Join the debate on how the Left can agin from the Tory crisis.','','14.30','Brexit & the Tory crisis: How can the Left gain?',1),(1350,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','The legacy of slavery and empire weighs heavy in education, from statues of Rhodes on campus to a narrow curriculum that excludes Black thinkers and writers. It is therefore no suprise that movements have sprung up to decolonise education. Join Talat Ahmed and Harjeevan Gill to debate how we can confront the legacy of slavery and empire.','','14.30','Debate: Decolonising education: confronting the legacy of slavery & empire',1),(1351,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','','Camilla Royle','14.30','Is science political?',1),(1352,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','','','14.30','What would socialism be like?',1),(1353,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','','Ron Margulies','16.15','Turkey, the Kurds and the great powers',1),(1354,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','','Jad Bouharoun','16.15','A Marxist history of early Islam',1),(1355,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','From Tommy Robinson to the \'Snowflake Generation\', the question of free speech is used by the right to attack the Left as being intolerant and totalitarian. Should we support absolute free speech? Should the far right be no platformed? Join this workshop to debate these questions and more. ','Lewis Nielsen','16.15','Workshop: Snowflake generation? Who decides free speech?',1),(1356,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','','Julie Sherry','16.15','What do we mean by class?',1),(1357,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','','Ken Olende','16.15','What was unique about the translatlantic slave trade?',1),(1358,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'THURSDAY','The opening rally is a highlight of Marxism and will feature speakers including pro-choice activists from Ireland, anti-racist activists and campaigners from around the world. Don\'t miss it!','','19.00','Opening rally: Taking on Trump - resisting racism, oppression, war & austerity',1),(1359,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','The Rushdie affair is often seen as a turning point for modern islamophobia in Britain. Hassan Mahamdallie, editor of Critical Muslim, will be discussing the legacy of the Rushdie affair and its relevance today.','Hassan Mahamdallie','10.00','30 years since Salman Rushdie: A turning point for British Muslims?',1),(1360,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Jan Nielsen','10.00','The politics of food',1),(1361,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Yunus Bakhsh','10.00','50 years on: How did the US lose in Vietnam?',1),(1362,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Adrian Budd','10.00','Where is China going?',1),(1363,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Joseph Choonara, author of A Reader\'s Guide to Capital, will be leading a specialcourse aimed at those aiming to read Marx\'s Capital. Timings may differ from those of other meetings, although the lunchbreak will remain unchanged. ','Joseph Choonara','10.00','Introduction to Capital course',1),(1364,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Alan Kenny','10.00','Workshop: What would a revolution look like?',1),(1365,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Charlie Kimber','11.45','50 years on: What is the role of Socialist Worker today?',1),(1366,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Amy Leather','11.45','Why does capitalism love plastic?',1),(1367,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Talat Ahmed','11.45','Black Thinkers Matter: who was Frantz Fanon?',1),(1368,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Anne Alexander','11.45','The rise of Saudi Arabia and the political economy of the Gulf',1),(1369,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Joseph Choonara, author of A Reader\'s Guide to Capital, will be leading a specialcourse aimed at those aiming to read Marx\'s Capital. Timings may differ from those of other meetings, although the lunchbreak will remain unchanged. ','Joseph Choonara','11.45','Introduction to Capital course (cont\'d)',1),(1370,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Lucia Pradella','11.45','Italy and the fight against racism',1),(1371,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Trump\'s chaotic regime has represented a crisis for liberal capitalism, not least through his threats of trade wars and real wars. Alex Callinicos will be debating his first 18 months in power.','Alex Callinicos','14.30','Trump, trade wars & real wars',1),(1372,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Angela Davis, civil rights and Black Panther activist, remains a figurehead and face of resistance around the world. The meeting will be discussing the life and politics of a revolutionary.','Esme Choonara','14.30','Black thinkers matter:Angela Davis: Women, race and class',1),(1373,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Patrick Nielsen','14.30','Workshop Fake News: does the Media control our minds?',1),(1374,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Martin is an author and activist and will be launching his new book discussing  Class Struggle and Change in the English Countryside.','Martin Empson','14.30','Booklaunch: Kill all the Gentlemen',1),(1375,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Noel Halifax','14.30','What happened to Queer Theory?',1),(1376,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Joseph Choonara, author of A Reader\'s Guide to Capital, will be leading a specialcourse aimed at those aiming to read Marx\'s Capital. Timings may differ from those of other meetings, although the lunchbreak will remain unchanged. ','Joseph Choonara','14.30','Introduction to Capital course (cont\'d)',1),(1377,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Maxine Bowler','14.30','Marxism and religion: sigh of the oppressed?',1),(1378,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','A special panel marking 50 years since 1968 will discuss it\'s relevance today. It was after all the year the world caught fire, from the student movement in France to the riots in Los Angeles.','Maria Styllou, Matt Collins','16.15','Debate: The fire last time: what is the legacy of 1968?',1),(1379,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','','16.15','Who are the (Democratic) Football Lads Alliance?',1),(1380,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','We\'re joined by a panel of housing activists as well as special guests from the Labour Party and Green Party to discuss the fight for social housing.','Panel','16.15','Debate: From demolitions to social cleansing: the class war on housing',1),(1381,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Peyman Jafari','16.15','Iran on the brink',1),(1382,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Antony Hamilton','16.15','Workshop: The concept of race: What does it mean to be Black?',1),(1383,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Celia Hutchison','16.15','Workshop: Where does sexism come from?',1),(1384,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','We\'re joined by Dave Ward, General Secretary of CWU, and Ian Hodson, President of BFAWU, to debate the fight against austerity in the era of Corbyn.','Martin Upchurch','16.15','What is the future with Artificial Intellingence and robots?',1),(1385,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Dave Ward, Ian Hodson','19.00','Debate Labour and the fight against austerity',1),(1386,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Sheila Coleman from the Hillsborough Justice Campaign and campaigning lawyer Gareth Peirce join us to discuss Injustice & the British State.','Sheila Coleman & Gareth Peirce','19.00','Injustice and the British State',1),(1387,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Ronnie Kasrils, served in the South African liberation movement all his adult life, was chief of intelligence in the ANCs military wing, organised operations from exile including that of the London Recruits, served in Mandela\'s government as deputy minister of Defence, followed by other portfolios to 2008 when he resigned and became active as a critic of the ANC. Internationally active with Palestine Solidarity and author of several books. This will be followed by a special taster of new film \'The London Recruits\', including Q & A witrh those involved.','Ronnie Kasrils','19.00','South Africa after Zuma',1),(1388,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','John Molyneux','19.00','Is there progress in art?',1),(1389,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','A recent spate of killings has ignited debates about crime, its relationship to gangs, and the role of the police. Over 50 murder investigations have been opened in London 2018—and most victims are young and black. \n\nMuch of the media blame the emergence of “postcode gangs” launching “turf wars” for the attacks. Dean Ryan, a youth worker in Hackeny, will be exploring the real reasons behind gun and knife crime. ','Dean Ryan','19.00','Gun and knife crime: why are young people killing each other?',1),(1390,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','','Helen Salmon','19.00','The case against borders: why we oppose all immigration controls',1),(1391,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','(https://www.facebook.com/events/167140864132481/) Hosted by comedians Johnny Cochrane and Jasmine Fischer, what better way to gear up for Trump\'s visit?','','21.00','Culture: Trump Comedy Roast',1),(1392,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','An award winning film that looks at Islamophobia in Britain today, Freesia follows the story of three families in Bradford. More info at https://www.imdb.com/title/tt4474930/','','21.00','Culture: Freesia film screening',1),(1393,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'FRIDAY','Following the meeting South Africa after Zuma with Ronnie Kasrils, freedom fighter in Apartheid South Africa, Marxism Festival is very pleased to host a special film trailer premier:The LONDON RECRUITS: A documentary that tells the secret story of how young activists in Britain carried out daring missions in apartheid South Africa to subvert the regime. More info at https://www.londonrecruits.com/','','21.00','Culture: London recruits screening',1),(1394,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','','John Molyneux','10.00','Is Leninism authoritarian?',1),(1395,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','','Phil Marfleet','10.00','Iraq: What happened next?',1),(1396,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','','Sarah Bates','10.00','How did women win the vote?',1),(1397,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','','Anna Gluckstein','10.00','Antisemitism and the far right today',1),(1398,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','','Ameen Hadi','10.00','Who were the real Black panthers?',1),(1399,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','Part of our series of meetings to discussing the legacy of 1968: the year the world caught fire. ','Colm Bryce','10.00','When students and workers united: May 1968',1),(1400,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','','Sabby Sagall','10.00','Music and capitalism',1),(1401,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','A socialist may be the next Prime Minister of Britain. This opens up huge possibilities, but also throws up big questions. Is revolution still relevant in the era of Corbyn? Join the debate with Charlie Kimber, editor of Socialist Worker newspaper.','Charlie Kimber','11.45','Revolutionary politics in the era of Corbyn',1),(1402,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','One year on from the Grenfell disaster, the fight for justice continues. Families are still yet to be permanently rehoused, while the companies and politicians responsible for Grenfell continue to walk free. This special panel - including Moyra Samuels from Justice4Grenfell and firefighter Lucy Masoud - will be debating how we can get justice for Grenfell.','Moyra Samuels, Lucy Masoud','11.45','One year on: Grenfell & the fight for Justice',1),(1403,'admin','2018-06-27 21:21:39.000000',NULL,NULL,'SATURDAY','Michael Roberts is a Marxist economist (https://thenextrecession.wordpress.com/). He wil (try!) to discuss Marx\'s three laws of motion in just 30 minutes! See if he can do it.','Michael Roberts','11.45','Marx\'s laws of motion in 30 minutes',1),(1404,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','The Trojan Horse scandal in Birmingham was an islamophobic attempt to stigmatise Muslim communities, and is emblematic of the systematic racism at the heart of the Prevent strategy. John Holmwood, who wrote a book on the topic will be joined by Tahir Alam, a former governor of one of the schools in question.','John Holmwood, Tahir Alam','11.45','Trojan Horse, Prevent and fighting Islamophobia',1),(1405,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Are humans different from animals? Should all species be treated equally? Does speciesism exist? Join socialist scientist John Parrington to discuss these questions and more. ','John Parrington','11.45','What makes humans different from animals?',1),(1406,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','','Gary McFarlane','11.45','Wakanda forever: Africa before colonisation',1),(1407,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','','Kevin Doogan','11.45','Is the welfare state finished?',1),(1408,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','In both Poland and Hungary, far right or fascist groups are either in government or have mobilised huge numbers on the streets. Antisemitism and islamophobia are at their core. Does this mean fascism is back in Eastern Europe? Polish and Hungarian anti-fascists will be flying over to discuss.','Andy Zebrowski & others','11.45','Is fascism back in Eastern Europe?',1),(1409,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','We keep being told that the world economy will begin to recover, and that the darkest financial days are behind us. Does capitalism have a way  out of the current economic crisis? Join Michael Roberts, Marxist economist, to discuss','Michael Roberts','14.30','World economy: Is the long depression over?',1),(1410,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','The big debate:The Corbyn movement is at a crucial juncture. Socialist ideas are popular again, and the Tories are on the back foot. However it feels that since the election last year, there has been somewhat of a stalemate. What way forward for Corbyn and the fight for socialism. Mark Perryman, editor of the Corbyn moment, will be debating Mark L Thomas on where next?','Mark Perryman, Mark L Thomas','14.30','Debate: Corbyn, Labour & the future of British politics',1),(1411,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','From Trump to Tommy Robinson, we\'ve seen a resurgence of the far right. Recently up to 15,000 supporters of Tommy Robinson marched in London.','Weyman Bennett','14.30','Fascism, the far right and racist populism today',1),(1412,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','','Amy Leather ','14.30','#MeToo: fighting sexism & the system',1),(1413,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/1670563616332870/) The crisis in Catalonia may have been slipped down the headlines, but it is by no means over. The recent resignation of Rajoy has opened up possibilities for the movemet to push back. And what does the independence crisis say about the nature of the European Union? Activists from the Catalonia including David Karvala will be flying over to join the debate.','David Karvala & others','14.30','Debate: Catalonia & the crisis in Europe',1),(1414,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','The crisis in education continues to deepen, from teacher workloads to endless testing of children. Is another education system possible? Alex Kenny from the NEU executive will be joined by Paddy dé Cléir and Lisa Tunnell from the Young Teachers Network.','Alex Kenny, Lisa Tunnell & others','14.30','Is another education possible?',1),(1415,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','In many ways disabled people have been at the forefront of austerity. The government has rought in a culture that has treated those on benefits as scroungers and victims. But they\'re not - join Disabled People Against Cuts to hear their tales of resistance and discuss the fightback','Disabled People Against Cuts','14.30','Disability, oppression & resistance',1),(1416,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Mike Wayne teaches film, television and media studies. He is the co-editor (with Deirdre O’Neill) of Considering Class: Theory, Culture and the Media in the 21st Century and co-director of with Deirdre O\'Neill of feature doc The Acting Class.\n\nDeirdre O\'Neill is a lecturer and filmmaker. Her new book is Film as a Radical Pedagogic tool. She is the co-coordinator of the Inside Film Project.\n\nShe has co-directed (with Mike Wayne) two films Listen to Venezuela and Condition of the Working Class.\n\nTheir latest film The Acting Class is currently touring the country.','Dee O\'Brien & Mike Wayne','14.30','Considering class: theory, culture and media in the 21st century',1),(1417,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','','Mani Tanoh','14.30','Do British people benefit from the oppression of the Global South',1),(1418,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','','','14.30','Dylan Thomas: Poetry and politics',1),(1419,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/633990273607227/) John Bellamy Foster is editor of Monthly Review in the US and is author of many books discussing the environment. He\'ll be discussing how why socialist politics must be at the heart of any real attempt to fight climate change and for a sustainable planet.','John Bellamy Foster','16.15','Marxian theory & eco-revolution',1),(1420,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Janet\'s brother Christopher was racially abused and killed in police custody in 1998. In the 20 years since she has been a fearless fighter for justice, and it recently emerged the police admitted to spying on her during the justice campaign. Hear her story.','Janet Alder, Brian Richardson','16.15','25 years on from Stephen Lawrence: Police, racism & the state',1),(1421,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Could a Labour government really end austerity? How would Corbyn defend himself against the inevitable attacks from the ruling class? What role would the movement on the streets and workplaces play? Join Charlie Kimber and special guests to discuss these questions and more. ','Charlie Kimber and special guests','16.15','Debate: What would a Labour government look like?',1),(1422,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Mental Distress has become one of the key “public issues” of the 21st century. According to the World Health Organisation, depression currently affects 350 million people worldwide. In his new book Politics of the Mind: Marxism and Mental Distress Iain Ferguson looks at the link between the economic and political system under which we live – capitalism – and the enormously high levels of mental distress which we see in the world today. At this meeting Iain will discuss how we can better understand mental distress using an historical and materialist Marxist approach as well as how new movements over the last few years have shaped responses to mental health issues.\n','Iain Ferguson','16.15','Booklaunch: Politics of the mind: Marxism & mental distress',1),(1423,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/1635619956491099/) The abortion campaign in Ireland was inspiring and involved millions of working class women fighting back against the bigotry of church and state. We\'re delighted to be hosting Brid Smith - a member of the Irish Parliament - alongside Abortion Wars author Judith Orr to discuss the fight for abortion rights today.','Brid Smith TD, Judith Orr','16.15','From Ireland to Trump: The fight for abortion rights',1),(1424,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Alfred Saad Filho, author of a new book on Brazil, will be debating with Raquel Varela the current political situation in Brazil.','Alfredo Saad-filho, Raquel Varela','16.15','Brazil: Neoliberalism vs democracy',1),(1425,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','','','16.15','Gig work, the platform economy & class struggle',1),(1426,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Revolutions that are defeated are soon forgotten. Yet of all the upheavals after WWI, it was events in Germany that prompted British Prime Minister David Lloyd George to wrie \'The whole existing order, in its political, social and economic aspects, is questioned by the masses from one end of Europe to the other.\' Michael Bradley will be assessing the 100th anniversary of the Lost Revolution in Germany. ','Michael Bradley','16.15','The lost revolution: 100 years on from the German revolution',1),(1427,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Spoken word artist Kurly will be leading a particpatory workshop open to all. Get your rhymes ready!','Kurly','16.15','Spoken word workshop',1),(1428,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','We\'ll be joined by Mani Tanoh from Ghana and Willet Hanyani from Zimbabwe to discuss class struggle in Africa.','Mani Tanoh','16.15','From African Marxism to neoliberalism',1),(1429,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/604582456584128/) This year marks the 200th anniversary of the birth of Karl Marx. Alex Callinicos, author of The Revolutionary Ideas of Karl Marx, will be reclaiming Marx as a revolutionary for today. Followed y a film screening of The Young Karl Marx.','Alex Callinicos','19.00','Marx the revolutionary',1),(1430,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','The pro-Palestine movement has been under fierce attack, from university campuses to the Labour Party. We\'ll be joined by Palestinian author and activist Ghada Karmi and Jewish Voice for Labour member Jonathan Rosenhead to debate the silencing of Palestine.','Ghada Karmi, Jonathan Rosenhead','19.00','Palestine & the rhetoric of free speech',1),(1431,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','Uncover the radical history of the music that filled the dance floors, challenged oppression and became a scourge of the right.','Yuri Prasad & Liz Wheatley','19.00','A rebel\'s guide to disco',1),(1432,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','50 years ago, Enoch Powell made a inflamatory speech that whipped up racism towards migrants. He was sacked the next day, but over the years conservatives and racists have tried to rehabilitate his reputation and argue that his anti-migrant racism may have been well placed. We\'ll be joined by author and activist Patrick Vernon and Dr Shirin Hirsch to discuss the legacy of Powell\'s speech today.','Patrick Vernon, Shirin Hirsch','19.00','Enoch Powell & rivers of blood: 50 years on',1),(1433,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','The McStrike early this year was inspiring - low paid workers organising in the most difficult of conditions. A McStriker in the UK will be joined by Pam Frache from Fight for 15 in Canada to discuss the global fight to organise the unorganised.','McStriker, Pam Frache','19.00','Organising the unorganised',1),(1434,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/254956981941042/) This award winning film tells the story of the children left behind in Calais by the British and French Authorities. It follows a Q & A with director Sue Clayton ','Sue Clayton','19.00','Film screening: Calais children: A Case to answer Q & A',1),(1435,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','','Tony Sullivan','19.00','Fashion & Capitalism',1),(1436,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/604582456584128/) A rare chance to see the award winning film by Raoul Peck, director of \'I am Not Negro\', which looks at how Karl Marx and Friedrich Engels became comrades and revolutionaries.','','21.00','The Young Karl Marx film screening',1),(1437,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SATURDAY','DJ\'s Yuri Prasad and Liz Wheatley follow their discussion on the radical history of disco with a night of music and DJs in Student Central','DJ Liz Wheatley & Yuri Prasad','21.00','Rebel\'s Guide to Disco',1),(1438,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','Syrian socialist Ghayath Naisse will be leading a discussion on Who is to blame for the horror in Syria?','Ghayath Naisse','10.00','Who is to blame for the horror in Syria?',1),(1439,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','Sue Caldwell','10.00','Do privilege theory & intersectionality help fight oppression?',1),(1440,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','NUT National Executive member Jess Edwards will be leading a discussion on how we learn, and how radical pedagogy can provide an alternative to the crisis in education.','Jess Edwards','10.00','How do we learn? Pedagogy & education today',1),(1441,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','','10.00','Scotland, independence & the Left',1),(1442,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','Nike Johnson','10.00','Black Thinkers Matter: Malcolm X & the fight against racism',1),(1443,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','Tomas Tengely-Evans','10.00','1968: The Prague Spring and the rupturing of Stalinism',1),(1444,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','Sarah Ensor','10.00','Capitalism & extinction',1),(1445,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','The work of Antonio Gramsci is often hijacked by right wingers, but Gramsci\'s works are key to a Marxist understanding and method. Alex Callinicos will be reclaiming Gramsci for today. ','Alex Callinicos','11.45','Gramsci & the art of politics',1),(1446,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','It\'s been revealed that 2017 had the lowest strike figures since records began. What does this mean for trade union tactics today? How can we build in the workplace in period of low struggle? SWP Industrial organiser Mark L Thomas will be discussing these questions and more. ','Mark L Thomas','11.45','Building in the unions & workplace',1),(1447,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','(https://www.facebook.com/events/1840185549373229/) The hijab has been at the forefront of islamophobia, from the ban in France to racist attacks here. There is also some confusion within the Left, with many falling into pseudo-feminist arguments that criticise Islam. Siema Iqbal (AVOW), Naima Omar and Latifa Abouchakra (NEU member) will be discussing the fight to defend a woman\'s right to wear the hijab.','Naima Omar, Siema Iqbal, :Latifa Abouchakra','11.45','A woman\'s right to chooseIslamophobia & the hijab',1),(1448,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','Author and activist Judith Orr will be discussing the potential imperialist clashes in the era of Trump and Putin','Judith Orr','11.45','Are we heading for a new Cold War?',1),(1449,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','We\'ve recently seen an explosion of debate surrounding the legacy of slavery and empire, much of it centred on the statues of that era. Author and activist Brian Richardson will be debating whether they should all fall.','Brian Richardson','11.45','Who gets to be remembered: Should all the statues fall?',1),(1450,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Fran Manning','11.45','Workshop: Is human nature a barrier to socialism?',1),(1451,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','Author Alan Gibbons launches the second book of his Russian Revolution trilogy','Alan Gibbons','11.45','Booklaunch: Reason in revolt',1),(1452,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Richard Donnelly','11.45','Workshop: What is the dialectic?',1),(1453,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','(https://www.facebook.com/events/196048077711172/) Ilan Pappé is one of the most prominent anti-Zionist scholars in the world, and has written a number of celebrated books on the topic. Ilan will be discussing The day after: opportunities and dangers for Palestine in the era of Trump.','Ilan Pappé','14.00','Palestine in the era of Trump',1),(1454,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','(https://www.facebook.com/events/1936843079719073/). We\'ve recently seen the far right movement in Britain attempt to make the kind of breakthrough made by their European counterparts. This special panel willl bring together antifascists from across Europe to debate the fightback against the far right. Speakers include Christine Buchholz (MP in Germany), David Albrich (Austria) and Petros Constantinou (Greece)','Christine Buchholz, David Albrich & more','14.00','Resisting the far right & fascism in Europe',1),(1455,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','A special panel will be discussing Class, Pride & Protest: the fight for LGBT+ Liberation. Speakers include Nicola Field (Lesbians and Gays Support the Miners), Charlie Kiss (Trans activist), Peter Purton (author of Trade Unions & LGBT Rights)  & Edward Sesange (Diamond African LGBTI Group).','Nicola Field and others','14.00','Class, Pride and protest: Fighting for LGBT+ liberation',1),(1456,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','From HE to FE, this year has seen massive attacks but also huge resistance. A panel of activists will be discussing where next in the fight to defend education. Speakers include Nita Sanghera (UCU Vice-President elect) and UCU activists.','Nita Sanghera and others','14.00','Universities and colleges, neoliberalism & resistance',1),(1457,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','Suzanne Jeffrey will be joined by anti-fracking activists to discuss how dirty enegry is tied into capitalism, and how we can build a movement to take it on.','','14.00','Dirty energy & capitalism: what\'s the real story',1),(1458,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','A panel of NHS campaigners will come together on the NHS\' 70th birthday to debate how we can fight to save it. ','','14.00','NHS @ 70: How can we fight to defend it?',1),(1459,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','Musician and author Dave Randall  will be leading a discussion on the anti-racist legacies of music. Dave has toured the world playing with Faithless and Sinead O\'Connor.','Dave Randall','14.00','Black voices, white visions: Music, racism and identity',1),(1460,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','On the 50th anniversary of the assassination of Martin Luther King, politicians will queue to pay their respects.\n\nThey will smother his memory with praise but none will acknowledge the truth - that King was a radical who wanted a complete transformation of society.\n\nWhere in their vision is the King who stood out against the Vietnam War, who pledged to organise a poor people\'s march on Washington and who mounted a devastating critique of capitalism?\n\nWhat about the King who talked of revolution and who the FBI labelled \"the most dangerous Negro in America\"?\n\nWhere is the King who was gunned down in Memphis while supporting striking workers? Author & journalist Yuri Prasad will be discussing King\'s radical legacy. \n\n','Yuri Prasad','14.00','Booklaunch: A Rebel\'s Guide to Martin Luther King',1),(1461,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','From the abortion referendum to the water charges movement, Ireland has seen profound struggles for social change. Richard Boyd-Barrett, member of the Irish Parliament, will be discussing the prospects for the socialist Left in Ireland. ','Richard Boyd Barrett TD','14.00','Prospects for the socialist Left in Ireland',1),(1462,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Naima Omar','14.00','Workshop: Marx & Alienation',1),(1463,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','The Windrush scandal has exposed the racism at the heart of the British state, and has revealed the true nature of the \'hostile environment\'. It has also raised questions of \'good\' migrants and \'bad\' migrants, and what it means to be \'British\'. Join Weyman Bennett to debate these questions and more.','Weyman Bennett','15.45','After Windrush: what does it mean to be British?',1),(1464,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','The Labour right and supporters of Israel have smeared the Left and pro-Palestine movement as being antisemitic. While of course any instance of antisemitism must be vigorously opposed, we can not allow the right to use false smears to silence criticism of Israel and support for Palestine. Naomi Wimbourne-Idrissi from Jewish Voice for Labour and Rob Ferguson will be joined by other activists to discuss the politics behind the smears, and how we can counter them.','Naomi Wimbourne-Idrissi, Rob Ferguson','15.45','Corbyn, antisemitism & justice for Palestine',1),(1465,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','Panos is editor of Socialist Worker\'s sister paper Workers\' Solidarity and will be looking at the experience Syriza in Greece and Left reformism in Europe. ','Panos Garganos','15.45','The experience of Left reformism in Europe',1),(1466,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','John Bellamy Foster is editor of Monthly Review in the US. He\'ll be joining a panel discussing how resistance has characterized Trump\'s first few years in power. ','John Bellamy Foster & others','15.45','This is America: resistance to Trump',1),(1467,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','Bea Kay','15.45','Islamophobia and child abuse: challenging the myths',1),(1468,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','Sheila McGregor','15.45','Social reproduction theory: capital & women\'s oppression',1),(1469,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','From Catalonia to Scotland, independence struggles have raised questions for the Left. ','Hector Sierra','15.45','Marxism and the fight for national liberation',1),(1470,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','','15.45','Workshop: Marxism & history',1),(1471,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','','','15.45','Resistance and racism in France',1),(1472,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','The closing rally will bring together activists and campaigners speaking on the fight for a different world.','','17.30','Closing rally: After Trump-  the battle for the future',1),(1473,'admin','2018-06-27 21:21:40.000000',NULL,NULL,'SUNDAY','with music from the Fred Hampton Appreciation Society an eight-piece band based in north-west London who make music to move your head, heart and feet','Fred Hampton Appreciation Society','18.30','Marxism 2018 Afterparty',1);
/*!40000 ALTER TABLE `meeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speaker`
--

DROP TABLE IF EXISTS `speaker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speaker` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `long_description` varchar(3000) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `short_description` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speaker`
--

LOCK TABLES `speaker` WRITE;
/*!40000 ALTER TABLE `speaker` DISABLE KEYS */;
INSERT INTO `speaker` VALUES (1,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'Ilan-Pappe.jpg',' Ilan Pappe is the director of the European Centre for Palestine Studies at the University of Exeter and the author of twenty books, the last one is <b>The Biggest Prison on Earth: a History of the Israeli Occupation.</b>','Ilan Pappé','Ilan Papp&eacute; is an anti-Zionist academic who has written books including The Ethnic Cleansing of Palestine. He will be discussing <b>Opportunities and Dangers for Palestine in the Trump era.</b>'),(2,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'janet-alder.jpg',NULL,'Janet Alder','Janet Alder is the sister of Christopher Alder who was killed in police custody. She will be speaking on <b>Black Lives Matter: Police, racism and the state.</b>'),(3,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'john-bellamy-foster.jpg',NULL,'John Bellamy Foster','John Bellamy Foster is a Marxist ecologist and author. He will debate <b>Marxian ecology vs ecological escapism: the revolutionary necessity of our time.</b>'),(4,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'ghada-karmi.jpg',NULL,'Ghada Karmi','Ghada Karmi is a Palestinian author, academic and activist. She will be discussing <b>Palestine and the rhetoric of free speech.</b>'),(5,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'michael-roberts.jpg','Michael Roberts is a Marxist economist who has worked in the City of London for over 30 years. He is author of <b>The Great Recession - a Marxist view (Lulu, 2009)</b> and <b>The Long Depression (Haymarket 2016).</b><br/><br/>Forthcoming is <b>Marx 200: a modern view of Marx’s economics 200 years after his birth (Lulu 2018)</b> and jointly with G Carchedi, <b>The World in Crisis: empirical backing for Marx’s law of profitability (Haymarket 2018)</b>.<br/><br/>He blogs at: <a href=\"https://thenextrecession.wordpress.com\">thenextrecession.wordpress.com</a>','Michael Roberts','Michael Roberts is a Marxist economist who writes regularly on the economy. He will be speaking on <b>The Long Depression and economic crisis</b>'),(6,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'christine-buchholz.jpg',NULL,'Christine Buchholz','Christine Buchholz, an MP for Die Linke in Germany joins Petros Constantinou from KEERFA in Greece and David Albrich from Austria to discuss <b>The far right in Europe</b>'),(7,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'sheila-coleman.jpg',NULL,'Sheila Coleman','Sheila is part of the Hillsborough Justice Campaign and will speak as part of a panel on <b>Injustice and the British state</b>'),(8,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'gareth-peirce.jpg',NULL,'Gareth Peirce','Gareth is a human rights lawyer who has working on many high profile cases involving miscarriages of justice. She will speak at a special panel meeting - <b>One year on: Grenfell and the fight for justice</b>'),(9,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'dave-ward.jpg',NULL,'Dave Ward','Dave is General Secretary of the post workers union CWU. He will join Ian Hodson from BFAWU and others to discuss <b>Labour and fight against austerity</b>'),(10,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'ian-hodson.jpg',NULL,'Ian Hodson','Ian, President of BFAWU, and strikers from McDonalds will be part of many panels debating <b>Corbyn, Labour and the future of British politics</b>'),(11,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'moyra-samuels.jpg',NULL,'Moyra Samuels','Moyra is a member of the Justice4Grenfell campaign and one year on from the Grenfell tragedy will be part of a panel on <b>Injustice and the British state.</b>'),(12,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'alex-callinicos.jpg',NULL,'Alex Callinicos','Alex Callinicos, author of the Revolutionary Ideas of Karl Marx and will be discussing <b>Trump, tariffs and trade wars.</b>'),(13,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'brid-smith.jpg',NULL,'Brid Smith','Brid is a TD in the Irish Parliament for People Before Profit. She has been heavily involved in the campaign to Repeal the 8th amendment, and will be joining a panel on <b>Abortion rights today.</b>'),(14,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'jonathan-rosenhead.jpg',NULL,'Jonathan Rosenhead','Jonathan is a member of Jewish Voice for Labour and will be joining a panel debating <b>Zionism, antisemitism and Palestine solidarity</b>'),(15,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'ronnie.jpg','Ronnie Kasrils served in the South African liberation movement all his adult life, was chief of intelligence in the ANCs military wing, organised operations from exile including that of the London Recruits, served in Mandela&quot;s government as deputy minister of Defence, followed by other portfolios to 2008 when he resigned and became active as a critic of the ANC.<br/><br/>Internationally active with Palestine Solidarity and author of several books. Regards socialism as the only way to preserve humanity and the planet. He will speak on South Africa after Zuma','Ronnie Kasrils','Ronnie Kasrils served in the South African liberation movement all his adult life. He will speak on <b>South Africa after Zuma</b>'),(16,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'Nita-Sanghera.jpg','As an access to HE lecturer, working at SCCB Bournville campus, Nita is familiar with the ever present spectre of the Conservatives marketisation of education, and whatever else they can get their hands on.<br/><br/>She is an active member of UCU, and has recently become Vice President elect.','Nita Sanghera','Nita is the UCU vice-President elect and will be joining a panel debating the <b>marketization of Higher Education</b>'),(17,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'mark-perryman.jpg',NULL,'Mark Perryman','Mark is a founder of Philosophy Football and editor of The Corbyn Effect. He&apos;ll be debating <b>Corbyn and the future of British politics</b> with Mark L Thomas from the SWP.'),(18,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'naima-omar.jpg',NULL,'Naima Omar','Naima is an activist with Stand Up to Racism and will lead a panel discussing <b>A woman’s right to choose: defending the Hijab.</b>'),(19,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'alan-gibbons.jpg','Alan is the author of some seventy books and was one of the organisers of the Campaign for the Book and the <b>Speak up for Libraries Coalition</b> that spearheaded the fight to defend the public library service.<br/><br/>Alan is a prolific speaker on education and public service. The final volumes of his Revolution trilogy charting the Russian Revolution are published in 2018.<br/><br/>He is a member of the Labour Party and is speaking in a personal capacity.','Alan Gibbons','Award winning writer and Labour Party member Alan Gibbons speaks on the second book of his Russian Revolution trilogy.'),(20,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'deirdre-o-neill.jpg','Mike Wayne teaches film, television and media studies. He is the co-editor (with Deirdre O’Neill) of <b>Considering Class: Theory, Culture and the Media in the 21st Century</b> and co-director of with Deirdre O&#39;Neill of feature doc <b>The Acting Class.</b><br/><br/>Deirdre O&#39;Neill is a lecturer and filmmaker. Her new book is Film as a Radical Pedagogic tool. She is the co-coordinator of the <a href=\"http://www.insidefilm.org\">Inside Film Project</a>.<br/><br/>She has co-directed (with Mike Wayne) two films <a href=\"http://listentovenezuela.info\">Listen to Venezuela</a> and <a href=\"http://www.conditionoftheworkingclass.info\">Condition of the Working Class</a>.<br/><br/>Their latest film <b>The Acting Class</b> is currently touring the country.','Deirdre O’Neill','Film makers Deirdre O&#39;Neill and Mike Wayne will be leading a discussion on <b>Considering class: theory, culture and the media in the 21st century.</b>'),(21,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'dave-randall.jpg','Dave Randall is a musician, writer and activist.<br/><br/>He has toured the world playing guitar for Faithless, Sinead O&apos;Connor and others and is the author of Sound System: The Political Power of Music.','Dave Randall','Dave Randall is a musician who has played with Faithless and Sinead O’Connor, and he is author of Sound System: The Political Power of Music.'),(22,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'talat-ahmed.jpg',NULL,'Talat Ahmed','Talat is a lecturer and anti-racist activist based in Edinburgh. She will be leading a panel on <b>Decolonising education: confronting the legacy of slavery and empire</b>'),(23,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'john-holmwood.jpg',NULL,'John Holmwood','John Holmwood is author of Countering Extremism in British Schools – the Truth About the Trojan Horse Affair, and he will join a panel to discuss <b>Islamophobia and education.</b>'),(24,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'Lucia-Pradella.jpg',NULL,'Lucia Pradella','Lucia is an academic and activist in UCU. She’ll be speaking on <b>Italy, racism and the rise of the far right</b>'),(25,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'weyman-bennett.jpg',NULL,'Weyman Bennett','Weyman Bennett is the co-convenor of Stand Up to Racism. He will be analysing <b>Fascism, the far right and racist populism today</b>'),(26,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'maria-styllou.jpg',NULL,'Maria Styllou','Maria is a socialist activist in Greece and was a part of the 1968 student movement at the LSE. She&apos;ll be discussing <b>The legacy of 1968</b>'),(27,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'richard-boyd-barrett.jpg',NULL,'Richard Boyd-Barrett TD','Richard is a TD in the Irish Parliament with People Before Profit. He&apos;ll be part of a panel debating <b>The fight against austerity in Europe.</b>'),(28,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'alfredo-saad-filho.jpg',NULL,'Alfredo Saad-Filho','Alfredo Marxist economist who writes on Latin America. He&apos;ll be launching his new book Brazil: Neoliberalism Versus Democracy'),(29,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'judith-orr.jpg',NULL,'Judith Orr','Judith is an author and activist. She will be leading a discussion on <b>Are we heading for a new Cold War?</b>'),(30,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'iain-ferguson.jpg',NULL,'Iain Ferguson','Iain Ferguson is a social worker and part of Social Work Action Network. He will be launching his new book Politics of the Mind: Marxism and Mental Distress.'),(31,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'yuri-prasad.jpg',NULL,'Yuri Prasad','Yuri is a journalist on Socialist Worker and he’ll be launching his new book A Rebel&apos;s Guide to Martin Luther King.'),(32,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'sally-campbell.jpg',NULL,'Sally Campbell','Sally is editor of Socialist Review  and leads a panel on <b>#MeToo: fighting everyday sexism</b>'),(33,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'ghayath-naisse.jpg',NULL,'Ghayath Naisse','Ghayath is a Syrian socialist and in the context of war, imperialism and counter revolution he&apos;ll be debating <b>Syria today.</b>');
/*!40000 ALTER TABLE `speaker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `long_description` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_kos4rdub1av4d5wt6wocsdb7t` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES (1,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'labour-corbyn-image-360-x-240px.jpg','Jeremy Corbyn&apos;s success at last year&apos;s general election shattered the Tories and transformed the political situation here in Britain. Meetings at Marxism Festival will debate the issues facing Corbyn and Labour and discuss how we can mobilise to bring about fundamental change.','Corbyn','Jeremy Corbyn, the Labour Party and the fight for socialism'),(2,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'racism-image-360-x-240px.jpg','Far right and fascist forces have grown across Europe and the bigoted presidency of Donald Trump adds to the instability across the globe.  Meanwhile hundreds of refugees continue to die as they flee war and persecution. At Marxism Festival we will discuss how best to respond to these challenges.','Racism','Resisting the racist backlash and the rise of fascism across Europe'),(3,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'marx-image-360-x-240px.jpg','Karl Marx was an anti-capitalist and revolutionary. But 200 years on from his birth are his ideas still relevant today? We will explore Marx&apos;s economic insights for a system in crisis as well as his method for understanding the world today.','Marx','#Marx200 Anniversary – was Marx right?'),(4,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'climate-change-image-360-x-240px.jpg','With a climate change denier in the White House and fossil fuel use locked into capitalism - how can we act to stop catastrophic climate change?  We will discuss how Marxist ideas help shed light on an understanding of nature, ecology and the environment.','Climate Change','Capitalism and climate change'),(5,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'MeToo-image-360-x-240px.jpg','Headlines about the issue of sexual harassment have led to the #MeToo campaign with millions of women sharing their experiences.  There is a growing movement challenging ideas about gender and sexuality. But how can we build a collective response to the sexism structured into our society?','Me Too','#MeToo: challenging sexism and the system'),(6,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'imperialism-image-360-x-240px.jpg','From Syria to Palestine the Middle East is on fire – a terrible consequence of western colonialism and imperialism.  We will look at how war is endemic to capitalism, discuss the latest developments in the carve up of the world and crucially ask how we can organise to stop the bloodshed.','Imperialism','War, imperialism, the Middle East and Palestine'),(7,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'trans-lgbt-image-360-x-240px.jpg','There is an offensive against transgender people – with attacks from the right wing media and the tripling of transphobic hate crime in the last five years. Meetings will discuss the fight for LGBT+ liberation, how trans people have fought as part of the wider movement for sexual liberation, and why trans rights are a demand every socialist and trade unionist should support.','LGBT','Marxism, Trans politics and the fight for LGBT+ liberation'),(8,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'Trump-image-360-x-240px.jpg','The election as US president of an openly misogynistic, transphobic bigot who built his campaign on racist scapegoating has driven those who want to challenge oppression out onto the streets. We will discuss developments in the US and the potential for resistance to take on Trump.','Trump','Donald Trump, the US and resistance'),(9,'admin','2018-06-28 12:42:05.000000',NULL,NULL,'class-struggle-image-360-x-240px.jpg','How can we resist the Tories offensive on working class people? Has the working class lost its power? How should we organise at work? And is there even a future of work or will robots take over? These are just some of the questions we will seek to address at Marxism Festival.','Class','Class, struggle and the trade unions today');
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme_meetings`
--

DROP TABLE IF EXISTS `theme_meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme_meetings` (
  `themes_id` bigint(20) NOT NULL,
  `meetings_id` bigint(20) NOT NULL,
  KEY `FK29v8cov836069ei39ubn9fl51` (`meetings_id`),
  KEY `FKmu9dwn8yoxitg3eiha89sldk9` (`themes_id`),
  CONSTRAINT `FK29v8cov836069ei39ubn9fl51` FOREIGN KEY (`meetings_id`) REFERENCES `meeting` (`id`),
  CONSTRAINT `FKmu9dwn8yoxitg3eiha89sldk9` FOREIGN KEY (`themes_id`) REFERENCES `theme` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme_meetings`
--

LOCK TABLES `theme_meetings` WRITE;
/*!40000 ALTER TABLE `theme_meetings` DISABLE KEYS */;
INSERT INTO `theme_meetings` VALUES (7,1345),(4,1346),(1,1347),(2,1348),(1,1349),(2,1350),(1,1352),(6,1353),(6,1354),(1,1355),(9,1356),(6,1357),(2,1359),(4,1360),(6,1361),(6,1362),(3,1363),(1,1364),(1,1365),(4,1366),(2,1367),(6,1367),(6,1368),(3,1369),(2,1370),(8,1371),(2,1372),(5,1372),(7,1375),(3,1376),(3,1377),(2,1379),(6,1381),(2,1382),(5,1383),(9,1384),(1,1385),(9,1385),(9,1389),(2,1389),(2,1390),(1,1394),(6,1395),(5,1396),(2,1397),(2,1398),(1,1401),(1,1401),(3,1403),(2,1404),(2,1406),(6,1406),(1,1407),(2,1408),(3,1409),(1,1410),(2,1411),(5,1412),(7,1415),(6,1417),(4,1419),(2,1420),(1,1421),(7,1422),(5,1423),(9,1425),(3,1429),(6,1430),(2,1432),(9,1433),(2,1434),(6,1438),(5,1439),(2,1439),(2,1442),(4,1444),(9,1446),(2,1447),(6,1448),(2,1449),(6,1449),(1,1450),(3,1452),(6,1453),(8,1453),(2,1454),(7,1455),(4,1457),(2,1460),(1,1461),(3,1462),(2,1463),(1,1464),(6,1464),(8,1466),(2,1467),(5,1468),(3,1470);
/*!40000 ALTER TABLE `theme_meetings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-28 12:58:29
