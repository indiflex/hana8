-- MySQL dump 10.13  Distrib 9.5.0, for macos26.0 (arm64)
--
-- Host: 127.0.0.1    Database: testdb
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Dept`
--

DROP TABLE IF EXISTS `Dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dept` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `captain` int unsigned DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_Dept_name` (`name`),
  KEY `fk_Dept_captain_Member` (`captain`),
  CONSTRAINT `fk_Dept_captain_Member` FOREIGN KEY (`captain`) REFERENCES `Member` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dept`
--

LOCK TABLES `Dept` WRITE;
/*!40000 ALTER TABLE `Dept` DISABLE KEYS */;
INSERT INTO `Dept` VALUES (1,1,'2026-03-19 03:53:20','2026-03-19 03:53:20','Dev'),(2,2,'2026-03-19 03:53:20','2026-03-19 03:53:20','HR');
/*!40000 ALTER TABLE `Dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DeptMember`
--

DROP TABLE IF EXISTS `DeptMember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DeptMember` (
  `dept` smallint unsigned NOT NULL,
  `member` int unsigned NOT NULL,
  KEY `fk_DeptMember_member` (`member`),
  KEY `fk_DeptMember_dept` (`dept`),
  CONSTRAINT `fk_DeptMember_dept` FOREIGN KEY (`dept`) REFERENCES `Dept` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_DeptMember_member` FOREIGN KEY (`member`) REFERENCES `Member` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DeptMember`
--

LOCK TABLES `DeptMember` WRITE;
/*!40000 ALTER TABLE `DeptMember` DISABLE KEYS */;
/*!40000 ALTER TABLE `DeptMember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flyway_schema_history`
--

DROP TABLE IF EXISTS `flyway_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `script` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_schema_history`
--

LOCK TABLES `flyway_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_schema_history` DISABLE KEYS */;
INSERT INTO `flyway_schema_history` VALUES (1,'1','init','SQL','V1__init.sql',411395135,'hana8','2026-03-03 03:59:19',33,1),(2,'2','add salhour User','SQL','V2__add_salhour_User.sql',668873840,'hana8','2026-03-03 04:31:27',16,1),(3,'3','add bloodType User','SQL','V3__add_bloodType_User.sql',0,'hana8','2026-03-03 04:31:27',3,1);
/*!40000 ALTER TABLE `flyway_schema_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hashtag`
--

DROP TABLE IF EXISTS `Hashtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hashtag` (
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tag` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_Hashtag_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hashtag`
--

LOCK TABLES `Hashtag` WRITE;
/*!40000 ALTER TABLE `Hashtag` DISABLE KEYS */;
/*!40000 ALTER TABLE `Hashtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HashtagPost`
--

DROP TABLE IF EXISTS `HashtagPost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HashtagPost` (
  `hashtag` int unsigned NOT NULL,
  `post` int unsigned NOT NULL,
  KEY `fk_HashtagPost_post` (`post`),
  KEY `fk_HashtagPost_hashtag` (`hashtag`),
  CONSTRAINT `fk_HashtagPost_hashtag` FOREIGN KEY (`hashtag`) REFERENCES `Hashtag` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_HashtagPost_post` FOREIGN KEY (`post`) REFERENCES `Post` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HashtagPost`
--

LOCK TABLES `HashtagPost` WRITE;
/*!40000 ALTER TABLE `HashtagPost` DISABLE KEYS */;
/*!40000 ALTER TABLE `HashtagPost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member`
--

DROP TABLE IF EXISTS `Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Member` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `isActive` bit(1) DEFAULT b'0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nickname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passwd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bloodType` enum('A','AB','B','O') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_User_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` VALUES (1,_binary '','2026-03-12 01:29:55','2026-03-12 01:29:55','hong','hong@gmail.com','xxxx','A'),(2,_binary '\0','2026-03-12 01:29:55','2026-03-12 01:29:55','kim','kim@gmail.com',NULL,'B'),(3,_binary '','2026-03-12 01:29:55','2026-03-12 01:29:55','lee','lee@gmail.com',NULL,'AB');
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MemberImage`
--

DROP TABLE IF EXISTS `MemberImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MemberImage` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `member` int unsigned NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `savedir` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `savename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orgname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_MemberImage_member` (`member`),
  CONSTRAINT `fk_MemberImage_member` FOREIGN KEY (`member`) REFERENCES `Member` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemberImage`
--

LOCK TABLES `MemberImage` WRITE;
/*!40000 ALTER TABLE `MemberImage` DISABLE KEYS */;
INSERT INTO `MemberImage` VALUES (1,'2026-03-12 01:32:03',1,'2026-03-12 01:32:03','2026/03/12','ce2b569b-7a87-4145-8fcb-a6f8d7110f18.jpg','test1.jpg',NULL);
/*!40000 ALTER TABLE `MemberImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Post`
--

DROP TABLE IF EXISTS `Post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Post` (
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `writer` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Post_writer_Member` (`writer`),
  CONSTRAINT `fk_Post_writer_Member` FOREIGN KEY (`writer`) REFERENCES `Member` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Post`
--

LOCK TABLES `Post` WRITE;
/*!40000 ALTER TABLE `Post` DISABLE KEYS */;
INSERT INTO `Post` VALUES ('2026-03-12 01:29:55',1,'2026-03-12 01:29:55',1,'Title1'),('2026-03-12 01:29:55',2,'2026-03-12 01:29:55',2,'Title2'),('2026-03-12 01:29:55',3,'2026-03-12 01:29:55',3,'Title3'),('2026-03-19 03:24:43',5,'2026-03-19 03:24:43',1,'Title4'),('2026-03-19 03:24:43',6,'2026-03-19 03:24:43',1,'Title5'),('2026-03-19 03:24:43',7,'2026-03-19 03:24:43',1,'Title6'),('2026-03-19 03:24:43',8,'2026-03-19 03:24:43',1,'Title7'),('2026-03-19 03:24:43',9,'2026-03-19 03:24:43',1,'Title8'),('2026-03-19 03:24:43',10,'2026-03-19 03:24:43',1,'Title9'),('2026-03-19 03:24:43',11,'2026-03-19 03:24:43',1,'Title10'),('2026-03-19 03:24:43',12,'2026-03-19 03:24:43',1,'Title11'),('2026-03-19 03:24:43',13,'2026-03-19 03:24:43',1,'Title12'),('2026-03-19 03:24:43',14,'2026-03-19 03:24:43',1,'Title13'),('2026-03-19 03:24:43',15,'2026-03-19 03:24:43',1,'Title14'),('2026-03-19 03:24:43',16,'2026-03-19 03:24:43',1,'Title15'),('2026-03-19 03:24:43',17,'2026-03-19 03:24:43',1,'Title16'),('2026-03-19 03:24:43',18,'2026-03-19 03:24:43',1,'Title17'),('2026-03-19 03:24:43',19,'2026-03-19 03:24:43',1,'Title18'),('2026-03-19 03:24:43',20,'2026-03-19 03:24:43',1,'Title19'),('2026-03-19 03:24:43',21,'2026-03-19 03:24:43',1,'Title20'),('2026-03-19 03:24:43',22,'2026-03-19 03:24:43',1,'Title21'),('2026-03-19 03:24:43',23,'2026-03-19 03:24:43',1,'Title22'),('2026-03-19 03:24:43',24,'2026-03-19 03:24:43',1,'Title23'),('2026-03-19 03:24:43',25,'2026-03-19 03:24:43',1,'Title24'),('2026-03-19 03:24:43',26,'2026-03-19 03:24:43',1,'Title25'),('2026-03-19 03:24:43',27,'2026-03-19 03:24:43',1,'Title26'),('2026-03-19 03:24:43',28,'2026-03-19 03:24:43',1,'Title27'),('2026-03-19 03:24:43',29,'2026-03-19 03:24:43',1,'Title28'),('2026-03-19 03:24:43',30,'2026-03-19 03:24:43',1,'Title29'),('2026-03-19 03:24:43',31,'2026-03-19 03:24:43',1,'Title30'),('2026-03-19 03:24:43',32,'2026-03-19 03:24:43',1,'Title31'),('2026-03-19 03:24:43',33,'2026-03-19 03:24:43',1,'Title32'),('2026-03-19 03:24:43',34,'2026-03-19 03:24:43',1,'Title33'),('2026-03-19 03:24:43',35,'2026-03-19 03:24:43',1,'Title34'),('2026-03-19 03:24:43',36,'2026-03-19 03:24:43',1,'Title35'),('2026-03-19 03:24:43',37,'2026-03-19 03:24:43',1,'Title36'),('2026-03-19 03:24:43',38,'2026-03-19 03:24:43',1,'Title37'),('2026-03-19 03:24:43',39,'2026-03-19 03:24:43',1,'Title38'),('2026-03-19 03:24:43',40,'2026-03-19 03:24:43',1,'Title39'),('2026-03-19 03:24:43',41,'2026-03-19 03:24:43',1,'Title40'),('2026-03-19 03:24:43',42,'2026-03-19 03:24:43',1,'Title41'),('2026-03-19 03:24:43',43,'2026-03-19 03:24:43',1,'Title42'),('2026-03-19 03:24:43',44,'2026-03-19 03:24:43',1,'Title43'),('2026-03-19 03:24:43',45,'2026-03-19 03:24:43',1,'Title44'),('2026-03-19 03:24:43',46,'2026-03-19 03:24:43',1,'Title45'),('2026-03-19 03:24:43',47,'2026-03-19 03:24:43',1,'Title46'),('2026-03-19 03:24:43',48,'2026-03-19 03:24:43',1,'Title47'),('2026-03-19 03:24:43',49,'2026-03-19 03:24:43',1,'Title48'),('2026-03-19 03:24:43',50,'2026-03-19 03:24:43',1,'Title49'),('2026-03-19 03:24:43',51,'2026-03-19 03:24:43',1,'Title50'),('2026-03-19 03:24:43',52,'2026-03-19 03:24:43',1,'Title51'),('2026-03-19 03:24:43',53,'2026-03-19 03:24:43',1,'Title52'),('2026-03-19 03:24:43',54,'2026-03-19 03:24:43',1,'Title53'),('2026-03-19 03:24:43',55,'2026-03-19 03:24:43',1,'Title54'),('2026-03-19 03:24:43',56,'2026-03-19 03:24:43',1,'Title55'),('2026-03-19 03:24:43',57,'2026-03-19 03:24:43',1,'Title56'),('2026-03-19 03:24:43',58,'2026-03-19 03:24:43',1,'Title57'),('2026-03-19 03:24:43',59,'2026-03-19 03:24:43',1,'Title58'),('2026-03-19 03:24:43',60,'2026-03-19 03:24:43',1,'Title59'),('2026-03-19 03:24:43',61,'2026-03-19 03:24:43',1,'Title60'),('2026-03-19 03:24:43',62,'2026-03-19 03:24:43',1,'Title61'),('2026-03-19 03:24:43',63,'2026-03-19 03:24:43',1,'Title62'),('2026-03-19 03:24:43',64,'2026-03-19 03:24:43',1,'Title63'),('2026-03-19 03:24:43',65,'2026-03-19 03:24:43',1,'Title64'),('2026-03-19 03:24:43',66,'2026-03-19 03:24:43',1,'Title65'),('2026-03-19 03:24:43',67,'2026-03-19 03:24:43',1,'Title66'),('2026-03-19 03:24:43',68,'2026-03-19 03:24:43',1,'Title67'),('2026-03-19 03:24:43',69,'2026-03-19 03:24:43',1,'Title68'),('2026-03-19 03:24:43',70,'2026-03-19 03:24:43',1,'Title69'),('2026-03-19 03:24:43',71,'2026-03-19 03:24:43',1,'Title70'),('2026-03-19 03:24:43',72,'2026-03-19 03:24:43',1,'Title71'),('2026-03-19 03:24:43',73,'2026-03-19 03:24:43',1,'Title72'),('2026-03-19 03:24:43',74,'2026-03-19 03:24:43',1,'Title73'),('2026-03-19 03:24:43',75,'2026-03-19 03:24:43',1,'Title74'),('2026-03-19 03:24:43',76,'2026-03-19 03:24:43',1,'Title75'),('2026-03-19 03:24:43',77,'2026-03-19 03:24:43',1,'Title76'),('2026-03-19 03:24:43',78,'2026-03-19 03:24:43',1,'Title77'),('2026-03-19 03:24:43',79,'2026-03-19 03:24:43',1,'Title78'),('2026-03-19 03:24:43',80,'2026-03-19 03:24:43',1,'Title79'),('2026-03-19 03:24:43',81,'2026-03-19 03:24:43',1,'Title80'),('2026-03-19 03:24:43',82,'2026-03-19 03:24:43',1,'Title81'),('2026-03-19 03:24:43',83,'2026-03-19 03:24:43',1,'Title82'),('2026-03-19 03:24:43',84,'2026-03-19 03:24:43',1,'Title83'),('2026-03-19 03:24:43',85,'2026-03-19 03:24:43',1,'Title84'),('2026-03-19 03:24:43',86,'2026-03-19 03:24:43',1,'Title85'),('2026-03-19 03:24:43',87,'2026-03-19 03:24:43',1,'Title86'),('2026-03-19 03:24:43',88,'2026-03-19 03:24:43',1,'Title87'),('2026-03-19 03:24:43',89,'2026-03-19 03:24:43',1,'Title88'),('2026-03-19 03:24:43',90,'2026-03-19 03:24:43',1,'Title89'),('2026-03-19 03:24:43',91,'2026-03-19 03:24:43',1,'Title90'),('2026-03-19 03:24:43',92,'2026-03-19 03:24:43',1,'Title91'),('2026-03-19 03:24:43',93,'2026-03-19 03:24:43',1,'Title92'),('2026-03-19 03:24:43',94,'2026-03-19 03:24:43',1,'Title93'),('2026-03-19 03:24:43',95,'2026-03-19 03:24:43',1,'Title94'),('2026-03-19 03:24:43',96,'2026-03-19 03:24:43',1,'Title95'),('2026-03-19 03:24:43',97,'2026-03-19 03:24:43',1,'Title96'),('2026-03-19 03:24:43',98,'2026-03-19 03:24:43',1,'Title97'),('2026-03-19 03:24:43',99,'2026-03-19 03:24:43',1,'Title98'),('2026-03-19 03:24:43',100,'2026-03-19 03:24:43',1,'Title99'),('2026-03-19 03:24:43',101,'2026-03-19 03:24:43',1,'Title100');
/*!40000 ALTER TABLE `Post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PostBody`
--

DROP TABLE IF EXISTS `PostBody`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PostBody` (
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post` int unsigned NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKbstcjljn3wcpf2xlv2xeplw9k` (`post`),
  CONSTRAINT `fk_PostBody_post` FOREIGN KEY (`post`) REFERENCES `Post` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PostBody`
--

LOCK TABLES `PostBody` WRITE;
/*!40000 ALTER TABLE `PostBody` DISABLE KEYS */;
INSERT INTO `PostBody` VALUES ('2026-03-12 01:29:55',1,1,'2026-03-12 01:29:55','body of Title1'),('2026-03-12 01:29:55',2,2,'2026-03-12 01:29:55','body of Title2'),('2026-03-12 01:29:55',3,3,'2026-03-12 01:29:55','body of Title3'),('2026-03-19 03:24:43',5,5,'2026-03-19 03:24:43','body of 4'),('2026-03-19 03:24:43',6,6,'2026-03-19 03:24:43','body of 5'),('2026-03-19 03:24:43',7,7,'2026-03-19 03:24:43','body of 6'),('2026-03-19 03:24:43',8,8,'2026-03-19 03:24:43','body of 7'),('2026-03-19 03:24:43',9,9,'2026-03-19 03:24:43','body of 8'),('2026-03-19 03:24:43',10,10,'2026-03-19 03:24:43','body of 9'),('2026-03-19 03:24:43',11,11,'2026-03-19 03:24:43','body of 10'),('2026-03-19 03:24:43',12,12,'2026-03-19 03:24:43','body of 11'),('2026-03-19 03:24:43',13,13,'2026-03-19 03:24:43','body of 12'),('2026-03-19 03:24:43',14,14,'2026-03-19 03:24:43','body of 13'),('2026-03-19 03:24:43',15,15,'2026-03-19 03:24:43','body of 14'),('2026-03-19 03:24:43',16,16,'2026-03-19 03:24:43','body of 15'),('2026-03-19 03:24:43',17,17,'2026-03-19 03:24:43','body of 16'),('2026-03-19 03:24:43',18,18,'2026-03-19 03:24:43','body of 17'),('2026-03-19 03:24:43',19,19,'2026-03-19 03:24:43','body of 18'),('2026-03-19 03:24:43',20,20,'2026-03-19 03:24:43','body of 19'),('2026-03-19 03:24:43',21,21,'2026-03-19 03:24:43','body of 20'),('2026-03-19 03:24:43',22,22,'2026-03-19 03:24:43','body of 21'),('2026-03-19 03:24:43',23,23,'2026-03-19 03:24:43','body of 22'),('2026-03-19 03:24:43',24,24,'2026-03-19 03:24:43','body of 23'),('2026-03-19 03:24:43',25,25,'2026-03-19 03:24:43','body of 24'),('2026-03-19 03:24:43',26,26,'2026-03-19 03:24:43','body of 25'),('2026-03-19 03:24:43',27,27,'2026-03-19 03:24:43','body of 26'),('2026-03-19 03:24:43',28,28,'2026-03-19 03:24:43','body of 27'),('2026-03-19 03:24:43',29,29,'2026-03-19 03:24:43','body of 28'),('2026-03-19 03:24:43',30,30,'2026-03-19 03:24:43','body of 29'),('2026-03-19 03:24:43',31,31,'2026-03-19 03:24:43','body of 30'),('2026-03-19 03:24:43',32,32,'2026-03-19 03:24:43','body of 31'),('2026-03-19 03:24:43',33,33,'2026-03-19 03:24:43','body of 32'),('2026-03-19 03:24:43',34,34,'2026-03-19 03:24:43','body of 33'),('2026-03-19 03:24:43',35,35,'2026-03-19 03:24:43','body of 34'),('2026-03-19 03:24:43',36,36,'2026-03-19 03:24:43','body of 35'),('2026-03-19 03:24:43',37,37,'2026-03-19 03:24:43','body of 36'),('2026-03-19 03:24:43',38,38,'2026-03-19 03:24:43','body of 37'),('2026-03-19 03:24:43',39,39,'2026-03-19 03:24:43','body of 38'),('2026-03-19 03:24:43',40,40,'2026-03-19 03:24:43','body of 39'),('2026-03-19 03:24:43',41,41,'2026-03-19 03:24:43','body of 40'),('2026-03-19 03:24:43',42,42,'2026-03-19 03:24:43','body of 41'),('2026-03-19 03:24:43',43,43,'2026-03-19 03:24:43','body of 42'),('2026-03-19 03:24:43',44,44,'2026-03-19 03:24:43','body of 43'),('2026-03-19 03:24:43',45,45,'2026-03-19 03:24:43','body of 44'),('2026-03-19 03:24:43',46,46,'2026-03-19 03:24:43','body of 45'),('2026-03-19 03:24:43',47,47,'2026-03-19 03:24:43','body of 46'),('2026-03-19 03:24:43',48,48,'2026-03-19 03:24:43','body of 47'),('2026-03-19 03:24:43',49,49,'2026-03-19 03:24:43','body of 48'),('2026-03-19 03:24:43',50,50,'2026-03-19 03:24:43','body of 49'),('2026-03-19 03:24:43',51,51,'2026-03-19 03:24:43','body of 50'),('2026-03-19 03:24:43',52,52,'2026-03-19 03:24:43','body of 51'),('2026-03-19 03:24:43',53,53,'2026-03-19 03:24:43','body of 52'),('2026-03-19 03:24:43',54,54,'2026-03-19 03:24:43','body of 53'),('2026-03-19 03:24:43',55,55,'2026-03-19 03:24:43','body of 54'),('2026-03-19 03:24:43',56,56,'2026-03-19 03:24:43','body of 55'),('2026-03-19 03:24:43',57,57,'2026-03-19 03:24:43','body of 56'),('2026-03-19 03:24:43',58,58,'2026-03-19 03:24:43','body of 57'),('2026-03-19 03:24:43',59,59,'2026-03-19 03:24:43','body of 58'),('2026-03-19 03:24:43',60,60,'2026-03-19 03:24:43','body of 59'),('2026-03-19 03:24:43',61,61,'2026-03-19 03:24:43','body of 60'),('2026-03-19 03:24:43',62,62,'2026-03-19 03:24:43','body of 61'),('2026-03-19 03:24:43',63,63,'2026-03-19 03:24:43','body of 62'),('2026-03-19 03:24:43',64,64,'2026-03-19 03:24:43','body of 63'),('2026-03-19 03:24:43',65,65,'2026-03-19 03:24:43','body of 64'),('2026-03-19 03:24:43',66,66,'2026-03-19 03:24:43','body of 65'),('2026-03-19 03:24:43',67,67,'2026-03-19 03:24:43','body of 66'),('2026-03-19 03:24:43',68,68,'2026-03-19 03:24:43','body of 67'),('2026-03-19 03:24:43',69,69,'2026-03-19 03:24:43','body of 68'),('2026-03-19 03:24:43',70,70,'2026-03-19 03:24:43','body of 69'),('2026-03-19 03:24:43',71,71,'2026-03-19 03:24:43','body of 70'),('2026-03-19 03:24:43',72,72,'2026-03-19 03:24:43','body of 71'),('2026-03-19 03:24:43',73,73,'2026-03-19 03:24:43','body of 72'),('2026-03-19 03:24:43',74,74,'2026-03-19 03:24:43','body of 73'),('2026-03-19 03:24:43',75,75,'2026-03-19 03:24:43','body of 74'),('2026-03-19 03:24:43',76,76,'2026-03-19 03:24:43','body of 75'),('2026-03-19 03:24:43',77,77,'2026-03-19 03:24:43','body of 76'),('2026-03-19 03:24:43',78,78,'2026-03-19 03:24:43','body of 77'),('2026-03-19 03:24:43',79,79,'2026-03-19 03:24:43','body of 78'),('2026-03-19 03:24:43',80,80,'2026-03-19 03:24:43','body of 79'),('2026-03-19 03:24:43',81,81,'2026-03-19 03:24:43','body of 80'),('2026-03-19 03:24:43',82,82,'2026-03-19 03:24:43','body of 81'),('2026-03-19 03:24:43',83,83,'2026-03-19 03:24:43','body of 82'),('2026-03-19 03:24:43',84,84,'2026-03-19 03:24:43','body of 83'),('2026-03-19 03:24:43',85,85,'2026-03-19 03:24:43','body of 84'),('2026-03-19 03:24:43',86,86,'2026-03-19 03:24:43','body of 85'),('2026-03-19 03:24:43',87,87,'2026-03-19 03:24:43','body of 86'),('2026-03-19 03:24:43',88,88,'2026-03-19 03:24:43','body of 87'),('2026-03-19 03:24:43',89,89,'2026-03-19 03:24:43','body of 88'),('2026-03-19 03:24:43',90,90,'2026-03-19 03:24:43','body of 89'),('2026-03-19 03:24:43',91,91,'2026-03-19 03:24:43','body of 90'),('2026-03-19 03:24:43',92,92,'2026-03-19 03:24:43','body of 91'),('2026-03-19 03:24:43',93,93,'2026-03-19 03:24:43','body of 92'),('2026-03-19 03:24:43',94,94,'2026-03-19 03:24:43','body of 93'),('2026-03-19 03:24:43',95,95,'2026-03-19 03:24:43','body of 94'),('2026-03-19 03:24:43',96,96,'2026-03-19 03:24:43','body of 95'),('2026-03-19 03:24:43',97,97,'2026-03-19 03:24:43','body of 96'),('2026-03-19 03:24:43',98,98,'2026-03-19 03:24:43','body of 97'),('2026-03-19 03:24:43',99,99,'2026-03-19 03:24:43','body of 98'),('2026-03-19 03:24:43',100,100,'2026-03-19 03:24:43','body of 99'),('2026-03-19 03:24:43',101,101,'2026-03-19 03:24:43','body of 100');
/*!40000 ALTER TABLE `PostBody` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reply`
--

DROP TABLE IF EXISTS `Reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reply` (
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post` int unsigned NOT NULL,
  `replier` int unsigned NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reply` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Reply_post` (`post`),
  KEY `fk_Reply_replier_Member` (`replier`),
  CONSTRAINT `fk_Reply_post` FOREIGN KEY (`post`) REFERENCES `Post` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_Reply_replier_Member` FOREIGN KEY (`replier`) REFERENCES `Member` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reply`
--

LOCK TABLES `Reply` WRITE;
/*!40000 ALTER TABLE `Reply` DISABLE KEYS */;
INSERT INTO `Reply` VALUES ('2026-03-12 01:29:55',1,1,1,'2026-03-12 01:29:55','rrrr1-1'),('2026-03-12 01:29:55',2,1,1,'2026-03-12 01:29:55','rrrr1-2');
/*!40000 ALTER TABLE `Reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscriber`
--

DROP TABLE IF EXISTS `Subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Subscriber` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social` bit(1) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscriber`
--

LOCK TABLES `Subscriber` WRITE;
/*!40000 ALTER TABLE `Subscriber` DISABLE KEYS */;
INSERT INTO `Subscriber` VALUES ('1@gmail.com','sub1','$2a$10$GB1.aC9CSsPlcM190MDOZ.D7pIAqshQ.sWmKThXh1UuOvi68ZJHAa',_binary '\0'),('2@gmail.com','sub2','$2a$10$fHg.E3psKUlxICTB5bA5vergIRNOd160NY90ZpPUHOmNhSpIh/Wai',_binary '\0'),('3@gmail.com','sub3','$2a$10$.y9ugvaqH7rwkUR.A1hdteH3r0GmHn36mhSnNH1u8.j8NNoCBLWvy',_binary '\0'),('4@gmail.com','sub4','$2a$10$Ww34vVGS9qUVsCqvkMJtEO0SuuxSZnofyG8Ddp1lyg9wX0mhD5Bga',_binary '\0'),('5@gmail.com','sub5','$2a$10$SlL3ux3LaIt65uSSdloLieI9hV6bJiwWZ.KIQFyVwFCdqa7BFoV96',_binary '\0'),('sample@gmail.com','sub0','$2a$10$/388I8pFoWUffdz3BSwM5OymH4z4YoCyxpbswRMiLv3R0pNdBFP4e',_binary '\0');
/*!40000 ALTER TABLE `Subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubscriberRole`
--

DROP TABLE IF EXISTS `SubscriberRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SubscriberRole` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint DEFAULT NULL,
  KEY `FKgub1b9c7ig0kw56s7xbpg7qnb` (`email`),
  CONSTRAINT `FKgub1b9c7ig0kw56s7xbpg7qnb` FOREIGN KEY (`email`) REFERENCES `Subscriber` (`email`),
  CONSTRAINT `subscriberrole_chk_1` CHECK ((`role` between 0 and 2))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubscriberRole`
--

LOCK TABLES `SubscriberRole` WRITE;
/*!40000 ALTER TABLE `SubscriberRole` DISABLE KEYS */;
INSERT INTO `SubscriberRole` VALUES ('1@gmail.com',0),('1@gmail.com',1),('2@gmail.com',0),('2@gmail.com',1),('3@gmail.com',0),('3@gmail.com',1),('4@gmail.com',0),('4@gmail.com',2),('5@gmail.com',0),('5@gmail.com',2),('sample@gmail.com',0),('sample@gmail.com',2);
/*!40000 ALTER TABLE `SubscriberRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T`
--

DROP TABLE IF EXISTS `T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T`
--

LOCK TABLES `T` WRITE;
/*!40000 ALTER TABLE `T` DISABLE KEYS */;
/*!40000 ALTER TABLE `T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `salhour` decimal(8,2) NOT NULL DEFAULT '0.00',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `telno` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bloodType` enum('A','AB','B','O') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_User_email` (`email`),
  UNIQUE KEY `uniq_User_username_telno` (`username`,`telno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (0.00,'2026-03-12 01:29:55',1,'2026-03-12 01:29:55','01012345678','Hong','hong@gmail.com','A'),(0.00,'2026-03-12 01:29:55',2,'2026-03-12 01:29:55','01012345679','kim','kim@gmail.com','B');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-14  9:50:04
