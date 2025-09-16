-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: atividade15092025
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `contasfiltradas`
--

DROP TABLE IF EXISTS `contasfiltradas`;
/*!50001 DROP VIEW IF EXISTS `contasfiltradas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `contasfiltradas` AS SELECT 
 1 AS `idcontasreceber`,
 1 AS `idvenda`,
 1 AS `datavencimento`,
 1 AS `valor`,
 1 AS `vendedor`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `contasreceber`
--

DROP TABLE IF EXISTS `contasreceber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contasreceber` (
  `idcontasreceber` int NOT NULL AUTO_INCREMENT,
  `idvenda` int NOT NULL,
  `datavencimento` date NOT NULL,
  `valor` float NOT NULL,
  `vendedor` varchar(50) NOT NULL,
  PRIMARY KEY (`idcontasreceber`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contasreceber`
--

LOCK TABLES `contasreceber` WRITE;
/*!40000 ALTER TABLE `contasreceber` DISABLE KEYS */;
INSERT INTO `contasreceber` VALUES (1,1,'2025-10-20',150.12,'suzana'),(2,2,'2025-10-20',12140,'marcos'),(3,3,'2025-10-20',112.7,'joana'),(4,4,'2025-10-20',12.3,'suzana'),(5,5,'2025-10-20',1.51,'joana');
/*!40000 ALTER TABLE `contasreceber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `idvenda` int NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `valor` float NOT NULL,
  `vendedor` varchar(50) NOT NULL,
  PRIMARY KEY (`idvenda`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,'2025-09-16',150.12,'suzana'),(2,'2025-09-16',12140,'marcos'),(3,'2025-09-16',112.7,'joana'),(4,'2025-09-16',12.3,'suzana'),(5,'2025-09-16',1.51,'joana');
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vendasfiltradas`
--

DROP TABLE IF EXISTS `vendasfiltradas`;
/*!50001 DROP VIEW IF EXISTS `vendasfiltradas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vendasfiltradas` AS SELECT 
 1 AS `idvenda`,
 1 AS `data`,
 1 AS `valor`,
 1 AS `vendedor`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedores` (
  `idvendedor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`idvendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (1,'rogério'),(2,'marcos'),(3,'joana');
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `contasfiltradas`
--

/*!50001 DROP VIEW IF EXISTS `contasfiltradas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `contasfiltradas` AS select `contasreceber`.`idcontasreceber` AS `idcontasreceber`,`contasreceber`.`idvenda` AS `idvenda`,`contasreceber`.`datavencimento` AS `datavencimento`,`contasreceber`.`valor` AS `valor`,`contasreceber`.`vendedor` AS `vendedor` from `contasreceber` where (`contasreceber`.`vendedor` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vendasfiltradas`
--

/*!50001 DROP VIEW IF EXISTS `vendasfiltradas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vendasfiltradas` AS select `vendas`.`idvenda` AS `idvenda`,`vendas`.`data` AS `data`,`vendas`.`valor` AS `valor`,`vendas`.`vendedor` AS `vendedor` from `vendas` where (`vendas`.`vendedor` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-16 16:19:26
