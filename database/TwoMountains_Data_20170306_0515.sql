-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: twomountains-branch.co.za    Database: twomoygask_db1
-- ------------------------------------------------------
-- Server version	5.5.54-0+deb7u2

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
  `city` varchar(80) NOT NULL,
  `branch` varchar(80) NOT NULL,
  `manager` varchar(50) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitute` decimal(9,6) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mapurl` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twomoun_branches`
--

LOCK TABLES `twomoun_branches` WRITE;
/*!40000 ALTER TABLE `twomoun_branches` DISABLE KEYS */;
INSERT INTO `twomoun_branches` VALUES (1,'Limpopo','Giyani-Giyani Satellite','Giyani Satellite','Lucy Mdungwazi',-23.316587,30.715959,'SHOP NO 4 ERROL COMPLEX 826','https://goo.gl/maps/Y6soTqBQ4Z72'),(2,'Limpopo','Kgapane-Kgapane Satellite','Kgapane Satellite','Matlou Lesilana',-23.645681,30.216891,'Shop 30 MODJADJI PLAZA KGAPANE 838','https://goo.gl/maps/hV4oHZBzWbG2'),(3,'Limpopo','Tzaneen-Tzaneen Satellite','Tzaneen Satellite','Katlego Phogole',-23.829450,30.161081,'SHOP NO B9 BETWEEN NEDBANK AND JET','https://goo.gl/maps/HTywhawru9m'),(4,'Limpopo','Tzaneen-Tzaneen Branch','Tzaneen Branch','Mantsha Mawasha',-23.832705,30.165385,'4-FIFTH AVENUE SAPICO DRIVE OPP CTM TZANEEN','https://goo.gl/maps/BpWJA925cws'),(5,'Limpopo','Nkowankowa-Nkowankowa Warehouse','Nkowankowa Warehouse','Bongi Mukwana',-23.881819,30.267820,'197 CHARLIE STREET MERIDIAN COLLEGE ROAD','https://goo.gl/maps/8rWgYnp8qXs'),(6,'Limpopo','Polokwane-Polokwane Branch','Polokwane Branch','Ann',-23.891092,29.721240,'69 CHURCH STREET POLOKWANE 700','https://goo.gl/maps/oq7ZRDSYVDp'),(7,'Limpopo','Polokwane-Polokwane Satellite','Polokwane Satellite','Kganya Teffo',-23.909144,29.451592,'LIBRARY GARDENS SHOP NO 3 BETWEEN STEERS AND DEBONAIRS','https://goo.gl/maps/DXFWmzUt8H42'),(8,'Limpopo','Namakgale-Namakgale Satellite','Namakgale Satellite','Lebogang Morema',-23.928004,31.025642,'SHOP NO 6 NAMAKGALE CROSSING 1391','https://goo.gl/maps/VzG9T32Uw8m'),(9,'Limpopo','Phalaborwa-Phalaborwa HR Office','Phalaborwa HR Office','Chauke Promise',-23.945580,31.129146,'22 KIAAT STREET PHALABORWA 1390','https://goo.gl/maps/xdYsgs7FnSk'),(10,'Limpopo','Phalaborwa-PHB Showroom','PHB Showroom','Arnold Hlungwane',-23.948230,31.132138,'SHOP NO 8 14 WAGNER STREET OPP FNB PHALABORWA 1390','https://goo.gl/maps/xRqhX9JFtPt'),(11,'Limpopo','Phalaborwa-PHB Granite Factory','PHB Granite Factory','Dineo Kutumela',-23.953204,31.126965,'17 VON WILLIGH STREET PHALABORWA 1390','https://goo.gl/maps/z2QxirgMZYp'),(12,'Limpopo','Maake-Maake Satellite','Maake Satellite','Caroline',-23.977370,30.286680,'SHOP 8 MAAKE PLAZA LENYENYE 857','https://goo.gl/maps/51udmF7SzZx'),(13,'Limpopo','Lebowakgomo-Lebowakgomo','Lebowakgomo','NA',-24.312175,29.473820,'SHOP NO 2 MOROPA COMPLEX LEBOWAKGOMO ZONE F','https://goo.gl/maps/PbhgoxBTj6o'),(14,'Mpumalanga','Hoedspruit-The Oaks','The Oaks','Virginia Mabil',-24.358588,30.669790,'A0001 TAPOSA THE OAKS 1384','https://goo.gl/maps/9FrWR3KSxRM2'),(15,'Mpumalanga','Acornhoek-Acornhoek Satellite','Acornhoek Satellite','Jojo',-24.600612,31.082913,'13 MAIN ROAD MOPIWE COMPLEX ACORNHOEK 1360','https://goo.gl/maps/a9WAkKKR3jB2'),(16,'Mpumalanga','Acornhoek-Acornhoek Branch','Acornhoek Branch','Tsakane Molefe',-24.601833,31.043476,'STAND NO 006 MAIN ROAD OPP LION PRINTERS AND DRIVING SCHOOL ACORNHOEK 1360','https://goo.gl/maps/ufkKvHD5A8w'),(17,'Mpumalanga','Burgersfort-Burgersfort Satellite','Burgersfort Satellite','Pertunia Lesese',-24.667349,30.316669,'OFFICE 36 MARONE CENTRE MAIN ROAD BURGERSFORT','https://goo.gl/maps/5TQqpKVD8dr'),(18,'Mpumalanga','Burgersfort-Burgersfort','Burgersfort','Caroline Molopo',-24.673895,30.325421,'OFFICE 1 AND 2 MARONE STREET BURGERSFORT','https://goo.gl/maps/ATK6iMzs32C2'),(19,'Mpumalanga','Thulamahashe-Thulamahashe Satellite','Thulamahashe Satellite','Violet Mathonsi',-24.723639,31.198956,'379 OPEN GATE THULAMAHASHE ACORNHOEK 1360','https://goo.gl/maps/3BW3aLvztEr'),(20,'Mpumalanga','Bushbuckridge-Bush Satellite','Bush Satellite','Ingrid or Nhlanhla',-24.724544,31.196761,'141 MAIN ROAD SHOP NO 3 THOKOZANE CENTRE 1280','https://goo.gl/maps/NRnmcn3ocRM2'),(21,'Mpumalanga','Hazyview-Hazyview Satellite','Hazyview Satellite','Portia Nkwashu',-25.043736,31.129181,'SHOP NO 3 SIMUNYE CHECKERS CENTRE 1242','https://goo.gl/maps/1qFPnkoNQcp'),(22,'Mpumalanga','Lydenburg-Lydenburg Satellite','Lydenburg Satellite','Kholofelo Ngele',-25.095525,30.437236,'CNR VOORTREKKER AND KERK STREET VODACOM OFFICE BUILDING OFFICE NO 5 LYDENBURG 1123','https://goo.gl/maps/NnENYAqWFG82'),(23,'Gauteng','Pretoria-Marabastad','Marabastad','Jane',-25.740036,28.171119,'UNIT 2 AALMAL NARAN CENTRE CONRNER 41 1ST AVENUE MARABASTAD PRETORIA 1','https://goo.gl/maps/NnUNpi3yFWQ2'),(24,'Gauteng','Arcadia-Arcadia Satelite','Arcadia Satelite','NA',-25.744631,28.202721,'SHOP 0003 NEDBANK PLAZA 361 STEVE BIKO STREET ARCADIA PLAZA','https://goo.gl/maps/PA44Mi9627x'),(25,'Gauteng','Pretoria-Lotus Gradens','Lotus Gradens','Linah',-25.745893,28.065709,'32 RHOLISIZWE STREET LOTUS GARDENS PRETORIA 25','https://goo.gl/maps/RETKKWNekYJ2'),(26,'Gauteng','Bryanston-Bryanston Head Office','Bryanston Head Office','Gadija Salie',-26.067160,28.017830,'321 MAIN ROAD LA ROCA OFFICE PARK UNIT C BRYANSTON 2021','https://goo.gl/maps/VGujWQ3XRg72'),(27,'Gauteng','Randburg-Randburg','Randburg','Talent Dube',-26.091299,28.005450,'SHOP 5B PERM RAND BUILDING 165 BRAAMFISCHER ROAD FERNDALE RANDBURG','https://goo.gl/maps/kGiw5S5f9QT2'),(28,'Gauteng','Johannesburg-Johannesburg Satelite','Johannesburg Satelite','NA',-26.200615,28.039661,'SHOP 001 BRISK PLACE 195 LILIAN NGOYI/RISSIK STREET JOHANNESBURG 2001','https://goo.gl/maps/AF2TnMy7FFm'),(29,'Limpopo','Phalaborwa-Phalaborwa Satellite','Phalaborwa Satellite','Anastacia Msimango',0.000000,0.000000,'SHOP B UNIDELL BUILDING ESKOM LANE PHALABORWA 1391','https://goo.gl/maps/ToDo'),(30,'Limpopo','Namakgale-Namakgale Branch','Namakgale Branch','Lebogang Ramaila',0.000000,0.000000,'New Site BZ4 BUFFER ZONE NAMAKGALE 1391','https://goo.gl/maps/ToDo'),(31,'Limpopo','GaMaja-GaMaja','Ga-Maja','Selina Maja',0.000000,0.000000,'241 MAJA KOPERMYN 719','https://goo.gl/maps/ToDo'),(32,'Limpopo','Malamulele-Malamulele Satellite','Malamulele Satellite','Tsakani',0.000000,0.000000,'OFFICE NO 2 Hlathi COMPLEX 982','https://goo.gl/maps/ToDo'),(33,'Mpumalanga','Hoedspruit-Metz','Metz','Membry Kgohloane',0.000000,0.000000,'OFFICE NO 1 TAPOSA COMPLEX 1384','https://goo.gl/maps/ToDo');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twomoun_leads`
--

LOCK TABLES `twomoun_leads` WRITE;
/*!40000 ALTER TABLE `twomoun_leads` DISABLE KEYS */;
INSERT INTO `twomoun_leads` VALUES (1,'Piet Venter','0827651234','Life','2017-02-28 08:16:21'),(2,'Melanie Coetzee','0831231234','Funeral','2017-02-28 13:33:31');
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

-- Dump completed on 2017-03-06  5:15:29
