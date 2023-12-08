-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: marvsupport
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `tb_ticket`
--

DROP TABLE IF EXISTS `tb_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_ticket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `assunto` varchar(300) NOT NULL,
  `data` varchar(10) NOT NULL,
  `status` int NOT NULL,
  `criador` varchar(30) DEFAULT NULL,
  `comentario` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `criador` (`criador`),
  CONSTRAINT `tb_ticket_ibfk_1` FOREIGN KEY (`criador`) REFERENCES `tb_usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ticket`
--

LOCK TABLES `tb_ticket` WRITE;
/*!40000 ALTER TABLE `tb_ticket` DISABLE KEYS */;
INSERT INTO `tb_ticket` VALUES (1,'Teste','Teste','08/10/2023',1,'admin','Estamos ajustando alguns itens.'),(3,'TesteFechado','Verificar fechado','10/10/2023',3,'admin',NULL),(4,'Problema com mouse','Verificar fechado','04/10/2023',1,'admin',''),(5,'Sistema travando','Verificar fechado','10/10/2023',2,'admin',NULL),(6,'Meu teclado está com problemas','Verificar fechado','10/10/2023',1,'admin',''),(7,'Relatório de falhas','Verificar fechado','10/10/2023',2,'admin',NULL),(8,'Gerar usuário para nova colaboradora','Verificar fechado','01/10/2023',3,'admin',''),(9,'Problemas com teste Junit','Estou com problemas com testes unitários JUnit, e testando envio de emails HTML','01/12/2023',1,'victorsilva',NULL),(10,'Abertura de chamados','Teste de abertura de chamados','01/12/2023',1,'admin',NULL);
/*!40000 ALTER TABLE `tb_ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-08 19:40:29
