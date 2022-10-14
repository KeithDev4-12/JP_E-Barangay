CREATE DATABASE  IF NOT EXISTS `samqrcodescanningsystem` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `samqrcodescanningsystem`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: samqrcodescanningsystem
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-14 16:48:04
