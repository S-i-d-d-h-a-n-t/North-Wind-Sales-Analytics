-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: northwind
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(40) NOT NULL,
  `SupplierID` int DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  `QuantityPerUnit` varchar(20) DEFAULT NULL,
  `UnitPrice` decimal(19,4) DEFAULT '0.0000',
  `UnitsInStock` int DEFAULT '0',
  `UnitsOnOrder` int DEFAULT '0',
  `ReorderLevel` int DEFAULT '0',
  `Discontinued` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ProductID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `ProductName` (`ProductName`),
  KEY `SupplierID` (`SupplierID`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Chai',1,1,'10 boxes x 20 bags',18.0000,39,0,10,0),(2,'Chang',1,1,'24 - 12 oz bottles',19.0000,17,40,25,0),(3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10.0000,13,70,25,0),(4,'Chef Anton\'s Cajun Seasoning',2,2,'48 - 6 oz jars',22.0000,53,0,0,0),(5,'Chef Anton\'s Gumbo Mix',2,2,'36 boxes',21.3500,0,0,0,1),(6,'Grandma\'s Boysenberry Spread',3,2,'12 - 8 oz jars',25.0000,120,0,25,0),(7,'Uncle Bob\'s Organic Dried Pears',3,7,'12 - 1 lb pkgs.',30.0000,15,0,10,0),(8,'Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40.0000,6,0,0,0),(9,'Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97.0000,29,0,0,1),(10,'Ikura',4,8,'12 - 200 ml jars',31.0000,31,0,0,0),(11,'Queso Cabrales',5,4,'1 kg pkg.',21.0000,22,30,30,0),(12,'Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38.0000,86,0,0,0),(13,'Konbu',6,8,'2 kg box',6.0000,24,0,5,0),(14,'Tofu',6,7,'40 - 100 g pkgs.',23.2500,35,0,0,0),(15,'Genen Shouyu',6,2,'24 - 250 ml bottles',15.5000,39,0,5,0),(16,'Pavlova',7,3,'32 - 500 g boxes',17.4500,29,0,10,0),(17,'Alice Mutton',7,6,'20 - 1 kg tins',39.0000,0,0,0,1),(18,'Carnarvon Tigers',7,8,'16 kg pkg.',62.5000,42,0,0,0),(19,'Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9.2000,25,0,5,0),(20,'Sir Rodney\'s Marmalade',8,3,'30 gift boxes',81.0000,40,0,0,0),(21,'Sir Rodney\'s Scones',8,3,'24 pkgs. x 4 pieces',10.0000,3,40,5,0),(22,'Gustaf\'s Knäckebröd',9,5,'24 - 500 g pkgs.',21.0000,104,0,25,0),(23,'Tunnbröd',9,5,'12 - 250 g pkgs.',9.0000,61,0,25,0),(24,'Guaraná Fantástica',10,1,'12 - 355 ml cans',4.5000,20,0,0,1),(25,'NuNuCa Nuß-Nougat-Creme',11,3,'20 - 450 g glasses',14.0000,76,0,30,0),(26,'Gumbär Gummibärchen',11,3,'100 - 250 g bags',31.2300,15,0,0,0),(27,'Schoggi Schokolade',11,3,'100 - 100 g pieces',43.9000,49,0,30,0),(28,'Rössle Sauerkraut',12,7,'25 - 825 g cans',45.6000,26,0,0,1),(29,'Thüringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',123.7900,0,0,0,1),(30,'Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',25.8900,10,0,15,0),(31,'Gorgonzola Telino',14,4,'12 - 100 g pkgs',12.5000,0,70,20,0),(32,'Mascarpone Fabioli',14,4,'24 - 200 g pkgs.',32.0000,9,40,25,0),(33,'Geitost',15,4,'500 g',2.5000,112,0,20,0),(34,'Sasquatch Ale',16,1,'24 - 12 oz bottles',14.0000,111,0,15,0),(35,'Steeleye Stout',16,1,'24 - 12 oz bottles',18.0000,20,0,15,0),(36,'Inlagd Sill',17,8,'24 - 250 g  jars',19.0000,112,0,20,0),(37,'Gravad lax',17,8,'12 - 500 g pkgs.',26.0000,11,50,25,0),(38,'Côte de Blaye',18,1,'12 - 75 cl bottles',263.5000,17,0,15,0),(39,'Chartreuse verte',18,1,'750 cc per bottle',18.0000,69,0,5,0),(40,'Boston Crab Meat',19,8,'24 - 4 oz tins',18.4000,123,0,30,0),(41,'Jack\'s New England Clam Chowder',19,8,'12 - 12 oz cans',9.6500,85,0,10,0),(42,'Singaporean Hokkien Fried Mee',20,5,'32 - 1 kg pkgs.',14.0000,26,0,0,1),(43,'Ipoh Coffee',20,1,'16 - 500 g tins',46.0000,17,10,25,0),(44,'Gula Malacca',20,2,'20 - 2 kg bags',19.4500,27,0,15,0),(45,'Røgede sild',21,8,'1k pkg.',9.5000,5,70,15,0),(46,'Spegesild',21,8,'4 - 450 g glasses',12.0000,95,0,0,0),(47,'Zaanse koeken',22,3,'10 - 4 oz boxes',9.5000,36,0,0,0),(48,'Chocolade',22,3,'10 pkgs.',12.7500,15,70,25,0),(49,'Maxilaku',23,3,'24 - 50 g pkgs.',20.0000,10,60,15,0),(50,'Valkoinen suklaa',23,3,'12 - 100 g bars',16.2500,65,0,30,0),(51,'Manjimup Dried Apples',24,7,'50 - 300 g pkgs.',53.0000,20,0,10,0),(52,'Filo Mix',24,5,'16 - 2 kg boxes',7.0000,38,0,25,0),(53,'Perth Pasties',24,6,'48 pieces',32.8000,0,0,0,1),(54,'Tourtière',25,6,'16 pies',7.4500,21,0,10,0),(55,'Pâté chinois',25,6,'24 boxes x 2 pies',24.0000,115,0,20,0),(56,'Gnocchi di nonna Alice',26,5,'24 - 250 g pkgs.',38.0000,21,10,30,0),(57,'Ravioli Angelo',26,5,'24 - 250 g pkgs.',19.5000,36,0,20,0),(58,'Escargots de Bourgogne',27,8,'24 pieces',13.2500,62,0,20,0),(59,'Raclette Courdavault',28,4,'5 kg pkg.',55.0000,79,0,0,0),(60,'Camembert Pierrot',28,4,'15 - 300 g rounds',34.0000,19,0,0,0),(61,'Sirop d\'érable',29,2,'24 - 500 ml bottles',28.5000,113,0,25,0),(62,'Tarte au sucre',29,3,'48 pies',49.3000,17,0,0,0),(63,'Vegie-spread',7,2,'15 - 625 g jars',43.9000,24,0,5,0),(64,'Wimmers gute Semmelknödel',12,5,'20 bags x 4 pieces',33.2500,22,80,30,0),(65,'Louisiana Fiery Hot Pepper Sauce',2,2,'32 - 8 oz bottles',21.0500,76,0,0,0),(66,'Louisiana Hot Spiced Okra',2,2,'24 - 8 oz jars',17.0000,4,100,20,0),(67,'Laughing Lumberjack Lager',16,1,'24 - 12 oz bottles',14.0000,52,0,10,0),(68,'Scottish Longbreads',8,3,'10 boxes x 8 pieces',12.5000,6,10,15,0),(69,'Gudbrandsdalsost',15,4,'10 kg pkg.',36.0000,26,0,15,0),(70,'Outback Lager',7,1,'24 - 355 ml bottles',15.0000,15,10,30,0),(71,'Fløtemysost',15,4,'10 - 500 g pkgs.',21.5000,26,0,0,0),(72,'Mozzarella di Giovanni',14,4,'24 - 200 g pkgs.',34.8000,14,0,0,0),(73,'Röd Kaviar',17,8,'24 - 150 g jars',15.0000,101,0,5,0),(74,'Longlife Tofu',4,7,'5 kg pkg.',10.0000,4,20,5,0),(75,'Rhönbräu Klosterbier',12,1,'24 - 0.5 l bottles',7.7500,125,0,25,0),(76,'Lakkalikööri',23,1,'500 ml',18.0000,57,0,20,0),(77,'Original Frankfurter grüne Soße',12,2,'12 boxes',13.0000,32,0,15,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-16 13:43:25
