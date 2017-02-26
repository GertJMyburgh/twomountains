-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: twomoygask_db1
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `twomoun_branches`
--

DROP TABLE IF EXISTS `twomoun_branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twomoun_branches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `manager` varchar(50) NOT NULL,
  `latitude` float(11,7) NOT NULL,
  `longitute` float(11,7) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mapurl` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twomoun_branches`
--

LOCK TABLES `twomoun_branches` WRITE;
/*!40000 ALTER TABLE `twomoun_branches` DISABLE KEYS */;
INSERT INTO `twomoun_branches` VALUES (1,'Eastern Cape','Port Elizabeth-Port Elizabeth','Port Elizabeth','Unknown',-33.0000000,25.0000000,'186 Goven Mbheki Ave Central Port Elizabeth 6001 EC','https://goo.gl/maps/hKDhx7JavKs'),(2,'Eastern Cape','Mthatha-Mthatha','Mthatha','Unknown',-31.0000000,28.0000000,'67 York Road Umthatha','https://goo.gl/maps/sypNJtE1V3F2'),(3,'Free State','Bloemfontein-Botshabelo','Botshabelo','Unknown',-29.0000000,26.0000000,'Shop 19 RCM Shopping Complex Strand St Botshabelo FS','https://goo.gl/maps/GBhmm15vW7H2'),(4,'Gauteng','Kempton Park-Kempton Square','Kempton Square','Unknown',-26.0000000,28.0000000,'11 Voortrekker street Kempton Park 1619 GP','https://goo.gl/maps/oq13Qn5C1zD2'),(5,'Gauteng','Roodepoort-Westgate Mall','Westgate Mall','Unknown',-26.0000000,27.0000000,'120 Ontdekkers Rd Roodepoort 1710 Joburg GP','https://goo.gl/maps/cQ5xcP9Vrgu'),(6,'Kwazulu-Natal','Isipingo-Isipingo Juction','Isipingo Juction','Unknown',-29.0000000,30.0000000,'19 Pardy Rd Isipingo 4133 KZN','https://goo.gl/maps/LhrTBu8SC4D2'),(7,'Kwazulu-Natal','Durban-Durban CBD','Durban CBD','Unknown',-29.0000000,31.0000000,'292 Cnr Smith and Anton Lembede Street Durban CBD KZN','https://goo.gl/maps/4S7VcYtgEoF2'),(8,'Limpopo','Makhado-Makhado','Makhado','Unknown',-23.0000000,29.0000000,'Shop 7 105 Burger Str Louis Trichardt Shoprite Centre Makhado 0920 LP','https://goo.gl/maps/mv95dgGMJ3M2'),(9,'Limpopo','Polokwane (Pietersburg)-Polokwane','Polokwane','Unknown',-23.0000000,29.0000000,'Shop 72 Landdros Mare Street Polokwane 0783 LP','https://goo.gl/maps/wSpdKtMLH3u'),(10,'Mpumalanga','Ermelo-Ermelo Mall','Ermelo Mall','Unknown',-26.0000000,29.0000000,'50A de Jager Street Ermelo Mall Mpumalanga','https://goo.gl/maps/DR2pi4WgDwQ2'),(11,'Mpumalanga','Hazyview-HazyView','HazyView','Unknown',-25.0000000,31.0000000,'Shop 314 Corner R536 and R40 Blue Haze Mall Hazyview 1242 MP','https://goo.gl/maps/LSUUJFyEDdt'),(12,'North West','Mafikeng-Robinson Street','Robinson Street','Unknown',-25.0000000,25.0000000,'16 Robinson Street Mafikeng','https://goo.gl/maps/ttPGptf7Xh82'),(13,'North West','Potchefstroom-Ikageng Shopping Centre','Ikageng Shopping Centre','Unknown',-26.0000000,27.0000000,'42 Ikageng St Potchefstroom 2520 NW','https://goo.gl/maps/RnXFkH3KCf22'),(14,'Northen Cape','Kuruman-Kuruman Mall','Kuruman Mall','Unknown',-27.0000000,23.0000000,'Shop 53 Kuruman Hall 26 Livingstone Street Kuruman 8460 NC','https://goo.gl/maps/mTQ7yVTpXqR2'),(15,'Western Cape','Cape Town-Cape Town','Cape Town','Unknown',-33.0000000,18.0000000,'African Bank Space 6 St Georges Mall Cape Town 8000 WC','https://goo.gl/maps/xFBormPgbkJ2'),(16,'Western Cape','Cape Town-Gugulethu','Gugulethu','Unknown',-33.0000000,18.0000000,'Cnr NY1 & NY6 Guguletu Cape Town WC','https://goo.gl/maps/kj5gpU3aLVA2'),(17,'Western Cape','Cape Town (Belville)-Bellstar Junction','Bellstar Junction','Unknown',-33.0000000,18.0000000,'Shop 33C Bellstar Junction Bellville station South Street Cape Town 7530 WC','https://goo.gl/maps/tGTS7CgUjqB2'),(18,'Western Cape','Cape Town-Makhaza Mall','Makhaza Mall','Unknown',-34.0000000,18.0000000,'Shop 4 Makhaza Shopping Centre Lansdown Rd Khayalitsha Cape Town 7784 WC','https://goo.gl/maps/d2wKN8PSJLP2');
/*!40000 ALTER TABLE `twomoun_branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twomoun_leads`
--

DROP TABLE IF EXISTS `twomoun_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twomoun_leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameSurname` varchar(100) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `product` varchar(20) NOT NULL,
  `activeTimeStamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twomoun_leads`
--

LOCK TABLES `twomoun_leads` WRITE;
/*!40000 ALTER TABLE `twomoun_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `twomoun_leads` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-26 12:44:11
