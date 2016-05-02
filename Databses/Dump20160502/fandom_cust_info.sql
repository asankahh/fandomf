-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fandom
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `cust_info`
--

DROP TABLE IF EXISTS `cust_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_info` (
  `Reg_ID` varchar(10) NOT NULL,
  `Cus_FN` varchar(50) DEFAULT NULL,
  `Cus_LN` varchar(50) DEFAULT NULL,
  `Cus_Add1` varchar(150) DEFAULT NULL,
  `Cus_Add2` varchar(150) DEFAULT NULL,
  `Cus_City` varchar(20) DEFAULT NULL,
  `Cus_Postal_Code` varchar(20) DEFAULT NULL,
  `Cus_DOB` date DEFAULT NULL,
  `Cus_Gender` varchar(10) DEFAULT NULL,
  `Cus_Img` varchar(100) DEFAULT NULL,
  `Cus_Email` varchar(250) DEFAULT NULL,
  `Cus_Sub` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Reg_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_info`
--

LOCK TABLES `cust_info` WRITE;
/*!40000 ALTER TABLE `cust_info` DISABLE KEYS */;
INSERT INTO `cust_info` VALUES ('C003','Suravimal','Kosal','No,274','Arangala','Colombo','10150','1998-02-23','Male','####','kosala@gmail.com',1),('C004','Vithya','Subhasranjan','No,56','Boralesgamuwa','Colombo','10522','1994-12-25','Female','####','Subhasranjan@yahoo.com',0),('C005','Asith ',' Wijenayake','No,12/A','Kalatuwawa	','Colombo','10508','1996-02-12','Male','####','Wijenayake12@live.com',1),('C006','Sewwandi','Peiris','No,58','Ambagahapelessa','Kandy','20986','1993-12-12','Female','####','Sewwandi@yahoo.com',0),('C007','ROmeshika ','PErera','N0,100\\A2','Batagolladeniya','Kandy','20154','1994-05-31','Female','####','PErera',1),('C008','Pramudya',' Hashan','N0,123','Bowalagama','Hambantota','82458','1989-04-09','Male','####',' Hashan',1);
/*!40000 ALTER TABLE `cust_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-02  8:55:35
