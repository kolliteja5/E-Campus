-- MySQL dump 10.13  Distrib 5.1.66, for Win32 (ia32)
--
-- Host: localhost    Database: elearn
-- ------------------------------------------------------
-- Server version	5.1.66-community

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
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty` (
  `sno` int(5) NOT NULL AUTO_INCREMENT,
  `fid` varchar(10) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `femail` varchar(25) DEFAULT NULL,
  `fdept` varchar(20) DEFAULT NULL,
  `fpswrd` varchar(15) DEFAULT NULL,
  `gen` varchar(12) DEFAULT NULL,
  `fmob` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`sno`),
  UNIQUE KEY `fid` (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (2,'f101','faculty1','faculty1@gmail.com','cse','faculty1','Male','7894561231');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `sno` int(5) NOT NULL AUTO_INCREMENT,
  `dt` varchar(50) DEFAULT NULL,
  `cnt` int(5) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'05-12-2016',2);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qsns`
--

DROP TABLE IF EXISTS `qsns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qsns` (
  `sno` int(5) NOT NULL AUTO_INCREMENT,
  `fid` varchar(15) DEFAULT NULL,
  `sid` varchar(15) DEFAULT NULL,
  `qsn` text,
  `answer` text,
  `pdate` text,
  `rdate` text,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qsns`
--

LOCK TABLES `qsns` WRITE;
/*!40000 ALTER TABLE `qsns` DISABLE KEYS */;
INSERT INTO `qsns` VALUES (1,'f101','s102','i asked a question','ya i answerd','2016-12-03 18:16:40','still no reply');
/*!40000 ALTER TABLE `qsns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `sno` int(5) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) DEFAULT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `semail` varchar(25) DEFAULT NULL,
  `sdept` varchar(20) DEFAULT NULL,
  `spswrd` varchar(15) DEFAULT NULL,
  `gen` varchar(12) DEFAULT NULL,
  `smob` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`sno`),
  UNIQUE KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'s101','student1','student1@gmail.com','cse','student1','on','7894561231'),(2,'s102','student2','student2@gmail.com','it','student2','Male','7891234782');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uploads` (
  `sno` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) DEFAULT NULL,
  `author` text,
  `bookname` text,
  `des` text,
  `material` text,
  `status` int(5) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploads`
--

LOCK TABLES `uploads` WRITE;
/*!40000 ALTER TABLE `uploads` DISABLE KEYS */;
INSERT INTO `uploads` VALUES (1,'student','gopi','Java2','this is a good book in java world ','ap.pdf',0),(6,'student','kumar','kumarbook','this is good .net book ','AP Police 2012 Previous Eenadu.pdf',0),(7,'student','naveen','.net','good .net book ','AP Police 2012 Previous Eenadu.pdf',0),(8,'student','kumar','kumar java','this is kumar java book ','test4.jsp',0),(9,'professor','ravi','ravi .net','this is ravi .net\r\n ','What is the difference between.docx',1);
/*!40000 ALTER TABLE `uploads` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-05 19:11:31
