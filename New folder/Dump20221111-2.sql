CREATE DATABASE  IF NOT EXISTS `klsmanagementandreservationsystem` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `klsmanagementandreservationsystem`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: klsmanagementandreservationsystem
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-11 16:24:31
