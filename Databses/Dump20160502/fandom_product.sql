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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `P_ID` varchar(10) NOT NULL,
  `P_Name` varchar(50) NOT NULL,
  `P_Price` varchar(10) NOT NULL,
  `P_Qntty` varchar(10) NOT NULL,
  `P_Img` varchar(1000) NOT NULL,
  `P_Desc` longtext NOT NULL,
  `P_Availabilty` tinyint(1) NOT NULL,
  `P_add_date` date NOT NULL,
  `Cat_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`P_ID`),
  KEY `Cat_ID` (`Cat_ID`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Cat_ID`) REFERENCES `catergory` (`Cat_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('F001','Deadpool','1500','5','####','Wade Wilson (Ryan Reynolds) is a former Special Forces operative who now works as a mercenary. His world comes crashing down when evil scientist Ajax (Ed Skrein) tortures, disfigures and transforms him into Deadpool. The rogue experiment leaves Deadpool with accelerated healing powers',1,'2016-04-02','M001'),('F002','The Revenant','1500','12','####','While exploring the uncharted wilderness in 1823, frontiersman Hugh Glass (Leonardo DiCaprio) sustains life-threatening injuries from a brutal bear attack. When a member (Tom Hardy) of his hunting team kills his young son (Forrest Goodluck) and leaves him for dead, Glass must utilize his survival ',1,'2016-02-29','M001'),('F003','Kung Fu Panda 3','1500','0','####','Living large and loving life, Po (Jack Black) realizes that he has a lot to learn if he\'s going to fulfill the next challenge from his beloved instructor (Dustin Hoffman). After reuniting with his long-lost father (Bryan Cranston), Po must transition from student to teacher and train a group ',0,'2015-12-01','M001'),('F004','X-Men Origins: Wolverine','1500','20','####','Seeking solace from his dark past, Logan (Hugh Jackman), better known as Wolverine, seems to have found love and contentment with Kayla Silverfox (Lynn Collins). Logan\'s peaceful existence is shattered when Victor Creed (Liev Schreiber), his vicious brother, brutally murders Kayla. ',1,'2010-08-16','M001'),('F005','Game of Thrones','450','20','####','George R.R. Martin\'s best-selling book series \"A Song of Ice and Fire\" is brought to the screen as HBO sinks its considerable storytelling teeth into the medieval fantasy epic. It\'s the depiction of two powerful families -- kings and queens, knights and renegades, liars and honest men ',1,'2010-05-15','T001'),('F006','Gotham','450','15','####','Jim Gordon is a rising detective in corrupt Gotham City, where his late father was a successful district attorney. Brave, honest and determined to prove himself, Jim hopes to return the city to the glamorous, purer version he remembers as a child. He and his partner, legendary Detective Harvey ',1,'2015-06-25','T001'),('F007','Teen Wolf','450','6','####','he high-school anonymity Scott McCall was trying to break free from couldn\'t have happened in a more mysterious, complicated way. While walking in the woods one night Scott encounters a creature, is bitten in the side, and his life is forever changed. Is he a human or a werewolf? Or a little bit',1,'2014-05-16','T001'),('F008','The Flash','450','12','####','At 11, Barry Allen\'s life changed completely when his mother died in a freak accident and his innocent father was convicted of her murder. Now a crime-scene investigator, his dedication to learn the truth about his mother\'s death drives him to follow up on every new scientific advancement',1,'2014-03-15','T001'),('F009','Call of Duty','800','0','####','Call of Duty is a first-person shooter video game franchise. The series began on Microsoft Windows, and later expanded to consoles and handhelds. Several spin-off games have been released.',0,'2013-05-19','G001'),('F010','Assassin\'s Creed','800','1','####','Assassin\'s Creed is an action-adventure video game series that consists of nine main games and a number of supporting materials, as of 2015.',1,'2010-08-19','G001'),('F011','Need for Speed','800','0','####','Need for Speed, also known by its initials NFS, is a racing video game franchise published by Electronic Arts and developed by several studios including EA Black Box, Criterion Games and Ghost Games',0,'2009-06-25','G001'),('F012','FIFA 16','800','1','####','FIFA 16 is an association football simulation video game developed by EA Canada and published by EA Sports for Microsoft Windows, PlayStation 3, PlayStation 4, Xbox 360, Xbox One, Android and iOS.',1,'2016-02-27','G001');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
