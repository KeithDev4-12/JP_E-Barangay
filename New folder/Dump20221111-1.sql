CREATE DATABASE  IF NOT EXISTS `jplaureldb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jplaureldb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: jplaureldb
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
-- Table structure for table `tblbarangayclearance`
--

DROP TABLE IF EXISTS `tblbarangayclearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbarangayclearance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BrgyID` varchar(45) DEFAULT NULL,
  `DateIssued` date DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `DateModified` date DEFAULT NULL,
  `OrNumber` varchar(45) DEFAULT NULL,
  `IssuedAt` varchar(99) DEFAULT NULL,
  `Approved` varchar(45) DEFAULT NULL,
  `Attested` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbarangayclearance`
--

LOCK TABLES `tblbarangayclearance` WRITE;
/*!40000 ALTER TABLE `tblbarangayclearance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbarangayclearance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblofficials`
--

DROP TABLE IF EXISTS `tblofficials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblofficials` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(99) DEFAULT NULL,
  `Position` varchar(99) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `DateModified` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblofficials`
--

LOCK TABLES `tblofficials` WRITE;
/*!40000 ALTER TABLE `tblofficials` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblofficials` ENABLE KEYS */;
UNLOCK TABLES;

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
  `MName` varchar(45) DEFAULT NULL,
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
  `Picture` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblresidence`
--

LOCK TABLES `tblresidence` WRITE;
/*!40000 ALTER TABLE `tblresidence` DISABLE KEYS */;
INSERT INTO `tblresidence` VALUES (9,'JP-ID#1','Chester Ian Kas','asda','asdasd','asdasd, Chester Ian Kas asda','1995-11-30','Male','asdasd\r\n','asdasd','123','234','A+','0945-852-5255',' 23-423-423-4234','2022-11-11','2022-11-11','ComboBox1','','ComboBox1','2342-342-3423','D:\\Documents\\GitHub\\JP_E-Barangay\\Forms\\Win32\\Debug\\ImageBRGY\\JP-ID#1.png'),(10,'JP-ID#2','asdasd','sd','asda','asda, asdasd sd','2022-11-20','Male','asdasd','asdasd','asd','234','A-','2342-342-3423','234-234-234-234 ','2022-11-11','2022-11-11','asdasd, Chester Ian Kas asda','asdasd\r\n','Cousin','2342-342-3423','D:\\Documents\\GitHub\\JP_E-Barangay\\Forms\\Win32\\Debug\\ImageBRGY\\JP-ID#2.png'),(11,'JP-ID#3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-11 16:24:19
