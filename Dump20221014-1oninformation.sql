CREATE DATABASE  IF NOT EXISTS `on_infomasyshc` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `on_infomasyshc`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: on_infomasyshc
-- ------------------------------------------------------
-- Server version	5.5.8

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
-- Table structure for table `tblaccountbhw`
--

DROP TABLE IF EXISTS `tblaccountbhw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaccountbhw` (
  `idtblAccountBHW` int(11) NOT NULL AUTO_INCREMENT,
  `FName` varchar(45) DEFAULT NULL,
  `MName` varchar(45) DEFAULT NULL,
  `LName` varchar(45) DEFAULT NULL,
  `CompleteName` varchar(99) DEFAULT NULL,
  `Birthdate` varchar(45) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `DateCreated` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtblAccountBHW`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaccountbhw`
--

LOCK TABLES `tblaccountbhw` WRITE;
/*!40000 ALTER TABLE `tblaccountbhw` DISABLE KEYS */;
INSERT INTO `tblaccountbhw` VALUES (1,'Admin','A','Admin','Admin, A. Admin','1995-04-12','Admin','$2y$10$r6E77jMCz4PFCmvtEWtZeetwaB/i.6q183BPeny.n//Gsq2PFBDjS','1995-04-12');
/*!40000 ALTER TABLE `tblaccountbhw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblanimals`
--

DROP TABLE IF EXISTS `tblanimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblanimals` (
  `idtblAnimals` int(11) NOT NULL AUTO_INCREMENT,
  `Kind` varchar(99) DEFAULT NULL,
  `Description` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`idtblAnimals`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblanimals`
--

LOCK TABLES `tblanimals` WRITE;
/*!40000 ALTER TABLE `tblanimals` DISABLE KEYS */;
INSERT INTO `tblanimals` VALUES (1,'Cat',''),(2,'Dog',NULL),(3,'Pig',NULL),(4,'Rabbit','asdasd'),(5,'aaa','aaaa');
/*!40000 ALTER TABLE `tblanimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblenvironmentalsanitation`
--

DROP TABLE IF EXISTS `tblenvironmentalsanitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblenvironmentalsanitation` (
  `idtblEnvironmentalsanitation` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(90) DEFAULT NULL,
  `Description` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`idtblEnvironmentalsanitation`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblenvironmentalsanitation`
--

LOCK TABLES `tblenvironmentalsanitation` WRITE;
/*!40000 ALTER TABLE `tblenvironmentalsanitation` DISABLE KEYS */;
INSERT INTO `tblenvironmentalsanitation` VALUES (1,'Not Sanitized',NULL),(2,'Sanitized',NULL),(3,'Wata','Wata');
/*!40000 ALTER TABLE `tblenvironmentalsanitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfamilyplanning`
--

DROP TABLE IF EXISTS `tblfamilyplanning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfamilyplanning` (
  `idtblFamilyPlanning` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtblFamilyPlanning`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfamilyplanning`
--

LOCK TABLES `tblfamilyplanning` WRITE;
/*!40000 ALTER TABLE `tblfamilyplanning` DISABLE KEYS */;
INSERT INTO `tblfamilyplanning` VALUES (1,'Condom',NULL),(2,'Pills',NULL),(3,'Others','Others'),(4,'Hello','Hello');
/*!40000 ALTER TABLE `tblfamilyplanning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgarbagedisposal`
--

DROP TABLE IF EXISTS `tblgarbagedisposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblgarbagedisposal` (
  `idtblgarbagedisposal` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(99) DEFAULT NULL,
  `Description` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`idtblgarbagedisposal`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgarbagedisposal`
--

LOCK TABLES `tblgarbagedisposal` WRITE;
/*!40000 ALTER TABLE `tblgarbagedisposal` DISABLE KEYS */;
INSERT INTO `tblgarbagedisposal` VALUES (1,'Dumping',NULL),(2,'Burning',NULL),(3,'Recycling',NULL);
/*!40000 ALTER TABLE `tblgarbagedisposal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgardening`
--

DROP TABLE IF EXISTS `tblgardening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblgardening` (
  `idtblgardening` int(11) NOT NULL,
  `Type` varchar(99) DEFAULT NULL,
  `Description` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`idtblgardening`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgardening`
--

LOCK TABLES `tblgardening` WRITE;
/*!40000 ALTER TABLE `tblgardening` DISABLE KEYS */;
INSERT INTO `tblgardening` VALUES (1,'Gardening',NULL),(2,'Not Gardening',NULL);
/*!40000 ALTER TABLE `tblgardening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhousehold`
--

DROP TABLE IF EXISTS `tblhousehold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblhousehold` (
  `idtblHouseHold` int(11) NOT NULL AUTO_INCREMENT,
  `Owner1` varchar(45) DEFAULT NULL,
  `Owner2` varchar(45) DEFAULT NULL,
  `HouseHoldNumber` varchar(45) DEFAULT NULL,
  `LotNo` varchar(45) DEFAULT NULL,
  `EnvironmentalSanitazionID` int(11) DEFAULT NULL,
  `SourceOfDrinkingWaterID` int(11) DEFAULT NULL,
  `FamilyPlanningMethodsID` int(11) DEFAULT NULL,
  `GarbageDisposal` int(11) DEFAULT NULL,
  `HousingStatusID` int(11) DEFAULT NULL,
  `VehicleID` int(11) DEFAULT NULL,
  `AnimalID` int(11) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `DateModified` date DEFAULT NULL,
  PRIMARY KEY (`idtblHouseHold`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhousehold`
--

LOCK TABLES `tblhousehold` WRITE;
/*!40000 ALTER TABLE `tblhousehold` DISABLE KEYS */;
INSERT INTO `tblhousehold` VALUES (1,'54645 | 6666, 55 5.','12311 | EER','123123','1',1,1,1,1,3,1,3,'2022','0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `tblhousehold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhousingstatus`
--

DROP TABLE IF EXISTS `tblhousingstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblhousingstatus` (
  `idtblHousingStatus` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtblHousingStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhousingstatus`
--

LOCK TABLES `tblhousingstatus` WRITE;
/*!40000 ALTER TABLE `tblhousingstatus` DISABLE KEYS */;
INSERT INTO `tblhousingstatus` VALUES (1,'Level 1',NULL),(2,'Level 2',NULL),(3,'Level 3',NULL),(4,'Level 4','ssss'),(5,'Level 5',NULL);
/*!40000 ALTER TABLE `tblhousingstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmaritalstatus`
--

DROP TABLE IF EXISTS `tblmaritalstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmaritalstatus` (
  `idtblmaritalstatus` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(99) DEFAULT NULL,
  `Description` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`idtblmaritalstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmaritalstatus`
--

LOCK TABLES `tblmaritalstatus` WRITE;
/*!40000 ALTER TABLE `tblmaritalstatus` DISABLE KEYS */;
INSERT INTO `tblmaritalstatus` VALUES (1,'Single',NULL),(2,'Married',NULL),(3,'Divorce',NULL),(4,'Widowed',NULL);
/*!40000 ALTER TABLE `tblmaritalstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloccupation`
--

DROP TABLE IF EXISTS `tbloccupation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloccupation` (
  `idtblOccupation` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtblOccupation`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloccupation`
--

LOCK TABLES `tbloccupation` WRITE;
/*!40000 ALTER TABLE `tbloccupation` DISABLE KEYS */;
INSERT INTO `tbloccupation` VALUES (1,'Teacher','44'),(2,'Technician','55ssdfsdf'),(3,'Electrician','66'),(4,'IT ','sss'),(5,'asdasd','asdasd');
/*!40000 ALTER TABLE `tbloccupation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpwdtype`
--

DROP TABLE IF EXISTS `tblpwdtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpwdtype` (
  `idtblPwdType` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(90) DEFAULT NULL,
  `Description` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`idtblPwdType`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpwdtype`
--

LOCK TABLES `tblpwdtype` WRITE;
/*!40000 ALTER TABLE `tblpwdtype` DISABLE KEYS */;
INSERT INTO `tblpwdtype` VALUES (1,'Pregnant',NULL),(2,'Stroke','sasdasd'),(3,'Mild Stroke','sssss'),(4,'Mental',NULL),(5,'Physical','sss'),(6,'asdasd','asdasda');
/*!40000 ALTER TABLE `tblpwdtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrecord`
--

DROP TABLE IF EXISTS `tblrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblrecord` (
  `idtblRecord` int(11) NOT NULL AUTO_INCREMENT,
  `idtblResidence` int(11) DEFAULT NULL,
  `OccupationID` int(11) DEFAULT NULL,
  `ChildID` int(11) DEFAULT NULL,
  `HouseHoldID` int(11) DEFAULT NULL,
  `GardeningID` int(11) DEFAULT NULL,
  `PwdTypeID` int(11) DEFAULT NULL,
  `ReligionID` int(11) DEFAULT NULL,
  `IsVoters` int(11) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `DateModified` date DEFAULT NULL,
  `MarriedTo` varchar(45) DEFAULT NULL,
  `MaritalStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtblRecord`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrecord`
--

LOCK TABLES `tblrecord` WRITE;
/*!40000 ALTER TABLE `tblrecord` DISABLE KEYS */;
INSERT INTO `tblrecord` VALUES (5,7,1,NULL,0,1,0,1,1,'2022','0000-00-00','0000-00-00','','1');
/*!40000 ALTER TABLE `tblrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblreligion`
--

DROP TABLE IF EXISTS `tblreligion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblreligion` (
  `idtblreligion` int(11) NOT NULL AUTO_INCREMENT,
  `Religion` varchar(99) DEFAULT NULL,
  `Description` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`idtblreligion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblreligion`
--

LOCK TABLES `tblreligion` WRITE;
/*!40000 ALTER TABLE `tblreligion` DISABLE KEYS */;
INSERT INTO `tblreligion` VALUES (1,'Catholic',NULL),(2,'INC',NULL),(3,'Dating Daan',NULL);
/*!40000 ALTER TABLE `tblreligion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblresidence`
--

DROP TABLE IF EXISTS `tblresidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblresidence` (
  `idtblResidence` int(11) NOT NULL,
  `BarangayID` varchar(45) DEFAULT NULL,
  `FName` varchar(45) DEFAULT NULL,
  `MName` varchar(45) DEFAULT NULL,
  `LName` varchar(45) DEFAULT NULL,
  `CompleteName` varchar(45) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtblResidence`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblresidence`
--

LOCK TABLES `tblresidence` WRITE;
/*!40000 ALTER TABLE `tblresidence` DISABLE KEYS */;
INSERT INTO `tblresidence` VALUES (1,'1231','A','B','R','RR',NULL,'2'),(2,'222123','A','B','E','RRR',NULL,'1'),(3,'12312','A','B','D','RRE',NULL,'1'),(4,'12311','A','B','S','EER','2022-10-26','2'),(5,'123123','A','B','C','WWW',NULL,'2'),(6,'54645','55','5','6666','6666, 55 5.','2022-10-27','1'),(7,'456456','Zenon','F','Guanizo','Guanizo, Zenon F.','1995-10-11','1');
/*!40000 ALTER TABLE `tblresidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsourceofdrinkingwater`
--

DROP TABLE IF EXISTS `tblsourceofdrinkingwater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsourceofdrinkingwater` (
  `idtblSourceOfDrinkingWater` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(90) DEFAULT NULL,
  `Description` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`idtblSourceOfDrinkingWater`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsourceofdrinkingwater`
--

LOCK TABLES `tblsourceofdrinkingwater` WRITE;
/*!40000 ALTER TABLE `tblsourceofdrinkingwater` DISABLE KEYS */;
INSERT INTO `tblsourceofdrinkingwater` VALUES (1,'Level 1',NULL),(2,'Level 2',NULL),(3,'Level 3','asdasd'),(4,'asdasd','asdasd'),(5,'','');
/*!40000 ALTER TABLE `tblsourceofdrinkingwater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvehicle`
--

DROP TABLE IF EXISTS `tblvehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblvehicle` (
  `idtblVehicle` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtblVehicle`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvehicle`
--

LOCK TABLES `tblvehicle` WRITE;
/*!40000 ALTER TABLE `tblvehicle` DISABLE KEYS */;
INSERT INTO `tblvehicle` VALUES (1,'Single',NULL),(2,'Tri-cycle',NULL),(3,'Car',NULL),(4,'PickUp truck',NULL),(5,'asd','asdasdasdasd');
/*!40000 ALTER TABLE `tblvehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'on_infomasyshc'
--

--
-- Dumping routines for database 'on_infomasyshc'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-14 16:47:35
