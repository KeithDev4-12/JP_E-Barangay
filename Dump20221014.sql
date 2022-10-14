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
-- Current Database: `on_infomasyshc`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `on_infomasyshc` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `on_infomasyshc`;

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

--
-- Current Database: `jamorawonebarangay`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jamorawonebarangay` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jamorawonebarangay`;

--
-- Table structure for table `tblaccount`
--

DROP TABLE IF EXISTS `tblaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaccount` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BarangayIdNo` varchar(45) NOT NULL,
  `UserName` varchar(500) DEFAULT NULL,
  `Password` varchar(500) DEFAULT NULL,
  `Picture` longblob,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `EmailAddress` varchar(150) DEFAULT NULL,
  `AccountType` varchar(45) DEFAULT 'Ordinary' COMMENT 'Ordinart/Admin',
  `AccountStatus` varchar(45) DEFAULT 'Not Verified' COMMENT 'Verified/Not Verified',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaccount`
--

LOCK TABLES `tblaccount` WRITE;
/*!40000 ALTER TABLE `tblaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfile`
--

DROP TABLE IF EXISTS `tblfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfile` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FileName` varchar(45) NOT NULL,
  `FileBlob` longblob NOT NULL COMMENT 'FILE TALAGA MISMO',
  `FileType` varchar(45) DEFAULT NULL COMMENT 'PDF,IMAGE,JPEG,VIDEO,DOCX',
  `FileSize` varchar(45) DEFAULT NULL,
  `FileStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfile`
--

LOCK TABLES `tblfile` WRITE;
/*!40000 ALTER TABLE `tblfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrequest`
--

DROP TABLE IF EXISTS `tblrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblrequest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AccountID` int(11) NOT NULL,
  `FileID` int(11) NOT NULL,
  `RequestStatus` varchar(45) NOT NULL DEFAULT 'For Approval' COMMENT 'For Approval/Approve/Not Approved',
  `FinalStatus` varchar(45) NOT NULL DEFAULT 'For Approval' COMMENT 'For Approval/Approve/Not Approved',
  `NoOfDownload` int(11) NOT NULL DEFAULT '0',
  `MaxNoOfDownload` int(11) NOT NULL DEFAULT '3' COMMENT 'kapag 3 time na na download ma change na dapat sa Cancelled',
  `EncryptionKeyToDL` text COMMENT 'No Default Key, This will have Value kapag na Approved na ang Request san Residence',
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrequest`
--

LOCK TABLES `tblrequest` WRITE;
/*!40000 ALTER TABLE `tblrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrequestdl`
--

DROP TABLE IF EXISTS `tblrequestdl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblrequestdl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(45) DEFAULT NULL,
  `FinalStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrequestdl`
--

LOCK TABLES `tblrequestdl` WRITE;
/*!40000 ALTER TABLE `tblrequestdl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrequestdl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblresidences`
--

DROP TABLE IF EXISTS `tblresidences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblresidences` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BarangayIdNo` varchar(45) NOT NULL,
  `FName` varchar(45) NOT NULL,
  `MName` varchar(45) NOT NULL,
  `LName` varchar(45) NOT NULL,
  `CompleteName` varchar(45) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `LotNo` varchar(45) NOT NULL,
  `Purok` varchar(45) NOT NULL,
  `NearByResidence` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblresidences`
--

LOCK TABLES `tblresidences` WRITE;
/*!40000 ALTER TABLE `tblresidences` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblresidences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'jamorawonebarangay'
--

--
-- Dumping routines for database 'jamorawonebarangay'
--

--
-- Current Database: `jplaureldb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jplaureldb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jplaureldb`;

--
-- Table structure for table `tblresidence`
--

DROP TABLE IF EXISTS `tblresidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblresidence` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BarangayIdNo` varchar(45) DEFAULT NULL,
  `FName` varchar(45) DEFAULT NULL,
  `MName` varchar(4) DEFAULT NULL,
  `LName` varchar(45) DEFAULT NULL,
  `CompleteName` varchar(99) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Purok` varchar(45) DEFAULT NULL,
  `Height` varchar(45) DEFAULT NULL,
  `Weight` varchar(45) DEFAULT NULL,
  `BloodType` varchar(45) DEFAULT NULL,
  `ContactNumber` varchar(45) DEFAULT NULL,
  `TinNo` varchar(45) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `DateModified` date DEFAULT NULL,
  `EmrgncyName` varchar(99) DEFAULT NULL,
  `EmrgncyAddress` varchar(200) DEFAULT NULL,
  `EmrgncyRelationship` varchar(45) DEFAULT NULL,
  `EmrgncyContactNumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblresidence`
--

LOCK TABLES `tblresidence` WRITE;
/*!40000 ALTER TABLE `tblresidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblresidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FName` varchar(45) DEFAULT NULL,
  `MName` varchar(5) DEFAULT NULL,
  `Lname` varchar(45) DEFAULT NULL,
  `FullName` varchar(99) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `UserStatus` varchar(45) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `DateModified` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'jplaureldb'
--

--
-- Dumping routines for database 'jplaureldb'
--

--
-- Current Database: `samqrcodescanningsystem`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `samqrcodescanningsystem` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `samqrcodescanningsystem`;

--
-- Table structure for table `tblaccount`
--

DROP TABLE IF EXISTS `tblaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaccount` (
  `idtblaccount` int(11) NOT NULL,
  `idtblteacher` int(11) NOT NULL,
  `UserName` varchar(45) NOT NULL,
  `Password` varchar(99) NOT NULL,
  PRIMARY KEY (`idtblaccount`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaccount`
--

LOCK TABLES `tblaccount` WRITE;
/*!40000 ALTER TABLE `tblaccount` DISABLE KEYS */;
INSERT INTO `tblaccount` VALUES (1,1,'Admin','$2y$10$r6E77jMCz4PFCmvtEWtZeetwaB/i.6q183BPeny.n//Gsq2PFBDjS');
/*!40000 ALTER TABLE `tblaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance`
--

DROP TABLE IF EXISTS `tblattendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblattendance` (
  `idtblattendance` int(11) NOT NULL AUTO_INCREMENT,
  `idtblstudent` int(11) DEFAULT NULL,
  `idtblschedule` int(11) DEFAULT NULL,
  `Where` varchar(45) DEFAULT NULL COMMENT 'Classroom\nCampus\nEvents',
  `DateCreated` date NOT NULL,
  `TimeCreated` time NOT NULL,
  `DateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idtblattendance`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance`
--

LOCK TABLES `tblattendance` WRITE;
/*!40000 ALTER TABLE `tblattendance` DISABLE KEYS */;
INSERT INTO `tblattendance` VALUES (19,12,1,'CLASSROOM','2022-10-13','18:40:50','2022-10-13 10:40:50');
/*!40000 ALTER TABLE `tblattendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `samqrcodescanningsystem`.`tblattendance_BEFORE_INSERT` BEFORE INSERT ON `tblattendance` FOR EACH ROW
BEGIN
  SET NEW.DateModified = now();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tblclassrecord`
--

DROP TABLE IF EXISTS `tblclassrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclassrecord` (
  `idtblClassRecord` int(11) NOT NULL AUTO_INCREMENT,
  `idtblStudent` int(11) NOT NULL,
  `idtblschedule` int(11) NOT NULL,
  PRIMARY KEY (`idtblClassRecord`,`idtblStudent`,`idtblschedule`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclassrecord`
--

LOCK TABLES `tblclassrecord` WRITE;
/*!40000 ALTER TABLE `tblclassrecord` DISABLE KEYS */;
INSERT INTO `tblclassrecord` VALUES (1,2,1),(2,2,1),(3,2,1),(4,2,1),(5,2,1);
/*!40000 ALTER TABLE `tblclassrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontactinformation`
--

DROP TABLE IF EXISTS `tblcontactinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactinformation` (
  `idtblContactInformation` int(11) NOT NULL AUTO_INCREMENT,
  `ContactValue` varchar(60) NOT NULL,
  `ContactType` int(11) NOT NULL COMMENT '0=None\n1=Email\n2=Mobile',
  PRIMARY KEY (`idtblContactInformation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontactinformation`
--

LOCK TABLES `tblcontactinformation` WRITE;
/*!40000 ALTER TABLE `tblcontactinformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcontactinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcourse`
--

DROP TABLE IF EXISTS `tblcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcourse` (
  `idtblcourse` int(11) NOT NULL AUTO_INCREMENT,
  `Course` varchar(70) DEFAULT NULL,
  `Description` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`idtblcourse`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcourse`
--

LOCK TABLES `tblcourse` WRITE;
/*!40000 ALTER TABLE `tblcourse` DISABLE KEYS */;
INSERT INTO `tblcourse` VALUES (1,'BSIT','Bachelor of Science in Information Technology'),(2,'BSIS','Bachelor of Science in Information System'),(3,'BSactTech','Bachelor of Science in Accounting Technology'),(4,'BSCS','Bachelor of Science in Computer Science');
/*!40000 ALTER TABLE `tblcourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblschedule`
--

DROP TABLE IF EXISTS `tblschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblschedule` (
  `idtblschedule` int(11) NOT NULL,
  `idtblteacher` int(11) DEFAULT NULL,
  `idtblsubject` int(11) DEFAULT NULL,
  `DaysOfTheWeek` int(11) DEFAULT NULL COMMENT '0=sunday\n1=monday\n2=tuesday\n3=wednesday\n4=thursday\n5=friday\n6=saturday',
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `Status` varchar(45) NOT NULL COMMENT 'Close',
  PRIMARY KEY (`idtblschedule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblschedule`
--

LOCK TABLES `tblschedule` WRITE;
/*!40000 ALTER TABLE `tblschedule` DISABLE KEYS */;
INSERT INTO `tblschedule` VALUES (1,1,1,3,'08:00:00','22:00:00',''),(2,2,2,3,'09:00:00','22:00:00',''),(3,2,2,3,'09:00:00','22:00:00',''),(4,2,3,3,'09:00:00','14:00:00',''),(5,1,2,3,'09:00:00','22:00:00',''),(6,1,1,3,'09:00:00','22:00:00',''),(7,1,1,3,'00:00:00','00:00:00',''),(8,1,2,3,'00:00:00','00:00:00',''),(9,1,2,3,'00:00:00','00:00:00',''),(10,1,1,3,'08:04:00','22:00:00',''),(11,1,1,3,'08:00:00','22:00:00',''),(12,1,3,3,'09:00:00','10:00:00',''),(13,1,3,4,'15:00:00','16:00:00','');
/*!40000 ALTER TABLE `tblschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstaff`
--

DROP TABLE IF EXISTS `tblstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstaff` (
  `idtblstaff` int(11) NOT NULL AUTO_INCREMENT,
  `FName` varchar(45) DEFAULT NULL,
  `MName` varchar(45) DEFAULT NULL,
  `LName` varchar(45) DEFAULT NULL,
  `FullName` varchar(135) DEFAULT NULL,
  `Address` varchar(90) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idtblstaff`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstaff`
--

LOCK TABLES `tblstaff` WRITE;
/*!40000 ALTER TABLE `tblstaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstudent`
--

DROP TABLE IF EXISTS `tblstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstudent` (
  `idtblstudent` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `StudentNumber` varchar(45) NOT NULL,
  `FName` varchar(45) NOT NULL,
  `MName` varchar(45) NOT NULL,
  `LName` varchar(45) NOT NULL,
  `FullName` varchar(135) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Year` varchar(10) NOT NULL,
  `Section` varchar(10) NOT NULL,
  `BirthDate` date NOT NULL,
  `Gender` int(11) NOT NULL COMMENT '0=none\n1=Female\n2=Male\n3=Other',
  `DateCreated` date NOT NULL,
  `DateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `StudentStatus` varchar(45) DEFAULT 'Active' COMMENT 'Active/Inactive',
  PRIMARY KEY (`idtblstudent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstudent`
--

LOCK TABLES `tblstudent` WRITE;
/*!40000 ALTER TABLE `tblstudent` DISABLE KEYS */;
INSERT INTO `tblstudent` VALUES (1,1,'Stud0-1001','FName','D','W','W, FName D','asda','1','II','0000-00-00',1,'0000-00-00','2022-09-25 00:25:26','1'),(2,1,'Stud0-1002','FName','D','W','W, FName D','asd','2','II','0000-00-00',2,'0000-00-00','2022-09-25 00:25:26','1'),(3,2,'Stud0-1003','FName','D','W','W, FName D','asd','3','I','0000-00-00',3,'0000-00-00','2022-09-25 00:25:26','1'),(4,3,'Stud0-1004','FName','D','W','W, FName D','aasd','1','I','0000-00-00',2,'0000-00-00','2022-09-25 00:25:26','1'),(5,4,'Stud0-1005','FName','D','W','W, FName D','asd','1','I','0000-00-00',2,'0000-00-00','2022-09-25 00:25:26','1'),(6,4,'Stud0-1005','FName','D','W','W, FName D','asd','2','III','0000-00-00',2,'0000-00-00','2022-09-25 00:25:26','2'),(7,4,'','','','','','asd','','','0000-00-00',3,'0000-00-00','2022-09-25 00:25:26','1'),(8,1,'','','','','','','','','0000-00-00',1,'0000-00-00','2022-09-25 00:25:26','1'),(9,2,'','','','','','','','','0000-00-00',1,'0000-00-00','2022-09-25 00:25:26','1'),(10,2,'','','','','','','','','0000-00-00',1,'0000-00-00','2022-09-25 00:25:26','1'),(11,1,'22-11','aasdasd','a','aa','aa, aasdasd a.','aa','1','2','1995-12-19',2,'0000-00-00','0000-00-00 00:00:00','Active'),(12,2,'22-12','11','1','11','11, 11 1.','11','1','1','1995-12-28',2,'0000-00-00','0000-00-00 00:00:00','Active'),(13,2,'22-13','2ddd','2','2','2, 2ddd 2.','2','2','2','1995-12-04',2,'0000-00-00','0000-00-00 00:00:00','1'),(14,2,'Stud0-1003','FName','D','W','W, FName D','asd','3','I','0000-00-00',3,'0000-00-00','0000-00-00 00:00:00','1'),(15,2,'Stud0-1003','FName','D','W','W, FName D','asd','3','d','0000-00-00',3,'0000-00-00','0000-00-00 00:00:00','1'),(16,3,'Stud0-1004','FName','D','W','W, FName D','aasd','1','I','0000-00-00',2,'0000-00-00','0000-00-00 00:00:00','1'),(17,3,'Stud0-1004','FName','D','W','W, FName D','aasd','1','I','0000-00-00',2,'0000-00-00','0000-00-00 00:00:00','1'),(18,1,'Stud0-1001','FName','D','W','W, FName D','asda','1','II','0000-00-00',1,'0000-00-00','0000-00-00 00:00:00','1');
/*!40000 ALTER TABLE `tblstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsubject`
--

DROP TABLE IF EXISTS `tblsubject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsubject` (
  `idtblSubject` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(90) NOT NULL,
  `Description` varchar(90) NOT NULL,
  PRIMARY KEY (`idtblSubject`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsubject`
--

LOCK TABLES `tblsubject` WRITE;
/*!40000 ALTER TABLE `tblsubject` DISABLE KEYS */;
INSERT INTO `tblsubject` VALUES (1,'History',''),(2,'Programming',''),(3,'Programming II','');
/*!40000 ALTER TABLE `tblsubject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblteacher`
--

DROP TABLE IF EXISTS `tblteacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblteacher` (
  `idtblteacher` int(11) NOT NULL AUTO_INCREMENT,
  `FName` varchar(45) NOT NULL,
  `MName` varchar(45) NOT NULL,
  `LName` varchar(45) NOT NULL,
  `FullName` varchar(135) NOT NULL,
  `Address` varchar(90) NOT NULL,
  `Birthdate` date NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `Advisory` varchar(20) NOT NULL,
  `DateCreate` date NOT NULL,
  `DateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TeacherType` varchar(45) NOT NULL COMMENT 'Head/Teacher/Staff',
  PRIMARY KEY (`idtblteacher`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblteacher`
--

LOCK TABLES `tblteacher` WRITE;
/*!40000 ALTER TABLE `tblteacher` DISABLE KEYS */;
INSERT INTO `tblteacher` VALUES (1,'FName','M','1','1, FName M.','sssssssss','2022-09-25','1','FName','0000-00-00','2022-09-25 04:27:55','2'),(2,'FName','M','2','2, FName M.','2','0000-00-00','2','None','0000-00-00','2022-09-24 10:11:02','2'),(3,'FName','M','3','3, FName M.','3','0000-00-00','3','None','0000-00-00','2022-09-24 10:11:02','3'),(4,'FName','D','4','4, FName D.','4','0000-00-00','4','None','0000-00-00','2022-09-24 10:11:02','1'),(5,'FName','S','5','5, FName S.','5','2022-09-13','5','None','0000-00-00','0000-00-00 00:00:00','1'),(6,'FName','E','6','6, FName E.','6','0000-00-00','6','None','0000-00-00','2022-09-24 10:11:02','3'),(7,'2','72','2','2','2','0000-00-00','2','2','0000-00-00','0000-00-00 00:00:00','2'),(8,'Chester Ian Keith','G','Mata','Mata, Chester Ian Keith G.','Zone 5','1995-12-04','a','None','0000-00-00','0000-00-00 00:00:00','2'),(9,'s','s','s','s, s s.','s','2022-09-20','s','None','0000-00-00','0000-00-00 00:00:00','2');
/*!40000 ALTER TABLE `tblteacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'samqrcodescanningsystem'
--

--
-- Dumping routines for database 'samqrcodescanningsystem'
--

--
-- Current Database: `klsmanagementandreservationsystem`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `klsmanagementandreservationsystem` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `klsmanagementandreservationsystem`;

--
-- Table structure for table `tbl_branch`
--

DROP TABLE IF EXISTS `tbl_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BranchName` varchar(300) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `BranchHead` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_branch`
--

LOCK TABLES `tbl_branch` WRITE;
/*!40000 ALTER TABLE `tbl_branch` DISABLE KEYS */;
INSERT INTO `tbl_branch` VALUES (1,'KARL\'S LAUNDRY SHOP','ZONE 8, BULAN, SORSOGON,','IDONTKNOW'),(2,'KARL\'S LAUNDRY SHOP','ZONE 9, BULAN, SORSOGON','IDONTKNOW');
/*!40000 ALTER TABLE `tbl_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_companydetails`
--

DROP TABLE IF EXISTS `tbl_companydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_companydetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ShopImage` longblob,
  `ShopName` varchar(300) NOT NULL,
  `ContactNumber` varchar(45) NOT NULL,
  `ContactEmail` varchar(100) NOT NULL,
  `WebSite` varchar(100) NOT NULL,
  `Slogan` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_companydetails`
--

LOCK TABLES `tbl_companydetails` WRITE;
/*!40000 ALTER TABLE `tbl_companydetails` DISABLE KEYS */;
INSERT INTO `tbl_companydetails` VALUES (1,NULL,'Karls\' Laundry Shop','09123456789','Email@gmail.com','WebPage.Com','We caring Clothes better');
/*!40000 ALTER TABLE `tbl_companydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customers`
--

DROP TABLE IF EXISTS `tbl_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ClientName` varchar(300) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `MobileNo` varchar(45) NOT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `UserName` varchar(300) DEFAULT NULL,
  `Password` varchar(300) DEFAULT NULL,
  `EmailAddress` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customers`
--

LOCK TABLES `tbl_customers` WRITE;
/*!40000 ALTER TABLE `tbl_customers` DISABLE KEYS */;
INSERT INTO `tbl_customers` VALUES (1,'Jose Pascual','z1','123','Good','1','1',NULL),(2,'Jason Curt','Zone 5','09452545225','Good','1','2',NULL),(3,'Hello world','asdas','234234','werwer',NULL,NULL,NULL),(4,'hello','asd','1231','123','123','111',NULL),(5,'q','q','q','q','q','',NULL),(6,'Alexander De Vera','Zone 5','0945852555','Good','name1','password1',NULL),(7,'qweq','qweq','231','qweq','qweq','123',NULL);
/*!40000 ALTER TABLE `tbl_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_downpayment`
--

DROP TABLE IF EXISTS `tbl_downpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_downpayment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DownPaymentID` int(11) NOT NULL,
  `Amount` decimal(18,4) NOT NULL,
  `DateCreated` date NOT NULL,
  `TimeCreated` time NOT NULL,
  PRIMARY KEY (`ID`,`DownPaymentID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_downpayment`
--

LOCK TABLES `tbl_downpayment` WRITE;
/*!40000 ALTER TABLE `tbl_downpayment` DISABLE KEYS */;
INSERT INTO `tbl_downpayment` VALUES (7,1,9.9500,'2022-09-08','22:57:14'),(8,2,9.9500,'2022-09-08','23:00:20'),(9,3,9.9500,'2022-09-09','08:48:14'),(10,4,9.9500,'2022-09-09','15:52:06'),(11,5,9.9500,'2022-09-10','07:35:23');
/*!40000 ALTER TABLE `tbl_downpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_employee`
--

DROP TABLE IF EXISTS `tbl_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BranchID` int(11) NOT NULL,
  `Fname` varchar(125) NOT NULL,
  `Mname` varchar(45) NOT NULL,
  `Lname` varchar(300) NOT NULL,
  `FullName` varchar(250) NOT NULL,
  `Birthdate` date NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Status` varchar(60) NOT NULL,
  `TinNo` varchar(45) DEFAULT NULL,
  `SSSNo` varchar(45) DEFAULT NULL,
  `PhilHealthNo` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) NOT NULL,
  `CivilStatus` varchar(45) NOT NULL,
  `BloodType` varchar(3) DEFAULT NULL,
  `EmployeeStatus` varchar(45) NOT NULL DEFAULT 'ACTIVE',
  `Image` longblob,
  `MobileNo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employee`
--

LOCK TABLES `tbl_employee` WRITE;
/*!40000 ALTER TABLE `tbl_employee` DISABLE KEYS */;
INSERT INTO `tbl_employee` VALUES (1,1,'Laundry','L','Attendant','Laundry L. Attendant','1995-12-04','Bulan','Good','00212-2025','234233','2342234','Male','Single','AB+','Active','ÿØÿà\0JFIF\0\0H\0H\0\0ÿÛ\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(ÿÛ\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((ÿÂ\0ÚÚ\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0îzÑª\ZÑ­\Z£7tÍÝ3wLÝÒwtÅPÅ	PÅ	ËÂT\'/	ËÂrð¼#/ËÂ2ð¼#/ÊÂr°¹\'(n¨kFîhÝÓ)£Z5¡ºfîÝ1C%C\',Båá9xN^¬\'/ËÂ2ä¼#/ÊÂ2ð¬!XV´VPÕMº5£wLÝÓ7tÍÑºb)âwF5ë2¨N^åáxF^eárLÞ7ea3rNV­7Zn´SFîQº5£Z¦nÐ\0\0\0\0ha9xF^$ÍárLÞ7MáXFVª+(SEe\rQÑ»¦n\0\0\0\0\0\0\02oËÂ&ð¹#.I2ä¹#+\n¬¡M7Zn¨j¨kF\0\0~=[Î»{ÊxgößÄÞKí·|ý¿¹\'>ÞóNÝÔèê \0\0Ê7eÉrFV7MÉ3rUe­6²e\niºÑ \0©ù×dè}3äâïÑóY§×É¹àw²~O8Ûñ;ç¼÷£øÕu¿<ÿ\0¿Ë£Þ\0\0h¼\"o2ä¹&o\r¬£u¦ÖQºÓk(h\0\0_É}+ÍbÑG6>~Cºóü×ëý«öû¦§w7yïôwù¹³áÛÔã½·©ûíy§MÆ\0\0&°¬\"nI&äÜ*²Ü£k(Ýiµ\0\0ëwôõN«lwÎ7ªûwu|Û»ò]B7ç2mïréÂío°jS\0\0¿<ïÀ]ß¤Cªõ/-äûrj|\0\0&ä¬\"nHÊÃk(ÚÊ6³JÜ£@\0vþ¸Gö³ûwðüf4ÃïÇ`Î¹©Kéâ~Fm¾ÁÎt>íz·ì/W\0ñ¿gëÏäA­ê½£Ê=^|ê\0\0\"nHf¤¹*¦©£k(ÚÍ\0ùþcÎüëç*ýâ½¨;Rûºý\n|¯þ±Øíýüôs¾~ Ë¶>®}çøýÌ@\0Í)Æ÷¾ÅûzPvÁ.p\0\0MarDÜÔÑU4UM \05ô¯\Zï ×¿^ó®éæñý®º6r¼N¥Íæ¸CÎöà»u_×¶Oå§|GùS±Û¾îÝî×Ñj\0ëþGï>ÏÚ:ÅñoÞÙc\0\05MÉrFTSETÑU4h\0óðïhñhtÂ-çö|¿­ZKß¿Í½·Éµ¼âêõzßwÏi÷^¡õñÔ+¢´ûÜ¿£c<,Ä\0;ôOÇ<)È|mv¿Oð_Ftç\0Ü&nH3pÚ*¦Í¬Ó@\0û_Ã§¸G¶}ü=Qû~?|Qó]´ðö9è¹SvûêùpïÎ?È«}¿çtèêà\0\0{ÇIïÖ\"ÓôþÕá.ghR\0\0&jIf°Ú*¦ÜÓ@\0á¾éãÑßâXKí»Òõä¸ß¶\nÿ\0àq×Sã¹îNÈKï+Úüÿ\0Ð©ÃÝ?CS=\0\0\0æWµõZûysús/­s\\G/g=à\0&jIspÚ.¢ÊÜÓ@\0;ôN¼WÚs|#;í|nU`çÎ+«vÞ££8YéÙúÆùÏ½8~bÎ {à\0\0¥w_âßÈÔ\Zÿ\0§G;>@wP\0\0©ñ3SêspTÑU4UM\Z\0\0fã½Î+ìòoÛ·t»øàù<ø~.­÷|\Zît1ç+ì^Ù;©ë(¹³@\0\0èg2øÙµ÷}ºxµÍ¢J\00É©&jIj(º.¢\0\01í]o>P!Õ0\0aà\rÁçhõ?ì²SõÔ¹à\0y¨u~,y¯·è}ÏË½FÆ(wX\0¸LÔ5$æà¨¢ê(º-\0\0\0y§N÷ Kb;`7|\0a¸ÇÞ<OÛ%Ìëø¸ylwºÞ¹u9_OÍ±B\0	©&jIspTQu^ÍS¦\0\0|_hñ.?Û<Os`7n\0ï¾ïP	)ç\\ó©þ~KÜ87æ^µ¤>ÃÉônóg\0:\02v|dìúÉ©\'7ÍS¥ÔQuS4\0\0\0p<óÏ|Éql{¸k\0Öúo-×þï\"æoÓål¿¿)ï<#9à°uçÜsgÇc&Ná²dì]EQEÔQ{h\0\0\0<¯ò\\<ëp\00ñö|~Ô}ò÷«KÓ¸R·Ð9î\'Øz«û~¥`\0\0vLÆ;&cÃ*(º*¢¨Òê(­\0\0Éõô¯;óL ×\0ÃÀô0ý}ÓÍ½NJã½ÿ\0Ëø´?h´{×tük?<F\0\0\0,3\'dÌaÃ*(º.¢Ø¢ötºüè´Ð\0ôîáÀô0ÜëðMævæ¯ÐçjêÞÔ¤YÃ\0\0\0b|1>;\"vLÄa^ÅQ¥Ôiu\Z]F±Elé ëü/zy\'Ew§ô\\ïc¢;Øèö:%÷øþÇQô·tq?Kí_SÞ¨\0a¹1#%cÆ;#eEQETQUUFQ¥ìiu\Z^þcô~x~¯ÂO¥òÉö>)>÷999§Þøk×Øù(ú_³ó6Yé6X%X\'dK0Í/gKØ¢ö(½/gKØÒ±¤~¾4}3ãå®>É>)ûdøóë#êÃæ}Cå¯¦¾?ý¬üoõ³ò¿Ò¶ú3\rÌÁ1#1cÎQElé{UF±ETi{\ZVÎ±¥§JNÁ \0\073\nÌÃs0ÜÌ73$ÜÌ²1Ti{:^Æ³¥Ti{\Z^Æ±¥ìii±¥liIÒ)\")#R5#R73\rÌ`ÆÌ6X130cÚÓ6´­\'kIÚÒi£Z5¦nZf \0\07h¬3+	ÊeáxDþ~yúaùçéäý0ÿÄ\00\0\0\0\0\0\0\0\0 0@P!1$4\"#25pÿÚ\0\0ÿ\0Ç\'L§\\a¶¿)\npêaFÿ\0hB0M~:=öQ(²ä¥>¨3å£ñQ.dúó`ÛúÑÌC»·é\"-@¹bz»àqªLÉ\'H£´ËL×Wá\'S­E ](ªk½R}úü·FÑ!å,^J(:¤A\"¥Ø(à,wãgº¬ej£ÓñHÀÀ!ÉÌíI¬bKÙ8qÝ,ïÑc¹l;ÒÎ¹*¾ù%V-Õ²ªUèö¹Â{pWôKûìÞm=	¼ÄGzË÷³Q&+ñÝûWûvÚáBÅÕG\'¡9\ZI3¤p9j¨Ôe3ñ	32®`¹Å®w[mÒ\"ÃHÞèxOE&ÌiçÍq<%Ê×ÐÔ.»ì^b>}©þîF2ATçÂÙ(»!Æ7]S$ëèÔ¯DÉ;rÓiV<CÏâmÂÇcè0»+eÜû©Ó83b³ät\0.3&½\'øðáÃnBóøº¦`Æ«Ü\\¢Ã©AÝ1¦*.Â¦xØiÌÐ§>¹ÇÓv/¢Ý¶áÃÇÚçÏ~ìÜ,£Ü¸Ü_p¸A1·Å#Â4$×½^êcë{Qí8Ô&¦9XøI1üÒ.g<4ßóídÁ!ó0Wë\\Ó¥ÑLD\nõ#ð\0Ô¤ìq$M$ÂÅ;/5rtÂÄ)¶\rH©Ý&ð¢g`Ãi:3¢HÂÇqÜopþ6§\0¦¢Ï~\\¨Æ*ø5ªçG«´$QQi%³ÜK|¹iª.6·}á	3q~frjkK±MqêÜ/®åöÝ¯ªµm$ß)S4{t¿.Ó\'öLíE©íÓ\'q4>ÔmÐÎíþ#cªµÖK.\'vÕÇ\\OÜEvátoB.KnvóûÜA)#1Ä}®/)Êâadlm¥ÉÔ7$þ?EÚ&÷oW=¼aÄ,²[íâß.ö\rû~(¹,S¡Ãú½ªÕµÌI»ÑRVF#-¾bÕÂ?-/Ã|s´ÍÂæìÓnèrF}¾!°áÙHáy¼GXz\Zåc=·Å¦a÷ÉÕg¸¬25Èæö®JÔR8R<×µÉñ$®õ¢æ±kÛÙ¼bE«i|ëÜ.j?~ÏrXEÍ;Ù!d\\-Ç/²Nÿ\0\rÌÖ>µýî!pµ[_!þyÒ2ç	ÐÞ¶bbùVæÓ½¸ì	±IýÖÿ\0©?]wÁ£íØ[¤s0ýØýÈÌÜÜÖ4hl¥¾F¯Îü\Z¸Ý],xpÉ>½â\ZKÜáàîÜpº\\[\r²$Cúøp\nÀú;ögöøj>Ü:)±#)0Hemªc«ñ+ñ)YN¨A\rSé=ûýÓµ&HØe]¥órp´Áç\n1´lõ77î\\;\\1ê¯Ò¶caN9¢±Áêeb6yöÅ!\"#ÇUÉ.9©xpì]#õ\\O#Dn×\rGÜWÙ0ðÔ¥BõWy<Ìþ×jÛWÓîÎÃ®gª½Iå ö¿tmÏA	ÎW;^ªçmIîøèëã£¯¾::øèëã£¯¾::øèëã£¦pðÚúb?àG_~u(\0Ä9Öª×[¹[µ»[µ»[µ»[µ»[Õ»[µ»[µ»[µ¹[®µV~<s¥ZÎ³¬ë:Î³¬ë:Î³¬ë:Î³¬é³¬ðÏÒeZkEh­·[u·[u·[uµ[Uµ[u·[u·[u·Z+Eh­5¦²õy%dVIY%dVIY\'ýGÿÄ\0+\0\0\0\0\0\0\0!1 @\"0AQ2BRp3ÿÚ\0?ÿ\0!kîi\\y_>×â7í\ZCðS¡{yñÚÒã`£¦öVÐ½£º¬û@ÆSµéñ	Óÿ\0R=çöÔ8Lªpý.Ø,TÍÄ(èãhßuRßÇ Çòß·pªmnÖ<°Ü(Þ.ÑõáPÅs?:T;¯.#°°Ox`¹^©Z§7qÙO&Ò¡¿À¸5a`ªeéÇuv¦äðébÐÑ`r¥3Û³`*±n^o%ôªõÈ²á\npÇ÷\rd\ru4x»(±j{3ij\"Þÿ\0üñ±:åqÒBç8iXÒc¸PÇ¹DÛr¥3Ù7dÈ\\*¨?}úqO6iTãßCº\"Êy.qî¥C´©¦ÇÔÞ=êzÒQò¤ýJÉ§m%ÛÕìSß¦2ÒKdqãÝ§~¡ÆnM²p-6=Ô»}*gsÎ?üu}Û«,5©?Pçº<¥dx>ãçß¦¦íøö*)òõ7¶ÖÒ©¯õøÓd0>ÅK1eq	Çu4ÆSsàeýAcÏ}gÆcÀ_/õPÓK6Òva!o×bn7î¨vOT´ýC¸@°FF·ºñÿ\0dú¸ò¥¨âãáG³Gl¯Á·Q°ÈìBc!UÏÓn#6äà;ªs lÊ;n¥¨òïË¹Ç\'(ÙCUcñøÂW´X×íußöºïû]gý®³þÐ67òæþÉó>MÈÿ\0ÿÄ\0)\0\0\0\0\0\0\0\0 1@!0A\"#2QpaÿÚ\0?ÿ\0!¹Êsç8>AmêQÜ5@oÅnû3¢#«^°Ôü\"j!åÞgÌ0á$3BO#ÒEÂ*)¯!úÙaNF36f,g#P#êÍÜÑæ.)º^ÊlxÖÊ,ÍCÏK?Nñxé±ÜÉä6b©cBiðzCß¿K\n1<¶Èþ2`n&ÄFä.:cc*ÜfKy4É¬r¥Ìr~×m[{ØUvP9\\ÕgõÚ\0XÐ|>ÿ\0Þ/do¯&ÚùÌbØ	/ï_õ»/SGæz~öVúù²mª_~S	§70A¶|vÀÿ\0p{u·}ÊÂÆÎÖ¡Mm¥þUõ¹­kçaGl¸FHØ{Ì)Á(î­]L,lÇÎÂþní²U{x¿n*×Ë]iµÎB²Bhí[QL`áý \\&¡7oÅ=J&Cõ°<W=dÙ,øÔ\'8ÄN\"qp(äÿÄ\0=\0\n\0\0\0\0\0\0!1 \"02APQaq#34@BRbr¡±¢ÑÁC²áÿÚ\0\0?ÿ\0Yn!<Ì[µïå¸³kõFBÒ®GjVqA)ÞLI §Ouu\Zã¬yÅzâÙ[ëäLâO¶é°Äº«øWfÏ®òÂS¼ÁNïWñZxç\0­]¿Q$\Z®|fÙ}WyeGñÕ´â¹&;9#³OêØÏu¸íÅ20\ZÃ\'?&ÌåÝ&*ãª\';?Õ²ï6nµ:âx+Ú¿æ*<qÄ\r>fÇý`²p\\#ëHCI*QÔ#¤ÃXüïý­µ$H±[f£È\nO.15µ÷N aãÕðìjºn|\"2RÚG)ÇA6.ÉêàË\nNåXc®ZiþUUBUSø*x©ýbtN±¿¸ØG­_Øb\"wÊ\noÍ%tÆî4¡Ñp¿.;	N/E\"p·Wz©m\Z§3Ê&l\'åÕç ¢«VñÚªï¾`¥B`ÁGÚÂI¬M?R±:U·?Ñ¦á~\'Hç ¢£z;÷â ÙFyB¢à«°T¥\\ánªõÒyoW(²û%eh½£ùÄ	\0ÌºÞ f9P&ðgq7(O`T¸eé§î]Ê>Q`µ	ÆZ,á®Gá6èÑë!v³Ni¼OFolËÓ`%½HM!\"òe	Ô*>av%WÇÅLÚÌUH²2½£@KYb·fÞªjõØ+æ¥­ÉÊâåbtJôÅTÇÍ¨Ee¬ÁI¸ÙmW¤Ê¤ÞÄ!ÔùQÜ\"t¼½É)[Í.1Ñi¾è½wÁR ©T\\ÈÂR,UçOBáêö>9óòL-\\\"AÔ!kAyX0~¤Ä¦ªbIÌ©·Ò¡#\ni^x¤`ï°hþ7ú#ÃçP8ÄµªÈ­­8Zi\0^bBýg7Ú¦Ôõ\"(°ÇDñÃ÷xÇôGëJ\"¯Â ®:±ôÙApòÓ°2¼ã\ZAIÑ»cã÷x²!IÜeJxÙHå<h<mÄªnTJF¬ò\\lIjÜi&Dkµix·Æó[ÞÂU¾ü¦Õé1«>Ñj[×ÆTnµ\\ü[NüB®!lë»ÅKj¹WsÏ9~en¦«CÔ#\')Ík>1rÒFPÄ_¬PE@WüÅ9×¯®ij^kOq­@ÙË)7ÄÅúÅ o8ÁÁjnPÞ!.6f]þ©Ãbÿ\0N­$Ú^9/¦ôXybÍ&F$õxô8³D]QËXUü8ÀRLÁ×~½Õ\r-­½ ¯R¡0l0¶ÚñèÝµû`)i7©­ùBtM)}ùÞ^>²ZG£lÛfTÊ¤§pÝÆ4³6I-ýCC«Và³j-O,Ê³5m)qÁUoÕ°\n&a+Û:*Ï²¿G3]=úÐÈ{@«a)·Eí·=üðÌ¸O(RÛk=[sÐîÛ¾~u¤2ÄÔ7í+}\"qb>Ù¹4çÚ:4¢£zí¾Ûä­d:ÄZêU©±Z©ÊxÜ7EgTsyCNî[ô³Ó¤éûP\\7Ü¼Âá}2i\n_!¹ýB;1úeTO¬>®îÕlG½?¶ÚOÂP]lM3WbøðÒ¨l¬!_>mxJ¾ÿ\0º:$·?¥´i*Ò.)ÇO3oÍ%ÒQÚMÉanj¹<©8Bª±<¶Z¬Ìò²é¹¡÷  i9éJMê2¡7$Ke¸¡¢2SJµ¸kPR4[É¤¸nl}öZÈÓVJsr yR-fäÁQ¼ÛI^µ«e¢³ªHN #¼/ØGx_°ð¿aá~Â;ÂýwûïöÞì#¼/ØGx_°«§]wP¶«ÖÖ#·_´vëöÝ~ÐrD¿ÅoÿÄ\0,\0\0\0\0\0\0\0!01 AQaq¡@±ÁðPÑáñ`pÿÚ\0\0?!ÿ\0Ë×óu*T©R¥/\\*T¯­?ò5§_ü\\þ|þTá>á{0	ÿ\0©Ïz	ð=¿JâÆ<GÒ1èsÕ?¸eð<îÆ}1uíÃy¤©¢Ù­(¹fî?§éÜèó#2£öþÓ»éwZí.}û<§ywÓ¯Ñ±c¨½ùÿ\0¨»w·ËÝõ ù~èß\0¿9ÌÌêªá& lFgö/Ñólyé±ãpp!`CDÛQÉÍá­ÑëH^Þ\nVè>GÏ ¯q7ÿ\0uÊ;eÎox#d;¿æ	AX:n.,cpÀÑ\n­=ÑÀ`	¹plðæhÃfnBMæµ\rý\'7õ¨Ç1cBÀ¬þÛåå<6í×É9Gê»=¼àn²¼²¾|îì±~F	RlËotÏÎÖm³|ÿ\0NKVú/ãMcÇ04Pèÿ\04U*ªópÛ3xÐÞ7í6è9u½¡ÀùúéB<ß;ëz­âac×McÆ8!CL«	¾uÐäb¢7P³|³Úyoù\\-´ó9fú\"*·#ûèR<È/·Í¿Æ4mý½´ØÆ81!B\Z¯ýr?<ÏÏ)ùÝ÷/N°e»}ânÑìÏÀ.âC¡Eï×Ng¶7j­<î~÷ÔpcÇ8ßªr{O·\"t1°L¾Ò4L[mßü©±.«wõ·\0Ó¾ïBØ\nÐs3ófy&Èúé±cà`Bnºx(Îux?ÛTÄ,Ð«¢6åï2Ów\0Ð~ã(¶ó>Üe£þ^n@l~ñùÆõ>ìÌüê1cBXþSõÁøyfÃiÃº§ô`4ÙBNmÏ0ÌË\rB\r¤%µæì7c¶X¹´2itMþ/\Zÿ\0tj1cBM×^±ÏÜ×éþÊçaþþË|ÿ\0w§â\rØ7zË;õ#{F.jàØ<y¼MÓÉµ}Ñæi±cC}ÕØõgßå{ò^LAc«è)&I\ZPlfOÒôvºÅË7ã#-×Bm \r_#Þ%ýóÓcÆ8!:³ÛàëBüï\0åöQ`h87¿íâg\',ïß^£Ð/ËÍÑÉÍ¤3ö¸J~^tØÆ1À!\rÝôà«qÝÝ2øî{&\\Ý¿N|VO&e¶¥»¨éåy×úÙ\'%A±9C@OO_:LcàBdOÄ61§©¯ß¾>%oÄ£|)¸pU^·ñYæêµrÉùb¥bn0ÃôNú,càBÙ²Tg2[Øã6Çù	ÞÕ÷8}y@ÝÊÌ¬,¬¨Ø7Åò*Á¸Í÷\\iÏAcBÑÊ©|±@ÍäùÂë£ìcó¤ÌÖNæ»WÍoí\rZÜ1Ûeuh1cB\Z4É/\'ýà´yfóÁ]+Ñá4³vÄ¾\'|v7~IfG§CEcBÑÈ+ø-þ/)3rrÚþx>a÷árÔXÓÂº½uv9ÛïÉ,-Õ½&1p!B\Z\0Dsry¶àDè|ÍG¢Ç¼§ë9Á¢kF¥vÈ,NVïsÙÒcÇ!£Vþûþ±a©ÜË·ßÐ(É×Ñ\0¬&DúÎ¼¾q²Ê\\ûi1cBÑÃ¡æKá¦~Ñ®uÖz÷»AzKØ&¶S|¢ýÁ|ÜAè,î¾nÆ8!\r-ÍzkÐ9y]HFîmQË_3EcàB4ì3CÞðý]EðôÐ¸6£\nYO\\Zâ;øvï¢Æ1p!BÒ7g±ÌíæúÇG¾»YÑO£bY¨íÌ~p¡f;=>j\0\0e¢Æ1p!BÓ¾&ÓÍu!£Üö=u!¸8ñ¡¹mS½àXØÒsG\'¢ßAcÇ!\rB\'¹îúÒÌÌ6=MTÝ)TîFS?½û\0üÏÛ?¹Ì8ÎoqÄ6ûh1càB!\rM¡«ÿ\0º¶¡~v>øÑ\07ÉYÒAÇAeóôÆ1p0!B\Z§ÿ\0:ïpxmùÂ·Y\"tu¬n¦ó@·x,~ií{ý¢`ÿ\0p\0\0\rÁcàB5iú¦äU_Cí ìE¢Øª|¿îúâ«i»êèY\0+QcC\Z¦kbÓ/ÆSïþïÆrËË?õïiGnð5Ëß«ÍÕcÆ1ÀÀÀÀÕ|½\\¢îféÖîÍÿ\0xªÖ?QÑÐmØ:¹ÞBààÇ&&ýÁëZu_òÛâð»4ôû¿{ã±Æ0ç¢£c`CVé[úGûzw~6>,å<óýíTä|²þþÅ$>Ý×»<ý´ÁTÝÈ·½ålÎuÕåÆä3O¡÷ôp~ý¢9¼ôöÛm¶Ûm¶ÚÌuR¹ÓºHOøÿ\0#?àc8¹£Ïéÿ\0íÕ¹^²ÆyËõsÎyËõë<çó|²²²þÑ¹qb¢±X¨qqqròÒÒÒÒÝe à  ¢AAA` ÁüFYa^ÈöGKÇ$ìd$	?(é(é;±;Sµ;Sµ;S±;ËÜ¿å/ÿ\0¾ÿ\0ÌÑÒQÒQÒQÒQ(*T¬BWð5+\n(J%D£¤£¤£¤ÿÚ\0\0\0\0\0\0#0ÅSÐUõETO<ãÑÀL$0Ç!uP}UU@\0G0# $ÐÌ1Ä^Uó]õUA×ß0,PÅLÔÓ]ÀÃbPAa<b$¡QÔ\0\0\0\0\0\0\0\0A\\]E4Ê4QY6\0\0\0ñÖ´i\0\0\0ÅÙe£¡J-Õ\\\0\0$a7;ì0@\0\0e`ñ\n¥R`\0\0&bð $¹\0\0\0iôÊU¤\0wÙ\\ì\0\0\0\0W\0\0\0\0IÂÏ1Ò\0ÿ\0Ê½8\0\0æ\0\0\0	WÓ0ßa\0#n­P÷öH\054\0\0AÂ\r6\0\03­Zü\Z\09A\0\0\0Gt0@\0»ÛN~:\0\0èà\0\0qÆÏ9Ö\0)ÕyÝ·l\0\0\0\0  \0\0\0Ph\0\rcÄÀ\0\0\0à\0\0=ö	V\0G½&üNf\0\0\02À\0\0ÿ\0A÷Þ`\0;÷ÏzrÈ\0\0\0_À\0S\r4@\0\0nLêÿ\0¶LR\0\0	ß¬\0\0G`0ÓY\0\0\0ðþ¦D\0\0Ð\0qÇ	FR\0\0MÄUsªÀ,C ¨\0\0?Ü0CKA \0\0\00õssú>¬(\0^A6Ë\0ôH\0\0\0Swò¾ L \0¥JðE\0\0²?,@ÒÀ\0\0\0DT ¡ÕM$\0ò|³\0\0\0\0yeU\0áÁ$u\0ÓË(Ï \0Be(Ð\n(âav@°\r.d\"AGFVq\0ÑF3yÅñAÄ¤Ò{ÞMÀÉ$£Å(Ñ8}dA4ÐIgÐL0<³Ï<¡JiäyhS0±Ìà\0C,0\rLóÂ$ \0s\0 ÿÄ\0+\0\0\0\0\0\0\0\0!1A Q@aq¡0±ÑðÁáP`pÿÚ\0?ÿ\0±äd\rÃ§/d«Ôü	ÂÂ/q3 ÓÂ ¨È³Ê©%|¤P$ë´3íÅ´HÌøÉÉ&]d9e×ð*W,Ú¨_RÊue[Ý«;dè\'äZ¬p\0è ª\"G+&ÔìÈ&âÎ¼eUL%Ýú*¬jSø\\4-À[¬´Îcùä\'ì¶eV1¥SBØdÖ1óQbQÑ+©0dc4ïëüdz/`aFý1	µYhrPR,1ÎÏ®ôú®êH:[ªH! ¥,µMÀíÐ*WÔ¶þ½h·kè¢	*[D2Sh7.^¾ªý­ìSÕ-oED@áðq$ñ¢òÔþñÁJÑÏ¯\"¤h >BÂó«²ÁpU{ç\\ú[©½¶ú\\´«xêA6ivä+Uºñ*Yè}nìHíF?+.A*â0:Ú«ßÆbfBLA&ª@µäXÈLê*pò-ê½Îår}g\\B{-2¹7eæ¯q¶Ü¾S«¥´À¦5ò2FØã?\\­çì´I#÷ba&iûíËSi	fú*â:å).fãágýÿÄ\0)\0\0\0\0\0\0\0\01 !A@a0Qq¡`Ññp±ÁáÿÚ\0?þ ÌIöK} ;&ÇP-â^q=R«DÃÅnj©d,Õ.ÈbÏ±/J5ÒgÖTVÐÄTË­:ÑÎHíí`ïãXÏåeÑODLÖì­áE|Î2dðc÷õ\r×/ùbY;YväÎÛ>kÀUM(\\¼!Ïz\0ï·¯q^Nßõ9¤ÌØpËþ~¦iß\Zþtyg&\"ZðüÃk3ÙgeZM3±óæhÍ~=ø¸1Ã÷%,¨ÊúIË·ýÝg\r/åóJÀû@[õK¹~Ò´íPõµij/å¸4$qÒÉ¢¿îÑ¸6Y¹Ç\Z½§ÅÀhEáP5Äwc×Ï[¢ò­ð\n8|l,m@4x	rÅßÛDg¾]¥à¥Ä¦·UèÌ[å`¥Jð²m¹P±²í¸ñUº¢ôÇ3ñz7á>2Ü³Ñ=Ñ=Ñç¦räÜ¹råËñêVúe~¥ÿÄ\0)\0\0\0\0\0\0\0!1AQa 0q¡±ÁÑðñ@áÿÚ\0\0?     ,X±bÅ,X±bÅ,I$I$I$I$I$X    ,Ab,X±Á,X±bÅXI$I$I$I$I,AAAAAX,{\01bKIbI$I$I$I$I$±AAAAAb,X±Á=!I$I$I$I$I$Ib AAAAX±,X±bÅ,I$I$I$I$I$I%      Ç,X±bÅ$àKI$I$I$I$I$X     Ù³fÍ<q$I$I$I$I$I$     =÷F$I$I$I$I$KAA   ÿ\0F$I$I$I$I$±AA  /ý8I$I$I$I$± AAíæåëþºÎàbþ­oéÿ\0¡Ç¯ìDd¿¡lêI$I$$XAAAÎì|ylÍ0Qð2Iñ\'âLò/£âAUy¤vÒ×«&w×æH¢[&É%È÷ìa2TÝ¿«ñÝ YÞúu$I$I$±  {/@Ý{\ZÎµ®^ü¤·D6<Æ8üË§¦XîüÑäz¶Ï!oì$I$B,BA AÁ+Àê÷½Rå¥é°>8ãè|Ølc²Þ1Hâ0C8û?æUö\rR@ýÿ\0(¹§3~Ü1b\\dMZãñç¬%9©í$!$I$!BB!°Ïö2]ñ{Î¶8á¤¸CËzxÞ3|ø«à, #>Æ\0\0Ð9z1<Íz[èaó¸¹Ï`?g AÕl>=\rê2ü¯YËs¤|0þAÙg´HI$!	,B!!ì½l-ä¼<8l7àÎ«°wtçÕ/Gú>gP°a¡lógÙø<zãÜLòÌ|}§3X³¼Ë=÷oôë¶cÙd$!BÄ!BBzô0·cù¾\Z½¦O(4yTýG7ùôek²;ãmæ·ÙD=4\'ËK\rmæ±<²s¿~\'h{=ÂY°6=\Z?ØÌ5è©uëÍ¹ÓÑ×kä7xëír!BBÄ!BA¬¶ ã¾×±åå9bU2«º¼\n ÔNM,Î}pÌÑã@®A9:ì{t@Ö¢\'Yþûz\0ú3°äú:óâú:uÛ­~B&`¯gÂ!X!BV]ô½Gwo2sÔrÁeèàsÏÛCÍñ`${~GW»èF¸5Fý?Ág±:&dv:üí+?A1õµ®9Â1¯AýöÓÈÀr¹Ïu£áçÖgujþ²{aBHBB«Ý1?wçéèØÒ4µþÆï¥ÕYGú1ûøôå²îþ$\0eWBE½Ñøt?|u5<­Æ9ó`õýb5ójù}¸.m\"vÇWìOhOCCAÀÖAºs/êf\\:?Çn_9ä<¸<ØAÆøè\"*r®ëÇCgèøëä\0}Nê6ýyô#m[Zs6°aðÀ:#ÎÒãý¢l8ñÁk,Î¦OÔÕ$vÃ8÷Ð,pà1ÝøCÏð-Å£Éð}äð[ËÐz¾_Ô	*í½²¾iÂÑ5vóbZ`þwÆeÐë£¶íþýz1gMõíÇêîõ^öÍÏÒÅWÖý\rpñcÚap\0.^§Î\0Éç~8Ü÷\0ýÉ¬X\\ao&k¿~~R)DypBEÂ=Ið6Ê~Ç}äLÏüÚÌzóù{½X+öîúÜVQî Êúã¨ó\'×ýúqiÔý{aþóröCÿ\0®ygàásôFd¶÷ý1÷Ç	qËï¾à¨Í1~ÿ\0²4rú¼5íüÄÝs[@º\\Ûº½	ôn×c°r8bhqý,Y²gÖGáOTaýÇ:ïäÃç©99&GìÃoÀäÿ\0Ä\0âÉÿ\0fsv¿^,ÙsÏ,[{7tüq=ó».RÄÜágIÌãÅHäuÈ,¼@ØrÜ_Æ³Nd\0\0ÁìdF3cFù4ù¼1áv ö4|=mýÐ?ð\0+l,>ñ |pXÏÐ«ó ¾`£¯î\"!HÐWSï_<shìúKðÛîvÊwËúåÄ	îûu¦\'5Ýêû ¤óï2Îê3Ì\rù9=Ç:Ç½vùÞìî{O¸\0êÇþÎåÄp¶:?Î9DÈGã:Ù£\'äþ4ódC óiü>%³ÁÄ­s`úd!BÌà6ÇÒl?Øéí»24Ëz~Ùü á¯º$°£dy6¨ã\ZÉûNxßØ}À\0Vçò.YNÇÈèHîdâ,­¿Y© Èþ1ÙwÄ·ïäqÃ<3Ç?Bnúýpr9ßçº¯.põ.C ß©Ü×¦À6GiïÓ°¿è<¹zßp\06Qn¾\'åÆeäÓò@æåúËWs|gàá	ùL?Ñ¨Ø?¯_èó\Z¹pÝ-­¹ñÏÝmº	,Ç\\ñþw\0Ù°V\rACÜGç>·ÔzO­tGö^0RÚ¬ÔéÌ}ðÖ\\d#±Ãi:ïÒxæÈ!rM£èiôY2}î°Õ\ZLX\0>sbÄVS¡+ä:É¡¡Ø\0ñë}À\0Ú}{ïÝÉø_^ÄÏ­Ëó¿ÊðL<z²¯±=8Ô?\'COÈGºÎ5=;³wÎÜ0ÈàtãÕ\r[l\n&®ÃðWØ}À\0Ú}j4fý/*~¬ðD\n¸1$0ÁëÑÙô`çã³f\"d{9Ì·pèl:n<½Üòo]ó\0Ö\rb±ª­þ\0<{/º\0Q 02g	õÖü4ñÇ7AvÇµ!5_ôïÄ3Ø+ü³é7t2ó¿MÎÿ\01úo:?$äû²[&ßIøâ]÷ îÙ}Ð\0û\rvÓU7ÿ\0MgMÜ£	rØ2¾MÏD3gëÅ\0Üõ_<3gÑ­Å÷ätêsßxùÜ£dz{DÅµ¤cú1ÞÇ]ø7Cê üO1·Oaÿ\0Ê\0v$0Dnîùä÷9³èÍFlÜ·Õ]ÃWÜÈi£d}²Ñið	ät6ævN\0Ê`}\0F~ÌiÐÆe÷ì>(¿ÜÆNçyÓç½9Ï£2Ùã©°vª~.§÷	êC uéìàfêó¢ìåÍûâ,Äß9¬	ÈÎæÞÃ){>Ëá]?ÑÑÑù86}+gÕR`kW=|ÉÏoaàHumÜGf­¼mÜ1\r÷£@w\Zý3ì>Øp/l6DÜæÕßðúïéÍVlð%!ïzgÓÆ&ÄxÓÿ\0µËÓt0àöp1\0ÀÃ.\"âgÔ/h°äÍÉ?ùdNl_ý96e³éÍ>Þ|5nè²\'?\"x!)ãÖ4B±zh}·óíèà\\¢åíbþÓsdoâkþN¥³èÌ±-ÇÉ4éÇg$ym4^_Æ?2qGüº	¨tQý\0tg ¸\0Î¸íÅ©)Eú=G.\"ô\nR¥)YöÌÁf.ª\ZüA_î¼3/§>Í\nÛo;ÿ\0ènÉ3æ£½=\'¡0ä}ÓãÖ²¥)Kx¥)G¶í	8CÓ>¦}9³>ÅzÔÎ}¼\nUjíkÐ([ÍíÐä,pÀ9Ü|>SCÌA>d~ïõì;?ägÏ9çþíB0o]Íüv!\00CÖ¥¸2¡¥(}¶K¤ÅùôgÑ#ÇcçðIÈ0~\0«±;w? ü¯Àq:ÜÑä\'íä|`ìCëå)K)e)pfR2R3ì0¢Su4âÙ³èÏØõNYF¡çN8ÁjÔ·yý8Om5Ø2ø±âÂQ¯8î¾Û2²¥)pPÊC(aeå\0¼ó.	ªÊ(ó]_ÌñÍ/ýÁ:!ê7ù._1<\ZÝKC²ûoçnÃØt>SÞâË,²ÊYK)Y¥(a0ÊöáãÞ×å}8æÏñÌ9ÿ\073Mséë©è©¹ýi1ÀÑðB¸Ï/aû=ÅYeYJYYR20Ã6}}kÙÓ\\ÉóÍ9ôgb<kúGÏÅ¥nw÷§äÆ+\Zl¿áeYe,²²³¥0Ã0Ã0ééÑå÷sáõrÇú3è9|WB/0cÀ,\'eYzDÔKÍ2þøéë¤üog2Ë,²Ë,²Ë)K+0Ã0Ã0Ã0Ã\ràMÞ(SUxÛa\Zi®ºmò	ãñÀXQC\"zã}huh,=K®¾Ã2Ë,²Ë,²Ë,²aaaxrÿ\0Ô²Ë,²Ë,²Ë,²Ë/aaaa=±c8c=8ô,²Ë,²Ë,²Ë)eVaC0Ã0Ã0Ø¡aÞ\'ÖOæC`û´ü>¥õ%Fÿ\0¹÷g×÷µ»»?ûÿ\0pÿ\0êSê>PÜ^_^¶~v.É,²Ë,²Ë,²Ë,²ËfaC0Ã0ÎºÉ­uÖw\"ÉÞÖêð=Ìõg¯w¹w.êïÝÏÝÃç-à1,«¬3!	ÞYeYeYeYlÃ0Ã0Ã0Ã6KÈ²ìJìIÒN1z¤èËé/¤¾ºYt²é¤>ú2t~¥êÒNÿ\0¥\"`%YeYeYe[0Ã0Ã0Ã0Ã0Ã6lÚt.Âí®Âí.Âì¸áÙ]¥Ø]µØ}X:VK2Ë,²Ë,²Ë,²Ë,²Ë,¶aaaaaaÍ6lÙ³g6lÙYeYeYeYeYe[0Ã0Ã0Ã0Ã0Ã6a³Á6lÙàÍ6lÙ³fYeYeYeYeYe[0Ã0Ã0Ã0Ã0Ã0ÃfÌ6lðfÍÙ³fÍlË,²Ë,²Ë,²Ë,²Ë,¶aaaaalÃfÍ6lÙ³fÍ6lË-6eYeYeYeYeÌtQÐ}GAõÔt¨èVÔ¡Ð¡aÐÎÅ¡¡`è@t :X:X:X:X,,$:¤BÁÐèHt$:	BC¡#BGBÃ¡=êìSÐ>§ }O@úõ=ÔôWaõÿÙ','09458525255'),(2,2,'Fname','M Name','Lname','Fname M. Lname','1995-12-05','Bulan','asda','123','123','123','Male','Widowed','A+','Active',NULL,'5a64564');
/*!40000 ALTER TABLE `tbl_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_machine`
--

DROP TABLE IF EXISTS `tbl_machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_machine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StatusID` int(11) DEFAULT NULL,
  `SerialNo` varchar(60) NOT NULL,
  `MachineName` varchar(70) NOT NULL,
  `Status` varchar(60) DEFAULT NULL COMMENT 'Reserve/Occupied',
  `Type` varchar(60) NOT NULL COMMENT 'Washing/Drying',
  `Remarks` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_machine`
--

LOCK TABLES `tbl_machine` WRITE;
/*!40000 ALTER TABLE `tbl_machine` DISABLE KEYS */;
INSERT INTO `tbl_machine` VALUES (1,0,'12131556','Machina mahika','','WASHING',NULL),(2,0,'21456a4s56','Machina mahika','','WASHING',NULL),(3,0,'5646432','Machina mahika','','WASHING',NULL),(4,0,'45656321','Machina mahika','','WASHING',NULL),(5,NULL,'456456321','Machina mahika','','WASHING',NULL),(6,0,'562132','Machina mahika','','WASHING',NULL),(7,4,'56321','Machina mahika','RESERVED','WASHING',NULL),(8,6,'a45s6d65asd','Machina mahika','RESERVED','WASHING',NULL),(9,1,'56as56d56','Machina mahika','OCCUPIED','WASHING',NULL),(10,0,'asdasd','Machina mahika','','WASHING',NULL),(11,0,'asdas45d6','Die Machine','','DRYING',NULL),(12,0,'892132','Die Machine','','DRYING',NULL),(13,NULL,'3211456','Die Machine','','DRYING',NULL),(14,0,'56456','Die Machine','','DRYING',NULL),(15,NULL,'321348456','Die Machine','','DRYING',NULL),(16,NULL,'asd456a56sd56','Die Machine','','DRYING',NULL);
/*!40000 ALTER TABLE `tbl_machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_occupied_record`
--

DROP TABLE IF EXISTS `tbl_occupied_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_occupied_record` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClientID` varchar(45) NOT NULL,
  `MachineID` int(11) NOT NULL,
  `Products_Services` varchar(500) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Amount` decimal(18,4) NOT NULL,
  `DateCreated` date NOT NULL,
  `TimeCreated` time NOT NULL,
  `Status` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_occupied_record`
--

LOCK TABLES `tbl_occupied_record` WRITE;
/*!40000 ALTER TABLE `tbl_occupied_record` DISABLE KEYS */;
INSERT INTO `tbl_occupied_record` VALUES (16,'1',9,'Product 1',1,50.4900,'2022-09-11','15:55:14','Product'),(17,'1',9,'Service 2',1,4500.0000,'2022-09-11','15:55:30','Service'),(18,'1',8,'Service 1',1,45456.0000,'2022-09-11','15:55:56','Service'),(19,'1',8,'Service 2',1,4500.0000,'2022-09-11','15:55:58','Service'),(21,'1',8,'Product 1',1,50.4900,'2022-09-11','17:35:05','product'),(22,'2',9,'Product 1',1,50.4900,'2022-09-11','18:09:05','service'),(23,'2',9,'Service 2',1,4500.0000,'2022-09-11','18:09:08','service'),(24,'2',9,'asda',1,232.0000,'2022-09-11','18:09:13','service'),(25,'7',15,'Service 1',1,45456.0000,'2022-09-11','19:43:35','service'),(26,'7',15,'Product 1',1,50.4900,'2022-09-11','19:43:39','service'),(27,'7',15,'Service 2',1,4500.0000,'2022-09-11','19:43:41','service'),(28,'1',15,'Service 2',1,4500.0000,'2022-09-14','19:56:33','service'),(29,'1',15,'Service 2',1,4500.0000,'2022-09-14','19:56:35','service'),(30,'1',15,'Service 2',1,4500.0000,'2022-09-14','19:56:37','service'),(31,'1',15,'Service 2',1,4500.0000,'2022-09-14','19:56:39','service');
/*!40000 ALTER TABLE `tbl_occupied_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_payment`
--

DROP TABLE IF EXISTS `tbl_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_payment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `PaymentDetailsID` int(11) NOT NULL,
  `MachineID` int(11) NOT NULL,
  `DateCreated` date DEFAULT NULL,
  `TimeCreated` time DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `PaidBy` varchar(45) DEFAULT NULL COMMENT 'Cash,Card,OnlinePayment',
  `Remarks` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_payment`
--

LOCK TABLES `tbl_payment` WRITE;
/*!40000 ALTER TABLE `tbl_payment` DISABLE KEYS */;
INSERT INTO `tbl_payment` VALUES (14,1,9,9,'2022-09-11','15:54:25',NULL,'CASH',''),(15,1,10,8,'2022-09-11','15:54:38',NULL,'CASH',''),(16,2,11,9,'2022-09-11','18:07:47',NULL,'CASH',''),(17,6,12,9,'2022-09-11','19:02:08',NULL,'CASH',''),(18,6,13,8,'2022-09-11','19:09:04',NULL,'CASH',''),(19,3,14,15,'2022-09-11','19:39:38',NULL,'CASH',''),(20,7,15,15,'2022-09-11','19:43:05',NULL,'CASH',''),(21,1,16,9,'2022-09-12','22:14:08',NULL,'CASH',''),(22,6,17,8,'2022-09-12','22:26:24',NULL,'CASH',''),(23,4,18,7,'2022-09-12','22:39:13',NULL,'CASH',''),(24,1,19,15,'2022-09-14','19:55:57',NULL,'CASH','');
/*!40000 ALTER TABLE `tbl_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_paymentdetails`
--

DROP TABLE IF EXISTS `tbl_paymentdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_paymentdetails` (
  `ID` int(11) NOT NULL,
  `PDID` int(11) NOT NULL,
  `RecieptNumber` varchar(50) NOT NULL,
  `Status` varchar(45) NOT NULL COMMENT 'Product/Service',
  `Details` varchar(500) NOT NULL,
  `DateCreated` date NOT NULL,
  `TimeCreated` time NOT NULL,
  `Amount` decimal(18,4) NOT NULL,
  `Quantity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`,`PDID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_paymentdetails`
--

LOCK TABLES `tbl_paymentdetails` WRITE;
/*!40000 ALTER TABLE `tbl_paymentdetails` DISABLE KEYS */;
INSERT INTO `tbl_paymentdetails` VALUES (9,1,'REC#9-2022-15:54:25','Service','RESERVATION FEE','2022-09-11','15:54:25',50.0500,1),(9,2,'REC#9-2022-18:58:01','Product','Product 1','2022-09-11','18:58:01',50.4900,1),(9,3,'REC#9-2022-18:58:01','Service','Service 2','2022-09-11','18:58:01',4500.0000,1),(10,1,'REC#9-2022-15:54:38','Service','RESERVATION FEE','2022-09-11','15:54:38',50.0500,1),(10,2,'REC#9-2022-17:35:12','Service','Service 1','2022-09-11','17:35:12',4500.0000,1),(10,3,'REC#9-2022-17:35:12','Service','Service 1','2022-09-11','17:35:12',4500.0000,1),(10,4,'REC#9-2022-17:35:12','product','Product 1','2022-09-11','17:35:12',50.4900,1),(11,1,'REC#9-2022-18:07:47','Service','RESERVATION FEE','2022-09-11','18:07:47',50.0500,1),(11,2,'REC#9-2022-18:09:30','service','Product 1','2022-09-11','18:09:30',50.4900,1),(11,3,'REC#9-2022-18:09:30','service','Service 2','2022-09-11','18:09:30',4500.0000,1),(11,4,'REC#9-2022-18:09:30','service','asda','2022-09-11','18:09:30',232.0000,1),(12,1,'REC#9-2022-19:02:08','Service','RESERVATION FEE','2022-09-11','19:02:08',50.0500,1),(13,1,'REC#9-2022-19:09:04','Service','RESERVATION FEE','2022-09-11','19:09:04',50.0500,1),(14,1,'REC#9-2022-19:39:38','Service','RESERVATION FEE','2022-09-11','19:39:38',50.0500,1),(15,1,'REC#9-2022-19:43:05','Service','RESERVATION FEE','2022-09-11','19:43:05',50.0500,1),(15,2,'REC#9-2022-19:43:49','service','Service 1','2022-09-11','19:43:49',45456.0000,1),(15,3,'REC#9-2022-19:43:49','service','Product 1','2022-09-11','19:43:49',50.4900,1),(15,4,'REC#9-2022-19:43:49','service','Service 2','2022-09-11','19:43:49',4500.0000,1),(16,1,'REC#9-2022-22:14:08','Service','RESERVATION FEE','2022-09-12','22:14:08',50.0500,1),(17,1,'REC#9-2022-22:26:24','Service','RESERVATION FEE','2022-09-12','22:26:24',50.0500,1),(18,1,'REC#9-2022-22:39:16','Service','RESERVATION FEE','2022-09-12','22:39:13',50.0500,1),(19,1,'REC#9-2022-19:55:57','Service','RESERVATION FEE','2022-09-14','19:55:57',50.0500,1),(19,2,'REC#9-2022-19:56:52','service','Service 2','2022-09-14','19:56:52',4500.0000,1),(19,3,'REC#9-2022-19:56:52','service','Service 2','2022-09-14','19:56:52',4500.0000,1),(19,4,'REC#9-2022-19:56:52','service','Service 2','2022-09-14','19:56:52',4500.0000,1),(19,5,'REC#9-2022-19:56:52','service','Service 2','2022-09-14','19:56:52',4500.0000,1);
/*!40000 ALTER TABLE `tbl_paymentdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `ProductName` varchar(45) NOT NULL,
  `ProductDescription` varchar(45) DEFAULT NULL,
  `AmountPerUnit` decimal(18,4) NOT NULL,
  `Quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (1,1,'asdas','asda',123.0000,0),(2,1,'Product 1','Product 1',51.0000,100);
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_productstocks`
--

DROP TABLE IF EXISTS `tbl_productstocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_productstocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `UnitType` varchar(45) NOT NULL,
  `Available` int(11) NOT NULL,
  `AmountPerUnit` decimal(18,4) NOT NULL,
  `Remarks` varchar(45) DEFAULT NULL COMMENT 'In Stocks/Out Stocks',
  `DateCreated` date NOT NULL,
  `TimeCreated` time NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_productstocks`
--

LOCK TABLES `tbl_productstocks` WRITE;
/*!40000 ALTER TABLE `tbl_productstocks` DISABLE KEYS */;
INSERT INTO `tbl_productstocks` VALUES (1,1,1,0,'1',1,1.0000,'1','0000-00-00','00:00:01'),(2,1,1,1,'1',1,1.0000,'1','0000-00-00','00:00:01'),(3,1,1,5,'1',1,1.0000,'1','0000-00-00','00:00:01');
/*!40000 ALTER TABLE `tbl_productstocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reservation`
--

DROP TABLE IF EXISTS `tbl_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reservation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `MachineID` int(11) NOT NULL,
  `DateCreated` date NOT NULL,
  `TimeCreated` time NOT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Remarks` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COMMENT='Appointment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reservation`
--

LOCK TABLES `tbl_reservation` WRITE;
/*!40000 ALTER TABLE `tbl_reservation` DISABLE KEYS */;
INSERT INTO `tbl_reservation` VALUES (22,1,1,9,'2022-09-11','15:54:25','WASHING',''),(23,1,1,8,'2022-09-11','15:54:38','WASHING',''),(24,1,2,9,'2022-09-11','18:07:47','WASHING',''),(25,1,6,9,'2022-09-11','19:02:08','WASHING',''),(26,1,6,8,'2022-09-11','19:09:04','WASHING',''),(27,1,3,15,'2022-09-11','19:39:38','DRYING',''),(28,1,7,15,'2022-09-11','19:43:05','DRYING',''),(29,1,1,9,'2022-09-12','22:14:08','WASHING',''),(30,1,6,8,'2022-09-12','22:26:24','WASHING',''),(31,1,4,7,'2022-09-12','22:39:13','WASHING',''),(32,1,1,15,'2022-09-14','19:55:57','DRYING','');
/*!40000 ALTER TABLE `tbl_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_restriction`
--

DROP TABLE IF EXISTS `tbl_restriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_restriction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resAll` int(11) NOT NULL DEFAULT '1',
  `resEmp` int(11) NOT NULL DEFAULT '1',
  `resOffer` int(11) NOT NULL DEFAULT '1',
  `resOfferSer` int(11) NOT NULL DEFAULT '1',
  `resOfferPro` int(11) NOT NULL DEFAULT '1',
  `resCus` int(11) NOT NULL DEFAULT '1',
  `resResHis` int(11) NOT NULL DEFAULT '1',
  `resPayHis` int(11) NOT NULL DEFAULT '1',
  `resSMS` int(11) NOT NULL DEFAULT '1',
  `resSet` int(11) NOT NULL DEFAULT '1',
  `resCom` int(11) NOT NULL DEFAULT '1',
  `resLogRes` int(11) NOT NULL DEFAULT '1',
  `resLauMac` int(11) NOT NULL DEFAULT '1',
  `resBraLau` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_restriction`
--

LOCK TABLES `tbl_restriction` WRITE;
/*!40000 ALTER TABLE `tbl_restriction` DISABLE KEYS */;
INSERT INTO `tbl_restriction` VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(2,0,0,0,0,0,0,0,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `tbl_restriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_service`
--

DROP TABLE IF EXISTS `tbl_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_service` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `ServiceName` varchar(200) NOT NULL,
  `ServiceDescription` varchar(45) DEFAULT NULL,
  `Amount` decimal(18,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_service`
--

LOCK TABLES `tbl_service` WRITE;
/*!40000 ALTER TABLE `tbl_service` DISABLE KEYS */;
INSERT INTO `tbl_service` VALUES (1,1,'Service 1','Service 1',45456.00),(2,1,'Service 2','Service 2',4500.00),(3,1,'asda','asd',232.00),(4,1,'Reservation Fee','To Reserve Machine',50.05),(5,1,'Service 1','Description2',500.00);
/*!40000 ALTER TABLE `tbl_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_settings`
--

DROP TABLE IF EXISTS `tbl_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_settings` (
  `ID` int(11) NOT NULL,
  `SettingsValue` varchar(150) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `SettingsName` varchar(150) NOT NULL,
  `DateCreated` date NOT NULL,
  `TimeCreated` time NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_settings`
--

LOCK TABLES `tbl_settings` WRITE;
/*!40000 ALTER TABLE `tbl_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RestrictionID` int(11) NOT NULL,
  `EmpId` int(11) NOT NULL,
  `UserName` varchar(200) NOT NULL,
  `Password` varchar(300) NOT NULL,
  `FullName` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,1,2,'a','qq','Fname M. Lname'),(2,2,1,'a','a','1');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'klsmanagementandreservationsystem'
--

--
-- Dumping routines for database 'klsmanagementandreservationsystem'
--

--
-- Current Database: `oninfomasystemhealthcenter`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `oninfomasystemhealthcenter` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `oninfomasystemhealthcenter`;

--
-- Table structure for table `tbl_child`
--

DROP TABLE IF EXISTS `tbl_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_child` (
  `idtbl_Child` int(11) NOT NULL AUTO_INCREMENT,
  `idtbl_residences` int(11) NOT NULL,
  PRIMARY KEY (`idtbl_Child`,`idtbl_residences`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_child`
--

LOCK TABLES `tbl_child` WRITE;
/*!40000 ALTER TABLE `tbl_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_household`
--

DROP TABLE IF EXISTS `tbl_household`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_household` (
  `idtblHouseHold` int(11) NOT NULL AUTO_INCREMENT,
  `HouseHoldOwner` varchar(500) DEFAULT NULL,
  `HouseHoldNumber` varchar(45) DEFAULT NULL,
  `LotNo.` varchar(45) DEFAULT NULL,
  `EnvSan` int(11) DEFAULT NULL COMMENT '1= With CR | 0 = Without CR',
  `SourOfDrinWater` int(11) DEFAULT NULL COMMENT '1=Level 1 | 2= Level 2 | 3=Level 3',
  `FamPlanningMethodsID` int(11) DEFAULT NULL,
  `Electrification` int(11) DEFAULT NULL,
  `garbagedisposal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtblHouseHold`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_household`
--

LOCK TABLES `tbl_household` WRITE;
/*!40000 ALTER TABLE `tbl_household` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_household` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_occupation`
--

DROP TABLE IF EXISTS `tbl_occupation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_occupation` (
  `idtbl_occupation` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(90) NOT NULL,
  `Description` varchar(200) NOT NULL,
  PRIMARY KEY (`idtbl_occupation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_occupation`
--

LOCK TABLES `tbl_occupation` WRITE;
/*!40000 ALTER TABLE `tbl_occupation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_occupation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pwdtype`
--

DROP TABLE IF EXISTS `tbl_pwdtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pwdtype` (
  `idtbl_pwdtype` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtbl_pwdtype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pwdtype`
--

LOCK TABLES `tbl_pwdtype` WRITE;
/*!40000 ALTER TABLE `tbl_pwdtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pwdtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_residences`
--

DROP TABLE IF EXISTS `tbl_residences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_residences` (
  `idtbl_residences` int(11) NOT NULL,
  `ChildrenID` int(11) DEFAULT NULL,
  `OccupationID` int(11) DEFAULT NULL,
  `BarangayID` varchar(45) DEFAULT NULL,
  `ReligionID` int(11) DEFAULT NULL,
  `FName` varchar(45) DEFAULT NULL,
  `MName` varchar(45) DEFAULT NULL,
  `LName` varchar(45) DEFAULT NULL,
  `CompleteName` varchar(45) DEFAULT NULL,
  `Birthdate` varchar(45) DEFAULT NULL,
  `Age` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Barangay` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `MaritalStatus` varchar(45) DEFAULT NULL COMMENT '1=Married | 2=Separated | 3=Single | 4=Widow',
  `MarriedTo` varchar(45) DEFAULT NULL,
  `HouseNumber` varchar(45) DEFAULT NULL,
  `pwdtypeid` int(11) DEFAULT NULL,
  `isvoters` int(11) DEFAULT NULL,
  `isgardening` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtbl_residences`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_residences`
--

LOCK TABLES `tbl_residences` WRITE;
/*!40000 ALTER TABLE `tbl_residences` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_residences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'oninfomasystemhealthcenter'
--

--
-- Dumping routines for database 'oninfomasystemhealthcenter'
--

--
-- Current Database: `sb_digitalization`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sb_digitalization` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sb_digitalization`;

--
-- Table structure for table `committee_list`
--

DROP TABLE IF EXISTS `committee_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `committee_list` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `committee` varchar(250) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `committee_list`
--

LOCK TABLES `committee_list` WRITE;
/*!40000 ALTER TABLE `committee_list` DISABLE KEYS */;
INSERT INTO `committee_list` VALUES (1,'Commitee 1');
/*!40000 ALTER TABLE `committee_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communications_history`
--

DROP TABLE IF EXISTS `communications_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communications_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDateTime` datetime NOT NULL,
  `RefKey` text NOT NULL,
  `Operation` text NOT NULL,
  `SystemUserName` text NOT NULL,
  `Remarks` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communications_history`
--

LOCK TABLES `communications_history` WRITE;
/*!40000 ALTER TABLE `communications_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `communications_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communications_main`
--

DROP TABLE IF EXISTS `communications_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communications_main` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CommDateTime` time NOT NULL,
  `From` text NOT NULL,
  `To` text NOT NULL,
  `AddressFrom` text NOT NULL,
  `AddressTo` text NOT NULL,
  `Subject` text NOT NULL,
  `CommFlow` text NOT NULL,
  `Status` text NOT NULL,
  `CloudDriveLink` text,
  `MainContent` longtext,
  `Committee` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communications_main`
--

LOCK TABLES `communications_main` WRITE;
/*!40000 ALTER TABLE `communications_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `communications_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_setting`
--

DROP TABLE IF EXISTS `company_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_setting`
--

LOCK TABLES `company_setting` WRITE;
/*!40000 ALTER TABLE `company_setting` DISABLE KEYS */;
INSERT INTO `company_setting` VALUES (1,'IROSIN','2022-09-23 10:36:07');
/*!40000 ALTER TABLE `company_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minutes_history`
--

DROP TABLE IF EXISTS `minutes_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minutes_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDateTime` datetime NOT NULL,
  `RefKey` int(11) NOT NULL,
  `Operation` text NOT NULL,
  `SystemUserName` text NOT NULL,
  `Remarks` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minutes_history`
--

LOCK TABLES `minutes_history` WRITE;
/*!40000 ALTER TABLE `minutes_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `minutes_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minutes_main`
--

DROP TABLE IF EXISTS `minutes_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minutes_main` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MinuteDate` date NOT NULL,
  `TimeStarted` time NOT NULL,
  `TimeEnded` time NOT NULL,
  `MinuteType` text NOT NULL,
  `RecordedBy` text NOT NULL,
  `CloudDriveLink` text,
  `MainContent` longtext,
  `Committee` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minutes_main`
--

LOCK TABLES `minutes_main` WRITE;
/*!40000 ALTER TABLE `minutes_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `minutes_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_table`
--

DROP TABLE IF EXISTS `new_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_table` (
  `ID` int(11) NOT NULL,
  `ResoSeriesNo` varchar(200) NOT NULL,
  `DocBlob` blob NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_table`
--

LOCK TABLES `new_table` WRITE;
/*!40000 ALTER TABLE `new_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordinances_history`
--

DROP TABLE IF EXISTS `ordinances_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordinances_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDateTime` datetime NOT NULL,
  `RefKey` varchar(200) NOT NULL,
  `Operation` text NOT NULL,
  `SystemUserName` text NOT NULL,
  `Remarks` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordinances_history`
--

LOCK TABLES `ordinances_history` WRITE;
/*!40000 ALTER TABLE `ordinances_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordinances_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordinances_main`
--

DROP TABLE IF EXISTS `ordinances_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordinances_main` (
  `SeriesNo` varchar(200) NOT NULL,
  `Title` varchar(500) NOT NULL,
  `Sponsor` varchar(500) NOT NULL,
  `OrdinanceCreatedDate` date NOT NULL,
  `ApprovedDate` date NOT NULL,
  `ImplementedDate` date NOT NULL,
  `AttestedBy` varchar(500) NOT NULL,
  `ApprovedBy` varchar(500) NOT NULL,
  `RecordedBy` varchar(500) NOT NULL,
  `DocFTPLocation` varchar(500) NOT NULL,
  `Keywords` varchar(500) DEFAULT NULL,
  `MainContent` longtext,
  `RefBookNo` int(11) DEFAULT NULL,
  `RefPageNo` int(11) DEFAULT NULL,
  `TotalPages` int(11) DEFAULT NULL,
  `MinuteRefID` int(11) DEFAULT NULL,
  `SPResoRefSeriesNo` varchar(500) DEFAULT NULL,
  `CloudDriveLink` varchar(500) DEFAULT NULL,
  `Committee` varchar(250) NOT NULL,
  PRIMARY KEY (`SeriesNo`),
  UNIQUE KEY `SeriesNo_UNIQUE` (`SeriesNo`),
  KEY `TITLE` (`Title`(255))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordinances_main`
--

LOCK TABLES `ordinances_main` WRITE;
/*!40000 ALTER TABLE `ordinances_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordinances_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resolution_main`
--

DROP TABLE IF EXISTS `resolution_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resolution_main` (
  `SeriesNo` varchar(100) NOT NULL,
  `Title` varchar(500) NOT NULL,
  `Sponsor` varchar(200) DEFAULT NULL,
  `ResoCreatedDate` date NOT NULL,
  `AdoptedDate` date NOT NULL,
  `AttestedBy` varchar(200) NOT NULL,
  `ApprovedBy` varchar(200) NOT NULL,
  `RecordedBy` varchar(200) NOT NULL,
  `DocFTPLocation` varchar(500) NOT NULL,
  `Keywords` varchar(500) DEFAULT NULL,
  `MainContent` longtext,
  `RefBookNo` int(11) DEFAULT NULL,
  `RefPageNo` int(11) DEFAULT NULL,
  `TotalPages` int(11) DEFAULT NULL,
  `MinuteRefID` int(11) DEFAULT NULL,
  `CloudDriveLink` varchar(45) DEFAULT NULL,
  `Committee` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`SeriesNo`),
  UNIQUE KEY `SeriesNo_UNIQUE` (`SeriesNo`),
  KEY `TITLE` (`Title`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolution_main`
--

LOCK TABLES `resolution_main` WRITE;
/*!40000 ALTER TABLE `resolution_main` DISABLE KEYS */;
INSERT INTO `resolution_main` VALUES ('2022-09-1','a','a','2022-09-28','2022-09-28','a','a','a','D:\\Desktop\\iemop.pdf','a','                                            Payment ::,up\r\n                                              FOi CompaNes With\r\n                                             Collection Arrangements\r\n      Company Name\r\n                                             Date \'\r\n            \'4~    ,\'-;,\\<)   tMl f               l   i~\'i\r\n      Institution Code I         Product Code\r\n  .                I I  I  I               I  I  I  I\r\n                .\r\n      (Please refer to the list of institution and product codes at depositor\'s writing table.)\r\n       •.·\r\n                         Payment Details\r\n      j,.  ~~ r\"vri-~   -  ,.   ....   ~  ., •.\r\n  1,-.                                   .,\r\n     I~ Subscriber\'s Account No.   b  J \' \'~   1\r\n         ·,  \\.l~;t_fl)J(u\'t>·4<;..l POC.Ol.~\r\n             --    .....   1\r\n      Subscriber\'s Name\r\n                    w\r\n               Please use separate slip for each mode of payment.\r\n\r\n      CASH PAYMENT BREAKDOWN\r\n        Denomination     Pieces            Amount\r\n\r\n                                                      I\r\n                                                      I\r\n                                                      .\r\n\r\n\r\n                                                      I\r\n                                                      I\r\n      TOTAL CASH PAYMENT                   t.r c.  ,r,y . \'21\r\n      CHECK PAYMENT BREAKDOWN  (Please endorse each check proper1y.)\r\n     • Type of Check   Don-Us   O Local   O Regional   D  Mgr\"sCheck\r\n        Bank/Branch   Check Number         Amount\r\n\r\n                                                      I\r\n                                                      I\r\n\r\n                                                      I\r\n                                                      .\r\n                                                      .\r\n      TOTAL CHECK PAYMENT\r\n      This payment/deposit is  made and  accepted subject to  the  terms  and  conditions\r\n      covering  the account.\r\n\r\n\r\n\r\n       00670 see:\r\n       0750060040800028  SORECO  \"HP  106768.21  Cash\r\n       ~5a43446b-7d8e  074T  rHP  o.oo\r\n       2o  Feb 2019  l fli,r 4s y~uf ~~~~n~~chinevalidated.\r\n    PPPPC                                             GEN-22\r\n                                                                C I O l l\'-1 1\r\n              ,                     Debit I Credit Advice\r\n                                                                                     For  Bank s Use Only\r\n    Transfer from Account\r\n    -..1\"1\\\'100 f p\':t \"1\r\n   Transfer to Account\r\n    1~ l\\\'vt>OOOOaO                                             Debit   005990045027\r\n\r\n                                                               0~     cn~SOGOH  I  ELECTRI\r\n                                                                         scb f~o  JEMOP  SORECOl\r\n                                                                Amount\r\n                                                                      PHP  106,768.21\r\n\r\n\r\n\r\n                                                                Credit\r\n                                                                      2~5880000000     4215\r\n                                                                   ...  >t1/L--BILLS  PAYl1EMT-t01ESTIC-\r\n   M\r\n                                                                       S99  tof  frOI  SORECO  l/f1Jt.  ·\r\n                                                                Amount PHP  106,168.21\r\n               Eff  date:  26  Feb  2019                              Oep  P.ef,f.\r\n               26-02-19  15:08:42  51SG   599   607   137\r\n                                                                Verified by\r\n               Override  IO:   101   6\'fl.\r\n               Application lransfel\"··   · -- ~t accepted-\r\n                                                                Approved by                  Approved by  ,\r\n\r\n                                                                                                                    V032018\r\n      ~            -                        r\"aymen1 .:>11p\r\n                                               F0< Companres WT1h\r\n                                             COilection Arrangements\r\n      Company Name                           Date\r\n                          t._\\f\\v1\'            1{ Ju \\,q\r\n            (t~_,  \'t /... { I\r\n      Institution Code I  I I __j  I   Product Code · I I I I\r\n\r\n                L   •   \'  .t,i,•  ~\'-.~   \\),1,\r\n      {Please refer to the list of institution and product codes at depositor\'s wntmg table.)\r\n      ·~,!\']\'Wi;,. 1  ·   ~i-,   .  P~mtnf o.t.Hs   ~\r\n\r\n      Subscriber\'s Account No.\r\n          (i  > f VO ~ t c.x,4. ~ s::\' t  X) )..,\"\r\n      Subscriber\'s Name\r\n              ()\\~   u 1\r\n               Please use separate slip for each mode of payment.\r\n      CASH PAYMENT BREAKDOWN\r\n        Denomination     Pieces            Amount\r\n                                                        I\r\n                                                      I\r\n                                                      I\r\n                                                      I\r\n\r\n                                                      \'\r\n                                                       -r\r\n                                                      I\r\n      TOTAL CASH PAYMENT\r\n                                      ll),  (j~/,,  -i!..i7  .~\\l\r\n      CHECK PAYMENT BREAKDOWN (Please endorse each check properly.)\r\n      Type of Check   O On-Us   0Local   O Regional   O Mgr\'sCheck\r\n        Bank/Branch   Check Number         Amount           I\r\n\r\n                                                      I\r\n                                                      I\r\n                                                      I\r\n                                                      I\r\n      TOTAL CHECK PAYMENT\r\n                                                      I\r\n      This paymenVdeposit is made and  accepted  subject to the terms  and conditions\r\n      covering the account.\r\n\r\n       00670  SCBI                                      ..........  ·~\r\n      c750060040800028  SOREC  PHP  10996907.84  Ca$h\r\n                           0\r\n      ~lV&~di;et?:fl~ rlilio  00~99  601             ,\r\n                  This is your receipt when machine validated.\r\n    PPPPC                                             GEN-22\r\n                                                                                                          oate\r\n                       .            Debit I  Credit Advice\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n                                                                Credit\r\n                                                                       235880000000    4215\r\n                                                                       >tl/L--BILLS  ~YMEHT-o01ESTIO-·\r\n                                                                       599  tof f rOIII  SORECO  1/ P\'ft  - --\r\n                                                                Amount  PHP  10,996,907.84\r\n                                                                       Dep, R&f  I\r\n                Eff  date:  26  Feb 2019\r\n                26-02-19  15:17:09  51,SG   599   607   139     Verified by                 Processed by\r\n                Override  ID  :   301   607\r\n                Application  Transfer   · · • Host  accepted\r\n                                                       .,,. . .......... .   Approved ,bY\r\n\r\n\r\n\r\n\r\n\r\n                                              IEffl;CJp\r\n\r\n\r\n                                              INDEPENDENT  ELECTR.IC.ITY  MARKET  D•PERATOR\r\n                                              PHILIPPINES\r\n\r\n                                           PAYMENT FOR~\r\n\r\n                                                                      :·  ·!\'\r\n          Marke~ Parti~ipi[int N_ame:               SORSOGON  I ELECT~IC \'coci~ERATivE,  INC.\r\n                                                                      -\r\n                                                     -\r\n                                                                             .  ·,  \'\r\n                                                                .-L~.  ~,•   ,,   \'  \'\r\n                                                                 .\r\n          Market Participant ID No .. :             1008       ,,   ~  l~~\'-  \'  ..  \'\r\n                                                                      ··j,,,\r\n                                                                      ,-,-\r\n                                                                      .,\r\n                                                                      \"\r\n                                                                                         Others\r\n                                                                                      (Prudential\r\n           Date of\r\n                       Invoice No.      Energy     · \'~AT on Energy                  Requlr.ement,       TOTAL\r\n           Payment\r\n                                                                                    Default Interest,\r\n                                                                                          -•~.,\r\n                                                                              ,,\r\n             22-Feb-19 INV0023276      10,620;015.96     589,292;20                                     11,209,308.16\r\n                                                                      \"  .\r\n                                 •  ·1·\r\n                                 .-\"\'\'i\r\n                                                                      .1-.,\r\n                                                                    . _\'i-\r\n                      .\'                                      ·\'\r\n                                        . \'\r\n                                      ,/\r\n                                                                         ... ·,,,, ..\r\n                       _,\"\'                 /                            ., .   ,! ~-  ,.\r\n                                                                                             .\r\n\r\n\r\n               ·,.   2 °i~  wltholdlnn tax           /                .L  •t               \'.            1212400.32\r\n                 ·•,  -  _   \"                     ir               \'  I,\'\r\n           TOTAL AM()\\;JNT PAID\'     10:620.015.96\'\\    589.292.20   ~(\r\n                                                                                                      10.99_6.907 .84\r\n                                             -.                              . \'\r\n\r\n                                                                            \"  .\r\n                               ...  ~                -..   ,,,  .   . .. ir.,  .. ;; ·_ :{~· t .\r\n        Certified Correct:\r\n                                 ··,:,._--~!!!.!!.!:!lo!:jl\'7\"\'!le!=l.!a~d~a~-..!F:!1.!.!n\"\"a\'!\'n\',\':c:\':e\"\'M!:!.!!a~n!!ca~e~r-\'•~--\r\n                                                  d Representative &.  Slgnatur~\r\n                                                 ·.          .·    .··r:~-·:.  \'•1.\r\n                                                                     ,JJ-··\r\n             UHOHHUOOOHH .. 0H .. ,H .. OHOHHOHHOHH,HH,HHmH>OOHOHH,.,H,H0 .. 0mHO .. HH>HOH HOHHO .. NO .. •  0•0HO ..  •  HOH O  OHOH •  ................... HH>HO\"H\"\"OHOMO,O  Of, •• O  ;,1,: ... OM .. \'o,.- •• •  M•••M .. ,wo .. M\"\'  ·,.,_,,,_,.,_hOM•••MU\"O\"OMOHMOHMU .. HM00\'\"\"0MH0MHOMHOMUOMHOMO .. M0 .. Mo•OMUO\r\n                                                                   • ·.l ·J~\\[j.j ; .  \'\r\n        Payment Gu!d:~andard Chartered Ban·~\',.,..    \'·  ~,\r\n\r\n                        Account Name:              \'independent Electrii:itlM\'a\'rket Operator of the Philippines, Inc,\r\n                        Beneficiary Account No.:   675006 xxxxxxxxxx··  ~· \'.)i       . .   .\r\n                        Account No.:               OJ.·9949:Z3857B6  j      .\r\n                        Swift Code::               SCBLPHMM\r\n                                                            \',\r\n                     , Banco De Oro\r\n                        Company Name:              SCB FAO IEMoP·\r\n                        Subscriber\'s Name.:·       Your Company Name  . ;,\r\n                        Subscriber\'s Account No.:   675006 xxxxxxxxxx.\r\n                       - For th eek payment, payee should  be In  the  name of .\"SCB FAQ IEMOP\"\r\n          •       . .               .  •        • ·-  .      •        =.   \', ,- .   -   .  ._\r\n                                  .        -         -  .          .  ·.-..  .\': ..\r\n        Send this form together With  ~roof of·payment at.aCcOUnts.fflanageme:ht@ie·rilQp.ph\r\n\r\n                                                                            \'1:.\r\n    Template: CTR.AOl.TMP.13, Ver.1.0, 31-0ct-2018\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n                                                                                                BIRFonn No.\r\n                   Republika ng Pilipinas     Certificate of Creditable Tax\r\n                   Kagawaran ng Pananalapi\r\n                   Kawanihan ng Rentas lnternas\r\n                                                                                                2  t3DlENCS)\r\n           1  For the Period\r\n                      • I 0.2  I O+   119                      • I oi   28  I 19\r\n               From                   l (MM/OD/YY)      To                     I (MMIDDIYY)\r\n           Part I                                          Payff  lnfonnatlon\r\n            2  Taxpayer\r\n                            010     007      246        000   I\r\n             ldenlillcetlon Number   ·I  I   I   I I  I   I   I I  I   I   I I  I   I\r\n                          I  INDEPENDENT ELECTRICITY MARKET OPERATOR PHILIPPINES                              I\r\n           3  Payee\'s Name\r\n                         •\r\n                                            <Last Name, First Name, Middle Name for Individuals) (Registered Name for Non-Individuals)\r\n           4  Registered Address                                                          I 4A  Zip Code .1\r\n                         .I  ADB AVENUE ORTIGAS CENTER SAN ANTON IO, PASIG CITY                       I   I   I   I\r\n                         .I                                                               I                  I\r\n           5  Foreign Address                                                              SA  Zip Code .1\r\n                                                                                                      I   I   I\r\n                                                           Payor  lnfonnation\r\n           6  Taxpayer\r\n                                                        0  0  0\r\n                           0  0  0  Is  ,1  ~  II  I 7, s . 1\r\n             Identification Number   ·I  I   I   I   I I  I   I   I\r\n           7  Payo( s Name\r\n                         .I  SORSOGON 1 ELECTRIC COOPERATIVE INC. ISORECO 1)                                 I\r\n                                            t1  as  Name  t-1rsl Name  M1aa1e Name roflncf1vi<luaTsITR\'eci1sTeren Name  or Non- nn1v1aua1sJ\r\n           8  Registered Address                                                          I BA  Zip Code .1\r\n                         • I GULANG, GULANG, IROSIN,  SORSOGON                                       4  7  0  7   I\r\n                                                                                                      I   I   I\r\n           PARTII                           Details of Monthly Income Payments and Tax Withheld for the Quarter\r\n               Income Payments Subject to                  AMOUNT OF INCOME PAYMENTS\r\n                                       ATC\r\n                Expanded Withholding Tax        1st Month of   2nd Month of   3rd Month of   Total   Tax Withheld\r\n                                                 the Quarter   the Quarter   the Quarter          For the Quarter\r\n           TOP 20,000 PRIVATE CORPORATION                                                      p        212,400.32\r\n\r\n\r\n\r\n\r\n                   ·-\r\n\r\n\r\n\r\n\r\n\r\n\r\n                                                                                                          --.::\r\n           Total\r\n            Money Paymenta Subject to Withholding\r\n             of Business Tax (Government & Prlv• .. I\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n                   -\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n           Total\r\n                                                                                                        212,400.32\r\n           .  w, -·· \"\"\'\"~ ... \"\'00\"\'~\" ... --m \'\"\"\' ,.; .... ~\" S, ··· ·\"\'\" ~ .... ,,,.,_, ..... ,~. \"-·\"\' =oct\r\n           pursuant to the prov,s,ons   e Nall   11  rnal Revenue Code, as amended, and the regulations issued under authority lhereof\r\n                        l11:c. ..  11 - ·   E  ADA\r\n                                                                                        FINANCE MANAGER\r\n            Payor/Payo(s  Authori~ed R~senlalive/Accredited Tax Agent   TIN or Signatory   Title/Position of Signatory\r\n                    (Signature Over Printed Name)\r\n            Tax Agent Accreditation No./Attomey\'s Roll No. (if applicable)   Date of Issuance   Date of Expiry\r\n          Confonne:                                                                                           ...\r\n\r\n\r\n            Payee/Payee\'s Authorized Representative/Accredited Tax Agent   TIN or Signatory   Title/Position of Signatory   Date Signed\r\n                        (Signature Over Printed Name)\r\n            Tax Agent Accreditation No./Attomey\'s Roll No. (if applicable)   Date of Issuance   Date of Expiry\r\n                                                                                                           ·-------\r\n\r\n\r\n          \' .\r\n\r\n\r\n\r\n\r\n\r\n                                                  IEfll D                      P\r\n\r\n                                                  I ND EPENDENT  E LECT n lCIT Y  MARKET  O P E RAT OR\r\n                                                  PH I L I PPI N  ES\r\n\r\n                                                PAYMENT FORM\r\n\r\n                       Market  Par t icipant Name:    SORSOGON  I  ELECTRIC  COOPERATIVE,  INC.\r\n                       Market Par t icipa nt ID No.:   1008\r\n                                                                      \'h\r\n                                                                                  Oth ers             l\r\n                                                                                ( Pr udential\r\n                       Date or\r\n                                I nvoice  No.   Energy   VAT on  Energy   Market Fees   Requirem ent,   TOTAL\r\n                       Payment\r\n                                                                               Default Interest,\r\n            . ~\r\n                                                                                   A  ... .  \\\r\n                                         I/\r\n                        22·Feb·19  INV0023845    86.65       10.39                                 97.04  /\r\n                                         , ,\r\n                        22· Feb·19 INV002i843   \"\'   335.66   64.47                               400.13  I/\r\n                        22·Feb·19  INV0023667  -l   6 042.79   1443.891   \'                      5,598.90\r\n                                                                                                        /\r\n                        22·Feb·19  INV0022657   I   20 177.72   2 504.77   --...,..             22,682.49\r\n                                         /                                                 ,.,\r\n                        22· Feb·19  INV0023060    9.16       17.91    .   \':Ii          \'·         27.07  /\r\n                                         \' ,                         r\r\n                        22·Feb·19  INV002 1233    3.07        0.35    . .\'°\'\'\"\'   -:       I,   .   3.42  /\r\n                        22·Feb-19  INV0021030    18.55        3.13                                 21.68  I\r\n                                        ,,  \'  ,/        ,,\r\n                        22·Feb·19  INV0021850    16.87        2.48       ~             .,          19.35  /\r\n                                         /                               ,£ ..\r\n                        22· Feb·19  INV0022450    8.51        0.96                                  9.47 I/\r\n                                                                    ~- ·\'·  ,:•\r\n                                         /                 3 752.50  .             j            35 657.74 v\r\n                        22·Feb·19  INV0022268   31 905.24\r\n                        22·Fab·19  INV002205<J   J   36.60    5.17   /{  -~      ·\'                41.77  l/\r\n                                         /                            I··\r\n                        22·Feb·19   INV002 1648   )   25.94   ,   2.49               /        .. •   28 .43\r\n                                         v                                                             {\r\n                        22·Feb-19  INV0021438    42.28        6.78    ::   .   !                   49.06\r\n                                                                      ·;  ,,1-\r\n                        22-Feb·19  INV0020641   ,I   27 491.01   4 178.60   .                   31  669.61  I/\r\n                                         v\r\n                        22·Feb· 1<J  INV0019837   )   29.54   5.06   ),\'  \'  ,,                    34.60  /\r\n                        22· Feb·19  INV0020433   } \'   41.68   4.22                                45 .90  I/\r\n                                         I/              ~\r\n                        22· Feb·19  INV0019632    7.81        1.11   \" !                            8.92  /\r\n                                         v\r\n                        22-Feb·19  INV002082i   J   60.78     7.93   ,,                            68.71  [/\r\n                        22· Feb-19  INV0020244·   ,I   3.20   0 .45   ·.,;-                         3 .65  /\r\n                                                         :,, ..          .\r\n                        22-Feb-19  INV0020042   )   32.71     3 .99   .  ,, .                      36.70  /\r\n                        22· Feb·l9 INV00192 16\'   •   3.93    0 .52                   .             4.45  /\r\n                                        , v                           ,.\r\n                        22·Feb·l 9  INV0019410   18.93        2.79                                 21.72  /\r\n                        22· Feb·19  INV0018657  ,,  v   535.31   \'   63.14                        598.45  /\r\n                                  .\r\n                        22· Feb-19  INV0019041   ,I  v   9  570.19   1 998.15   ,               11  568.34  /\r\n                        22·Feb·19  INV0018866\'  I   0.63      0.08                                      /\r\n                                                                            -                       0.71\r\n                               2 %  wltholdlnQ  tax                                             11  930.lOl\r\n                                                                     \"\r\n                       TOTAL AMOUNT PAI D\r\n                                             96 504.76    12  193.55     ....  -        -      106 768.21\r\n                                                                              j\r\n                     Certified  Co rr ect\r\n                     Paym ent  Guide:\r\n                               Standard Chartered  Bank\r\n                                  Account  Name:     Indepen dent Efectrfcfty Market Oper ator of  the  Phfffppfnes, Inc.\r\n                                  Beneficiary Account  No. :   675006 x xxxxxxxxx\r\n                                  Account No.:       0 1 -9 949 238578 6\r\n                                  Swift Code::       SCBLPHMM\r\n                               Banco  De Oro\r\n                                  Company Name:      SCB FAO IEMOP\r\n                                  Subscriber\'s Name.:   Your Co mpany Nam e\r\n                                  Subscriber\'s Account No. :   IJ7SOOIJ xxxxxxxxxx\r\n                                •  For check payment, payee should be In the name or  \"SCI  rAo U!MOP\"\r\n                     Send this for m t oqether with proof of payment at accou nts.man a  ementQ)lem.QAAh\r\n\r\n\r\n    Template: CTR.AOl .TMP.13, Ver.1.0, 3l ·Oct·2018\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n                                                                                                BIR Form No.\r\n                                              Certificate of Creditable Tax\r\n                   Republika ng Pilipinas\r\n                   Kagawaran ng Pananalapi\r\n                   Kawanihan ng Rentas lnternas\r\n            •\r\n           1  For lhe Period                                         I  2s  I 19\r\n                      .. I o~  I Ol                                            I (MMIOD/YY)\r\n              From                    l (MMIODIYY)      To\r\n           Part I\r\n           2  Taxpayer                                 000\r\n                                             246\r\n             Identification Number  ·I OfO.   11   007   I I I   f  I  I   I\r\n                                     I\r\n                         ..\r\n           3  Payee\'s Narr.e   I  INDEPENDENT ELECTRICITY MARKET OPERATOR PHILIPPINES                        I\r\n                                            (Last Name, First Name, Middle Name for Individuals) (Reaistered Name for No~lndividuals)\r\n           4  Registered Address   .,I ADB AVENUE ORTIGAS CENTER SAN ANTONIO, PASIG CITY   I 4A  Zip Code .1   I  I\r\n                                                                                                      I   I\r\n                         .I\r\n           5  Foreign Address                                                            ] SA  Zip Code ., 1   I  I\r\n                                                                                                      I   I\r\n                                                           Payor  lnformaUon\r\n           6  Taxpayer     o,o,o  I ls.1 ~  II  I 1.  s, 1  I Io, o,o  I                                        -\r\n             Identification Number  ·I\r\n           7  Payo(s Name   .. I  SORSOGON 1 ELECTRIC COOPERATIVE INC. (SORECO 1)                            I\r\n                                            ,, asr Name. t-1rst Name, M1oa1e Name 1or 1na1v1aua s 1 1t-<ec 1s erea Name 1or Non-:1nd1vidualsJ\r\n                         .I  GULANG, GULANG, !ROSIN, SORSOGON                                       ~~-~~-\r\n           8  Registered Address                                                          l aA  Zip Code .1   4  7  0  7   I\r\n                                                                                                           I\r\n                                                                                                         I\r\n                                                                                                      I\r\n           PARTII                            Details of Monthly Income Payments and Tax Withheld for the Quarter\r\n               Income Payments Subject to                  AMOUNT OF INCOME PAYMENTS\r\n                                       ATC\r\n                Expanded Withholding Tax        1st Month of   2nd Month of   3rd Month of   Total   Tax Withheld\r\n                                                 the Quarter   the Quarter   the Quarter           For the Quarter\r\n                                                                                               p          1,930.10\r\n            TOP 20,000 PRIVATE CORPORATION\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n            Total\r\n             Money Payments Subject to Withholding\r\n             of Buainesa Tax (Government & Priv1te)\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n                    . ,.\r\n\r\n\r\n\r\n\r\n                                                                                                          1,930.10\r\n            Total\r\n                                 pe~\r\n               We declare, under te1:e , that this certificate has been made in good ra,th, venfied by me, and to the best or my knowledge and belief, 1s true and correct,\r\n                              ·es\r\n                                or\r\n                                    ry\r\n            pursuant to the prov1s1on   r the Nat,  a   temal Revenue Code, as amended, and the regulations issued under authority thereof\r\n                         IJ1\r\n                         JliANUEL   ADA                                                  FINANCE MANAGER\r\n             Payor/Payofs  Authori  ed Rep9\"\'~  tative/Accredited Tax Agent   TIN of Signatory   Title/Position of Signalory\r\n                     (Signature OvepPrinted Name)\r\n           1-- --\"-----------:....... ___ .:___.:..:. _ _        Date of Issuance            Date of Expiry\r\n             Tax Agent Accreditation No./Attomey\'s Roll No. (if applicable)  _;__ __________________ ____ _ _ _ ______ _;__,..:.._ _ ____ _ __ _\r\n            Conforme:\r\n             Payee/Payee\'s Authorized Representative/Accredited Tax Agent   TIN of Signatory   Title/Position of Signatory   Date Signed\r\n                         (Signature Over Printed Name)\r\n             Tax Agent Accreditation No./Attomey\'s Roll No. (ii applicable)   Date of Issuance   Date or Expiry\r\n',1,1,8,NULL,'',NULL),('2022-09-2','BB','BB','2022-09-27','2022-09-28','BB','B','B','D:\\Documents\\Rates.pdf','B','\r\n                                   MONTHLY FIT-All RECEIVABLE, COLLECTION & REMITTANCE REPORT\r\n\r\n                      Billing/Collection Entity:\r\n                                                                                 I Date Prepared:\r\n                               SORSOGON I ELECTRIC COOPERATIVE, INC. (SORECO I)          07/  b/!019\r\n                      Address:\r\n                                                    Gulang-gulang, I rosin, Sorsogon\r\n                      Actual Energy Sold with FIT-All Charge, kWh:              ~ FIT-All Rate, (Php/kWh):\r\n                                                5,373,629                                 0.2226\r\n\r\n                                                   FIT-All RECEIVABLE MONITORING\r\n                                                                                l     Consumption Period   _]\r\n                                                                                l    From   _L   To   J\r\n                                                                                l   04/26/2019   05/25/2019   1\r\n                               FIT-All Receivable·beginning, Php                   1,544,297.08\r\n                               Add: FIT-All Receivable, for the Consumption Period   1,196,169.76\r\n                               Total FIT-All Receivable, Php                      2,740,466.84\r\n                               Less: FIT -All Collection, for Collection Period   1,113,344.96\r\n                               FIT-All Receivable-ending, Php                     1,627,121.88\r\n\r\n                                                   FIT-All COLLECTION MONITORING\r\n                                                                                I     Collection Period   I\r\n                                                                                     From        To   I\r\n                                                                                I   05/ 01/2019   I  05/31/ 2019  I\r\n\r\n                               Unremitted FIT·AII Collection- beginning, Php             .\r\n                               Add: Total FIT-All Collection, for the Collection Period   1,113,344.96\r\n                               Total FIT All Collection for Remittance Excluding Interest/Penalty   1,113,344.96\r\n\r\n                                                  FIT-All  REMITIANCE MONITORING\r\n                                                                                l      Remittance Date   _]\r\n                                                                                l       06/14/ 2019   1\r\n                               Total FIT All Collection for Remittance Excluding Interest/Penalty   1,113,344.96\r\n                               Add: Total Interest/Penalty Due•                          -\r\n                               Total FIT-All Collection Due for Remittance        1,113,344.96\r\n                               Total Actual FIT-All  Remittance on Remittance Date   1,113,344.96\r\n                                        Applied to FIT -All Collection            1,113,344.96\r\n                                        Applied to Interest/Penalty                      -\r\n                              Unremitted FIT-All Collection- ending, Php                 -\r\n                               *Computation ta be provided by TransCo\r\n\r\n                      Remarks (if any):\r\n                                                  /\r\n                                        Prlnted.Hame & SILnature          Position/Title        Date Sl  ned\r\n                                          MA~ k:ADA\r\n                      Prepared by                                        Finance Mana&er\r\n                                                   /\r\n                                       r,;.Jd~. 1 ~ ~1\r\n                      Approved by                                        General Manaaer\r\n\r\n\r\n                                                        TronsCo Acknowlftlgment\r\n                                        Printed Name & Signature          Position{Title        OateSi  ned\r\n                      Received by\r\n\r\n\r\n\r\n                      Reviewed by\r\n\r\n\r\n                                                                                              FM·f.FA-()2 Rtv 0\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n                MONTHLY PRELIMINARY ENERGY SALES REPORT (kWh}\r\n\r\n\r\n\r\n\r\n            Billing Ent ity:                                                       Date Prepared\r\n                      SORSOGON I ELECTRIC COOPERATIVE, INC. (SORECO I)                       7/  ,f2019\r\n            Address:\r\n                                               Gulang-gulang, lrosin, Sorsogon\r\n\r\n\r\n            Actual Energy Purchased for Customers with FIT-All Charge, kWh:        Consumption Period:\r\n                                                                                      From             To\r\n                                          6,640,125\r\n                                                                                    4/26/2019      5/25/2019\r\n            Actual Energy Sold w ith FIT -All Charge, kW t FIT-All Rate, Php/kWh FIT-All Billed, Php:\r\n\r\n                           5,373,629                       0.2226                     1,196,169.76\r\n\r\n            Remarks (if any):\r\n\r\n                                Printed Name & ~natu re                 Position/Title            Date Signed\r\n                                   MANU ~JADA\r\n\r\n            Prepared by                                                Finance Manager\r\n                                               /\r\n                                t~r El~~GARCIA\r\n\r\n            Approved by                                                General Manager\r\n                                          J      11ttlt1\r\n\r\n\r\n\r\n                                              TransCo Acknowledgment\r\n                                Printed Name & Signature                Position/ Tit le          Date Signed\r\n\r\n\r\n            Received by\r\n\r\n\r\n\r\n\r\n            Reviewed by\r\n\r\n\r\n\r\n\r\n\r\n                                                                                       FM-T-FA-01 Rev 0\r\n\r\n\r\n\r\n                                              SORSOGON I ELECTRIC COOPERATIVE, INC.\r\n                                                   Gulang-gulang, lrosin, Sorsogon\r\n\r\n                 July 17, 2019\r\n                 FOR             Finance Services Department\r\n                 ATTN.           Billing and Treasury Division Supervisor\r\n                 SUBJECT         RATES AND OTHER ADJUSTMENT CHARGE FOR THE BILLING JUNE 26, 2019 TO\r\n                                 JULY 25, 2019\r\n                                 YOU ARE HEREBY DIRECTED TO BILL OUR CONSUMERS FOR THE BILLING\r\n                                  PERIOD JUNE 26, 2019 TO JULY 25, 2019 TO WIT:\r\n                                  Rate schedules per ERC Case No. 2009-123 RC, except for  GENERATION\r\n                                  CHARGES,  TRANSMISSION CHARGES, LINE LOSS CHARGE, LIFELINE SUBSIDY\r\n                                  and SENIOR CITIZEN DISCOUNT which will be charged as follows:\r\n                                  GENERATION CHARGES:\r\n                                    a. Gen. Rate                                7.1982\r\n                                    b. VAT                                      0.6030\r\n                                    c.  GRAM Rate                               0.1908\r\n                                    d. GRAM VAT                                 0.0166\r\n                                    e.  ICERA Rate                              0.0669\r\n                                    f.  ICERA VAT                               0.0061\r\n                               2   TRANSMISSION CHARGES:\r\n                                    a. Demand Charges:        Industrial LV    26.7934\r\n                                                              Industrial HV    27.9903\r\n                                    b. Transmission System Charges:\r\n                                                               Residential      1.0175\r\n                                                               Commercial       0.5268\r\n                                                               Public Bldg      0.1103\r\n                                                              Street Lights     1.0473\r\n                                    c. VAT                                      0.0951\r\n                               3   LINE LOSS CHARGE                             1.3020\r\n                                    a. VAT                                      0.1124\r\n                               4   LIFELINE SUBSIDY                             0.1013\r\n                               5   PPA\r\n                               6   LOAN CONDONATION\r\n                                                               Residential\r\n                                                               Commercial\r\n                                                               Public Bldg\r\n                                                              Street Lights\r\n                                                           Industrial LV & HV\r\n                                  Reinvestment Fund for Sustainable Capital\r\n                               7                                                0.4004\r\n                                  Expenditures ( RFSC )\r\n                               8   Universal Charges\r\n                                                        Environmental Charge    0.0025\r\n                                                      Missionary Electrification   0.1561\r\n                                                         NPC Stranded Debts     0.0428\r\n                                                    NPC Standed Contract Cost   0.0543\r\n                                                         FIT· All (Renewable)   0.2226\r\n                               9   Senior Citizen Subsidy Rate                  0.0012\r\n                               10   (Over)/Under-Recoveries\r\n                                  Generation ( OGA ) I kWhr\r\n                                  Transmission (OTCA)\r\n                                          \\\r\n                                    a. Demand Charges:        Industrial LV\r\n                                                              Industrial HV\r\n                                    b. Transmission System Charges:  I kWhr\r\n                                                                Residential\r\n                                                               Commercial\r\n                                                               Public Bldg\r\n                                                              Street Lights\r\n                                                              Industrial LV\r\n                                  System Loss (OSLA) I kWhr\r\n                                  Lifeline Subsidy (OLRA) I kWhr\r\n                                  Inter-Class Cross Sub (ICCS) I kWhr\r\n                                  Senior Citizen Disc and Sub (SrDS) I kWhr\r\n\r\n                              For implementation.\r\n\r\n\r\n\r\n                  cc: All DEPARTMENTS\r\n\r\n\r\n\r\n\r\n\r\n                                               SORSOGON I ELECTRIC COOPERATIVE, INC.\r\n                                                   Gulang-gulang, lrosin, Sorsogon\r\n                T  0      All Employees\r\n                T H R U   Dep\'t Heads &  District Offices Chief\r\n                F R 0 M   The General Manager\r\n                SUBJECT  :   REVISED RATES FOR July 2019 BILLING\r\n                As authorized by ERC, under  RSEC-WR following will be SORECO 1\'s revised rates schedule for the billing Month of July 2019\r\n\r\n                                                                   LOWER  VOLTAGE\r\n                 Particular                      Residential                                       H V Industrial\r\n                                                               Com       lnd      Pub       Stl\r\n                Generation Charges:\r\n                 Generation Sys Char<Je                7.1982    7.1982   7.1982   7.1982    7.1982      7.1982\r\n                                         PhP/kWh\r\n                 Value Added Tax                       0.6030    0.6030   0.6030   0.6030    0.6030      0.6030\r\n                 GRAM Sys Charge                       0.1908    0.1908   0.1908   0.1908    0.1908      0.1908\r\n                                         PhP/kWh\r\n                 GRAM Value Added Tax                  0.0166    0.0166   0.0166   0.0166    0.0166      0.0166\r\n                 I CERA Sys Charge                     0.0669    0.0669   0.0669   0.0669    0.0669      0.0669\r\n                                         PhP/kWh\r\n                 I CERA Value Added Tax                0.0061    0.0061   0.0061   0.0061    0.0061      0.0061\r\n                Transmission Charges\r\n                 Demand Charge           PhP/kW           -        -     26.7934      -        -        27.9903\r\n                 Trans. System Char<Je   PhP/kWh        1.0175   0.5268     -      0.1103    1.0473        -\r\n                 Value Added Tax                       0.0951    0.0951   0.0951   0.0951    0.0951      0.0951\r\n                Line Loss Charge/System Loss            1.3020   1.3020   1.3020    1.3020   1.3020      1.3020\r\n                                         PhP/kWh\r\n                 Value Added Tax                        0.1124   0.1124   0.1124    0.1124   0.1124      0.1124\r\n                        GTS Rates        PhP/kWh      10.3282   9.8375   9.3107    9.4210   10.3580     9.3107\r\n                 Distribution Charges:\r\n                 Demand Charge            PhP/kW          -        -                  -        -        267.9000\r\n                 Dis!. System Char<Je    PhP/kWh        0.8449   0.9259   0.9259    0.9259   0.9259\r\n                 Supply Charges\r\n                 Retail Customer Charge   PhP/CusVMo.           40.1500   40.1500   40.1500   40.1500   40.1500\r\n                 Supply System Charge    PhP/kWh        0.7732     -        -                              -\r\n                 Metering Charges\r\n                 Retail Charge/Customer   PhP/Mtr/Mo.   5.0000   28.7200   28.7200   28.7200   28.7200   28.7200\r\n                 Metering System Char<Je   PhP/kWh      0.4569              -                  -           -\r\n                 Inter-Class Cross Subsidy   PhP/kWh               -                           -\r\n                 Reinvestment Fund for Sustainable Capital   PhP/kWh   0.4004   0.4004   0.4004   0.4004   0.4004   0.4004\r\n                 Expenditures ( RFSC )\r\n                      DSM  - RFSC Rates   PhP/kWh      2.4754   1.3263    1.3263   1.3263   1.3263      0.4004\r\n                 Universal Charges:\r\n                 Environmental Char<Je   PhP/kWh        0.0025   0.0025   0.0025    0.0025   0.0025      0.0025\r\n                 Missionary Electrification   PhP/kWh   0.1561   0.1561   0.1561    0.1561   0.1561      0.1561\r\n                 NPC Stranded Debts      PhP/kWh        0.0428   0.0428   0.0428    0.0428   0.0428      0.0428\r\n                 NPC Stranded Contract Costs   PhP/kWh   0.0543   0.0543   0.0543   0.0543   0.0543      0.0543\r\n                 DUS Stranded Contract Costs   PhP/kWh             -         -                             -\r\n                 Equalization of Taxes & Royalties   PhP/kWh       -         -        -                    -\r\n                 Cross Subsidy Removal   PhP/kWh                             -        -                    -\r\n                 FIT -All (Renewable)    PhP/kWh        0.2226   0.2226   0.2226    0.2226   0.2226      0.2226\r\n                 Other Charges/Adjustment:\r\n                 PAR (for res\'l cust. Only)   PhP/kWh     -                  -                             -\r\n                 Lifeline Rate (discount) Subsidy   PhP/kWh   0.1013   0.1013   0.1013   0.1013   0.1013   0.1013\r\n                 Power Puchased Adj      PhP/kWh                                      -        -\r\n                 Loan Condonation         PhP/kWh         -        -                           -\r\n                 Senior Citizen Rate (Discount) Subsidy   PhP/kWh   0.0012   0.0012   0.0012   0.0012   0.0012   0.0012\r\n                 (Over)/Under-Recoveries\r\n                 Generation ( OGA )       PhP/kWh         -                  -        -\r\n                 Transmission (OTCA)      PhP/kW                   -                  -         -\r\n                 Transmission (OTCA)      PhP/kWh         -        -                  -         -\r\n                 System Loss (OSLA)       PhP/kWh         -        -         -\r\n                 Lifeline Subsidy (OLRA)   PhP/kWh                           -                              -\r\n                 Inter-Class Cross Sub (ICCS)   PhP/kWh                      -        -                     -\r\n                 Senior Citizen Disc/Subs   PhP/kWh                          -        -                     -\r\n                        EFFECTIVE RATE                 13.6648   12.0250   11.4982   11.6085   12.5455   10.5723\r\n                  Lifeline rate Discount to be based on Residential Rate in a graduated scale:  1-15 Kwh = 40%\r\n                 Senior Citizen Discount : 100 Kwhr and below Senior Citizen Residential = 5% . Senior Citizen Institution= 50%\r\n                 OLRA and ICCS adjustments is for Subsidizing End User Only\r\n                 GRAM and ICERA Rates is for Affected End User Only\r\n                  For your information and correct dissemination\r\n                        Prepared by:\r\n\r\n\r\n\r\n                                           ET&RM Section Chief                               General Manager\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n                                        SORSOGON I ELECTRIC COOPERATIVE, INC.\r\n                                              Gulang-gulang, lrosin, Sorsogon\r\n\r\n                                           COMPUTATION OF GENERATION RATE\r\n                                              For the Billing Month of July 2019\r\n\r\n\r\n\r\n                                          GR =  AGR + OGA\r\n                    where\r\n                           GR =  Generation Rate expressed in Peso/kWh\r\n\r\n                          AGR =  Adjusted Generation Rate\r\n\r\n                                                        TGC\r\n                                       AGR = --------\r\n                                                      TPG GR\r\n\r\n                          OGA =  Other Generation Adjustment\r\n\r\n                                                              [(GC 1  + GC 11  + ,, + GCn) - ( 50%(PPD)-(PCR)]\r\n                     Adjusted Generation Rate =\r\n                                                                              TPG GR\r\n\r\n\r\n\r\n                 [(  13,498,040.88 + +  36,065,101.84 +  2,895.44 +  48.01  +  10.88 +  4.42 +  241 ,198.18)- ((50%. ( 2,253,136.65 +0))- 0.00)]\r\n                                               [(  6,762,930 + 0 + 0 + 0 + 0 + 0) )]\r\n\r\n\r\n                                                                    \'\r\n                                                 [( 49,807 ,299.65) - ( 1 126,568.33 + 0.00)]\r\n                                                               6,762,930\r\n\r\n                                                              48,680,731 .33\r\n                                                               6,762,930\r\n\r\n\r\n\r\n                                       AGR =  ----------\r\n                                                 P\r\n                                                          7.1982\r\n                                       OGA =              0.0000\r\n                                              ----------\r\n                        Generation Rate                       7.1982  + 0.0000 =               7.1982\r\n\r\n\r\n\r\n      GENERATION VAT COMPUTATION\r\n\r\n        VAT ( GMCP + WESM +PSALM )    (  1,616,415.14 +  +  2,550,766.19 + - 106.90 +  5.62 +  1.38 +  0.51 +  46,360.60)- ((50%. ( 270,376.40))\r\n                 kWhr                                [(  6,762,930 + 0 + 0 + 0 + 0 + 0 ) )]\r\n\r\n\r\n\r\n                                                     [(  4,213,442.54 ) - (  135,188.20 )]\r\n                                                                6,762,930\r\n                                                     4,078,254.34\r\n                                                                               =                0.6030\r\n                                                      6,762,930\r\n\r\n\r\n\r\n              Total Generation Charges billed by GMCP & WESM with VAT                           7.801 2\r\n\r\n\r\n\r\n      TRANSMISSION VAT COMPUTATION\r\n                          VAT(NGCP)                      643,336.24\r\n                               kWhr                      6,762,930             =                0.0951\r\n\r\n\r\n\r\n\r\n\r\n              5~                         SORSOGON I ELECTRIC COOPERATIVE, INC.\r\n                                               Gulang-gulang, lrosin, Sorsogon\r\n               SO RI\"CO  1\r\n\r\n                                         COMPUTATION OF GRAM -ICERA DAA RATES\r\n                                               For the Billing Month of July 2019\r\n\r\n\r\n\r\n                                                                 DAA\r\n                                       Monthly DAA =  ---------\r\n                                                          Recovery Months\r\n\r\n\r\n             GRAM and ICERA GENERATION Rate COMPUTATION\r\n\r\n\r\n                                                              779,688.90\r\n                                              GRAM=  ---------\r\n                                                             4,085,875.00\r\n\r\n\r\n                                              GRAM=             0.1908\r\n\r\n\r\n                                                              273,428.62\r\n                                              ICERA =  ---------\r\n                                                             4,085,875.00\r\n\r\n\r\n                                              ICERA=            0.0669\r\n\r\n\r\n\r\n\r\n             GRAM and ICERA VAT COMPUTATION\r\n\r\n                                                              67,930.76\r\n                                          GRAM VAT=  --------\r\n                                                             4,085,875.00\r\n\r\n                                          GRAM VAT=             0.0166\r\n\r\n\r\n                                                               24,742.44\r\n                                          ICERA VAT=  ___ __.;.. ____ _\r\n                                                             4,085,875.00\r\n\r\n\r\n                                          ICERA VAT=            0.0061\r\n\r\n\r\n\r\n             sm                     SORSOGON I ELECTRIC COOPERATIVE, INC.\r\n\r\n                                           Gulang-gulang, lrosin, Sorsogon\r\n              SOI~CO 1\r\n                            COMPUTATION OF SYSTEM LOSS RATE I LINE LOSS CHARGE\r\n                                          For t he Billing Month of July 2019\r\n\r\n\r\n\r\n                                   SLR = ( TGR + ATR) U + OSLA\r\n\r\n             Where            SLR  =  System Loss Rate expressed in Peso/kWh\r\n                              TGR  =  Total Generation Rate\r\n                              ATR  =  Average Transmission Rate expressed in Peso/kWh\r\n                                 u  =  Gross Up Factor = (% SL I ( 1 - Actual % System Loss)\r\n                             OSLA  =  Other System Loss Cost Adjustment\r\n\r\n               TGR        7.1982\r\n\r\n\r\n\r\n                                        ( Transmission Cost Net of VAT + ( Power Factor Adjustment * 50% ))\r\n                ATR         =\r\n                                                        Billing Determinant Energy ( BDE )\r\n\r\n                                               [ (  6,008,593.87 + (  0.00 * 50% ) ]\r\n                                                         6,762,930\r\n                                                        6,008,593.87\r\n                                                         6,762,930\r\n\r\n                                           0.8885\r\n                     ATR            =\r\n                 u          =           ( SL or Cap+ Coop Used  ) I ( 1 - ( Actual SL + Company Use ))\r\n\r\n\r\n                                          (  0.1300 +  0.0022 )\r\n                                        ( 1- (  0.1768 +  0.0022 ))\r\n\r\n                                           0.1322\r\n                                           0.8210\r\n\r\n                            u       =      0.1610\r\n\r\n               OSLA         =\r\n\r\n\r\n               SLR          =          ( TGR + ATR ) * U + OSLA\r\n\r\n\r\n                                    =  ((  7.1982 + 0.8885 ) *  0.1610 ) + 0\r\n\r\n                                       ( 8.0867 *  0.1610 ) + 0\r\n\r\n                          SLR       =        1.3020\r\n\r\n\r\n\r\n                        SLR VAT  =  (Generation VAT+ Transmission VAT) * GROSS UP FACTOR\r\n\r\n                                        ((  0.6030 +  0.0951  ) *  0.1610 )\r\n\r\n                                           0.1124\r\n\r\n                 TOTAL SLR          =      1.4144\r\n\r\n\r\n\r\n\r\n\r\n\r\n                                                                              SORSOGON I ELECTRIC COOPERATIVE, INC.\r\n                                                                                   Gulang-gulang, lrosin, Sorsogon\r\n                                                                                COMPUTATION OF TRANSMISSION RATE\r\n                                                                                   For the Billing Month of July 2019\r\n                             NAME O F  DISTRIBUTION UTILITY:            S O RECO I\r\n                                                                                                       SLR =   ( TGR + ATR ) * U + OSLA\r\n                             TRANSMISSION RATE ADJUSTMENT:  July - 2019                           where  TGR =   Total Generation Rate\r\n                                                                                                       A  TR =  ( Transmission Cost Net of VAT + ( 50 % of PFD )) I kWhr Purchased ( BDE\r\n                                                     - June- 2019                                         U =  ( System  Loss % + Coop Used % ) I ( 1 - %  System Loss )\r\n                             TOTAL AMOUNT DUE                           6,008,593.87\r\n                             kW/kWh Purchased ( LBO )                       11,747                     TGR=        7.1982                   SL % =       22.27%\r\n                             Average Transmission Rate (ATR) kW             473.15                     ATR=        0.8885               SL CAP % =       13.00%\r\n                             BILLING DETERMINANT DEMAND (BOD) kW            12,699                       U=        0.1610            Coop Used % =        0.17%\r\n                             Power Factor Ad\"ustment              PhP                                                                    SLRVAT =        0.1124\r\n                             Less : 50% of  Power Factor Adjustment                                    SLR=        1.3020\r\n                             TRANSMISSION COST                    PhP  6,008,593.87                 VAT SLR=       0.1124\r\n                                                                                                             -----\r\n                                                                                                  TOTALSLR =       1.4144\r\n                                                                                                             -----\r\n                                                                                                      C  US  T  OMER         C  L  A  S  S  E  S\r\n                                                                                                                                                     HIGHER\r\n                                                                                   RES IDENTIA L                 LOW ER VOLTAGE\r\n                                                                         TOTA L                                                                     VOLT AGE\r\n                                                                                     Residential   Commercial   Industrial   Public  B ldgs  St r eet Lights   Industrial\r\n                             cp·                                           13,812.65     12,186.77    1,273.21      57.16        125.27     145.18        25.06\r\n                             CP RATIO                                        1.0000      0.882300     0.092200    0.004100     0.009100    0.010500     0.001800\r\n                             TRANSMISSION COST ALLOCATION                6,008,593.87   5,301 382.37   553,992.35   24,635.23   54,678.20   63,090.24   10,815.47\r\n                             OTCA                                              -             -            -           -            -           -            -\r\n                             TRANSMISSION COST  + OTCA                   6,008,593.87   5,301 ,382.37   553,992.35   24,635.23   54,678.20   63,090.24   10,815.47\r\n\r\n                                    June - 2019 Kilowatthour Purchased     7,254,764     5,210,042   1,051 ,627    183,908      495,689     60,241      253,257\r\n                                       June - 2019 Kilowatt Sales          1,305.85                                 919.45                               386.40\r\n                                                                 (PhP/kWh)                 1.0175      0.5268         -         0.1103      1.0473          -\r\n                               July- 2019 Transmission Charge\r\n                                                                 (PhP/kW)                    -            -        26.7934         -           -        27.9903\r\n                                                                (PhP/kWh)                  1.1670      0.6048         -         0.1265      1.1981         -\r\n                               June- 2019 Transmission Charge\r\n                                                                 (PhP/kW)                    -            -        20.8448         -           -        61.7315\r\n                                                                 (PhP/kWh)                {0.1495)     (0.0780)                 {0.0162)    {0.1508)\r\n                                      Variance\r\n                                                                 (PhP/kWJ                                           5.9486                              {33.7412)\r\n\r\n\r\n                             kWh SALES less CU         June - 2019         5,626,609     4,040,775     815,615     142,634      384444      46,721      196,420\r\n                             SALES RATIO                                     1.0000        0.7182      0.1450       0.0253      0.0683      0.0083       0.0349\r\n                             kW SALES ( Industrial )   June - 2019         1,305.85          -            -         919.45         -           -         386.40\r\n                             kWhr PURCHASED            June - 2019         7,254,764     5,210,042   1,051,627     183,908      495,689     60,241      253,257\r\n\r\n\r\n\r\n\r\n\r\n\r\n             5~                                                            SORSOGON I ELECTRIC COOPERATIVE,INC.\r\n                                                                                Gulang-gulang, lrosin, Sorsogon\r\n             S O RFCO 1\r\n\r\n\r\n                                                                 SCHEDULE OF ACTUAL SYSTEM LOSS AND COOP CONSUMPTION\r\n                                                                     COMPUTATION FOR THE BILLING MONTH OF JULY 2019\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n            PARTICULARS          Jul 18     Aug 18     Sep 18     Oct 18     Nov 18      Dec 18     Jan 19     Feb 19     Mar19      Apr19      May 19     Jun 19      TOTAL\r\n\r\n\r\n            KWH Purchased         5,609,674   5,836,125   5,555,852   5,800,413   5,608,412   5,476,043   4,959,425   4,886,216   4,949,866   6,208,043   6,735,544   7,254,764   68,880,377\r\n            PVD in KWH\r\n            KWH Purchased-Net     5,609,674   5,836,125   5,555,852   5,800,413   5,608,412   5,476,043   4,959,425   4,886,216   4,949,866   6,208,043   6,735,544   7,254,764   68,880,377\r\n            KWH Sold              4,446,103   4,682,711   4,634,123   4,631,448   4,668,269   5, 142,108   3,940,497   4,085,116   4,080,974   5,146,921   5,466,200   5,626,609   56,551,079\r\n            Coop Used (kwh)         13,670     14,765     10,965     11,429     13,991     11 ,343     10,196     16,671     11 ,621    10,178     13,374     12,617       150,820\r\n            KWH Recovered               0          0       1,000         0          0           0          0          0          0          0          0          0         1,000\r\n            Total KWH Sold        4,459,773   4,697,476   4,646,088   4,642,877   4,682,260   5,153,451   3,950,693   4,101,787   4,092,595   5,157,099   5,479,574   5,639,226   56,702,899\r\n            System loss in KWH    1 149,901   1,138,649   909,764   1,157,536   926,152   322,592   1,008,732    784,429    857,271   1,050,943   1,255,970   1,615,538   12,177,478\r\n                                   \'\r\n            Systems Loss %         20.50%      19.51%     16.37%     19.96%     16.51%      5.89%     20.34%     16.05%     17.32%     16.93%     18.65%     22.27%        17.68%\r\n            Coop Used %             0.24%      0.25%       0.20%      0.20%      0.25%      0.21 %     0.21 %     0.34%      0.23%      0.16%      0.20%      0.17%         0.22%\r\n            Res Kwhr Sold         3,162,398   3,384,053   3,314,020   3,203,372   3,222,720   3,599,346   2,786,645   2,791,464   2,744,370   3,676,967   3,914,762   4,040,775   39,840,892\r\n',1,1,9,NULL,NULL,NULL);
/*!40000 ALTER TABLE `resolution_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resolutions_history`
--

DROP TABLE IF EXISTS `resolutions_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resolutions_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDateTime` datetime NOT NULL,
  `RefKey` text NOT NULL,
  `Operation` text NOT NULL,
  `SystemUserName` text NOT NULL,
  `Remarks` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolutions_history`
--

LOCK TABLES `resolutions_history` WRITE;
/*!40000 ALTER TABLE `resolutions_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `resolutions_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_account` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datemodified` datetime NOT NULL,
  `status` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVE',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (-2,'Admin b','b','b','Guest','2022-09-22 15:51:52','2022-09-22 16:09:40','ACTIVE'),(-1,'Admin','a','a','ADMIN','2022-09-22 15:51:00','2022-09-22 15:51:00','ACTIVE'),(0,'Juan Dela Cruz','ian','ian','ADMIN','2022-09-22 15:35:08','2022-09-23 11:05:35','ACTIVE');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `newdocument` tinyint(1) NOT NULL DEFAULT '0',
  `systemconfig` tinyint(1) NOT NULL DEFAULT '0',
  `dbasebackup` tinyint(1) NOT NULL DEFAULT '0',
  `dbaserestore` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_UNIQUE` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (2,'ADMIN','Super Admin',1,1,1,1),(3,'Guest','seach ontly',0,0,0,0);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sb_digitalization'
--

--
-- Dumping routines for database 'sb_digitalization'
--

--
-- Current Database: `hcpms`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hcpms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hcpms`;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (2,'admin','admin','Administrator','','');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birthing`
--

DROP TABLE IF EXISTS `birthing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `birthing` (
  `birth_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `chief_complaint` varchar(100) NOT NULL,
  `history` varchar(100) NOT NULL,
  `lmp` varchar(15) NOT NULL,
  `edc` varchar(15) NOT NULL,
  `aog` varchar(15) NOT NULL,
  `G` varchar(15) NOT NULL,
  `P` varchar(15) NOT NULL,
  `1` varchar(15) NOT NULL,
  `2` varchar(15) NOT NULL,
  `3` varchar(15) NOT NULL,
  `4` varchar(15) NOT NULL,
  `bp1` varchar(15) NOT NULL,
  `bp2` varchar(15) NOT NULL,
  `pr` varchar(15) NOT NULL,
  `rr` varchar(15) NOT NULL,
  `T` varchar(15) NOT NULL,
  `head_neck` varchar(15) NOT NULL,
  `chest` varchar(15) NOT NULL,
  `heart` varchar(15) NOT NULL,
  `abdomen` varchar(15) NOT NULL,
  `fhb` varchar(15) NOT NULL,
  `loc` varchar(15) NOT NULL,
  `extremities` varchar(15) NOT NULL,
  `vulva` varchar(15) NOT NULL,
  `vagina` varchar(15) NOT NULL,
  `cervix` varchar(15) NOT NULL,
  `uterus` varchar(15) NOT NULL,
  `bow` varchar(15) NOT NULL,
  `presentation` varchar(15) NOT NULL,
  `vaginal_discharge` varchar(15) NOT NULL,
  `staff` varchar(30) NOT NULL,
  `itr_no` varchar(4) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  PRIMARY KEY (`birth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birthing`
--

LOCK TABLES `birthing` WRITE;
/*!40000 ALTER TABLE `birthing` DISABLE KEYS */;
/*!40000 ALTER TABLE `birthing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaints` (
  `com_id` int(50) NOT NULL AUTO_INCREMENT,
  `date` varchar(20) NOT NULL,
  `complaints` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dental`
--

DROP TABLE IF EXISTS `dental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dental` (
  `dental_no` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `dentist` varchar(30) NOT NULL,
  `tooth` int(3) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  PRIMARY KEY (`dental_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dental`
--

LOCK TABLES `dental` WRITE;
/*!40000 ALTER TABLE `dental` DISABLE KEYS */;
/*!40000 ALTER TABLE `dental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fecalisys`
--

DROP TABLE IF EXISTS `fecalisys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fecalisys` (
  `fecalisys_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_of_request` date NOT NULL,
  `requested_by` varchar(30) NOT NULL,
  `color` varchar(15) NOT NULL,
  `consistency` varchar(15) NOT NULL,
  `pus_cells` varchar(15) NOT NULL,
  `RBC` varchar(15) NOT NULL,
  `fat_globules` varchar(15) NOT NULL,
  `occult_blood` varchar(15) NOT NULL,
  `others_chem` varchar(15) NOT NULL,
  `ova` varchar(15) NOT NULL,
  `larva` varchar(15) NOT NULL,
  `adult_forms` varchar(15) NOT NULL,
  `cyst` varchar(15) NOT NULL,
  `trophozoites` varchar(15) NOT NULL,
  `others_pro` varchar(15) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `date_reported` date NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  PRIMARY KEY (`fecalisys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fecalisys`
--

LOCK TABLES `fecalisys` WRITE;
/*!40000 ALTER TABLE `fecalisys` DISABLE KEYS */;
/*!40000 ALTER TABLE `fecalisys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hematology`
--

DROP TABLE IF EXISTS `hematology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hematology` (
  `hem_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_requested` date NOT NULL,
  `requested_by` varchar(30) NOT NULL,
  `hemoglobin` varchar(15) NOT NULL,
  `hematocrit` varchar(15) NOT NULL,
  `RBC_count` varchar(15) NOT NULL,
  `WBC_count` varchar(15) NOT NULL,
  `platelet` varchar(15) NOT NULL,
  `bleeding_time` varchar(15) NOT NULL,
  `clotting_time` varchar(15) NOT NULL,
  `neutrophil` varchar(15) NOT NULL,
  `segmenters` varchar(15) NOT NULL,
  `stabs` varchar(15) NOT NULL,
  `lymphocytes` varchar(15) NOT NULL,
  `monocyte` varchar(15) NOT NULL,
  `eosinophil` varchar(15) NOT NULL,
  `basophil` varchar(15) NOT NULL,
  `total` varchar(15) NOT NULL,
  `ABO_group` varchar(15) NOT NULL,
  `Rh_group` varchar(15) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  PRIMARY KEY (`hem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hematology`
--

LOCK TABLES `hematology` WRITE;
/*!40000 ALTER TABLE `hematology` DISABLE KEYS */;
/*!40000 ALTER TABLE `hematology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itr`
--

DROP TABLE IF EXISTS `itr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itr` (
  `itr_no` varchar(4) NOT NULL,
  `family_no` varchar(6) NOT NULL,
  `phil_health_no` varchar(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `birthdate` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `address` varchar(30) NOT NULL,
  `civil_status` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `BP` varchar(10) NOT NULL,
  `TEMP` varchar(10) NOT NULL,
  `PR` varchar(10) NOT NULL,
  `RR` varchar(10) NOT NULL,
  `WT` varchar(10) NOT NULL,
  `HT` varchar(10) NOT NULL,
  PRIMARY KEY (`itr_no`),
  UNIQUE KEY `itr_no` (`itr_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itr`
--

LOCK TABLES `itr` WRITE;
/*!40000 ALTER TABLE `itr` DISABLE KEYS */;
/*!40000 ALTER TABLE `itr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maternity_patient`
--

DROP TABLE IF EXISTS `maternity_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maternity_patient` (
  `patient_id` int(50) NOT NULL AUTO_INCREMENT,
  `case_no` varchar(20) NOT NULL,
  `nhts` varchar(30) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `philhealth` varchar(30) NOT NULL,
  `pat_firstname` varchar(30) NOT NULL,
  `pat_middlename` varchar(30) NOT NULL,
  `pat_lastname` varchar(30) NOT NULL,
  `age` int(10) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `date_of_birth` varchar(20) NOT NULL,
  `date_of_admission` varchar(20) NOT NULL,
  `time_of_admission` varchar(20) NOT NULL,
  `spouse_firstname` varchar(30) NOT NULL,
  `spouse_middlename` varchar(30) NOT NULL,
  `spouse_lastname` varchar(30) NOT NULL,
  `spouse_age` int(10) NOT NULL,
  `spouse_religion` varchar(30) NOT NULL,
  `spouse_occupation` varchar(30) NOT NULL,
  `G` varchar(20) NOT NULL,
  `T` varchar(20) NOT NULL,
  `A` varchar(20) NOT NULL,
  `L` varchar(20) NOT NULL,
  `lmp` varchar(20) NOT NULL,
  `edc` varchar(20) NOT NULL,
  `aog` varchar(20) NOT NULL,
  `fetal_position` varchar(20) NOT NULL,
  `fh` varchar(20) NOT NULL,
  `fhb` varchar(20) NOT NULL,
  `loc` varchar(20) NOT NULL,
  `admitting_diagnose` varchar(100) NOT NULL,
  `midwife` varchar(50) NOT NULL,
  `date_of_delivery` varchar(20) NOT NULL,
  `time` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `wt` varchar(10) NOT NULL,
  `baby_firstname` varchar(30) NOT NULL,
  `baby_middlename` varchar(30) NOT NULL,
  `baby_lastname` varchar(30) NOT NULL,
  `hepa` varchar(30) NOT NULL,
  `bcg` varchar(30) NOT NULL,
  `nbs` varchar(30) NOT NULL,
  `date_of_discharge` varchar(30) NOT NULL,
  `time_of_discharge` varchar(30) NOT NULL,
  `final_diagnosis` varchar(100) NOT NULL,
  `disposition_on_charge` varchar(50) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(5) NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maternity_patient`
--

LOCK TABLES `maternity_patient` WRITE;
/*!40000 ALTER TABLE `maternity_patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `maternity_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prenatal`
--

DROP TABLE IF EXISTS `prenatal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prenatal` (
  `prenatal_no` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `chief_complaint` varchar(100) NOT NULL,
  `attending_physician` varchar(30) NOT NULL,
  `lmp` varchar(20) NOT NULL,
  `ga_by_lmp` varchar(20) NOT NULL,
  `edc_by_lmp` varchar(20) NOT NULL,
  `fhr` varchar(20) NOT NULL,
  `ga_by_sonar` varchar(20) NOT NULL,
  `edc_by_utz` varchar(20) NOT NULL,
  `pregnancy_age` varchar(20) NOT NULL,
  `biparietal_diameter` varchar(20) NOT NULL,
  `biparietal_eq` varchar(20) NOT NULL,
  `head_circumference` varchar(20) NOT NULL,
  `head_circumference_eq` varchar(20) NOT NULL,
  `abdominal_circumference` varchar(20) NOT NULL,
  `abdominal_circumference_eq` varchar(20) NOT NULL,
  `femoral_length` varchar(20) NOT NULL,
  `femoral_length_eq` varchar(20) NOT NULL,
  `crown_rump_length` varchar(20) NOT NULL,
  `crown_rump_length_eq` varchar(20) NOT NULL,
  `mean_gest_sac_diameter` varchar(20) NOT NULL,
  `mean_gest_sac_diameter_eq` varchar(20) NOT NULL,
  `average_fetal_weight` varchar(20) NOT NULL,
  `gestation` varchar(20) NOT NULL,
  `presentation_lie` varchar(20) NOT NULL,
  `amniotic_fluid` varchar(20) NOT NULL,
  `placenta_location` varchar(20) NOT NULL,
  `previa` varchar(20) NOT NULL,
  `placenta_grade` varchar(20) NOT NULL,
  `fetal_activity` varchar(20) NOT NULL,
  `comments` varchar(100) NOT NULL,
  `radiologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  PRIMARY KEY (`prenatal_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenatal`
--

LOCK TABLES `prenatal` WRITE;
/*!40000 ALTER TABLE `prenatal` DISABLE KEYS */;
/*!40000 ALTER TABLE `prenatal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radiological`
--

DROP TABLE IF EXISTS `radiological`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radiological` (
  `rad_id` int(11) NOT NULL AUTO_INCREMENT,
  `case_no` varchar(12) NOT NULL,
  `referred_by` varchar(30) NOT NULL,
  `clinical_impression` varchar(100) NOT NULL,
  `room_bed_no` varchar(11) NOT NULL,
  `type_of_examination` varchar(30) NOT NULL,
  `date_taken` date NOT NULL,
  `radiologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  PRIMARY KEY (`rad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radiological`
--

LOCK TABLES `radiological` WRITE;
/*!40000 ALTER TABLE `radiological` DISABLE KEYS */;
/*!40000 ALTER TABLE `radiological` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rehabilitation`
--

DROP TABLE IF EXISTS `rehabilitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rehabilitation` (
  `rehab_id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosis` varchar(50) NOT NULL,
  `type_of_disability` varchar(50) NOT NULL,
  `subjective` varchar(100) NOT NULL,
  `objective` varchar(100) NOT NULL,
  `assessment` varchar(100) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  PRIMARY KEY (`rehab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rehabilitation`
--

LOCK TABLES `rehabilitation` WRITE;
/*!40000 ALTER TABLE `rehabilitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `rehabilitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sputum`
--

DROP TABLE IF EXISTS `sputum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sputum` (
  `sputum_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_of_collection_unit` varchar(30) NOT NULL,
  `date_of_submission` date NOT NULL,
  `disease_classification` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `reason_for_examination` varchar(30) NOT NULL,
  `case_no` varchar(30) NOT NULL,
  `specimen1` varchar(30) NOT NULL,
  `specimen2` varchar(30) NOT NULL,
  `specimen3` varchar(30) NOT NULL,
  `date_of_collection1` date NOT NULL,
  `date_of_collection2` date NOT NULL,
  `date_of_collection3` date NOT NULL,
  `specimen_collector` varchar(30) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `lab_serial_no1` varchar(20) NOT NULL,
  `lab_serial_no2` varchar(20) NOT NULL,
  `lab_serial_no3` varchar(20) NOT NULL,
  `specimen_1` varchar(20) NOT NULL,
  `specimen_2` varchar(20) NOT NULL,
  `specimen_3` varchar(20) NOT NULL,
  `visual_appearance1` varchar(20) NOT NULL,
  `visual_appearance2` varchar(20) NOT NULL,
  `visual_appearance3` varchar(20) NOT NULL,
  `reading` varchar(20) NOT NULL,
  `date_of_examination` date NOT NULL,
  `examined_by` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  PRIMARY KEY (`sputum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sputum`
--

LOCK TABLES `sputum` WRITE;
/*!40000 ALTER TABLE `sputum` DISABLE KEYS */;
/*!40000 ALTER TABLE `sputum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urinalysis`
--

DROP TABLE IF EXISTS `urinalysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urinalysis` (
  `urinalysis_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_of_request` varchar(20) NOT NULL,
  `color` varchar(15) NOT NULL,
  `transparency` varchar(15) NOT NULL,
  `specific_gravity` varchar(15) NOT NULL,
  `ph` varchar(15) NOT NULL,
  `sugar` varchar(15) NOT NULL,
  `protein` varchar(15) NOT NULL,
  `pregnancy_test` varchar(15) NOT NULL,
  `pus_cells` varchar(15) NOT NULL,
  `rbc` varchar(15) NOT NULL,
  `cast` varchar(15) NOT NULL,
  `urates` varchar(15) NOT NULL,
  `uric_acid` varchar(15) NOT NULL,
  `cal_ox` varchar(15) NOT NULL,
  `epith_cells` varchar(15) NOT NULL,
  `mucus_threads` varchar(15) NOT NULL,
  `others` varchar(15) NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  PRIMARY KEY (`urinalysis_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urinalysis`
--

LOCK TABLES `urinalysis` WRITE;
/*!40000 ALTER TABLE `urinalysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `urinalysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin','admin','admin','admin','Fecalysis');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hcpms'
--

--
-- Dumping routines for database 'hcpms'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-14 16:46:19
