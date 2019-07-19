-- MySQL dump 10.16  Distrib 10.1.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: cartola
-- ------------------------------------------------------
-- Server version	10.1.11-MariaDB

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
-- Table structure for table `campeonato`
--

DROP TABLE IF EXISTS `campeonato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campeonato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campeonato`
--

LOCK TABLES `campeonato` WRITE;
/*!40000 ALTER TABLE `campeonato` DISABLE KEYS */;
INSERT INTO `campeonato` VALUES (2,'21º Osvaldo Cruz Eliminated of Cartola');
/*!40000 ALTER TABLE `campeonato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (5,'Grupo 1'),(6,'Grupo 2'),(7,'Grupo 3'),(8,'Grupo 4');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_time`
--

DROP TABLE IF EXISTS `grupo_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo_time` (
  `grupo_id` int(11) NOT NULL,
  `time_id` int(11) NOT NULL,
  KEY `FKpr860vxxrkwtd21g94r410udx` (`time_id`),
  KEY `FKqklis6g4lu9cx94yxbuppfu10` (`grupo_id`),
  CONSTRAINT `FKpr860vxxrkwtd21g94r410udx` FOREIGN KEY (`time_id`) REFERENCES `time` (`id`),
  CONSTRAINT `FKqklis6g4lu9cx94yxbuppfu10` FOREIGN KEY (`grupo_id`) REFERENCES `grupo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_time`
--

LOCK TABLES `grupo_time` WRITE;
/*!40000 ALTER TABLE `grupo_time` DISABLE KEYS */;
INSERT INTO `grupo_time` VALUES (6,28),(6,4),(6,12),(6,18),(6,45),(6,35),(6,37),(6,39),(6,29),(6,23),(6,41),(7,44),(7,21),(7,2),(7,38),(7,31),(7,14),(7,17),(7,24),(7,33),(7,5),(7,8),(5,36),(5,13),(5,42),(5,30),(5,34),(5,22),(5,10),(5,16),(5,3),(5,11),(5,20),(5,32),(8,7),(8,43),(8,15),(8,1),(8,25),(8,6),(8,9),(8,19),(8,27),(8,40),(8,26);
/*!40000 ALTER TABLE `grupo_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rodada`
--

DROP TABLE IF EXISTS `rodada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rodada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `rodada_atual` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rodada`
--

LOCK TABLES `rodada` WRITE;
/*!40000 ALTER TABLE `rodada` DISABLE KEYS */;
INSERT INTO `rodada` VALUES (4,'1 Rodada',1,8),(5,'2 Rodada',2,9),(6,'3 Rodada',3,10),(7,'4 Rodada',4,11);
/*!40000 ALTER TABLE `rodada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rodada_time`
--

DROP TABLE IF EXISTS `rodada_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rodada_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pontos` decimal(19,2) DEFAULT NULL,
  `rodada_id` int(11) NOT NULL,
  `time_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3psfab3lq2k9k1kanec4h7jx2` (`rodada_id`),
  KEY `FKd5xaexnghwl814ujvdq78wgk9` (`time_id`),
  CONSTRAINT `FK3psfab3lq2k9k1kanec4h7jx2` FOREIGN KEY (`rodada_id`) REFERENCES `rodada` (`id`),
  CONSTRAINT `FKd5xaexnghwl814ujvdq78wgk9` FOREIGN KEY (`time_id`) REFERENCES `time` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rodada_time`
--

LOCK TABLES `rodada_time` WRITE;
/*!40000 ALTER TABLE `rodada_time` DISABLE KEYS */;
INSERT INTO `rodada_time` VALUES (1,38.61,4,13),(2,101.72,5,13),(3,93.65,6,13),(4,57.38,4,3),(5,94.00,5,3),(6,181.35,6,3),(7,60.64,4,16),(8,87.60,5,16),(9,157.90,6,16),(11,1.00,7,13);
/*!40000 ALTER TABLE `rodada_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `nome_time` varchar(255) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `time_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time`
--

LOCK TABLES `time` WRITE;
/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` VALUES (1,'Gustavo Kamei','Gugashow10 F.C.','gugashow10-f-c',3793824),(2,'Danilo','Danilando FC','danilando-fc',19294811),(3,'Netozado','Netozadoo F.C','netozadoo-f-c',177147),(4,'Hugo Cavallini','Clube Atl\'e9tico Trov\'e3o sem Freio','clube-atletico-trovao-sem-freio',13950110),(5,'Leandro Cabral','Tribut\'e1rio FC','tributario-fc',502066),(6,'William Shanklopp Jr','Mogiverpool WMF&E','mogiverpool-wmf-e',320655),(7,'Baga','B.G.A F.C','b-g-a-f-c',13930803),(8,'Alan Loiola ','Zica do Pantano ZN','zica-do-pantano-zn',107911),(9,'Thiago Costa','NardoniFC','nardonifc',3774748),(10,'Rafael Guimar\'e3es','Mandi CEC','mandi-cec',6462067),(11,'Bruno Del Bianco','PhysiologyFC','physiologyfc',4105737),(12,'Iago Cortellini','Cortellini F.C','cortellini-f-c',377567),(13,'Luis Gustavo','GutaPalmeiras','gutapalmeiras',2464749),(14,'DANILO','P@RKS2019','p-rks2019',56530),(15,'Glauco','GGL - Galinha_Gamb\'e1_','ggl-galinha-gamba',2468830),(16,'Felipe Leite','MulesquesFC','mulesquesfc',1250008),(17,'Vin\'edcius Loli','Palo Alto S.C.','palo-alto-s-c',4968583),(18,'Marcio Pitta','Flamengo80 FC','flamengo80-fc',3101649),(19,'Lucas Gon\'e7alves','Osvald\'e3oo F.C.','osvaldaoo-f-c',223445),(20,'M. Scolari DElia','S. E. DElia','s-e-delia',372204),(21,'DANILO  LEITE','DANGRL','dangrl',167380),(22,'Pedro moraes','Magicsrp','magicsrp',3768924),(23,'Leandro','leandromk','leandromk',1177121),(24,'Dennis Bosso','Sport Club Caras','sport-club-caras',3521423),(25,'Said_Dido','Kibada Total','kibada-total',192797),(26,'junior ramires','corinthiansramires','corinthiansramires',14262518),(27,'M1T0','Real Viola FC','real-viola-fc',59477),(28,'Fran\'e7a Lopes','Castor Troy S.C.','castor-troy-s-c',18253),(29,'Renato Turra Bueno','Turra FC','turra-fc',2305350),(30,'Marco Pitta','MPitta FC','mpitta-fc',4845444),(31,'Pablo Marani','ODFFC','odffc',14435170),(32,'Rod','Sport Club XXX de Fevereiro','sport-club-xxx-de-fevereiro',14729117),(33,'Rafael Cintra','Sport Club R. C.','sport-club-r-c',8538597),(34,'Welerson','MWFLU','mwflu',8296690),(35,'M. Kalil','M. Kalil Futbol ','m-kalil-futbol',14631488),(36,'Ivan','Coringao Pira F C','coringao-pira-f-c',980588),(37,'Rafael Borguetti','RaLFoR','ralfor',13979059),(38,'Flavio Luiz Perez','EC Jah Era','ec-jah-era',870083),(39,'TIAGO DANELUCI','TIO AFRO F.C','tio-afro-f-c',9142969),(40,'Jos\'e9 Heitor Kosicki','S.E.R@sta','s-e-r-sta',2244203),(41,'Voivodic, Rafael','voivodic','voivodic',191804),(42,'JULIO','JULIO ARRUDA F.C.','julio-arruda-f-c',5729192),(43,'Roberto Bagarollo','BetoBaga','betobaga',19373614),(44,'Vitor Loli','Caf\'e9 Macali Fc','cafe-macali-fc',19880981),(45,'Danilo Oliveira','Gorila Dortmund','gorila-dortmund',13935553);
/*!40000 ALTER TABLE `time` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-19 17:37:20
