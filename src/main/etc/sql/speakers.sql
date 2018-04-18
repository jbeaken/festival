-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: marxism
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `speaker`
--

DROP TABLE IF EXISTS `speaker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speaker` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `long_description` varchar(3000) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `short_description` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speaker`
--

LOCK TABLES `speaker` WRITE;
/*!40000 ALTER TABLE `speaker` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `speaker` VALUES (1,'admin','2018-04-18 10:32:39',NULL,NULL,'Ilan-Pappe.jpg',' Ilan Pappe is the director of the European Centre for Palestine Studies at the University of Exeter and the author of twenty books, the last one is <b>The Biggest Prison on Earth: a History of the Israeli Occupation.</b>','Ilan Pappé','Ilan Papp&eacute; is an anti-Zionist academic who has written books including <b>The Ethnic Cleansing of Palestine</b>. He will be discussing <b>Opportunities and Dangers for Palestine in the Trump era.</b>'),(2,'admin','2018-04-18 10:32:39',NULL,NULL,'janet-alder.jpg',NULL,'Janet Alder','Janet Alder is the brother of Christopher Alder who was killed in police custody. She will be speaking on <b>Black Lives Matter: Police, racism and the state.</b>'),(3,'admin','2018-04-18 10:32:39',NULL,NULL,'john-bellamy-foster.jpg',NULL,'John Bellamy Foster','John Bellamy Foster is a Marxist ecologist and author. He will debate <b>Marxian ecology vs ecological escapism: the revolutionary necessity of our time.</b>'),(4,'admin','2018-04-18 10:32:39',NULL,NULL,'ghada-karmi.jpg',NULL,'Ghada Karmi','Ghada Karmi is a Palestinian author, academic and activist. She will be discussing <b>Palestine and the rhetoric of free speech.</b>'),(5,'admin','2018-04-18 10:32:39',NULL,NULL,'michael-roberts.jpg','Michael Roberts is a Marxist economist who has worked in the City of London for over 30 years. He is author of <b>The Great Recession - a Marxist view (Lulu, 2009)</b> and <b>The Long Depression (Haymarket 2016).</b><br/><br/>Forthcoming is <b>Marx 200: a modern view of Marx’s economics 200 years after his birth (Lulu 2018)</b> and jointly with G Carchedi, <b>The World in Crisis: empirical backing for Marx’s law of profitability (Haymarket 2018)</b>.<br/><br/>He blogs at: <a href=\"https://thenextrecession.wordpress.com\">thenextrecession.wordpress.com</a>','Michael Roberts','Michael Roberts is a Marxist economist who writes regularly on the economy. He will be speaking on <b>The Long Depression and economic crisis</b>'),(6,'admin','2018-04-18 10:32:39',NULL,NULL,'christine-buchholz.jpg',NULL,'Christine Buchholz','Christine Buchholz, MP for Die Linke in Germany, joins Petros Constantinou from KEERFA in Greece and David Albrich from Austria to discuss <b>The far right in Europe</b>'),(7,'admin','2018-04-18 10:32:39',NULL,NULL,'ian-hodson.jpg',NULL,'Ian Hodson','Ian, President of BFAWU, and strikers from McDonalds will be part of many panels debating <b>Corbyn, Labour and the future of British politics</b>'),(8,'admin','2018-04-18 10:32:39',NULL,NULL,'moyra-samuels.jpg',NULL,'Moyra Samuels','Moyra is a member of the <b>Justice4Grenfell</b> campaign and one year on from the Grenfell tragedy will be part of a panel on <b>Injustice and the British state.</b>'),(9,'admin','2018-04-18 10:32:39',NULL,NULL,'alex-callinicos.jpg',NULL,'Alex Callinicos','Alex Callinicos, author of the <b>Revolutionary Ideas of Karl Marx</b> and will be discussing <b>Trump, tariffs and trade wars.</b>'),(10,'admin','2018-04-18 10:32:39',NULL,NULL,'brid-smith.jpg',NULL,'Brid Smith TD','Brid is a TD in the Irish Parliament for People Before Profit. She has been heavily involved in the campaign to Repeal the 8th amendment, and will be joining a panel on <b>Abortion rights today.</b>'),(11,'admin','2018-04-18 10:32:39',NULL,NULL,'jonathan-rosenhead.jpg',NULL,'Jonathan Rosenhead','Jonathan is a member of Jewish Voice for Labour and will be joining a panel debating <b>Zionism, antisemitism and Palestine solidarity</b>'),(12,'admin','2018-04-18 10:32:39',NULL,NULL,'christine-buchholz.jpg',NULL,'Eulália Reguant','Eulália is a MP in Barcelona for the CUP, the anti-capitalist wing of the Catalan Independence movement. She will be discussing <b>Where next for Catalonia?</b>'),(13,'admin','2018-04-18 10:32:39',NULL,NULL,'Nita-Sanghera.jpg','As an access to HE lecturer, working at SCCB Bournville campus, Nita is familiar with the ever present spectre of the Conservatives marketisation of education, and whatever else they can get their hands on.<br/><br/>She is an active member of UCU, and has recently become Vice President elect.','Nita Sanghera','Nita is the UCU vice-President elect and will be joining a panel debating the <b>marketization of Higher Education</b>'),(14,'admin','2018-04-18 10:32:39',NULL,NULL,'mark-perryman.jpg',NULL,'Mark Perryman','Mark is a founder of Philosophy Football and editor of <b>The Corbyn Effect</b>. He&apos;ll be debating <b>Corbyn and the future of British politics</b> with Mark L Thomas from the SWP.'),(15,'admin','2018-04-18 10:32:39',NULL,NULL,'naima-omar.jpg',NULL,'Naima Omar','Naima is an activist with Stand Up to Racism and will lead a panel discussing <b>A woman’s right to choose: defending the Hijab.</b>'),(16,'admin','2018-04-18 10:32:39',NULL,NULL,'alan-gibbons.jpg','Alan is the author of some seventy books and was one of the organisers of the Campaign for the Book and the <b>Speak up for Libraries Coalition</b> that spearheaded the fight to defend the public library service.<br/><br/>Alan is a prolific speaker on education and public service. The final volumes of his Revolution trilogy charting the Russian Revolution are published in 2018.<br/><br/>He is a member of the Labour Party and is speaking in a personal capacity.','Alan Gibbons','Award winning writer and Labour Party member Alan Gibbons speaks on the second book of his <b>Russian Revolution</b> trilogy.'),(17,'admin','2018-04-18 10:32:39',NULL,NULL,'deirdre-o-neill.jpg','Mike Wayne teaches film, television and media studies. He is the co-editor (with Deirdre O’Neill) of <b>Considering Class: Theory, Culture and the Media in the 21st Century</b> and co-director of with Deirdre O&#39;Neill of feature doc <b>The Acting Class.</b><br/><br/>Deirdre O&#39;Neill is a lecturer and filmmaker. Her new book is Film as a Radical Pedagogic tool. She is the co-coordinator of the <a href=\"http://www.insidefilm.org\">Inside Film Project</a>.<br/><br/>She has co- directed (with Mike Wayne) two films <a href=\"http://listentovenezuela.info\">Listen to Venezuela</a> and <a href=\"http://www.conditionoftheworkingclass.info\">Condition of the Working Class</a>.<br/><br/>Their latest film <b>The Acting Class</b> is currently touring the country.','Deidre O’Neill','Film makers Deidre O&#39;Neill and Mike Wayne will be leading a discussion on <b>Considering class: theory, culture and the media in the 21st century.</b>'),(18,'admin','2018-04-18 10:32:39',NULL,NULL,'dave-randall.jpg','Dave Randall is a musician, writer and activist.<br/><br/>He has toured the world playing guitar for Faithless, Sinead O&apos;Connor and others and is the author of <b>Sound System: The Political Power of Music.</b>','Dave Randall','Dave Randall is a musician who has played with Faithless and Sinead O’Connor, and he is author of <b>Sound System: The Political Power of Music.</b>'),(19,'admin','2018-04-18 10:32:39',NULL,NULL,'talat-ahmed.jpg',NULL,'Talat Ahmed','Talat is a lecturer and anti-racist activist based in Edinburgh. She will be leading a panel on <b>Decolonising education: confronting the legacy of slavery and empire</b>'),(20,'admin','2018-04-18 10:32:39',NULL,NULL,'john-holmwood.jpg',NULL,'John Holmwood','John Holmwood is author of Countering Extremism in British Schools – the Truth About the Trojan Horse Affair, and he will join a panel to discuss <b>Islamophobia and education.</b>'),(21,'admin','2018-04-18 10:32:39',NULL,NULL,'Lucia-Pradella.jpg',NULL,'Lucia Pradella','Lucia is an academic and activist in UCU. She’ll be speaking on <b>Italy, racism and the rise of the far right</b>'),(22,'admin','2018-04-18 10:32:39',NULL,NULL,'weyman-bennett.jpg',NULL,'Weyman Bennett','Weyman Bennett is the co-convenor of Stand Up to Racism. He will be analysing <b>Fascism, the far right and racist populism today</b>'),(23,'admin','2018-04-18 10:32:39',NULL,NULL,'maria-styllou.jpg',NULL,'Maria Styllou','Maria is a member of SEK in Greece and was a part of the 1968 student movement at the LSE. She&apos;ll be discussing <b>The legacy of 1968</b>'),(24,'admin','2018-04-18 10:32:39',NULL,NULL,'richard.jpg',NULL,'Richard Boyd-Barrett TD','Richard is a TD in the Irish Parliament with People Before Profit. He’ll be part of a panel debating <b>The fight against austerity in Europe.</b>'),(25,'admin','2018-04-18 10:32:39',NULL,NULL,'alfredo-saad-filho.jpg',NULL,'Alfredo Saad-Filho','Alfredo Marxist economist who writes on Latin America. He&apos;ll be launching his new book Brazil: Neoliberalism Versus Democracy'),(26,'admin','2018-04-18 10:32:39',NULL,NULL,'judith-orr.jpg',NULL,'Judith Orr','Judith is an author and activist. She will be leading a discussion on <b>Are we heading for a new Cold War?</b>'),(27,'admin','2018-04-18 10:32:39',NULL,NULL,'iain-ferguson.jpg',NULL,'Iain Ferguson','Iain Ferguson is a social worker and part of Social Work Action Network. He will be launching his new book <b>Politics of the Mind: Marxism and Mental Distress.</b>'),(28,'admin','2018-04-18 10:32:39',NULL,NULL,'yuri-prasad.jpg',NULL,'Yuri Prasad','Yuri is a journalist on Socialist Worker and he’ll be launching his new book <b>A Rebel&apos;s Guide to Martin Luther King.</b>'),(29,'admin','2018-04-18 10:32:39',NULL,NULL,'',NULL,'Sally Campbell','Sally is editor of Socialist Review  and leads a panel on <b>#MeToo: fighting everyday sexism</b>'),(30,'admin','2018-04-18 10:32:39',NULL,NULL,'ghayath-naisse.jpg',NULL,'Ghayath Naisse','Ghayath is a Syrian socialist and in the context of war, imperialism and counter revolution he&apos;ll be debating Syria today.');
=======
INSERT INTO `speaker` VALUES (1,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'Ilan-Pappe.jpg',' Ilan Pappe is the director of the European Centre for Palestine Studies at the University of Exeter and the author of twenty books, the last one is <b>The Biggest Prison on Earth: a History of the Israeli Occupation.</b>','Ilan Pappé','Ilan Papp&eacute; is an anti-Zionist academic who has written books including <b>The Ethnic Cleansing of Palestine</b>. He will be discussing <b>Opportunities and Dangers for Palestine in the Trump era.</b>'),(2,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'janet-alder.jpg',NULL,'Janet Alder','Janet Alder is the brother of Christopher Alder who was killed in police custody. She will be speaking on <b>Black Lives Matter: Police, racism and the state.</b>'),(3,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'john-bellamy-foster.jpg',NULL,'John Bellamy Foster','John Bellamy Foster is a Marxist ecologist and author. He will debate <b>Marxian ecology vs ecological escapism: the revolutionary necessity of our time.</b>'),(4,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'ghada-karmi.jpg',NULL,'Ghada Karmi','Ghada Karmi is a Palestinian author, academic and activist. She will be discussing <b>Palestine and the rhetoric of free speech.</b>'),(5,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'michael-roberts.jpg','Michael Roberts is a Marxist economist who has worked in the City of London for over 30 years. He is author of <b>The Great Recession - a Marxist view (Lulu, 2009)</b> and <b>The Long Depression (Haymarket 2016).</b><br/><br/>Forthcoming is <b>Marx 200: a modern view of Marx’s economics 200 years after his birth (Lulu 2018)</b> and jointly with G Carchedi, <b>The World in Crisis: empirical backing for Marx’s law of profitability (Haymarket 2018)</b>.<br/><br/>He blogs at: <a href=\"https://thenextrecession.wordpress.com\">thenextrecession.wordpress.com</a>','Michael Roberts','Michael Roberts is a Marxist economist who writes regularly on the economy. He will be speaking on <b>The Long Depression and economic crisis</b>'),(6,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'christine-buchholz.jpg',NULL,'Christine Buchholz','Christine Buchholz, an MP for Die Linke in Germany joins Petros Constantinou from KEERFA in Greece and David Albrich from Austria to discuss <b>The far right in Europe</b>'),(7,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'ian-hodson.jpg',NULL,'Ian Hodson','Ian, President of BFAWU, and strikers from McDonalds will be part of many panels debating <b>Corbyn, Labour and the future of British politics</b>'),(8,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'moyra-samuels.jpg',NULL,'Moyra Samuels','Moyra is a member of the <b>Justice4Grenfell</b> campaign and one year on from the Grenfell tragedy will be part of a panel on <b>Injustice and the British state.</b>'),(9,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'alex-callinicos.jpg',NULL,'Alex Callinicos','Alex Callinicos, author of the <b>Revolutionary Ideas of Karl Marx</b> and will be discussing <b>Trump, tariffs and trade wars.</b>'),(10,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'brid-smith.jpg',NULL,'Brid Smith TD','Brid is a TD in the Irish Parliament for People Before Profit. She has been heavily involved in the campaign to Repeal the 8th amendment, and will be joining a panel on <b>Abortion rights today.</b>'),(11,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'jonathan-rosenhead.jpg',NULL,'Jonathan Rosenhead','Jonathan is a member of Jewish Voice for Labour and will be joining a panel debating <b>Zionism, antisemitism and Palestine solidarity</b>'),(12,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'eulalia.jpg',NULL,'Eulália Reguant','Eulália is a MP in Barcelona for the CUP, the anti-capitalist wing of the Catalan Independence movement. She will be discussing <b>Where next for Catalonia?</b>'),(13,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'Nita-Sanghera.jpg','As an access to HE lecturer, working at SCCB Bournville campus, Nita is familiar with the ever present spectre of the Conservatives marketisation of education, and whatever else they can get their hands on.<br/><br/>She is an active member of UCU, and has recently become Vice President elect.','Nita Sanghera','Nita is the UCU vice-President elect and will be joining a panel debating the <b>marketization of Higher Education</b>'),(14,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'mark-perryman.jpg',NULL,'Mark Perryman','Mark is a founder of Philosophy Football and editor of <b>The Corbyn Effect</b>. He&apos;ll be debating <b>Corbyn and the future of British politics</b> with Mark L Thomas from the SWP.'),(15,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'naima-omar.jpg',NULL,'Naima Omar','Naima is an activist with Stand Up to Racism and will lead a panel discussing <b>A woman’s right to choose: defending the Hijab.</b>'),(16,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'alan-gibbons.jpg','Alan is the author of some seventy books and was one of the organisers of the Campaign for the Book and the <b>Speak up for Libraries Coalition</b> that spearheaded the fight to defend the public library service.<br/><br/>Alan is a prolific speaker on education and public service. The final volumes of his Revolution trilogy charting the Russian Revolution are published in 2018.<br/><br/>He is a member of the Labour Party and is speaking in a personal capacity.','Alan Gibbons','Award winning writer and Labour Party member Alan Gibbons speaks on the second book of his <b>Russian Revolution</b> trilogy.'),(17,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'deirdre-o-neill.jpg','Mike Wayne teaches film, television and media studies. He is the co-editor (with Deirdre O’Neill) of <b>Considering Class: Theory, Culture and the Media in the 21st Century</b> and co-director of with Deirdre O&#39;Neill of feature doc <b>The Acting Class.</b><br/><br/>Deirdre O&#39;Neill is a lecturer and filmmaker. Her new book is Film as a Radical Pedagogic tool. She is the co-coordinator of the <a href=\"http://www.insidefilm.org\">Inside Film Project</a>.<br/><br/>She has co-directed (with Mike Wayne) two films <a href=\"http://listentovenezuela.info\">Listen to Venezuela</a> and <a href=\"http://www.conditionoftheworkingclass.info\">Condition of the Working Class</a>.<br/><br/>Their latest film <b>The Acting Class</b> is currently touring the country.','Deirdre O’Neill','Film makers Deirdre O&#39;Neill and Mike Wayne will be leading a discussion on <b>Considering class: theory, culture and the media in the 21st century.</b>'),(18,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'dave-randall.jpg','Dave Randall is a musician, writer and activist.<br/><br/>He has toured the world playing guitar for Faithless, Sinead O&apos;Connor and others and is the author of <b>Sound System: The Political Power of Music.</b>','Dave Randall','Dave Randall is a musician who has played with Faithless and Sinead O’Connor, and he is author of <b>Sound System: The Political Power of Music.</b>'),(19,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'talat-ahmed.jpg',NULL,'Talat Ahmed','Talat is a lecturer and anti-racist activist based in Edinburgh. She will be leading a panel on <b>Decolonising education: confronting the legacy of slavery and empire</b>'),(20,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'john-holmwood.jpg',NULL,'John Holmwood','John Holmwood is author of Countering Extremism in British Schools – the Truth About the Trojan Horse Affair, and he will join a panel to discuss <b>Islamophobia and education.</b>'),(21,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'Lucia-Pradella.jpg',NULL,'Lucia Pradella','Lucia is an academic and activist in UCU. She’ll be speaking on <b>Italy, racism and the rise of the far right</b>'),(22,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'weyman-bennett.jpg',NULL,'Weyman Bennett','Weyman Bennett is the co-convenor of Stand Up to Racism. He will be analysing <b>Fascism, the far right and racist populism today</b>'),(23,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'maria-styllou.jpg',NULL,'Maria Styllou','Maria is a member of SEK in Greece and was a part of the 1968 student movement at the LSE. She&apos;ll be discussing <b>The legacy of 1968</b>'),(24,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'richard.jpg',NULL,'Richard Boyd-Barrett TD','Richard is a TD in the Irish Parliament with People Before Profit. He’ll be part of a panel debating <b>The fight against austerity in Europe.</b>'),(25,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'alfredo-saad-filho.jpg',NULL,'Alfredo Saad-Filho','Alfredo Marxist economist who writes on Latin America. He&apos;ll be launching his new book Brazil: Neoliberalism Versus Democracy'),(26,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'judith-orr.jpg',NULL,'Judith Orr','Judith is an author and activist. She will be leading a discussion on <b>Are we heading for a new Cold War?</b>'),(27,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'iain-ferguson.jpg',NULL,'Iain Ferguson','Iain Ferguson is a social worker and part of Social Work Action Network. He will be launching his new book <b>Politics of the Mind: Marxism and Mental Distress.</b>'),(28,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'yuri-prasad.jpg',NULL,'Yuri Prasad','Yuri is a journalist on Socialist Worker and he’ll be launching his new book <b>A Rebel&apos;s Guide to Martin Luther King.</b>'),(29,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'sally.jpg',NULL,'Sally Campbell','Sally is editor of Socialist Review  and leads a panel on <b>#MeToo: fighting everyday sexism</b>'),(30,'admin','2018-04-18 11:50:02.000000',NULL,NULL,'ghayath-naisse.jpg',NULL,'Ghayath Naisse','Ghayath is a Syrian socialist and in the context of war, imperialism and counter revolution he&apos;ll be debating Syria today.');
>>>>>>> 9d8dccf... Adding sally campbell image
=======
INSERT INTO `speaker` VALUES (1,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'Ilan-Pappe.jpg',' Ilan Pappe is the director of the European Centre for Palestine Studies at the University of Exeter and the author of twenty books, the last one is <b>The Biggest Prison on Earth: a History of the Israeli Occupation.</b>','Ilan Pappé','Ilan Papp&eacute; is an anti-Zionist academic who has written books including <b>The Ethnic Cleansing of Palestine</b>. He will be discussing <b>Opportunities and Dangers for Palestine in the Trump era.</b>'),(2,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'janet-alder.jpg',NULL,'Janet Alder','Janet Alder is the sister of Christopher Alder who was killed in police custody. She will be speaking on <b>Black Lives Matter: Police, racism and the state.</b>'),(3,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'john-bellamy-foster.jpg',NULL,'John Bellamy Foster','John Bellamy Foster is a Marxist ecologist and author. He will debate <b>Marxian ecology vs ecological escapism: the revolutionary necessity of our time.</b>'),(4,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'ghada-karmi.jpg',NULL,'Ghada Karmi','Ghada Karmi is a Palestinian author, academic and activist. She will be discussing <b>Palestine and the rhetoric of free speech.</b>'),(5,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'michael-roberts.jpg','Michael Roberts is a Marxist economist who has worked in the City of London for over 30 years. He is author of <b>The Great Recession - a Marxist view (Lulu, 2009)</b> and <b>The Long Depression (Haymarket 2016).</b><br/><br/>Forthcoming is <b>Marx 200: a modern view of Marx’s economics 200 years after his birth (Lulu 2018)</b> and jointly with G Carchedi, <b>The World in Crisis: empirical backing for Marx’s law of profitability (Haymarket 2018)</b>.<br/><br/>He blogs at: <a href=\"https://thenextrecession.wordpress.com\">thenextrecession.wordpress.com</a>','Michael Roberts','Michael Roberts is a Marxist economist who writes regularly on the economy. He will be speaking on <b>The Long Depression and economic crisis</b>'),(6,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'christine-buchholz.jpg',NULL,'Christine Buchholz','Christine Buchholz, an MP for Die Linke in Germany joins Petros Constantinou from KEERFA in Greece and David Albrich from Austria to discuss <b>The far right in Europe</b>'),(7,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'ian-hodson.jpg',NULL,'Ian Hodson','Ian, President of BFAWU, and strikers from McDonalds will be part of many panels debating <b>Corbyn, Labour and the future of British politics</b>'),(8,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'moyra-samuels.jpg',NULL,'Moyra Samuels','Moyra is a member of the <b>Justice4Grenfell</b> campaign and one year on from the Grenfell tragedy will be part of a panel on <b>Injustice and the British state.</b>'),(9,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'alex-callinicos.jpg',NULL,'Alex Callinicos','Alex Callinicos, author of the <b>Revolutionary Ideas of Karl Marx</b> and will be discussing <b>Trump, tariffs and trade wars.</b>'),(10,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'brid-smith.jpg',NULL,'Brid Smith TD','Brid is a TD in the Irish Parliament for People Before Profit. She has been heavily involved in the campaign to Repeal the 8th amendment, and will be joining a panel on <b>Abortion rights today.</b>'),(11,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'jonathan-rosenhead.jpg',NULL,'Jonathan Rosenhead','Jonathan is a member of Jewish Voice for Labour and will be joining a panel debating <b>Zionism, antisemitism and Palestine solidarity</b>'),(12,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'eulalia.jpg',NULL,'Eulália Reguant','Eulália is a former MP in Barcelona for the CUP, the anti-capitalist wing of the Catalan Independence movement. She will be discussing <b>Where next for Catalonia?</b>'),(13,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'Nita-Sanghera.jpg','As an access to HE lecturer, working at SCCB Bournville campus, Nita is familiar with the ever present spectre of the Conservatives marketisation of education, and whatever else they can get their hands on.<br/><br/>She is an active member of UCU, and has recently become Vice President elect.','Nita Sanghera','Nita is the UCU vice-President elect and will be joining a panel debating the <b>marketization of Higher Education</b>'),(14,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'mark-perryman.jpg',NULL,'Mark Perryman','Mark is a founder of Philosophy Football and editor of <b>The Corbyn Effect</b>. He&apos;ll be debating <b>Corbyn and the future of British politics</b> with Mark L Thomas from the SWP.'),(15,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'naima-omar.jpg',NULL,'Naima Omar','Naima is an activist with Stand Up to Racism and will lead a panel discussing <b>A woman’s right to choose: defending the Hijab.</b>'),(16,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'alan-gibbons.jpg','Alan is the author of some seventy books and was one of the organisers of the Campaign for the Book and the <b>Speak up for Libraries Coalition</b> that spearheaded the fight to defend the public library service.<br/><br/>Alan is a prolific speaker on education and public service. The final volumes of his Revolution trilogy charting the Russian Revolution are published in 2018.<br/><br/>He is a member of the Labour Party and is speaking in a personal capacity.','Alan Gibbons','Award winning writer and Labour Party member Alan Gibbons speaks on the second book of his <b>Russian Revolution</b> trilogy.'),(17,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'deirdre-o-neill.jpg','Mike Wayne teaches film, television and media studies. He is the co-editor (with Deirdre O’Neill) of <b>Considering Class: Theory, Culture and the Media in the 21st Century</b> and co-director of with Deirdre O&#39;Neill of feature doc <b>The Acting Class.</b><br/><br/>Deirdre O&#39;Neill is a lecturer and filmmaker. Her new book is Film as a Radical Pedagogic tool. She is the co-coordinator of the <a href=\"http://www.insidefilm.org\">Inside Film Project</a>.<br/><br/>She has co-directed (with Mike Wayne) two films <a href=\"http://listentovenezuela.info\">Listen to Venezuela</a> and <a href=\"http://www.conditionoftheworkingclass.info\">Condition of the Working Class</a>.<br/><br/>Their latest film <b>The Acting Class</b> is currently touring the country.','Deirdre O’Neill','Film makers Deirdre O&#39;Neill and Mike Wayne will be leading a discussion on <b>Considering class: theory, culture and the media in the 21st century.</b>'),(18,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'dave-randall.jpg','Dave Randall is a musician, writer and activist.<br/><br/>He has toured the world playing guitar for Faithless, Sinead O&apos;Connor and others and is the author of <b>Sound System: The Political Power of Music.</b>','Dave Randall','Dave Randall is a musician who has played with Faithless and Sinead O’Connor, and he is author of <b>Sound System: The Political Power of Music.</b>'),(19,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'talat-ahmed.jpg',NULL,'Talat Ahmed','Talat is a lecturer and anti-racist activist based in Edinburgh. She will be leading a panel on <b>Decolonising education: confronting the legacy of slavery and empire</b>'),(20,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'john-holmwood.jpg',NULL,'John Holmwood','John Holmwood is author of Countering Extremism in British Schools – the Truth About the Trojan Horse Affair, and he will join a panel to discuss <b>Islamophobia and education.</b>'),(21,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'Lucia-Pradella.jpg',NULL,'Lucia Pradella','Lucia is an academic and activist in UCU. She’ll be speaking on <b>Italy, racism and the rise of the far right</b>'),(22,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'weyman-bennett.jpg',NULL,'Weyman Bennett','Weyman Bennett is the co-convenor of Stand Up to Racism. He will be analysing <b>Fascism, the far right and racist populism today</b>'),(23,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'maria-styllou.jpg',NULL,'Maria Styllou','Maria is a member of SEK in Greece and was a part of the 1968 student movement at the LSE. She&apos;ll be discussing <b>The legacy of 1968</b>'),(24,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'richard.jpg',NULL,'Richard Boyd-Barrett TD','Richard is a TD in the Irish Parliament with People Before Profit. He’ll be part of a panel debating <b>The fight against austerity in Europe.</b>'),(25,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'alfredo-saad-filho.jpg',NULL,'Alfredo Saad-Filho','Alfredo Marxist economist who writes on Latin America. He&apos;ll be launching his new book Brazil: Neoliberalism Versus Democracy'),(26,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'judith-orr.jpg',NULL,'Judith Orr','Judith is an author and activist. She will be leading a discussion on <b>Are we heading for a new Cold War?</b>'),(27,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'iain-ferguson.jpg',NULL,'Iain Ferguson','Iain Ferguson is a social worker and part of Social Work Action Network. He will be launching his new book <b>Politics of the Mind: Marxism and Mental Distress.</b>'),(28,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'yuri-prasad.jpg',NULL,'Yuri Prasad','Yuri is a journalist on Socialist Worker and he’ll be launching his new book <b>A Rebel&apos;s Guide to Martin Luther King.</b>'),(29,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'sally.jpg',NULL,'Sally Campbell','Sally is editor of Socialist Review  and leads a panel on <b>#MeToo: fighting everyday sexism</b>'),(30,'admin','2018-04-18 15:32:59.000000',NULL,NULL,'ghayath-naisse.jpg',NULL,'Ghayath Naisse','Ghayath is a Syrian socialist and in the context of war, imperialism and counter revolution he&apos;ll be debating Syria today.');
>>>>>>> 9065167... Adding three replacement images for brid, richard and sally
/*!40000 ALTER TABLE `speaker` ENABLE KEYS */;
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
  KEY `FKea9t3x9pggoj3taygh8hqouxg` (`speakers_id`)
<<<<<<< HEAD
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
>>>>>>> a0a96e8... Cleaning up speakers and adding sql
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marxism_website_speakers`
--

LOCK TABLES `marxism_website_speakers` WRITE;
/*!40000 ALTER TABLE `marxism_website_speakers` DISABLE KEYS */;
INSERT INTO `marxism_website_speakers` VALUES (1,1,0),(1,2,1),(1,3,2),(1,4,3),(1,5,4),(1,6,5),(1,7,6),(1,8,7),(1,9,8),(1,10,9),(1,11,10),(1,12,11),(1,13,12),(1,14,13),(1,15,14),(1,16,15),(1,17,16),(1,18,17),(1,19,18),(1,20,19),(1,21,20),(1,22,21),(1,23,22),(1,24,23),(1,25,24),(1,26,25),(1,27,26),(1,28,27),(1,29,28),(1,30,29);
/*!40000 ALTER TABLE `marxism_website_speakers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

<<<<<<< HEAD
<<<<<<< HEAD
-- Dump completed on 2018-04-18 10:34:02
=======
-- Dump completed on 2018-04-18 11:52:13
>>>>>>> 9d8dccf... Adding sally campbell image
=======
-- Dump completed on 2018-04-18 15:33:45
>>>>>>> 9065167... Adding three replacement images for brid, richard and sally
