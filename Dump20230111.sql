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
-- Table structure for table `tblbarangaybusinesclearance`
--

DROP TABLE IF EXISTS `tblbarangaybusinesclearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbarangaybusinesclearance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BrgyID` varchar(45) DEFAULT NULL,
  `Business` varchar(99) DEFAULT NULL,
  `Approved` varchar(99) DEFAULT NULL,
  `Attested` varchar(99) DEFAULT NULL,
  `DateIssued` date DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `OrNumber` varchar(45) DEFAULT NULL,
  `IssuedAt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbarangaybusinesclearance`
--

LOCK TABLES `tblbarangaybusinesclearance` WRITE;
/*!40000 ALTER TABLE `tblbarangaybusinesclearance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbarangaybusinesclearance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbarangaycertificate`
--

DROP TABLE IF EXISTS `tblbarangaycertificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbarangaycertificate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BrgyID` varchar(45) DEFAULT NULL,
  `DateIssued` date DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `DateModified` date DEFAULT NULL,
  `OrNumber` varchar(45) DEFAULT NULL,
  `IssuedAt` varchar(99) DEFAULT NULL,
  `Approved` varchar(45) DEFAULT NULL,
  `Attested` varchar(45) DEFAULT NULL,
  `AnnualIncome` decimal(18,4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbarangaycertificate`
--

LOCK TABLES `tblbarangaycertificate` WRITE;
/*!40000 ALTER TABLE `tblbarangaycertificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbarangaycertificate` ENABLE KEYS */;
UNLOCK TABLES;

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
  `OrNumber` varchar(99) DEFAULT NULL,
  `IssuedAt` varchar(99) DEFAULT NULL,
  `Approved` varchar(99) DEFAULT NULL,
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
-- Table structure for table `tblbarangayid`
--

DROP TABLE IF EXISTS `tblbarangayid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbarangayid` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BrgyID` varchar(45) DEFAULT NULL,
  `DateIssued` date DEFAULT NULL,
  `IssuedAt` varchar(99) DEFAULT NULL,
  `Attested` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbarangayid`
--

LOCK TABLES `tblbarangayid` WRITE;
/*!40000 ALTER TABLE `tblbarangayid` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbarangayid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcertificateofappearance`
--

DROP TABLE IF EXISTS `tblcertificateofappearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcertificateofappearance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BarangayIdNo` varchar(45) DEFAULT NULL,
  `Designation` varchar(45) DEFAULT NULL,
  `Office` varchar(999) DEFAULT NULL,
  `InclusiveDates` varchar(45) DEFAULT NULL,
  `Purpose` varchar(999) DEFAULT NULL,
  `PunongBarangay` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcertificateofappearance`
--

LOCK TABLES `tblcertificateofappearance` WRITE;
/*!40000 ALTER TABLE `tblcertificateofappearance` DISABLE KEYS */;
INSERT INTO `tblcertificateofappearance` VALUES (1,'JP-ID#2','Bulan Sorsogon','SORECO 1','28 - 29, 2022','','Pinuno'),(2,'JP-ID#2','Anywhere','Soreco','December 27-28-29 2022','May kadtuon lang kami ni kapitan important matter','kapitan');
/*!40000 ALTER TABLE `tblcertificateofappearance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblofficials`
--

DROP TABLE IF EXISTS `tblofficials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblofficials` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FName` varchar(45) DEFAULT NULL,
  `MName` varchar(45) DEFAULT NULL,
  `LName` varchar(45) DEFAULT NULL,
  `Name` varchar(99) DEFAULT NULL,
  `Position` varchar(99) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Picture` text,
  `DateCreated` date DEFAULT NULL,
  `DateModified` date DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblofficials`
--

LOCK TABLES `tblofficials` WRITE;
/*!40000 ALTER TABLE `tblofficials` DISABLE KEYS */;
INSERT INTO `tblofficials` VALUES (1,'Jonna','Brezuela','Agne','Agne, Jonna Brezuela','Secretary','2022','1993-12-18','Female','D:\\Documents\\GitHub\\JP_E-Barangay\\Forms\\Win32\\Debug\\ImageBRGY\\-2.jpg','2022-12-26','2022-12-26','Active'),(2,'Norie','G','Esquillo','Esquillo, Norie G','Barangay Chairman','2022','1981-03-05','Male','D:\\Documents\\GitHub\\JP_E-Barangay\\Forms\\Win32\\Debug\\ImageBRGY\\-2.jpg','2022-12-26','2022-12-26','Active'),(3,'Mary Jane','G','Esquillo','Esquillo, Mary Jane G','Barangay Kagawad','2022','1984-06-26','Male','D:\\Documents\\GitHub\\JP_E-Barangay\\Forms\\Win32\\Debug\\ImageBRGY\\-2.jpg','2022-12-26','2022-12-26','Active'),(4,'Ronnel','G','Gueta','Gueta, Ronnel G','SK Chairman','2022','1984-06-19','Male','D:\\Documents\\GitHub\\JP_E-Barangay\\Forms\\Win32\\Debug\\ImageBRGY\\-2.jpg','2022-12-26','2022-12-26','Active');
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
  `Father` varchar(99) DEFAULT NULL,
  `Mother` varchar(99) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblresidence`
--

LOCK TABLES `tblresidence` WRITE;
/*!40000 ALTER TABLE `tblresidence` DISABLE KEYS */;
INSERT INTO `tblresidence` VALUES (1,'JP-ID#1','Layton','G','Gould','Gould, Layton G',NULL,NULL,'1991-02-01','Male','J.P. Laurel','Purok 3','180','73','AB+','0909-123-4567','111-111-111-1111','2022-12-26','2022-12-26','','J.P. Laurel','Parent','0909-987-6543','D:\\Documents\\GitHub\\JP_E-Barangay\\Forms\\Win32\\Debug\\ImageBRGY\\JP-ID#1.jpg'),(2,'JP-ID#2','Haylee','G','Salazar','Salazar, Haylee G',NULL,NULL,'1989-11-08','Female','J. P. Laurel','Purok 4','150','61','O+','0945-852-5255','222-222-222-2222','2022-12-26','2022-12-26','','J.P. Laurel','Parent','0909-987-6543','D:\\Documents\\GitHub\\JP_E-Barangay\\Forms\\Win32\\Debug\\ImageBRGY\\JP-ID#2.jpg');
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
  `Gender` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `UserStatus` varchar(45) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `DateModified` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES (2,'Admin','asd','aaas','aaas, Admin asd','2022-11-23','Female','Admin','admin','','1899-12-30','2022-11-23'),(3,'Dangelo','D.','Jacobs','Jacobs, Dangelo D.','1995-12-04','Male','Admin','7894','Active','2022-12-26','2022-12-26');
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

-- Dump completed on 2023-01-11 16:20:12
