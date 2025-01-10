/*M!999999\- enable the sandbox mode */
-- MariaDB dump 10.19-11.6.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: biuro_maklerskie
-- ------------------------------------------------------
-- Server version       11.6.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `doradca`
--

DROP TABLE IF EXISTS `doradca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doradca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(40) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefon` varchar(14) DEFAULT NULL,
  `dziedzina` enum('papiery_wartosciowe','obsluga_klienta') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doradca`
--

LOCK TABLES `doradca` WRITE;
/*!40000 ALTER TABLE `doradca` DISABLE KEYS */;
INSERT INTO `doradca` VALUES
(1,'Jan','Kowalski','jan.kowalski@biuropartner.pl','123 456 789','papiery_wartosciowe'),
(2,'Anna','Nowak','anna.nowak@biuropartner.pl','987 654 321','obsluga_klienta'),
(3,'Piotr','Wiśniewski','piotr.wisniewski@biuropartner.pl','456 789 123','papiery_wartosciowe'),
(4,'Katarzyna','Wójcik','katarzyna.wojcik@biuropartner.pl','321 654 987','obsluga_klienta'),
(5,'Michał','Kamiński','michal.kaminski@biuropartner.pl','654 321 789','papiery_wartosciowe'),
(6,'Agnieszka','Lewandowska','agnieszka.lewandowska@biuropartner.pl','789 123 456','obsluga_klienta'),
(7,'Tomasz','Zieliński','tomasz.zielinski@biuropartner.pl','234 678 901','papiery_wartosciowe'),
(8,'Ewa','Szymańska','ewa.szymanska@biuropartner.pl','890 123 456','obsluga_klienta'),
(9,'Robert','Kazmierczak','robert.kazmierczak@biuropartner.pl','123 890 456','papiery_wartosciowe'),
(10,'Magdalena','Jankowska','magdalena.jankowska@biuropartner.pl','901 234 567','obsluga_klienta'),
(11,'Krzysztof','Mazur','krzysztof.mazur@biuropartner.pl','345 678 912','papiery_wartosciowe'),
(12,'Joanna','Kaczmarek','joanna.kaczmarek@biuropartner.pl','912 345 678','obsluga_klienta'),
(13,'Paweł','Kwiatkowski','pawel.kwiatkowski@biuropartner.pl','678 901 234','papiery_wartosciowe'),
(14,'Maria','Zawadzka','maria.zawadzka@biuropartner.pl','567 890 123','obsluga_klienta'),
(15,'Maciej','Ciesielski','maciej.ciesielski@biuropartner.pl','234 567 890','papiery_wartosciowe'),
(16,'Barbara','Pietrzak','barbara.pietrzak@biuropartner.pl','890 234 567','obsluga_klienta'),
(17,'Dariusz','Michalak','dariusz.michalak@biuropartner.pl','567 234 890','papiery_wartosciowe'),
(18,'Iwona','Sikora','iwona.sikora@biuropartner.pl','678 345 901','obsluga_klienta'),
(19,'Grzegorz','Wesołowski','grzegorz.wesolowski@biuropartner.pl','901 678 234','papiery_wartosciowe'),
(20,'Aleksandra','Matysiak','aleksandra.matysiak@biuropartner.pl','234 901 678','obsluga_klienta');
/*!40000 ALTER TABLE `doradca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klient`
--

DROP TABLE IF EXISTS `klient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `klient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pesel` char(11) DEFAULT NULL,
  `imie` varchar(40) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klient`
--

LOCK TABLES `klient` WRITE;
/*!40000 ALTER TABLE `klient` DISABLE KEYS */;
INSERT INTO `klient` VALUES
(1,'92122412345','Jan','Kowalski'),
(2,'85101254321','Anna','Nowak'),
(3,'77030698765','Piotr','Wiśniewski'),
(4,'99072911123','Maria','Wójcik'),
(5,'82081565432','Krzysztof','Kowalczyk'),
(6,'95050322233','Ewa','Kamińska'),
(7,'73021833344','Michał','Lewandowski'),
(8,'98062144455','Agnieszka','Dąbrowska'),
(9,'94040355566','Tomasz','Zieliński'),
(10,'91051066677','Katarzyna','Szymańska'),
(11,'78091577788','Andrzej','Woźniak'),
(12,'89020588899','Magdalena','Kołodziej'),
(13,'76062999911','Paweł','Kozłowski'),
(14,'97080811211','Zofia','Jankowska'),
(15,'83091322322','Jacek','Mazur'),
(16,'96012133433','Natalia','Krawczyk'),
(17,'99042644544','Adam','Piotrowski'),
(18,'88021855655','Joanna','Grabowska'),
(19,'75062966766','Marcin','Nowicki'),
(20,'92072477877','Sylwia','Czerwińska'),
(22,'75062966766','Marcin','Nowicki');
/*!40000 ALTER TABLE `klient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konto_klienta`
--

DROP TABLE IF EXISTS `konto_klienta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `konto_klienta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telefon` varchar(14) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `preferowana_komunikacja` enum('email','telefon') DEFAULT NULL,
  `saldo` decimal(7,2) DEFAULT NULL,
  `typ` enum('zwykle','premium') DEFAULT NULL,
  `klient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `klient_id` (`klient_id`),
  CONSTRAINT `konto_klienta_ibfk_1` FOREIGN KEY (`klient_id`) REFERENCES `klient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konto_klienta`
--

LOCK TABLES `konto_klienta` WRITE;
/*!40000 ALTER TABLE `konto_klienta` DISABLE KEYS */;
INSERT INTO `konto_klienta` VALUES
(1,'456 789 123','marta.wojcik@gmail.com','email',20000.00,'premium',4),
(2,'234 567 901','anna.nowak@wp.pl','telefon',15000.50,'premium',2),
(3,'678 901 345','ewa.kaminska@gmail.com','telefon',250.00,'zwykle',6),
(4,'890 123 567','agnieszka.dabrowska@onet.eu','telefon',7500.00,'zwykle',8),
(5,'345 678 012','piotr.wisniewski@onet.eu','email',300.75,'zwykle',3),
(6,'234 109 765','pawel.kozlowski@gmail.com','telefon',3000.00,'zwykle',12),
(7,'567 890 234','krzysztof.kowalski@interia.pl','telefon',1000.25,'zwykle',5),
(8,'789 012 456','michal.lewandowski@wp.pl','email',12500.90,'premium',7),
(9,'123 456 890','jan.kowalski@gmail.com','email',5000.00,'zwykle',1),
(10,'901 234 678','tomasz.zielinski@gmail.com','email',1800.00,'zwykle',9),
(11,'123 098 654','magdalena.kolodziej@onet.eu','email',900.10,'zwykle',11),
(12,'012 345 789','katarzyna.szymanska@interia.pl','telefon',65000.00,'premium',10),
(13,'345 210 876','zofia.jankowska@wp.pl','email',87000.55,'premium',13),
(14,'456 321 987','jacek.mazur@gmail.com','telefon',50.50,'zwykle',14),
(15,'567 432 098','natalia.krawczyk@interia.pl','email',4600.40,'zwykle',15),
(16,'789 654 219','joanna.grabowska@gmail.com','email',100.00,'zwykle',17),
(17,'890 765 320','andrzej.wozniak@wp.pl','telefon',120.75,'zwykle',18),
(18,'678 543 109','adam.piotrowski@onet.eu','telefon',25000.00,'premium',16),
(19,'901 876 431','marcin.nowicki@gmail.com','email',33700.00,'premium',19),
(20,'012 987 542','sylwia.czerwinska@interia.pl','telefon',4550.80,'zwykle',20);
/*!40000 ALTER TABLE `konto_klienta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger przed_usunieciem_konta_klienta
before delete on konto_klienta
for each row
delete from zakupiony_papier where konto_klienta_id = OLD.`id` */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `papier_wartosciowy`
--

DROP TABLE IF EXISTS `papier_wartosciowy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `papier_wartosciowy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) DEFAULT NULL,
  `nazwa` varchar(20) DEFAULT NULL,
  `typ` enum('akcje','obligacje','etf','fundusze') DEFAULT NULL,
  `poziom_ryzyka` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papier_wartosciowy`
--

LOCK TABLES `papier_wartosciowy` WRITE;
/*!40000 ALTER TABLE `papier_wartosciowy` DISABLE KEYS */;
INSERT INTO `papier_wartosciowy` VALUES
(1,'AAPL','Apple Inc.','akcje',3),
(2,'TSLA','Tesla Inc.','akcje',4),
(3,'GOOG','Alphabet Inc.','akcje',3),
(4,'AMZN','Amazon.com','akcje',3),
(5,'NFLX','Netflix Inc.','akcje',4),
(6,'BA','Boeing Co.','akcje',3),
(7,'JNJ','Johnson & Johnson','akcje',2),
(8,'MSFT','Microsoft Corp.','akcje',3),
(9,'NVDA','NVIDIA Corp.','akcje',3),
(10,'XOM','ExxonMobil','akcje',2),
(11,'UBS','UBS Group','obligacje',1),
(12,'GS','Goldman Sachs','obligacje',2),
(13,'VOO','Vanguard S&P 500','etf',2),
(14,'TLT','20+ Year Treasury','etf',1),
(15,'SPY','SPDR S&P 500','etf',2),
(16,'QQQ','Powershares QQQ','etf',3),
(17,'XLRE','Real Estate Sel Sect','etf',3),
(18,'ARKK','ARK Innovation','fundusze',4),
(19,'FXAIX','Fidelity 500 Index','fundusze',2),
(20,'CAI','Capital Income','fundusze',2);
/*!40000 ALTER TABLE `papier_wartosciowy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prowadzacy`
--

DROP TABLE IF EXISTS `prowadzacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prowadzacy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(40) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prowadzacy`
--

LOCK TABLES `prowadzacy` WRITE;
/*!40000 ALTER TABLE `prowadzacy` DISABLE KEYS */;
INSERT INTO `prowadzacy` VALUES
(1,'Michalina','Kowalska','michalina.kowalska@biuromaklerskie.pl'),
(2,'Ewa','Nowak','ewa.nowak@biuromaklerskie.pl'),
(3,'Adam','Wiśniewski','adam.wisniewski@biuromaklerskie.pl'),
(4,'Krzysztof','Wójcik','krzysztof.wojcik@biuromaklerskie.pl'),
(5,'Magdalena','Kowalczyk','magdalena.kowalczyk@biuromaklerskie.pl'),
(6,'Michał','Kamiński','michal.kaminski@biuromaklerskie.pl'),
(7,'Anna','Lewandowska','anna.lewandowska@biuromaklerskie.pl'),
(8,'Robert','Zieliński','robert.zielinski@biuromaklerskie.pl'),
(9,'Katarzyna','Szymańska','katarzyna.szymanska@biuromaklerskie.pl'),
(10,'Piotr','Woźniak','piotr.wozniak@biuromaklerskie.pl'),
(11,'Zofia','Dąbrowska','zofia.dabrowska@biuromaklerskie.pl'),
(12,'Marek','Kozak','marek.kozak@biuromaklerskie.pl'),
(13,'Monika','Majewska','monika.majewska@biuromaklerskie.pl'),
(14,'Tomasz','Olszewski','tomasz.olszewski@biuromaklerskie.pl'),
(15,'Aleksandra','Stępień','aleksandra.stepien@biuromaklerskie.pl'),
(16,'Wojciech','Witkowski','wojciech.witkowski@biuromaklerskie.pl'),
(17,'Patrycja','Pawlak','patrycja.pawlak@biuromaklerskie.pl'),
(18,'Paweł','Sikorski','pawel.sikorski@biuromaklerskie.pl'),
(19,'Łukasz','Krawczyk','lukasz.krawczyk@biuromaklerskie.pl'),
(20,'Dominika','Michalska','dominika.michalska@biuromaklerskie.pl');
/*!40000 ALTER TABLE `prowadzacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spotkanie`
--

DROP TABLE IF EXISTS `spotkanie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spotkanie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `czas_rozpoczecia` datetime DEFAULT NULL,
  `czas_zakonczenia` datetime DEFAULT NULL,
  `doradca_id` int(11) DEFAULT NULL,
  `konto_klienta_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doradca_id` (`doradca_id`),
  KEY `konto_klienta_id` (`konto_klienta_id`),
  CONSTRAINT `spotkanie_ibfk_1` FOREIGN KEY (`doradca_id`) REFERENCES `doradca` (`id`),
  CONSTRAINT `spotkanie_ibfk_2` FOREIGN KEY (`konto_klienta_id`) REFERENCES `konto_klienta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spotkanie`
--

LOCK TABLES `spotkanie` WRITE;
/*!40000 ALTER TABLE `spotkanie` DISABLE KEYS */;
INSERT INTO `spotkanie` VALUES
(1,'2023-10-17 11:15:00','2023-10-17 11:45:00',5,5),
(2,'2023-10-17 09:30:00','2023-10-17 10:00:00',4,4),
(3,'2023-10-18 13:00:00','2023-10-18 13:30:00',6,6),
(4,'2023-10-16 11:00:00','2023-10-16 11:30:00',2,2),
(5,'2023-10-19 09:00:00','2023-10-19 09:30:00',8,8),
(6,'2023-10-15 10:00:00','2023-10-15 10:45:00',1,1),
(7,'2023-10-16 12:00:00','2023-10-16 12:30:00',3,3),
(8,'2023-10-22 11:00:00','2023-10-22 11:30:00',15,15),
(9,'2023-10-20 10:30:00','2023-10-20 11:00:00',10,10),
(10,'2023-10-19 15:00:00','2023-10-19 15:30:00',9,9),
(11,'2023-10-18 14:00:00','2023-10-18 14:45:00',7,7),
(12,'2023-10-21 14:30:00','2023-10-21 15:00:00',13,13),
(13,'2023-10-21 09:00:00','2023-10-21 09:30:00',12,12),
(14,'2023-10-22 10:00:00','2023-10-22 10:30:00',14,14),
(15,'2023-10-23 15:00:00','2023-10-23 15:30:00',17,17),
(16,'2023-10-15 09:00:00','2023-10-15 09:30:00',20,20),
(17,'2023-10-24 09:00:00','2023-10-24 09:30:00',18,18),
(18,'2023-10-20 11:30:00','2023-10-20 12:00:00',11,11),
(19,'2023-10-24 10:00:00','2023-10-24 10:30:00',19,19),
(20,'2023-10-23 13:30:00','2023-10-23 14:00:00',16,16);
/*!40000 ALTER TABLE `spotkanie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webinar`
--

DROP TABLE IF EXISTS `webinar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webinar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `czas_rozpoczecia` datetime DEFAULT NULL,
  `przewidywana_dlugsc` int(11) DEFAULT NULL,
  `tytul` varchar(255) DEFAULT NULL,
  `prowadzacy_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prowadzacy_id` (`prowadzacy_id`),
  CONSTRAINT `webinar_ibfk_1` FOREIGN KEY (`prowadzacy_id`) REFERENCES `prowadzacy` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webinar`
--

LOCK TABLES `webinar` WRITE;
/*!40000 ALTER TABLE `webinar` DISABLE KEYS */;
INSERT INTO `webinar` VALUES
(1,'2023-10-07 14:00:00',60,'Wprowadzenie do Inwestowania na Giełdzie',10),
(2,'2023-10-08 16:00:00',90,'Analiza Techniczna dla Początkujących',11),
(3,'2023-10-09 18:30:00',75,'Podstawy Analizy Fundamentalnej',12),
(4,'2023-10-11 09:00:00',120,'Strategie Zarządzania Ryzykiem Finansowym',9),
(5,'2023-10-11 14:00:00',45,'Jak Analizować Wskaźniki Ekonomiczne',1),
(6,'2023-10-13 11:00:00',105,'Zaawansowane Techniki Tradingowe',4),
(7,'2023-10-14 15:00:00',60,'Inwestowanie w Kryptowaluty - Co Musisz Wiedzieć',8),
(8,'2023-10-15 10:00:00',90,'Psychologia Inwestowania',15),
(9,'2023-10-16 17:00:00',80,'Automatyzacja Tradingu za Pomocą Botów',14),
(10,'2023-10-17 08:00:00',110,'Jak Inwestować w Akcje i Obligacje',13),
(11,'2023-10-18 13:00:00',50,'Rozwój Portfela Inwestycyjnego',3),
(12,'2023-10-19 19:00:00',60,'Handel Opcjami na Giełdzie',16),
(13,'2023-10-20 12:00:00',95,'Zarabianie na Rynkach Wzrostowych i Spadkowych',17),
(14,'2023-10-21 14:30:00',60,'Inwestowanie w Sektory Technologiczne',6),
(15,'2023-10-22 09:00:00',70,'Podstawy Pracy z Platformami Inwestycyjnymi',7),
(16,'2023-10-23 15:30:00',85,'Identyfikacja i Ocena Potencjalnych Inwestycji',2),
(17,'2023-10-24 11:30:00',75,'Rynki Surowcowe - Jak Inwestować w Złoto i Ropę',19),
(18,'2023-10-25 18:00:00',90,'Hedging na Rynkach Finansowych',14),
(19,'2023-10-26 16:00:00',50,'Etyka i Zrozumienie Regulacji w Handlu',5),
(20,'2023-10-27 10:00:00',60,'Jak Inwestować w Obligi Publiczne i Korporacyjne',6);
/*!40000 ALTER TABLE `webinar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webinar_konto_klienta`
--

DROP TABLE IF EXISTS `webinar_konto_klienta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webinar_konto_klienta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `webinar_id` int(11) DEFAULT NULL,
  `konto_klienta_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webinar_id` (`webinar_id`),
  KEY `konto_klienta_id` (`konto_klienta_id`),
  CONSTRAINT `webinar_konto_klienta_ibfk_1` FOREIGN KEY (`webinar_id`) REFERENCES `webinar` (`id`),
  CONSTRAINT `webinar_konto_klienta_ibfk_2` FOREIGN KEY (`konto_klienta_id`) REFERENCES `konto_klienta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webinar_konto_klienta`
--

LOCK TABLES `webinar_konto_klienta` WRITE;
/*!40000 ALTER TABLE `webinar_konto_klienta` DISABLE KEYS */;
INSERT INTO `webinar_konto_klienta` VALUES
(1,1,1),
(2,1,2),
(3,1,15),
(4,1,13),
(5,2,11),
(6,2,4),
(7,2,5),
(8,3,2),
(9,3,12),
(10,3,14),
(11,4,19),
(12,4,17),
(13,4,14),
(14,4,13),
(15,5,8),
(16,5,5),
(17,5,3),
(18,5,2),
(19,6,1),
(20,6,10);
/*!40000 ALTER TABLE `webinar_konto_klienta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zakupiony_papier`
--

DROP TABLE IF EXISTS `zakupiony_papier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zakupiony_papier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ilosc` int(11) DEFAULT NULL,
  `czas_zakupu` datetime DEFAULT NULL,
  `cena_zakupu` decimal(7,2) DEFAULT NULL,
  `konto_klienta_id` int(11) DEFAULT NULL,
  `papier_wartosciowy_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `konto_klienta_id` (`konto_klienta_id`),
  KEY `papier_wartosciowy_id` (`papier_wartosciowy_id`),
  CONSTRAINT `zakupiony_papier_ibfk_1` FOREIGN KEY (`konto_klienta_id`) REFERENCES `konto_klienta` (`id`),
  CONSTRAINT `zakupiony_papier_ibfk_2` FOREIGN KEY (`papier_wartosciowy_id`) REFERENCES `papier_wartosciowy` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zakupiony_papier`
--

LOCK TABLES `zakupiony_papier` WRITE;
/*!40000 ALTER TABLE `zakupiony_papier` DISABLE KEYS */;
INSERT INTO `zakupiony_papier` VALUES
(1,10,'2023-03-15 09:30:00',150.25,1,10),
(2,3,'2023-03-15 10:45:00',102.75,2,19),
(3,25,'2023-03-19 13:45:00',87.60,5,15),
(4,2,'2023-03-16 11:00:00',98.30,20,12),
(5,7,'2023-03-17 14:15:00',127.80,4,5),
(6,12,'2023-03-18 10:00:00',333.40,1,8),
(7,3,'2023-03-21 11:30:00',99.99,2,14),
(8,9,'2023-03-20 09:15:00',245.10,6,16),
(9,6,'2023-03-20 16:30:00',154.20,7,19),
(10,5,'2023-03-21 15:00:00',111.00,8,1),
(11,4,'2023-03-22 16:45:00',78.50,2,11),
(12,1,'2023-03-22 09:00:00',256.30,9,12),
(13,13,'2023-03-23 12:00:00',294.15,10,18),
(14,9,'2023-03-24 10:20:00',122.25,20,13),
(15,7,'2023-03-23 18:15:00',250.55,7,17),
(16,3,'2023-03-25 14:50:00',375.90,5,9),
(17,8,'2023-03-26 08:45:00',89.30,10,18),
(18,11,'2023-03-27 10:10:00',308.70,11,12),
(19,9,'2023-03-27 17:25:00',150.45,9,15),
(20,5,'2023-03-27 13:35:00',66.80,6,17);
/*!40000 ALTER TABLE `zakupiony_papier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;