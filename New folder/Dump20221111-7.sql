CREATE DATABASE  IF NOT EXISTS `sb_digitalization` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sb_digitalization`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: sb_digitalization
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-11 16:25:14
