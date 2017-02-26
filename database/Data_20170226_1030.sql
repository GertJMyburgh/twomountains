-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: hollapsvdy_db1
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
-- Table structure for table `hollard_branches`
--

DROP TABLE IF EXISTS `hollard_branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hollard_branches` (
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hollard_branches`
--

LOCK TABLES `hollard_branches` WRITE;
/*!40000 ALTER TABLE `hollard_branches` DISABLE KEYS */;
INSERT INTO `hollard_branches` VALUES (1,'Eastern Cape','Port Elizabeth-Port Elizabeth','Port Elizabeth','Unknown',-33.0000000,25.0000000,'186 Goven Mbheki Ave Central Port Elizabeth 6001 EC','https://goo.gl/maps/hKDhx7JavKs'),(2,'Eastern Cape','Mthatha-Mthatha','Mthatha','Unknown',-31.0000000,28.0000000,'67 York Road Umthatha','https://goo.gl/maps/sypNJtE1V3F2'),(3,'Eastern Cape','East London-East London','East London','Unknown',-33.0000000,27.0000000,'Shop 1 3-5 Gladstone Street East London 5200 EC','https://goo.gl/maps/eK4b5LZ1P1y'),(4,'Eastern Cape','King Williams Town-King Williams Town','King Williams Town','Unknown',-32.0000000,27.0000000,'Shop 1 Bank Street King Williams Town','https://goo.gl/maps/QvJMRpcJBCJ2'),(5,'Eastern Cape','Port Elizabeth-Kenako Mall','Kenako Mall','Unknown',-33.0000000,25.0000000,'Shop 22e Kenako Retail Centre Cnr Uitenhage and Spondo Rd New Brighton Port Elizabeth EC','https://goo.gl/maps/hQkFcoHmLJB2'),(6,'Eastern Cape','Umtata (Mthatha)-Umtata','Umtata','Unknown',-31.0000000,28.0000000,'Shop L137 33 Errol Springs Ave B T Ngebs Mall Umtata EC','https://goo.gl/maps/KAEUTMZBsV92'),(7,'Eastern Cape','Mdantsane-Mdantsane City','Mdantsane City','Unknown',-32.0000000,27.0000000,'Shop no 60 Mdantsane City Cnr Bilies Toad & Qumza highigh Mdantsane 5219 EC','https://goo.gl/maps/EMQr8Way6AM2'),(8,'Eastern Cape','East London-Gillwell','Gillwell','Unknown',-33.0000000,27.0000000,'Shop no LG37 4 Fleet St East London 5200 EC','https://goo.gl/maps/fY3RQDQfwgB2'),(9,'Eastern Cape','Queenstown-The Hexagon','The Hexagon','Unknown',-31.0000000,26.0000000,'The Hexagon Cnr Hexagon & Bowker Street Queenstown 5319 EC','https://goo.gl/maps/i9XTLQUEW762'),(10,'Free State','Bloemfontein-Bloemfontein CBD','Bloemfontein CBD','Unknown',-29.0000000,26.0000000,'Liberty Life Building Corner of St Andrews & Church Street Bloemfontein 9301 FS','https://goo.gl/maps/L7NdDSoQCvy'),(11,'Free State','Bloemfontein-Botshabelo','Botshabelo','Unknown',-29.0000000,26.0000000,'Shop 19 RCM Shopping Complex Strand St Botshabelo FS','https://goo.gl/maps/GBhmm15vW7H2'),(12,'Gauteng','Kempton Park-Kempton Square','Kempton Square','Unknown',-26.0000000,28.0000000,'11 Voortrekker street Kempton Park 1619 GP','https://goo.gl/maps/oq13Qn5C1zD2'),(13,'Gauteng','Roodepoort-Westgate Mall','Westgate Mall','Unknown',-26.0000000,27.0000000,'120 Ontdekkers Rd Roodepoort 1710 Joburg GP','https://goo.gl/maps/cQ5xcP9Vrgu'),(14,'Gauteng','Vereeniging-Marks Park','Marks Park','Unknown',-26.0000000,27.0000000,'30 Voortrekker St Vereeniging 1935 GP','https://goo.gl/maps/kxMHd2hFE6D2'),(15,'Gauteng','Pretoria-Atlyn Mall','Atlyn Mall','Unknown',-25.0000000,28.0000000,'420 Phatedu Str Atteridgeville Pretoria 0008 GP','https://goo.gl/maps/iL2GKpz52jt'),(16,'Gauteng','Vanderbijlpark-Vaalgate Mall','Vaalgate Mall','Unknown',-26.0000000,27.0000000,'880 D F Malan St Vanderbijlpark 1900 GP','https://goo.gl/maps/Evcv6RzZNsu'),(17,'Gauteng','Santon-Alexandra Plaza','Alexandra Plaza','Unknown',-26.0000000,28.0000000,'Alexandra Plaza 1st Street Sandton 2090 GP','https://goo.gl/maps/jqUKyGxUuT82'),(18,'Gauteng','Carletonville-Gateway Mall','Gateway Mall','Unknown',-26.0000000,27.0000000,'Annan Rd Gateway Mall Carletonville GP','https://goo.gl/maps/BwDPcviSa3E2'),(19,'Gauteng','Attridgeville-Attridgeville','Attridgeville','Unknown',-25.0000000,28.0000000,'Atlyn Mall Cnrs Khoza Phudufufu and Umkhombe Street Attridgeville Ext 25','https://goo.gl/maps/6HWR8ZeNLFr'),(20,'Gauteng','Randfontein-Randfontein Station Mall','Randfontein Station Mall','Unknown',-26.0000000,27.0000000,'Brury St Randfontein 1759 GP','https://goo.gl/maps/ftxgTUWE6A42'),(21,'Gauteng','Diepkloop-Bara Mall','Bara Mall','Unknown',-26.0000000,27.0000000,'Chris Hani Rd Diepkloop Soweto GP','https://goo.gl/maps/YEoNuGfP9v12'),(22,'Gauteng','Springs-Springs','Springs','Unknown',-26.0000000,28.0000000,'Cnr 5th Avenue and 4th Street Springs 1560 GP','https://goo.gl/maps/3h5nxhm3nuC2'),(23,'Gauteng','Hammanskraal-Jubilee Mall','Jubilee Mall','Unknown',-25.0000000,28.0000000,'Cnr Jubilee and Harry Gwala Road Hammanskraal 0407 GP','https://goo.gl/maps/uHCAQu5EFwQ2'),(24,'Gauteng','Braamfontein-The Bridge Shopping Centre','The Bridge Shopping Centre','Unknown',-26.0000000,28.0000000,'Cnr King George St & Noord Street Joburg 2000 GP','https://goo.gl/maps/rM2ssWsUSbE2'),(25,'Gauteng','Mondeor-Southgate Mall','Southgate Mall','Unknown',-26.0000000,27.0000000,'Rifle Range Rd Southgate Mall Mondeor Joburg 2091 GP','https://goo.gl/maps/p4FyEgtsmcA2'),(26,'Gauteng','Pretoria-Bloed Street','Bloed Street','Unknown',-25.0000000,28.0000000,'Shop 003a Scotts Corner Cnr Bloed & Van Der Walt Street Pretoria CBD','https://goo.gl/maps/4PhrwemNyGS2'),(27,'Gauteng','Katlehong-Sontonga Mall','Sontonga Mall','Unknown',-26.0000000,28.0000000,'Shop 11 CNR Sontoga Ave & Katlehong Str Katlehong Joburg GP','https://goo.gl/maps/MpHjzk3wAUv'),(28,'Gauteng','Benoni-Daveyton Shopping Centre','Daveyton Shopping Centre','Unknown',-26.0000000,28.0000000,'Shop 17D Daveyton Shopping Centre Eiselen Street Daveyton 1520 GP','https://goo.gl/maps/teFbbwwZRtB2'),(29,'Gauteng','Key West-Key West','Key West','Unknown',-26.0000000,27.0000000,'Shop 21 Corner of Paardekraal Road and Viljoen Street Monument Krugersdorp','https://goo.gl/maps/BNQrounGmGU2'),(30,'Gauteng','Meadowlands-Meadow Point (Ndofaya Mall)','Meadow Point (Ndofaya Mall)','Unknown',-26.0000000,27.0000000,'Shop 26 Ndofaya Mall Cnr Heckroodt Circle and Odendaal Road / Marsh Street Meadowlands Soweto 1852','https://goo.gl/maps/rz48c9Qhk2N2'),(31,'Gauteng','Ga-Rankuwa-Ga-Rankuwa','Ga-Rankuwa','Unknown',-25.0000000,27.0000000,'Shop 29 Mangope Highway Street Zone 5 Ga-Rankuwa','https://goo.gl/maps/zkPQAu6cmrM2'),(32,'Gauteng','Randburg-Randburg City','Randburg City','Unknown',-26.0000000,28.0000000,'Shop 31 Oak Ave Randburg Joburg 2194 GP','https://goo.gl/maps/KvgU73Ws3RL2'),(33,'Gauteng','Pretoria-Soshanguve Crossing Mall','Soshanguve Crossing Mall','Unknown',-25.0000000,28.0000000,'Shop 36A M 43 Aubrey Matlakala St Soshanguve 0152 GP','https://goo.gl/maps/RPCaQVZ4HrM2'),(34,'Gauteng','Benoni-Lakeside Mall','Lakeside Mall','Unknown',-26.0000000,28.0000000,'Shop 5&6 Tom Jones St Benoni 1501 GP','https://goo.gl/maps/NkC3nJddZzp'),(35,'Gauteng','Brakpan-Tsakane Mall','Tsakane Mall','Unknown',-26.0000000,28.0000000,'Shop 60b Tsakane Mall Modjadji St Tsakane Brakpan 1548 GP','https://goo.gl/maps/uZqwAFbBHmu'),(36,'Gauteng','Soweto-Jabulani Mall','Jabulani Mall','Unknown',-26.0000000,27.0000000,'Shop 69 Jabulani Mall Cnr Koma & Bolani Street Jabulani Soweto GP','https://goo.gl/maps/q4ZoNx9KTsB2'),(37,'Gauteng','Germiston-Germiston','Germiston','Unknown',-26.0000000,28.0000000,'Shop 6n Entrance 1 Golden Walk Shopping Centre Germiston 1400 GP','https://goo.gl/maps/2NqdTm3dA1T2'),(38,'Gauteng','Brakpan-Mall Carnival','Mall Carnival','Unknown',-26.0000000,28.0000000,'Shop 72 Cnr Airport & Heidelberg Rd Dalpark Ext 5 Brakpan 1552 GP','https://goo.gl/maps/cjx6AfUHzhG2'),(39,'Gauteng','Soweto-Festival Mall','Festival Mall','Unknown',-26.0000000,28.0000000,'Shop 86 Kelvin St & CR Swart Drive Joburg 1619 GP','https://goo.gl/maps/jkGgXPUfnao'),(40,'Gauteng','Sebokeng-Sebokeng','Sebokeng','Unknown',-26.0000000,27.0000000,'Shop H08 Thabong Mall Moshoeshoe St Sebokeng','https://goo.gl/maps/6XvHJQgrZtM2'),(41,'Gauteng','Tembisa-Phumulani Mall','Phumulani Mall','Unknown',-25.0000000,28.0000000,'Shop No 24 Olifantsfontein Road Tembisa Joburg 1632 GP','https://goo.gl/maps/uZMEKxZqRjn'),(42,'Gauteng','Krugersdorp-Kagiso Mall','Kagiso Mall','Unknown',-26.0000000,27.0000000,'Shop No 34 Randfontein Road Corner Kagiso Road Kagiso 1754 GP','https://goo.gl/maps/hnPyBhWzLqy'),(43,'Gauteng','Soweto-Maponya Mall','Maponya Mall','Unknown',-26.0000000,27.0000000,'Shop No 40 G floor Maponya Mall Chris Hani Rd Klipspruit Ext 5 Soweto 1809 GP','https://goo.gl/maps/yMErgWbJy3C2'),(44,'Gauteng','Vereeniging-Palm Springs Mall','Palm Springs Mall','Unknown',-26.0000000,27.0000000,'Shop No 5 Cnr Welgevonden & Falcon St Evaton 1805 GP','https://goo.gl/maps/KvVQYjgDPhm'),(45,'Gauteng','Soweto-Protea Gardens','Protea Gardens','Unknown',-26.0000000,27.0000000,'Shop no. 18 Protea Gardens Mall Cnr Old Potchefstroom & Alekhine Soweto 1818 GP ','https://goo.gl/maps/tQL3gdjVo5E2'),(46,'Gauteng','JHB-Orange Farm','Orange Farm','Unknown',-26.0000000,27.0000000,'Shop U39 Eyethu Orange Farm Mall Orange Farm Ext 4 1841 Joburg GP','https://goo.gl/maps/rFXy2E1KvUy'),(47,'Gauteng','Southgate-Southgate','Southgate','Unknown',-26.0000000,27.0000000,'Southgate Mall Rifle Range Road Southgate','https://goo.gl/maps/fkrmzauCGhS2'),(48,'Gauteng','JHB-Rissik','Rissik','Unknown',-26.0000000,28.0000000,'Surrey House Building Corner Fox and Rissik Street Joburg 2107 GP','https://goo.gl/maps/pByHtWofBwo'),(49,'Gauteng','Alberton-Alberton','Alberton','Unknown',-26.0000000,28.0000000,'Village Square Shopping Centre 46 Voortrekker Road Alberton Boulevard New Redruth Alberton 1449 GP','https://goo.gl/maps/uzgLGwswv4P2'),(50,'Kwazulu-Natal','Isipingo-Isipingo Juction','Isipingo Juction','Unknown',-29.0000000,30.0000000,'19 Pardy Rd Isipingo 4133 KZN','https://goo.gl/maps/LhrTBu8SC4D2'),(51,'Kwazulu-Natal','Durban-Durban CBD','Durban CBD','Unknown',-29.0000000,31.0000000,'292 Cnr Smith and Anton Lembede Street Durban CBD KZN','https://goo.gl/maps/4S7VcYtgEoF2'),(52,'Kwazulu-Natal','Durban South-Clairwood','Clairwood','Unknown',-29.0000000,30.0000000,'622 South Coast Road Clairwood Durban South 4052','https://goo.gl/maps/17V4Dv6RDW72'),(53,'Kwazulu-Natal','Tongaat-Watson Ushukela Highway','Watson Ushukela Highway','Unknown',-29.0000000,31.0000000,'Cnr Main Road and Watson Ushukela Highway','https://goo.gl/maps/RW9BmDN18hz'),(54,'Kwazulu-Natal','Hammarsdale-Junction Mall','Junction Mall','Unknown',-29.0000000,30.0000000,'Hammarsdale Junction Mall Kunene Road Durban','https://goo.gl/maps/ZyPg6ShcSKM2'),(55,'Kwazulu-Natal','Pietermaritzburg-Treasury House','Treasury House','Unknown',-29.0000000,30.0000000,'Shop 10 Treasury House 145 Chief Albert Luthuli Rd Pietermaritzburg 3201 KZN','https://goo.gl/maps/ghKrVMcbHfw'),(56,'Kwazulu-Natal','Empangeni-Empangeni','Empangeni','Unknown',-28.0000000,31.0000000,'Shop 108 335 Maxwell Street Empangeni','https://goo.gl/maps/n6LNpmyXvHH2'),(57,'Kwazulu-Natal','Empangeni-Sanlam Centre','Sanlam Centre','Unknown',-28.0000000,31.0000000,'Shop 108 Sanlam Centre 335 Maxwell St Empangeni KZN','https://goo.gl/maps/8A4AF6jAReu'),(58,'Kwazulu-Natal','Ulundi-Ulundi Site','Ulundi Site','Unknown',-28.0000000,31.0000000,'Shop 10A King Senzangakhona Centre Cnr King Dinzulu Highway and Princess Magogo Street Ulundi 3838 KZN','https://goo.gl/maps/7c2JDHdzohC2'),(59,'Kwazulu-Natal','Richards Bay-Taxi City','Taxi City','Unknown',-28.0000000,32.0000000,'Shop 12 Taxi City Cnr Bullion Boulevard & Krugerrand roads Richards Bay 3900 KZN','https://goo.gl/maps/Zjx8qQtivCn'),(60,'Kwazulu-Natal','Pinetown-Pine Crest','Pine Crest','Unknown',-29.0000000,30.0000000,'Shop 231 17 Kings Rd Pine Crest centre Pinetown 3620 KZN','https://goo.gl/maps/aRurLRCgP6w'),(61,'Kwazulu-Natal','Vryheid-Vryheid','Vryheid','Unknown',-27.0000000,30.0000000,'SHOP 24A Mason Street Vryheid','https://goo.gl/maps/s6dffU8qixy'),(62,'Kwazulu-Natal','Tongaat-Joosab Centre','Joosab Centre','Unknown',-29.0000000,31.0000000,'Shop 3 Joosab Centre Watson Highway Tongaat Kwazulu Natal 4399','https://goo.gl/maps/osPudNkm5wk'),(63,'Kwazulu-Natal','Mandini-Mandini Rencken Spar','Mandini Rencken Spar','Unknown',-29.0000000,31.0000000,'Shop 31 Renckens Superspar Complex Old Main Rd Mandini 4490 KZN','https://goo.gl/maps/zJYLS1ghL792'),(64,'Kwazulu-Natal','Umlazi-Kwamnyandu','Kwamnyandu','Unknown',-29.0000000,30.0000000,'Shop 319 341 Griffiths Mxenge Umlazi KZN','https://goo.gl/maps/ZJuAehQBanQ2'),(65,'Kwazulu-Natal','Jozini-Jozini Mall','Jozini Mall','Unknown',-27.0000000,32.0000000,'Shop 43 Jozini Mall P449 Jozini 3987 KZN','https://goo.gl/maps/a7HdJ7TFCrt'),(66,'Kwazulu-Natal','Umzinto-Umzinto Shopping centre','Umzinto Shopping centre','Unknown',-30.0000000,30.0000000,'Shop No B5b Umzinto Shopping centre','https://goo.gl/maps/W3pzwZx9RvD2'),(67,'Kwazulu-Natal','Umlazi-Mega City Branch','Mega City Branch','Unknown',-29.0000000,30.0000000,'Shop S3 Umlazi Mega City 50 Griffiths Mxenge Highway Umlazi 4066 KZN','https://goo.gl/maps/NMDYyReHi3R2'),(68,'Kwazulu-Natal','Kwamashu-Bridge City Centre','Bridge City Centre','Unknown',-29.0000000,30.0000000,'Shop U16 14th Str Kwamashu KZN','https://goo.gl/maps/rKVaTTTkEV82'),(69,'Limpopo','Makhado-Makhado','Makhado','Unknown',-23.0000000,29.0000000,'Shop 7 105 Burger Str Louis Trichardt Shoprite Centre Makhado 0920 LP','https://goo.gl/maps/mv95dgGMJ3M2'),(70,'Limpopo','Polokwane (Pietersburg)-Polokwane','Polokwane','Unknown',-23.0000000,29.0000000,'Shop 72 Landdros Mare Street Polokwane 0783 LP','https://goo.gl/maps/wSpdKtMLH3u'),(71,'Limpopo','Polokwane (Pietersburg)-Paledi Mall','Paledi Mall','Unknown',-23.0000000,29.0000000,'Shop No 06A R71 Tzaneen Road Polokwane (Mankweng) Limpopo','https://goo.gl/maps/dzfurngDmFL2'),(72,'Limpopo','Mokopane-Mokopane','Mokopane','Unknown',-24.0000000,29.0000000,'Shop no 1 52 Nelson Mandela Rd Mokopane (Potgietersrus) 0601 LP','https://goo.gl/maps/EdLCjQpXAX42'),(73,'Mpumalanga','Ermelo-Ermelo Mall','Ermelo Mall','Unknown',-26.0000000,29.0000000,'50A de Jager Street Ermelo Mall Mpumalanga','https://goo.gl/maps/DR2pi4WgDwQ2'),(74,'Mpumalanga','Hazyview-HazyView','HazyView','Unknown',-25.0000000,31.0000000,'Shop 314 Corner R536 and R40 Blue Haze Mall Hazyview 1242 MP','https://goo.gl/maps/LSUUJFyEDdt'),(75,'Mpumalanga','Bushbuckridge-Bushbuckridge Complex','Bushbuckridge Complex','Unknown',-24.0000000,31.0000000,'Shop 38 Twin City Cnr Main & Graskop Streets Bushbuckridge MP','https://goo.gl/maps/RgKZFChexe32'),(76,'Mpumalanga','Embalenhle-MallEmba','MallEmba','Unknown',-26.0000000,29.0000000,'Shop no 49 Cnr Old Provincial & Embalenhle road Embalenhle 2285 GP','https://goo.gl/maps/qnVMMnGrHqw'),(77,'North West','Mafikeng-Robinson Street','Robinson Street','Unknown',-25.0000000,25.0000000,'16 Robinson Street Mafikeng','https://goo.gl/maps/ttPGptf7Xh82'),(78,'North West','Potchefstroom-Ikageng Shopping Centre','Ikageng Shopping Centre','Unknown',-26.0000000,27.0000000,'42 Ikageng St Potchefstroom 2520 NW','https://goo.gl/maps/RnXFkH3KCf22'),(79,'North West','Brits-Pienaar Street','Pienaar Street','Unknown',-25.0000000,27.0000000,'50 Pienaar Street Brits','https://goo.gl/maps/zzxeQXFvUCq'),(80,'North West','Rustenburg-Rustenburg CBD','Rustenburg CBD','Unknown',-25.0000000,27.0000000,'Fatima Bhayat St CBD Rustenburg 0299 NW','https://goo.gl/maps/HYtF4Cuj6FP2'),(81,'North West','Klerksdorp-Terminus Centre','Terminus Centre','Unknown',-26.0000000,26.0000000,'Golf St Klerksdorp 2570 NW','https://goo.gl/maps/dqGQs5KJjmw'),(82,'North West','Taung-Taung','Taung','Unknown',-27.0000000,24.0000000,'shop 37a Taung','https://goo.gl/maps/g89nK3AvwyK2'),(83,'Northen Cape','Kuruman-Kuruman Mall','Kuruman Mall','Unknown',-27.0000000,23.0000000,'Shop 53 Kuruman Hall 26 Livingstone Street Kuruman 8460 NC','https://goo.gl/maps/mTQ7yVTpXqR2'),(84,'Western Cape','Cape Town-Cape Town','Cape Town','Unknown',-33.0000000,18.0000000,'African Bank Space 6 St Georges Mall Cape Town 8000 WC','https://goo.gl/maps/xFBormPgbkJ2'),(85,'Western Cape','Cape Town-Gugulethu','Gugulethu','Unknown',-33.0000000,18.0000000,'Cnr NY1 & NY6 Guguletu Cape Town WC','https://goo.gl/maps/kj5gpU3aLVA2'),(86,'Western Cape','Cape Town (Belville)-Bellstar Junction','Bellstar Junction','Unknown',-33.0000000,18.0000000,'Shop 33C Bellstar Junction Bellville station South Street Cape Town 7530 WC','https://goo.gl/maps/tGTS7CgUjqB2'),(87,'Western Cape','Cape Town-Makhaza Mall','Makhaza Mall','Unknown',-34.0000000,18.0000000,'Shop 4 Makhaza Shopping Centre Lansdown Rd Khayalitsha Cape Town 7784 WC','https://goo.gl/maps/d2wKN8PSJLP2');
/*!40000 ALTER TABLE `hollard_branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hollard_leads`
--

DROP TABLE IF EXISTS `hollard_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hollard_leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameSurname` varchar(100) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `product` varchar(20) NOT NULL,
  `activeTimeStamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hollard_leads`
--

LOCK TABLES `hollard_leads` WRITE;
/*!40000 ALTER TABLE `hollard_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `hollard_leads` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-26 10:35:31
