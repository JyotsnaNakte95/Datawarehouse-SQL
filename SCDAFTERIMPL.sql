-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: scd
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
-- Table structure for table `customer_dimension`
--

DROP TABLE IF EXISTS `customer_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_dimension` (
  `Customer_SK` int(11) NOT NULL,
  `Customer_ID` int(11) DEFAULT NULL,
  `Customer_Name` varchar(45) DEFAULT NULL,
  `Customer_Address` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Zip` int(11) DEFAULT NULL,
  `Typename` varchar(45) DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `Expired_Date` date DEFAULT NULL,
  PRIMARY KEY (`Customer_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_dimension`
--

LOCK TABLES `customer_dimension` WRITE;
/*!40000 ALTER TABLE `customer_dimension` DISABLE KEYS */;
INSERT INTO `customer_dimension` VALUES (0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(2,39,'Ashton Washington','7726 Donec Road','Vallejo','MA',11999,'Education',1,'1999-01-01','2015-01-25'),(4,4,'Austin Burns Company','2041 Venenatis Avenue','Alexandria','DC',34440,'Education',1,'1999-01-01','2099-01-01'),(5,6,'Austin Ferrell Tech','8666 Justo Road','Pullman','PA',55979,'Commercial',1,'1999-01-01','2099-01-01'),(7,11,'Beasley Tech','7800 Nec Road','Idabel','MA',57132,'Commercial',1,'1999-01-01','2099-01-01'),(9,1,'Beverly Equipment','7581 Quisque Street','Bloomington','HI',88440,'State_Local Gov',1,'1999-01-01','2099-01-01'),(10,38,'Blevins','2571 Donec Avenue','Winooski','SD',65512,'Commercial',1,'1999-01-01','2015-01-24'),(11,10,'Byron Chemicals Institute','6831 Donec Street','Salt Lake City','IN',41050,'Commercial',1,'1999-01-01','2099-01-01'),(13,17,'Camera Platforms International Incorporation','5347 Deposed Street','Houston','TX',77244,'State_Local Gov',1,'1999-01-01','2099-01-01'),(14,24,'Chantale-Huffman Incorporation','2761 Infinity Street','New Iberia','NH',65327,'State_Local Gov',1,'1999-01-01','2015-01-12'),(15,36,'Charity Core Incorporation ','3254 Hendrerit Avenue','Effingham','WY',27502,'Education',1,'1999-01-01','2099-01-01'),(16,23,'Chemfix Technologies Incorporation','11533 Wonderingly Drive','Pasadena Hills','MO',63121,'State_Local Gov',1,'1999-01-01','2015-01-13'),(18,2,'Clio-Hutchinson Company','1257 Ac Avenue','Butler','SC',82126,'State_Local Gov',1,'1999-01-01','2099-01-01'),(21,18,'Cross Incorporation','6605 Rhoncus Avenue','Hopkinsville','NH',25620,'US Govt',1,'1999-01-01','2099-01-01'),(23,27,'Emerson Electric Company','1792 Squash Drive','South Texarkana','TX',75501,'Education',1,'1999-01-01','2099-01-01'),(25,35,'Ferdinand Supply','6979 Quis Street','Nome','DL',58359,'US Govt',1,'1999-01-01','2099-01-01'),(28,19,'Firstfed America Bancorp Incorporation','5656 Settler Street','Ward Prairie','TX',75840,'Education',1,'1999-01-01','2015-01-14'),(29,31,'Fuentes Incorporation','7063 Phasellus Road','Compton','WV',68519,'US Govt',1,'1999-01-01','2015-01-15'),(30,25,'Garrison Works','3801 Lacus Road','Reno','WV',46307,'Education',1,'1999-01-01','2099-01-01'),(32,29,'Genevieve Day','284-1916 Ac Street','Troy','IN',68914,'Education',1,'1999-01-01','2099-01-01'),(36,40,'Gte Technical Company','7196 Heaver Lane','Winter Garden','FL',34777,'State_Local Gov',1,'1999-01-01','2099-01-01'),(41,7,'Hop Adams Corporation','704 Nisl Road','Sun Valley','NH',84458,'Education',1,'1999-01-01','2099-01-01'),(42,33,'India-Stuart','1973 At Avenue','Cudahy','CL',76482,'US Govt',1,'1999-01-01','2099-01-01'),(54,16,'Martinez Disposables Company','5331 Nunc Avenue','Tucson','DC',79991,'US Govt',1,'1999-01-01','2099-01-01'),(57,32,'Mendoza Chemicals','4826 Urna Avenue','Everett','MD',87048,'Commercial',1,'1999-01-01','2099-01-01'),(58,9,'Meridian Resources Corporation','1977 Symbiotic Turnpike','Fall River','MA',12724,'Commercial',1,'1999-01-01','2099-01-01'),(59,15,'Merritt Long','3072 Cursus Avenue','West Haven','WY',83709,'Commercial',1,'1999-01-01','2015-01-20'),(61,8,'Mullins Incorporation Technical','4009 Ornare Road','Birmingham','NE',59509,'State_Local Gov',1,'1999-01-01','2099-01-01'),(63,28,'Oleg Jones','5491 Nec Road','Moraga','NE',82394,'Commercial',1,'1999-01-01','2015-01-16'),(66,20,'Price Rivers','2853 Aenean Avenue','Sault Ste. Marie','MS',59316,'State_Local Gov',1,'1999-01-01','2099-01-01'),(68,12,'Processing Equipment Corporation','29843 Klingon Road','Naperville','IL',60563,'Commercial',1,'1999-01-01','2015-01-17'),(70,34,'Pulitzer Publishing Company','126 Pathological Circle','Woodbury','NY',11797,'State_Local Gov',1,'1999-01-01','2099-01-01'),(73,37,'Ronan French','8773 Feugiat Road','Gary','WA',17387,'Education',1,'1999-01-01','2015-01-23'),(75,26,'Ruby Petty','3142 Congue Street','Chicago','IL',76404,'State_Local Gov',1,'1999-01-01','2099-01-01'),(77,5,'Saint Andrews Golf Corporation','8068 Substances Street','North Miami','FL',33261,'US Govt',1,'1999-01-01','2099-01-01'),(78,22,'Santiago Processing','4565 Tempor Avenue','Hanahan','AK',15743,'State_Local Gov',1,'1999-01-01','2099-01-01'),(79,21,'Santos LLC','9130 Fames Road','Billings','IN',12869,'Commercial',1,'1999-01-01','2099-01-01'),(84,30,'Setron','3085 Breakthrough Drive','Hart','MO',64865,'State_Local Gov',1,'1999-01-01','2099-01-01'),(92,14,'The Final Frontier','528 Curabitur Road','Biddeford','MO',39683,'State_Local Gov',1,'1999-01-01','2015-01-19'),(99,3,'YuliChem Corporation','6440 Amet Street','Laguna Woods','KY',53141,'Commercial',1,'1999-01-01','2099-01-01'),(100,13,'Zena Machines','1277 Hendrerit Avenue','San Juan','WA',10776,'State_Local Gov',1,'1999-01-01','2015-01-18'),(101,24,'Chantale-Huffman Incorporation','2761 Elmwood Street','Wilmington','DL',58334,'State_Local Gov',2,'2015-01-12','2200-01-01'),(102,23,'Chemfix Technologies Incorporation','16653 Capital Drive','Rochester','NY',14623,'State_Local Gov',2,'2015-01-13','2200-01-01'),(103,19,'Firstfed America Bancorp Incorporation','220 John Street','Rochester','NY',14623,'Education',2,'2015-01-14','2200-01-01'),(104,31,'Fuentes Incorporation','8965 Crittenden Road','San Diego','CA',78787,'US Govt',2,'2015-01-15','2200-01-01'),(105,28,'Oleg Jones','678 Elmwood Terraces','Seattle','WS',32413,'Commercial',2,'2015-01-16','2200-01-01'),(106,12,'Processing Equipment Corporation','29843 Kingston Avenue','San Diego','CA',63454,'Commercial',2,'2015-01-17','2200-01-01'),(107,13,'Zena Machines','1277 Hendrer Road','Biddeford','MO',78933,'State_Local Gov',2,'2015-01-18','2200-01-01'),(108,14,'The Final Frontier','528 Curo State Avenue','West Haven','WY',44789,'State_Local Gov',2,'2015-01-19','2200-01-01'),(109,15,'Merritt Long','30 Saint John Avenue','Tucson','DC',98172,'Commercial',2,'2015-01-20','2200-01-01'),(110,37,'Ronan French','8773 Flight Road','Vallejo','MA',31089,'Education',2,'2015-01-23','2200-01-01'),(111,38,'Blevins Corporation','2571 Donec Avenue','Winooski','SD',34515,'Commercial',2,'2015-01-24','2200-01-01'),(112,39,'Ashton Washington','658 Criten Elm Road','Winooski','SD',51352,'Education',2,'2015-01-25','2200-01-01');
/*!40000 ALTER TABLE `customer_dimension` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-29 21:34:19
