-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: parcial1
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_10_13_150005_create_usuarios_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Richard','Will','wnader@yahoo.com','2022-05-14','2023-10-14 01:04:31','2023-10-14 01:04:31'),(2,'Dina','Treutel','jayden83@yahoo.com','1983-01-22','2023-10-14 01:04:31','2023-10-14 01:04:31'),(3,'Hattie','Robel','hhahn@ankunding.com','1988-01-26','2023-10-14 01:04:31','2023-10-14 01:04:31'),(4,'Beulah','Franecki','lvandervort@okuneva.biz','1983-12-15','2023-10-14 01:04:31','2023-10-14 01:04:31'),(5,'Price','Zieme','blebsack@yahoo.com','2006-06-07','2023-10-14 01:04:31','2023-10-14 01:04:31'),(6,'Kyra','Wisoky','gibson.darlene@yahoo.com','2001-01-13','2023-10-14 01:04:31','2023-10-14 01:04:31'),(7,'Derick','Christiansen','mariam91@gorczany.com','1978-09-06','2023-10-14 01:04:31','2023-10-14 01:04:31'),(8,'Berneice','Hauck','langosh.rocio@hotmail.com','1995-09-20','2023-10-14 01:04:31','2023-10-14 01:04:31'),(9,'Frankie','Rippin','lueilwitz.yolanda@yahoo.com','1984-10-23','2023-10-14 01:04:31','2023-10-14 01:04:31'),(10,'Giovanni','Hansen','virgie56@gmail.com','2008-02-20','2023-10-14 01:04:31','2023-10-14 01:04:31'),(11,'Brant','Pacocha','uferry@lakin.com','1978-07-07','2023-10-14 01:04:31','2023-10-14 01:04:31'),(12,'Seth','Mante','orville.fahey@lang.biz','2012-12-07','2023-10-14 01:04:31','2023-10-14 01:04:31'),(13,'Rafael','Nitzsche','jarrell87@emard.info','2007-05-21','2023-10-14 01:04:31','2023-10-14 01:04:31'),(14,'Hallie','Bogan','kacie77@connelly.net','1988-05-14','2023-10-14 01:04:31','2023-10-14 01:04:31'),(15,'Julia','McCullough','kirlin.blanche@boehm.com','1974-05-23','2023-10-14 01:04:31','2023-10-14 01:04:31'),(16,'Luigi','Gleason','bnader@hotmail.com','1991-10-29','2023-10-14 01:04:31','2023-10-14 01:04:31'),(17,'Evert','Schmeler','orrin.gleichner@strosin.org','2007-08-29','2023-10-14 01:04:31','2023-10-14 01:04:31'),(18,'Jordon','Schimmel','joannie.kovacek@huels.net','1995-12-03','2023-10-14 01:04:31','2023-10-14 01:04:31'),(19,'Kenya','Kshlerin','dovie.murray@gmail.com','2000-08-07','2023-10-14 01:04:31','2023-10-14 01:04:31'),(20,'Diego','Lesch','alene23@trantow.com','2006-04-26','2023-10-14 01:04:31','2023-10-14 01:04:31'),(21,'Destany','Fay','pearlie03@yahoo.com','1984-05-19','2023-10-14 01:04:31','2023-10-14 01:04:31'),(22,'Abigayle','Sanford','ken.stark@boyer.com','1986-09-21','2023-10-14 01:04:31','2023-10-14 01:04:31'),(23,'Ferne','Stamm','nikolaus.tyra@heidenreich.com','2007-07-15','2023-10-14 01:04:31','2023-10-14 01:04:31'),(24,'Annabell','Turner','kole.schaefer@johnson.net','1989-07-01','2023-10-14 01:04:31','2023-10-14 01:04:31'),(25,'Amber','Hudson','guido82@yahoo.com','2021-06-07','2023-10-14 01:04:31','2023-10-14 01:04:31'),(26,'Ole','Howell','rylan.hane@yahoo.com','1980-10-02','2023-10-14 01:04:31','2023-10-14 01:04:31'),(27,'D\'angelo','Haag','clementina26@jacobson.com','1997-01-19','2023-10-14 01:04:31','2023-10-14 01:04:31'),(28,'Nathanial','Lind','foconner@stehr.org','2017-12-19','2023-10-14 01:04:31','2023-10-14 01:04:31'),(29,'Daren','Blick','jaqueline.will@gmail.com','2004-04-07','2023-10-14 01:04:31','2023-10-14 01:04:31'),(30,'Marge','Kerluke','ullrich.florine@hotmail.com','1994-01-27','2023-10-14 01:04:31','2023-10-14 01:04:31'),(31,'Damion','Cummerata','rebekah09@abernathy.com','2000-07-11','2023-10-14 01:04:31','2023-10-14 01:04:31'),(32,'Derrick','Stehr','mgerhold@conn.com','2010-06-24','2023-10-14 01:04:31','2023-10-14 01:04:31'),(33,'Gerardo','VonRueden','tluettgen@quigley.info','1984-04-23','2023-10-14 01:04:31','2023-10-14 01:04:31'),(34,'Chandler','Price','matt86@schmitt.org','2012-11-20','2023-10-14 01:04:31','2023-10-14 01:04:31'),(35,'Bradly','Spencer','champlin.leola@kreiger.com','2004-04-26','2023-10-14 01:04:31','2023-10-14 01:04:31'),(36,'Nathan','Howe','lina04@yahoo.com','1986-05-08','2023-10-14 01:04:31','2023-10-14 01:04:31'),(37,'Einar','Langworth','hans33@gmail.com','1976-02-26','2023-10-14 01:04:31','2023-10-14 01:04:31'),(38,'Easton','Schiller','vdubuque@gmail.com','2014-05-17','2023-10-14 01:04:31','2023-10-14 01:04:31'),(39,'Fermin','Thiel','tbarton@kub.com','2005-02-28','2023-10-14 01:04:31','2023-10-14 01:04:31'),(40,'Maximillian','Lakin','adele.nicolas@yahoo.com','2023-08-04','2023-10-14 01:04:31','2023-10-14 01:04:31'),(41,'Maritza','Gutmann','braun.christina@okon.com','1982-05-01','2023-10-14 01:04:31','2023-10-14 01:04:31'),(42,'Keven','Lesch','green.donavon@ortiz.com','2022-08-20','2023-10-14 01:04:31','2023-10-14 01:04:31'),(43,'Lonnie','Koelpin','brooks.rogahn@gmail.com','2014-10-02','2023-10-14 01:04:31','2023-10-14 01:04:31'),(44,'Lavinia','Torphy','alvena59@gmail.com','2021-09-18','2023-10-14 01:04:31','2023-10-14 01:04:31'),(45,'Vivian','Tremblay','leuschke.ariel@miller.com','1977-03-04','2023-10-14 01:04:31','2023-10-14 01:04:31'),(46,'Jessie','Rempel','akshlerin@medhurst.com','2010-03-29','2023-10-14 01:04:31','2023-10-14 01:04:31'),(47,'Rod','Carroll','hherman@yahoo.com','2012-01-29','2023-10-14 01:04:31','2023-10-14 01:04:31'),(48,'Sigmund','Simonis','champlin.einar@gmail.com','2022-02-08','2023-10-14 01:04:31','2023-10-14 01:04:31'),(49,'Jaqueline','Walker','ruecker.sharon@bruen.biz','1999-07-15','2023-10-14 01:04:31','2023-10-14 01:04:31'),(50,'Orpha','Kuphal','isai37@jast.org','1974-03-22','2023-10-14 01:04:31','2023-10-14 01:04:31'),(51,'Dudley','Hilpert','winfield.steuber@runolfsdottir.com','2005-07-17','2023-10-14 01:04:31','2023-10-14 01:04:31'),(52,'Melyna','Bailey','lorna87@kris.org','1976-02-22','2023-10-14 01:04:31','2023-10-14 01:04:31'),(53,'Karlie','Purdy','taylor59@gmail.com','1980-07-05','2023-10-14 01:04:32','2023-10-14 01:04:32'),(54,'Wilson','Rodriguez','karson05@jakubowski.com','1986-02-23','2023-10-14 01:04:32','2023-10-14 01:04:32'),(55,'Karl','Rath','imelda17@thompson.com','1987-08-11','2023-10-14 01:04:32','2023-10-14 01:04:32'),(56,'Garett','Mosciski','krobel@klocko.net','1983-10-26','2023-10-14 01:04:32','2023-10-14 01:04:32'),(57,'Derrick','Kuhic','constantin12@hotmail.com','2016-03-28','2023-10-14 01:04:32','2023-10-14 01:04:32'),(58,'Vernon','O\'Kon','zachary93@gmail.com','2010-09-01','2023-10-14 01:04:32','2023-10-14 01:04:32'),(59,'Alvera','Bins','weber.trevion@gmail.com','1971-06-03','2023-10-14 01:04:32','2023-10-14 01:04:32'),(60,'Elvera','Mitchell','pyundt@emard.com','1971-10-08','2023-10-14 01:04:32','2023-10-14 01:04:32'),(61,'Arielle','Herzog','lenna27@gmail.com','2021-09-18','2023-10-14 01:04:32','2023-10-14 01:04:32'),(62,'Maximo','Marvin','cummings.emil@gmail.com','2011-08-22','2023-10-14 01:04:32','2023-10-14 01:04:32'),(63,'Nyasia','Rowe','kevon.rau@langosh.com','1995-08-24','2023-10-14 01:04:32','2023-10-14 01:04:32'),(64,'Deangelo','Hills','myah45@yahoo.com','2013-04-15','2023-10-14 01:04:32','2023-10-14 01:04:32'),(65,'Abagail','Johnson','aurelie.smith@flatley.com','1977-02-05','2023-10-14 01:04:32','2023-10-14 01:04:32'),(66,'Libbie','Waters','kariane.borer@yahoo.com','2005-10-15','2023-10-14 01:04:32','2023-10-14 01:04:32'),(67,'Doug','Hickle','major14@bayer.com','2020-01-17','2023-10-14 01:04:32','2023-10-14 01:04:32'),(68,'Alda','Mertz','shana97@yahoo.com','1979-07-23','2023-10-14 01:04:32','2023-10-14 01:04:32'),(69,'Emie','Farrell','graham09@gmail.com','2014-05-28','2023-10-14 01:04:32','2023-10-14 01:04:32'),(70,'Lysanne','Kozey','noe26@stark.com','1988-08-12','2023-10-14 01:04:32','2023-10-14 01:04:32'),(71,'Eriberto','Hammes','kwolf@yahoo.com','1997-01-05','2023-10-14 01:04:32','2023-10-14 01:04:32'),(72,'Emiliano','Zboncak','dare.brayan@orn.com','1974-02-01','2023-10-14 01:04:32','2023-10-14 01:04:32'),(73,'Leonor','Hettinger','armando.quitzon@hayes.biz','2004-07-12','2023-10-14 01:04:32','2023-10-14 01:04:32'),(74,'Darien','Medhurst','evie.parker@hill.com','1994-11-23','2023-10-14 01:04:32','2023-10-14 01:04:32'),(75,'Tyrel','Kling','osinski.autumn@turner.com','1984-12-25','2023-10-14 01:04:32','2023-10-14 01:04:32'),(76,'Fabiola','Murphy','jean.oconnell@gmail.com','1996-04-24','2023-10-14 01:04:32','2023-10-14 01:04:32'),(77,'Kenton','Pfeffer','ernest.hettinger@vonrueden.biz','1973-01-14','2023-10-14 01:04:32','2023-10-14 01:04:32'),(78,'Paul','Murray','ofeest@hotmail.com','1986-07-31','2023-10-14 01:04:32','2023-10-14 01:04:32'),(79,'Wilson','Hermiston','nasir.moore@yahoo.com','1992-07-24','2023-10-14 01:04:32','2023-10-14 01:04:32'),(80,'Madelyn','Turcotte','kali.kassulke@batz.biz','1993-04-25','2023-10-14 01:04:32','2023-10-14 01:04:32'),(81,'Kailyn','Borer','rhett.schoen@hagenes.biz','1982-04-26','2023-10-14 01:04:32','2023-10-14 01:04:32'),(82,'Kelly','Lang','bins.simone@botsford.biz','1989-04-02','2023-10-14 01:04:32','2023-10-14 01:04:32'),(83,'Viviane','Runte','arianna98@yahoo.com','2020-10-04','2023-10-14 01:04:32','2023-10-14 01:04:32'),(84,'Omari','Waelchi','hflatley@hotmail.com','2008-10-09','2023-10-14 01:04:32','2023-10-14 01:04:32'),(85,'Matteo','Sipes','beth67@hotmail.com','2022-03-02','2023-10-14 01:04:32','2023-10-14 01:04:32'),(86,'Monica','Stoltenberg','xzavier.zieme@yahoo.com','1976-06-29','2023-10-14 01:04:32','2023-10-14 01:04:32'),(87,'Shanon','Wilderman','ernser.alessandra@boyer.org','2013-07-08','2023-10-14 01:04:32','2023-10-14 01:04:32'),(88,'Jeffrey','Parker','delfina08@gmail.com','2002-11-05','2023-10-14 01:04:32','2023-10-14 01:04:32'),(89,'Glenda','Walsh','alvah.pollich@rempel.net','2022-12-21','2023-10-14 01:04:32','2023-10-14 01:04:32'),(90,'Zora','Schmeler','uhodkiewicz@reinger.org','1974-07-01','2023-10-14 01:04:32','2023-10-14 01:04:32'),(91,'Thelma','Welch','jackie60@gmail.com','2005-05-01','2023-10-14 01:04:32','2023-10-14 01:04:32'),(92,'Kristopher','Spencer','jaeden.hane@littel.com','1977-07-22','2023-10-14 01:04:32','2023-10-14 01:04:32'),(93,'Gilberto','Miller','heaney.shana@king.com','1999-11-06','2023-10-14 01:04:32','2023-10-14 01:04:32'),(94,'Tyrell','Conn','clark13@gmail.com','1973-05-01','2023-10-14 01:04:32','2023-10-14 01:04:32'),(95,'Johann','Quitzon','rebeka20@rodriguez.biz','1991-07-09','2023-10-14 01:04:32','2023-10-14 01:04:32'),(96,'Asia','Kutch','mbecker@hills.info','1970-08-09','2023-10-14 01:04:32','2023-10-14 01:04:32'),(97,'Hellen','Runolfsson','lexus.herman@blick.net','1993-10-08','2023-10-14 01:04:32','2023-10-14 01:04:32'),(98,'habraam','lincoln','spotify@grimes.com','1984-11-06','2023-10-14 01:04:32','2023-10-14 01:04:54'),(99,'Jailyn','Schamberger','clemmie.monahan@gmail.com','1974-05-23','2023-10-14 01:04:32','2023-10-14 01:04:32'),(100,'Nathan','Mills','jaskolski.preston@yahoo.com','2015-06-09','2023-10-14 01:04:32','2023-10-14 01:04:32');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'parcial1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-13 15:07:31
