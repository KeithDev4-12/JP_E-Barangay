CREATE DATABASE  IF NOT EXISTS `jamorawonebarangay` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jamorawonebarangay`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: jamorawonebarangay
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-14 16:46:49
