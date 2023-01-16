CREATE DATABASE  IF NOT EXISTS `jplaureldb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jplaureldb`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jplaureldb
-- ------------------------------------------------------
-- Server version	5.5.8

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
-- Table structure for table `tblapproval`
--

DROP TABLE IF EXISTS `tblapproval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblapproval` (
  `ID` int(11) NOT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `KindTable` varchar(45) DEFAULT NULL,
  `BrgyID` varchar(45) DEFAULT NULL,
  `FKID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblapproval`
--

LOCK TABLES `tblapproval` WRITE;
/*!40000 ALTER TABLE `tblapproval` DISABLE KEYS */;
INSERT INTO `tblapproval` VALUES (0,'APPROVED','tblcertificateofappearance','JP-ID#1',3),(1,'APPROVED','tblbarangaycertificate','JP-ID#1',2),(2,'FOR APPROVAL','tblbarangayclearance','JP-ID#1',2),(3,'FOR APPROVAL','tblbarangayclearance','JP-ID#2',3),(4,'APPROVED','tblbarangayid','JP-ID#2',0);
/*!40000 ALTER TABLE `tblapproval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbarangaybusinesclearance`
--

DROP TABLE IF EXISTS `tblbarangaybusinesclearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbarangaycertificate`
--

LOCK TABLES `tblbarangaycertificate` WRITE;
/*!40000 ALTER TABLE `tblbarangaycertificate` DISABLE KEYS */;
INSERT INTO `tblbarangaycertificate` VALUES (1,'JP-ID#1','2023-01-12','2023-01-12','2023-01-12','','Gould, Layton G','222','222',22222.0000),(2,'JP-ID#1','2023-01-25','0000-00-00','0000-00-00','','','','',20000.0000);
/*!40000 ALTER TABLE `tblbarangaycertificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbarangayclearance`
--

DROP TABLE IF EXISTS `tblbarangayclearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbarangayclearance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BrgyID` varchar(45) DEFAULT NULL,
  `DateIssued` date DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `DateModified` date DEFAULT NULL,
  `OrNumber` varchar(99) DEFAULT NULL,
  `Attested` varchar(99) DEFAULT NULL,
  `Approved` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbarangayclearance`
--

LOCK TABLES `tblbarangayclearance` WRITE;
/*!40000 ALTER TABLE `tblbarangayclearance` DISABLE KEYS */;
INSERT INTO `tblbarangayclearance` VALUES (1,'JP-ID#2','2023-01-12','2023-01-12','2023-01-12','5544s','234234','2342342fsdf'),(2,'JP-ID#1','2023-01-19','0000-00-00','0000-00-00','','',''),(3,'JP-ID#2','2023-01-26','2023-01-13','2023-01-13','','',''),(4,'JP-ID#1','2023-01-26','2023-01-26','2023-01-26','aa','ssss','aasda');
/*!40000 ALTER TABLE `tblbarangayclearance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbarangayid`
--

DROP TABLE IF EXISTS `tblbarangayid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbarangayid` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BrgyID` varchar(45) DEFAULT NULL,
  `DateIssued` date DEFAULT NULL,
  `IssuedAt` varchar(99) DEFAULT NULL,
  `Attested` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbarangayid`
--

LOCK TABLES `tblbarangayid` WRITE;
/*!40000 ALTER TABLE `tblbarangayid` DISABLE KEYS */;
INSERT INTO `tblbarangayid` VALUES (1,'JP-ID#2','0000-00-00','','');
/*!40000 ALTER TABLE `tblbarangayid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcertificateofappearance`
--

DROP TABLE IF EXISTS `tblcertificateofappearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcertificateofappearance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BarangayIdNo` varchar(45) DEFAULT NULL,
  `SubjectOff` varchar(999) DEFAULT NULL,
  `DateIssued` date DEFAULT NULL,
  `Purpose` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcertificateofappearance`
--

LOCK TABLES `tblcertificateofappearance` WRITE;
/*!40000 ALTER TABLE `tblcertificateofappearance` DISABLE KEYS */;
INSERT INTO `tblcertificateofappearance` VALUES (1,'JP-ID#1','Bulan Sorsogon','0000-00-00',''),(2,'JP-ID#1','Anywhere','0000-00-00','May kadtuon lang kami ni kapitan important matter'),(3,'JP-ID#1','','2023-01-16','Wala lang test lang');
/*!40000 ALTER TABLE `tblcertificateofappearance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblofficials`
--

DROP TABLE IF EXISTS `tblofficials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblofficials`
--

LOCK TABLES `tblofficials` WRITE;
/*!40000 ALTER TABLE `tblofficials` DISABLE KEYS */;
INSERT INTO `tblofficials` VALUES (1,'Jonna','Brezuela','Agne','Agne, Jonna Brezuela','Secretary','2023','1993-12-18','Female','','2022-12-26','2022-12-26','Active'),(2,'Norie','G','Cañezal','Cañezal, Norie G','Barangay Chairman','2023','1981-03-05','Male','','2022-12-26','2022-12-26','Active'),(3,'Mary Jane','G','Esquillo','Esquillo, Mary Jane G','Barangay Kagawad 1','2023','1984-06-26','Male','','2022-12-26','2022-12-26','Active'),(4,'Ronnel','G','Gueta','Gueta, Ronnel G','SK Chairman','2023','1984-06-19','Male','','2022-12-26','2022-12-26','Active'),(5,'Junie','G.','Brezuela','Brezuela, Junie G.','Barangay Kagawad 2','2023','2010-02-02','Male','','1899-12-30','1899-12-30','Active'),(6,'Lerma','O','Granadil','Granadil, Lerma O','Barangay Kagawad 3','2023','1989-01-28','Female','','1899-12-30','1899-12-30','Active'),(7,'Renan','G','Golloso','Golloso, Renan G','Barangay Kagawad 4','2023','1987-01-03','Male','','2023-01-16','2023-01-16','Active'),(8,'Vener','P.','Berania','Berania, Vener P.','Barangay Kagawad 5','2023','1974-01-03','Male','','2023-01-16','2023-01-16','Active'),(9,'Joseph','H.','Almoguera','Almoguera, Joseph H.','Barangay Kagawad 6','2023','1988-01-13','Male','','2023-01-16','2023-01-16','Active'),(10,'Daisy','S','Gutay','Gutay, Daisy S','Barangay Kagawad 7','2023','1988-01-03','Male','','2023-01-16','2023-01-16','Active'),(11,'Agnes','R','Juab','Juab, Agnes R','Treasurer','2023','2023-01-10','Female','','2023-01-16','2023-01-16','Active');
/*!40000 ALTER TABLE `tblofficials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblresidence`
--

DROP TABLE IF EXISTS `tblresidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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

-- Dump completed on 2023-01-16 11:24:53
