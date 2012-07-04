-- MySQL dump 10.13  Distrib 5.1.58, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dbtrabalhosg2_development
-- ------------------------------------------------------
-- Server version	5.1.58-1

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
-- Table structure for table `categorialivros`
--

DROP TABLE IF EXISTS `categorialivros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorialivros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorialivros`
--

LOCK TABLES `categorialivros` WRITE;
/*!40000 ALTER TABLE `categorialivros` DISABLE KEYS */;
INSERT INTO `categorialivros` VALUES (1,'Informática','2012-07-03 00:13:41','2012-07-04 16:40:17'),(2,'Romance','2012-07-03 00:13:41','2012-07-04 16:40:25'),(3,'Literatura','2012-07-04 16:40:35','2012-07-04 16:40:35'),(4,'Mecânica','2012-07-04 16:40:46','2012-07-04 16:40:46'),(5,'Eletro - Eletrônica','2012-07-04 16:41:04','2012-07-04 16:41:04'),(6,'Gastrônomia','2012-07-04 16:41:22','2012-07-04 16:41:22'),(7,'Administração e Negócios','2012-07-04 16:41:57','2012-07-04 16:41:57'),(8,'Agropecuária','2012-07-04 16:42:05','2012-07-04 16:42:05'),(9,'Artes','2012-07-04 16:42:21','2012-07-04 16:42:21'),(10,'Ciências Exatas','2012-07-04 16:42:32','2012-07-04 16:42:32'),(11,'Esportes','2012-07-04 16:42:46','2012-07-04 16:42:46'),(12,'Filosofia','2012-07-04 16:42:52','2012-07-04 16:42:52'),(13,'Idiomas','2012-07-04 16:43:03','2012-07-04 16:43:03'),(14,'Psicologia','2012-07-04 16:43:19','2012-07-04 16:43:19'),(15,'Religião','2012-07-04 16:43:27','2012-07-04 16:43:27'),(16,'Sexo','2012-07-04 16:43:36','2012-07-04 16:43:36'),(17,'Turismo','2012-07-04 16:43:43','2012-07-04 16:43:43'),(18,'Medicina e Saúde','2012-07-04 16:44:04','2012-07-04 16:44:04');
/*!40000 ALTER TABLE `categorialivros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editoras`
--

DROP TABLE IF EXISTS `editoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editoras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razao_social` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnpj` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoras`
--

LOCK TABLES `editoras` WRITE;
/*!40000 ALTER TABLE `editoras` DISABLE KEYS */;
INSERT INTO `editoras` VALUES (1,'Alta Books','123.123.123/1234-33','2012-07-03 00:13:41','2012-07-04 16:38:02'),(2,'Abril','814.826.821/1924-99','2012-07-03 00:13:41','2012-07-04 16:38:33'),(3,'M Books Editora','838.183.982/2911-92','2012-07-04 16:46:56','2012-07-04 16:46:56'),(4,'Nogueira Rio','474.389.298/9281-01','2012-07-04 16:47:43','2012-07-04 16:47:43'),(5,'Campus','736.281.028/9181-01','2012-07-04 16:51:02','2012-07-04 16:51:02'),(6,'Benvirá','871.122.919/1212-21','2012-07-04 16:53:13','2012-07-04 16:53:13'),(7,'Pearson Education Do','812.889.212/1811-91','2012-07-04 17:00:34','2012-07-04 17:00:34'),(8,'Novatec','910.291.129/1928-91','2012-07-04 17:02:09','2012-07-04 17:02:09'),(9,'Universo dos Livros','818.918.191/1918-12','2012-07-04 17:38:24','2012-07-04 17:38:24'),(10,'Nova Fronteira','484.192.191/1917-71','2012-07-04 17:40:13','2012-07-04 17:40:13');
/*!40000 ALTER TABLE `editoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multa` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` VALUES (1,'Administrador',0,'2012-07-03 00:13:41','2012-07-04 16:45:08'),(2,'Alunos',4.5,'2012-07-03 00:13:41','2012-07-04 16:44:36'),(4,'Funcionários',2.5,'2012-07-04 14:01:31','2012-07-04 16:44:58'),(5,'Professores',3,'2012-07-04 16:45:22','2012-07-04 16:45:22'),(6,'Comunidade',5.5,'2012-07-04 16:45:40','2012-07-04 16:45:40');
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `prazo_entrega` int(11) DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_lancamento` date DEFAULT NULL,
  `edicao` int(11) DEFAULT NULL,
  `editora_id` int(11) DEFAULT NULL,
  `categorialivro_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_livros_on_editora_id` (`editora_id`),
  KEY `index_livros_on_categorialivro_id` (`categorialivro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'Expressões Regulares','Uma abordagem divertida','Aurelio Marinho Jargas',5,5,'978-85-221-7522-6','2009-10-07',3,1,1,'2012-07-03 00:13:41','2012-07-04 16:35:55'),(2,'Use a Cabeça  - Rails','Rails','David Griffiths',4,3,'978-85-760-8359-7','2009-01-27',1,1,1,'2012-07-03 00:13:41','2012-07-04 16:54:58'),(3,'Use a Cabeça - Programação','Programação','Paul Barry, David Griffiths',3,2,'978-85-760-8473-0','2010-06-18',1,1,1,'2012-07-04 16:37:47','2012-07-04 16:55:12'),(4,'Plantão de Enfermagem','O Cotidiano da Assistência de Enfermagem numa Unidade Hospitalar','Avany Maura Gonçalves de Oliveira; Maria Virginia Godoy da Silva',5,4,'978-85-998-0103-1','2009-01-19',1,4,18,'2012-07-04 16:48:50','2012-07-04 16:48:50'),(5,'Contabilidade Geral','Contabilidade Geral','José Jayme Moraes Junior',10,6,'978-85-352-5048-0','2011-02-19',1,5,7,'2012-07-04 16:50:44','2012-07-04 16:51:12'),(6,'O Alquimista','O Alquimista','Paulo Coelho',8,4,'978-85-021-0377-1','2007-01-18',1,6,3,'2012-07-04 16:54:09','2012-07-04 16:54:09'),(7,'Java - Como Programar','Como Programar','Pearson Education Do',4,5,'857-60-501-1196-0','2008-02-14',2,7,1,'2012-07-04 17:00:05','2012-07-04 17:00:43'),(8,'Programando o Android','Programando o Android','Zigurd Mednieks, Laird Dornin, G. Blake Meike e Masumi Nakamura ',4,2,'978-85-752-2284-3','2011-03-30',1,8,1,'2012-07-04 17:03:01','2012-07-04 17:03:01'),(9,'Mecânica Teórica','Mecânica','Jaume Carot e Jesus Ibáñez',2,3,'978-84-291-4359-1','2009-06-19',1,2,4,'2012-07-04 17:34:28','2012-07-04 17:34:28'),(10,'Aprenda Idiomas Sem Complicação - Alemão','Alemão','Universo dos Livros',3,3,'978-85-793-0024-0','2009-02-19',1,2,13,'2012-07-04 17:37:59','2012-07-04 17:37:59'),(11,'O Romance Negro','O Romance Negro','Rubem Fonseca',2,3,'978-85-209-2654-3','2010-05-29',1,10,2,'2012-07-04 17:40:57','2012-07-04 17:40:57'),(12,'Eletrônica Básica','Conceitos de eletrônica','José Santos ',5,4,'272-82-292-2311-0','2010-02-18',1,2,5,'2012-07-04 17:42:50','2012-07-04 17:42:50'),(13,'Matemática Aplicada','Matemática','João da Silva',4,3,'891-81-731-3319-9','2007-03-19',3,2,10,'2012-07-04 17:44:41','2012-07-04 17:44:41'),(14,'1000 Lugares para conhecer antes de morre','Guias de Viagem','Shultz, Patricia',2,4,'661-12-837-9112-1','2011-11-13',1,2,17,'2012-07-04 17:46:03','2012-07-04 17:46:03'),(15,'Inglês básico','Ensino básico de inglês','Luciano Martins; Vera Oliveira',3,7,'482-01-991-9921-2','2008-03-30',3,2,13,'2012-07-04 17:47:26','2012-07-04 17:47:26'),(16,'Espanhol Básico','Ensino básico de Espanhol','José Vieira',3,7,'782-28-827-2822-9','2010-01-19',1,9,13,'2012-07-04 17:48:29','2012-07-04 17:48:29'),(17,'Kama Sutra','Kama sutra do século IV','Rafaela dos Santos, Caio Silva',1,6,'193-19-481-8911-0','2011-02-17',1,9,16,'2012-07-04 17:50:17','2012-07-04 17:50:17'),(18,'Pratos Italianos','Pratos Italianos ','Giovanna Fonceca',3,5,'837-18-917-1837-4','2008-07-18',3,4,6,'2012-07-04 17:52:20','2012-07-04 17:52:40'),(19,'Algêbra e Física','Abordagem didatica','Maria de Souza, Macio Silva',5,4,'837-28-928-9282-6','2008-08-14',1,6,10,'2012-07-04 17:54:38','2012-07-04 17:54:38'),(20,'Montando uma Empresa','Montando uma Empresa','Marcos Pacheco e Daniel Saraiva',4,5,'646-23-928-3187-9','2010-01-05',1,3,7,'2012-07-04 17:56:01','2012-07-04 17:56:01'),(21,'Agricultura e pecuária na cidade','Agricultura e pecuária na cidade','Pedro Silva Soares',3,7,'298-43-423-3928-1','2008-02-18',2,10,8,'2012-07-04 18:28:07','2012-07-04 18:28:07');
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locacaos`
--

DROP TABLE IF EXISTS `locacaos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locacaos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_locacao` date DEFAULT NULL,
  `data_devolucao` date DEFAULT NULL,
  `data_prevista_dev` date DEFAULT NULL,
  `multa` float DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `livro_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_locacaos_on_usuario_id` (`usuario_id`),
  KEY `index_locacaos_on_livro_id` (`livro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacaos`
--

LOCK TABLES `locacaos` WRITE;
/*!40000 ALTER TABLE `locacaos` DISABLE KEYS */;
INSERT INTO `locacaos` VALUES (1,'2012-07-02','2012-07-10','2012-08-09',12,3,4,'2012-07-03 00:30:44','2012-07-04 16:55:34'),(2,'2008-02-03','2007-01-02','2007-01-02',5.5,1,2,'2012-07-03 23:38:20','2012-07-04 14:12:25'),(3,'2012-07-04',NULL,'2012-07-05',0,2,1,'2012-07-04 11:25:43','2012-07-04 11:25:43'),(5,'2012-07-04',NULL,'2012-07-05',0,2,3,'2012-07-04 11:26:05','2012-07-04 16:56:04'),(6,'2012-07-04',NULL,'2012-07-05',0,2,6,'2012-07-04 16:33:13','2012-07-04 16:55:55'),(7,'2012-07-04',NULL,'2012-07-06',0,2,3,'2012-07-04 17:17:14','2012-07-04 17:17:14'),(8,'2012-07-04',NULL,'2012-07-09',0,2,1,'2012-07-04 17:17:29','2012-07-04 17:17:29'),(9,'2012-07-04',NULL,'2012-07-06',0,2,8,'2012-07-04 18:17:19','2012-07-04 18:17:19');
/*!40000 ALTER TABLE `locacaos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120629025311'),('20120629030251'),('20120629033109'),('20120629033217'),('20120629033333'),('20120630152337'),('20120702230159');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `endereco` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matricula` int(11) DEFAULT NULL,
  `grupo_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `senha` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_usuarios_on_grupo_id` (`grupo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Administrador','Rua do Administrador','Telefone do Administrador',111111111,1,'2012-07-03 00:13:41','2012-07-04 18:32:57','123456'),(2,'usuario2','usuario2','usuario2',2,2,'2012-07-03 00:13:41','2012-07-03 00:20:53','2'),(3,'Teobaldo','tabajara 1000','9999999',123456,1,'2012-07-04 12:56:00','2012-07-04 12:56:00','123456'),(4,'Thiago Bandeira','Rua Dário Alves, 120, Gravataí - RS','12345678',720186951,2,'2012-07-04 14:54:19','2012-07-04 18:31:13','123456'),(5,'Vagner Martins','Porto Alegre','7472143',637837337,2,'2012-07-04 18:29:30','2012-07-04 18:31:26','123456'),(6,'Thiago Dorneles','Cachoeirinha','27420482',948278399,2,'2012-07-04 18:30:05','2012-07-04 18:31:42','123456'),(7,'Tales','Porto Alegre','82774831',999999991,5,'2012-07-04 18:30:36','2012-07-04 18:30:36','123456');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-07-04 16:36:55
