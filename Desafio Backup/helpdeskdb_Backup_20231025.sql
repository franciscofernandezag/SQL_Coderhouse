-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: database.c1xxg2yt3q8g.us-east-1.rds.amazonaws.com    Database: helpdeskdb
-- ------------------------------------------------------
-- Server version	8.0.34

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Dumping data for table `Activos`
--

LOCK TABLES `Activos` WRITE;
/*!40000 ALTER TABLE `Activos` DISABLE KEYS */;
INSERT INTO `Activos` VALUES (1,1,'Laptop','SERIAL001','Dell','Latitude','2022-01-15',12345,'Tech Corp','8 GB RAM, 256 GB SSD','Bueno','2022-01-15',1),(2,1,'Laptop','SERIAL002','HP','EliteBook','2022-02-20',23456,'Tech World','16 GB RAM, 512 GB SSD','Regular','2022-02-20',2),(3,1,'Laptop','SERIAL003','Lenovo','ThinkPad','2022-03-25',34567,'Tech Pro','8 GB RAM, 256 GB SSD','Bueno','2022-03-25',3),(4,1,'Laptop','SERIAL004','Acer','Aspire','2022-04-10',45678,'Tech Solutions','12 GB RAM, 512 GB SSD','Bueno','2022-04-10',4),(5,1,'Laptop','SERIAL005','Asus','ZenBook','2022-05-15',56789,'Tech Innovations','16 GB RAM, 1 TB SSD','Bueno','2022-05-15',5),(6,2,'Laptop','SERIAL006','Dell','Latitude','2022-01-15',12346,'Tech Corp','8 GB RAM, 256 GB SSD','Bueno','2022-01-15',6),(7,2,'Laptop','SERIAL007','HP','EliteBook','2022-02-20',23457,'Tech World','16 GB RAM, 512 GB SSD','Regular','2022-02-20',7),(8,2,'Laptop','SERIAL008','Lenovo','ThinkPad','2022-03-25',34568,'Tech Pro','8 GB RAM, 256 GB SSD','Bueno','2022-03-25',8),(9,2,'Laptop','SERIAL009','Acer','Aspire','2022-04-10',45679,'Tech Solutions','12 GB RAM, 512 GB SSD','Bueno','2022-04-10',9),(10,2,'Laptop','SERIAL010','Asus','ZenBook','2022-05-15',56790,'Tech Innovations','16 GB RAM, 1 TB SSD','Bueno','2022-05-15',10),(11,3,'Laptop','SERIAL011','Dell','Latitude','2022-01-15',12347,'Tech Corp','8 GB RAM, 256 GB SSD','Bueno','2022-01-15',11),(12,3,'Laptop','SERIAL012','HP','EliteBook','2022-02-20',23458,'Tech World','16 GB RAM, 512 GB SSD','Regular','2022-02-20',12),(13,3,'Laptop','SERIAL013','Lenovo','ThinkPad','2022-03-25',34569,'Tech Pro','8 GB RAM, 256 GB SSD','Bueno','2022-03-25',13),(14,3,'Laptop','SERIAL014','Acer','Aspire','2022-04-10',45680,'Tech Solutions','12 GB RAM, 512 GB SSD','Bueno','2022-04-10',14),(15,3,'Laptop','SERIAL015','Asus','ZenBook','2022-05-15',56791,'Tech Innovations','16 GB RAM, 1 TB SSD','Bueno','2022-05-15',15),(16,4,'Laptop','SERIAL016','Dell','Latitude','2022-01-15',12348,'Tech Corp','8 GB RAM, 256 GB SSD','Bueno','2022-01-15',16),(17,4,'Laptop','SERIAL017','HP','EliteBook','2022-02-20',23459,'Tech World','16 GB RAM, 512 GB SSD','Regular','2022-02-20',17),(18,4,'Laptop','SERIAL018','Lenovo','ThinkPad','2022-03-25',34570,'Tech Pro','8 GB RAM, 256 GB SSD','Bueno','2022-03-25',18),(19,4,'Laptop','SERIAL019','Acer','Aspire','2022-04-10',45681,'Tech Solutions','12 GB RAM, 512 GB SSD','Bueno','2022-04-10',19),(20,4,'Laptop','SERIAL020','Asus','ZenBook','2022-05-15',56792,'Tech Innovations','16 GB RAM, 1 TB SSD','Bueno','2022-05-15',20),(21,5,'Laptop','SERIAL021','Dell','Latitude','2022-01-15',12349,'Tech Corp','8 GB RAM, 256 GB SSD','Bueno','2022-01-15',21),(22,5,'Laptop','SERIAL022','HP','EliteBook','2022-02-20',23460,'Tech World','16 GB RAM, 512 GB SSD','Regular','2022-02-20',22),(23,5,'Laptop','SERIAL023','Lenovo','ThinkPad','2022-03-25',34571,'Tech Pro','8 GB RAM, 256 GB SSD','Bueno','2022-03-25',23),(24,5,'Laptop','SERIAL024','Acer','Aspire','2022-04-10',45682,'Tech Solutions','12 GB RAM, 512 GB SSD','Bueno','2022-04-10',24),(25,5,'Laptop','SERIAL025','Asus','ZenBook','2022-05-15',56793,'Tech Innovations','16 GB RAM, 1 TB SSD','Bueno','2022-05-15',25);
/*!40000 ALTER TABLE `Activos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Bd_conocimientos`
--

LOCK TABLES `Bd_conocimientos` WRITE;
/*!40000 ALTER TABLE `Bd_conocimientos` DISABLE KEYS */;
INSERT INTO `Bd_conocimientos` VALUES (1,1,'Conocimiento 1','Descripción del problema 1','Pasos para la solución 1','2023-10-11 01:07:32','2023-10-11 01:07:32'),(2,20,'Conocimiento 2','Descripción del problema 2','Pasos para la solución 2','2023-10-11 01:07:32','2023-10-11 01:07:32'),(3,7,'Conocimiento 3','Descripción del problema 3','Pasos para la solución 3','2023-10-11 01:07:32','2023-10-11 01:07:32'),(4,11,'Conocimiento 3','Descripción del problema 4','Pasos para la solución 4','2023-10-11 01:07:32','2023-10-11 01:07:32'),(5,3,'Conocimiento 3','Descripción del problema 5','Pasos para la solución 5','2023-10-11 01:07:32','2023-10-11 01:07:32'),(6,5,'Conocimiento 3','Descripción del problema 6','Pasos para la solución 6','2023-10-11 01:07:32','2023-10-11 01:07:32');
/*!40000 ALTER TABLE `Bd_conocimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Categorias`
--

LOCK TABLES `Categorias` WRITE;
/*!40000 ALTER TABLE `Categorias` DISABLE KEYS */;
INSERT INTO `Categorias` VALUES (1,'Hardware'),(2,'Redes'),(3,'Software'),(4,'Plataforma'),(5,'Adquisiciones');
/*!40000 ALTER TABLE `Categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Comentarios`
--

LOCK TABLES `Comentarios` WRITE;
/*!40000 ALTER TABLE `Comentarios` DISABLE KEYS */;
INSERT INTO `Comentarios` VALUES (1,1,'2023-10-11 01:39:42','Este es un comentario de prueba para el Ticket #1.'),(2,1,'2023-10-11 01:39:42','Gracias por abrir el Ticket #1. Estaremos en contacto.'),(3,2,'2023-10-11 01:39:42','Hemos recibido su solicitud en el Ticket #2. Lo atenderemos pronto.'),(4,15,'2023-10-11 01:39:42','Por favor, proporcione más detalles sobre el problema en el Ticket #2.'),(5,3,'2023-10-11 01:39:42','El Ticket #3 ha sido resuelto con éxito. Cualquier otro problema, háganoslo saber.'),(6,14,'2023-10-11 01:39:42','¡Excelente! ¡Gracias por su ayuda!'),(7,4,'2023-10-11 01:39:42','Este es un comentario de prueba para el Ticket #4.'),(8,13,'2023-10-11 01:39:42','Necesitamos más información para resolver el Ticket #4.'),(9,5,'2023-10-11 01:39:42','Hemos comenzado a trabajar en su solicitud del Ticket #5.'),(10,12,'2023-10-11 01:39:42','El Ticket #5 está en proceso de resolución.'),(11,6,'2023-10-11 01:39:42','Por favor, especifique más detalles sobre el Ticket #6.'),(12,11,'2023-10-11 01:39:42','Gracias por informarnos sobre el Ticket #6. Estamos investigando.'),(13,7,'2023-10-11 01:39:42','Hemos recibido su comentario sobre el Ticket #7. Le responderemos pronto.'),(14,10,'2023-10-11 01:39:42','El Ticket #7 ha sido marcado como resuelto. ¿Hay algo más en lo que podamos ayudar?'),(15,8,'2023-10-11 01:39:42','Este es un comentario de prueba para el Ticket #8.'),(16,2,'2023-10-11 14:50:50','Solicitud creada: Prueba SP1'),(18,8,'2023-10-11 18:59:28','Solicitud creada: Prueba Creacion tickets'),(19,2,'2023-10-12 01:28:24','Solicitud creada: TEST Tutor'),(20,2,'2023-10-13 21:55:53','Solicitud creada: TEST Tutor'),(21,2,'2023-10-13 21:56:19','Solicitud creada: TEST Tutor'),(22,13,'2023-10-13 22:09:21','Solicitud creada: Mouse defectuoso , se solicita cambio'),(23,8,'2023-10-23 14:58:12','Solicitud creada: Solicitud teclado');
/*!40000 ALTER TABLE `Comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Empresa`
--

LOCK TABLES `Empresa` WRITE;
/*!40000 ALTER TABLE `Empresa` DISABLE KEYS */;
INSERT INTO `Empresa` VALUES (1,'Nestle','Produccion','Logistica','2023-10-11'),(2,'Cocacola','Ventas','Marketing','2023-10-11'),(3,'Constructora Emafal','Gerencia Construccion','Obra Juanito Perez','2023-10-11'),(4,'Deloitte','','','2023-10-11'),(5,'Acme','Armas','Correcamino','2023-10-11');
/*!40000 ALTER TABLE `Empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Notificaciones`
--

LOCK TABLES `Notificaciones` WRITE;
/*!40000 ALTER TABLE `Notificaciones` DISABLE KEYS */;
INSERT INTO `Notificaciones` VALUES (1,1,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(2,2,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(3,3,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(4,4,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(5,5,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(6,6,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(7,7,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(8,8,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(9,9,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(10,10,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(11,11,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(12,12,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(13,13,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(14,14,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(15,15,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(16,16,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(17,17,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(18,18,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(19,19,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(20,20,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(21,21,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(22,22,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(23,23,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(24,24,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(25,25,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:40'),(32,1,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(33,2,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(34,3,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(35,4,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(36,5,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(37,6,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(38,7,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(39,8,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(40,9,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(41,10,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(42,11,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(43,12,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(44,13,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(45,14,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(46,15,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(47,16,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(48,17,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(49,18,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(50,19,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(51,20,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(52,21,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(53,22,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(54,23,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(55,24,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(56,25,'Info','¡Bienvenido a nuestra plataforma de helpdesk!','2023-10-11 00:59:45'),(63,2,'Alerta','Mantenimiento programado el próximo fin de semana.','2023-10-11 00:59:50'),(64,4,'Alerta','Cambio importante en la plataforma. Por favor, revise su perfil.','2023-10-11 00:59:50'),(65,2,'Recordatorios','Recuerde completar su perfil antes del final de la semana.','2023-10-11 00:59:55'),(66,4,'Recordatorios','Recuerde completar su perfil antes del final de la semana.','2023-10-11 00:59:55'),(68,1,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(69,2,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(70,3,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(71,4,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(72,5,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(73,6,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(74,7,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(75,8,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(76,9,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(77,10,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(78,11,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(79,12,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(80,13,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(81,14,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(82,15,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(83,16,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(84,17,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(85,18,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(86,19,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(87,20,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(88,21,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(89,22,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(90,23,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(91,24,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(92,25,'Novedades o Actualizaciones de la Plataforma','Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!','2023-10-11 01:00:05'),(99,1,'Eventos o Anuncios Importantes','Participa en nuestro próximo seminario web el viernes.','2023-10-11 01:00:08'),(100,2,'Eventos o Anuncios Importantes','Participa en nuestro próximo seminario web el viernes.','2023-10-11 01:00:08'),(101,5,'Eventos o Anuncios Importantes','Participa en nuestro próximo seminario web el viernes.','2023-10-11 01:00:08');
/*!40000 ALTER TABLE `Notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Ticket_Log`
--

LOCK TABLES `Ticket_Log` WRITE;
/*!40000 ALTER TABLE `Ticket_Log` DISABLE KEYS */;
INSERT INTO `Ticket_Log` VALUES (1,1,'2023-10-11 19:21:54','Estado actualizado de \"Abierto\" a \"Cerrado\"'),(2,2,'2023-10-11 19:22:23','Estado actualizado de \"Cerrado\" a \"Abierto\"');
/*!40000 ALTER TABLE `Ticket_Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Tickets`
--

LOCK TABLES `Tickets` WRITE;
/*!40000 ALTER TABLE `Tickets` DISABLE KEYS */;
INSERT INTO `Tickets` VALUES (1,1,3,'2023-10-11 01:27:05',NULL,'Requerimiento','Baja','Descripción del ticket 1',NULL,'Cerrado',NULL,'Titulo Ticket1'),(2,5,2,'2023-10-11 01:27:05',NULL,'','baja','test',NULL,'Abierto',NULL,'Test1'),(3,7,1,'2023-10-11 01:27:05',NULL,'Requerimiento','Alta','Descripción del ticket 3',NULL,'Trabajo en Curso',NULL,'Titulo Ticket 3'),(4,12,4,'2023-10-11 01:27:05',NULL,'Requerimiento','Media','Descripción del ticket 4',NULL,'Abierto',NULL,'Titulo Ticket 4'),(5,15,5,'2023-10-11 01:27:05',NULL,'Incidente','Alta','Descripción del ticket 5',NULL,'Pendiente Información',NULL,'Titulo Ticket 5'),(6,10,3,'2023-10-11 01:27:05',NULL,'Requerimiento','Baja','Descripción del ticket 6',NULL,'Trabajo en Curso',NULL,'Titulo Ticket 6'),(7,22,2,'2023-10-11 01:27:05',NULL,'Requerimiento','Alta','Descripción del ticket 7',NULL,'Abierto',NULL,'Titulo Ticket 7'),(8,18,1,'2023-10-11 01:27:05',NULL,'Incidente','Media','Descripción del ticket 8',NULL,'Pendiente Información',NULL,'Titulo Ticket 8'),(9,8,5,'2023-10-11 01:27:05',NULL,'Requerimiento','Urgente','Descripción del ticket 9',NULL,'Trabajo en Curso',NULL,'Titulo Ticket 9'),(10,25,4,'2023-10-11 01:27:05',NULL,'Requerimiento','Alta','Descripción del ticket 10',NULL,'Trabajo en Curso',NULL,'Titulo Ticket 10'),(11,11,3,'2023-10-11 01:27:05',NULL,'Incidente','Baja','Descripción del ticket 11',NULL,'Pendiente Información',NULL,'Titulo Ticket 11'),(12,14,2,'2023-10-11 01:27:05',NULL,'Requerimiento','Alta','Descripción del ticket 12',NULL,'Trabajo en Curso',NULL,'Titulo Ticket 12'),(13,20,1,'2023-10-11 01:27:05',NULL,'Requerimiento','Media','Descripción del ticket 13',NULL,'Abierto',NULL,'Titulo Ticket 13'),(14,9,5,'2023-10-11 01:27:05',NULL,'Incidente','Urgente','Descripción del ticket 14',NULL,'Pendiente Información',NULL,'Titulo Ticket 14'),(15,6,4,'2023-10-11 01:27:05',NULL,'Requerimiento','Baja','Descripción del ticket 15',NULL,'Cerrado',NULL,'Titulo Ticket 15'),(16,2,2,'2023-10-11 14:50:50',NULL,'Incidente','Alta','Prueba SP1',NULL,'Abierto',NULL,'Prueba SP1'),(17,8,2,'2023-10-11 18:59:28',NULL,'Requerimiento','Alta','Prueba Creacion tickets',NULL,'Abierto',NULL,'Test'),(18,5,2,'2023-10-23 15:21:40',NULL,'Requerimiento','Alta','p_descripcionSolicitud1',NULL,'Abierto',NULL,'p_titulo1'),(19,14,3,'2023-10-23 15:41:13',NULL,'Requerimiento','Alta','p_descripcionSolicitud2',NULL,'Abierto',NULL,'p_titulo2'),(20,9,3,'2023-10-23 15:43:52',NULL,'Incidente','alta','p_descripcionSolicitud3',NULL,'Abierto',NULL,'p_titulo3'),(22,8,2,'2023-10-23 14:58:12',NULL,'Requerimiento','Alta','Solicitud teclado',NULL,'Abierto',NULL,'Solicitud Teclado');
/*!40000 ALTER TABLE `Tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,1,'FCO','González','juan.gonzalez@example.com','Administrador','Masculino','Ventas','Gerente de Ventas','2023-10-11 00:56:30'),(2,1,'Maria','Lopez','maria.lopez@example.com','Tecnico','Femenino','Soporte','Tecnico de Soporte','2023-10-11 00:56:30'),(3,1,'Luis','Martínez','luis.martinez@example.com','Usuario','Masculino','Ventas','Vendedor','2023-10-11 00:56:30'),(4,1,'Ana','Rodriguez','ana.rodriguez@example.com','Usuario','Femenino','Ventas','Vendedor','2023-10-11 00:56:30'),(5,1,'Pedro','Fernández','pedro.fernandez@example.com','Usuario','Masculino','Ventas','Vendedor','2023-10-11 00:56:30'),(6,2,'Carlos','Díaz','carlos.diaz@example.com','Administrador','Masculino','Recursos Humanos','Gerente de RRHH','2023-10-11 00:56:30'),(7,2,'Laura','Gómez','laura.gomez@example.com','Tecnico','Femenino','Recursos Humanos','Tecnico de RRHH','2023-10-11 00:56:30'),(8,2,'Javier','Perez','javier.perez@example.com','Usuario','Masculino','Recursos Humanos','Asistente de RRHH','2023-10-11 00:56:30'),(9,2,'Isabel','Sanchez','isabel.sanchez@example.com','Usuario','Femenino','Recursos Humanos','Asistente de RRHH','2023-10-11 00:56:30'),(10,2,'NuevoNombre','NuevoApellido','NuevoEmail@email.com','Usuario','Masculino','Recursos Humanos','Asistente de RRHH','2023-10-11 00:56:30'),(11,3,'Eduardo','López','eduardo.lopez@example.com','Administrador','Masculino','Tecnología','Gerente de Tecnología','2023-10-11 00:56:30'),(12,3,'Beatriz','García','beatriz.garcia@example.com','Tecnico','Femenino','Tecnología','Tecnico de Soporte','2023-10-11 00:56:30'),(13,3,'Raul','Hernandez','raul.hernandez@example.com','Usuario','Masculino','Tecnología','Desarrollador','2023-10-11 00:56:30'),(14,3,'Natalia','Dominguez','natalia.dominguez@example.com','Usuario','Femenino','Tecnología','Desarrollador','2023-10-11 00:56:30'),(15,3,'Alberto','Ferrer','alberto.ferrer@example.com','Usuario','Masculino','Tecnología','Desarrollador','2023-10-11 00:56:30'),(16,4,'Fernando','Ramos','fernando.ramos@example.com','Administrador','Masculino','Operaciones','Director de Operaciones','2023-10-11 00:56:30'),(17,4,'Elena','Perez','elena.perez@example.com','Tecnico','Femenino','Operaciones','Supervisor de Logística','2023-10-11 00:56:30'),(18,4,'Jorge','Garrido','jorge.garrido@example.com','Usuario','Masculino','Operaciones','Analista de Logística','2023-10-11 00:56:30'),(19,4,'Rosa','Jimenez','rosa.jimenez@example.com','Usuario','Femenino','Operaciones','Analista de Logística','2023-10-11 00:56:30'),(20,4,'Alejandro','Vargas','alejandro.vargas@example.com','Usuario','Masculino','Operaciones','Analista de Logística','2023-10-11 00:56:30'),(21,5,'Fernanda','Gutierrez','fernanda.gutierrez@example.com','Administrador','Femenino','Armas','Gerente de Armas','2023-10-11 00:56:30'),(22,5,'Martín','Lopez','martin.lopez@example.com','Tecnico','Masculino','Armas','Tecnico de Armas','2023-10-11 00:56:30'),(23,5,'Carolina','Díaz','carolina.diaz@example.com','Usuario','Femenino','Armas','Analista de Armas','2023-10-11 00:56:30'),(24,5,'Pablo','Rodriguez','pablo.rodriguez@example.com','Usuario','Masculino','Armas','Analista de Armas','2023-10-11 00:56:30'),(25,5,'Valeria','Ferrer','valeria.ferrer@example.com','Usuario','Femenino','Armas','Analista de Armas','2023-10-11 00:56:30'),(26,5,'NombreNuevo','ApellidoNuevo','carolina@example.com','RolNuevo','GeneroNuevo','AreaNueva','CargoNuevo','2023-10-11 20:23:09'),(58,1,'Claudia','Diaz','Claudia.Diaz.a@example.com','Usuario','Femenino','Medicina','Enfermera','2023-10-11 00:56:30'),(59,2,'Morin','Canales','Morin.Canales.a@example.com','Usuario','Femenino','Operaciones','Analista de Contabilidad','2023-10-11 00:56:30'),(60,3,'Catalina','Lopez','cata.lopez@example.com','Usuario','Femenino','Arte','Pintora','2023-10-11 00:56:30'),(61,4,'Carolina','Corvalan','carolina.corvalan@example.com','Usuario','Femenino','Sicologia','Psicologa','2023-10-11 00:56:30'),(62,5,'Catalina','Gonzalez','Catalina.Gonzalez@example.com','Usuario','Femenino','Pedagogia','Profesora','2023-10-11 00:56:30'),(63,1,'Maritza','Valencia','Maritza.Valencia@example.com','Usuario','Femenino','Cocina','Chef','2023-10-11 00:56:30'),(64,2,'Noelia','Carcamo','Noelia.Carcamo@example.com','Usuario','Femenino','Pedagogia','Traductora','2023-10-11 00:56:30'),(65,3,'Scheznarda','Mitchel','Scheznarda.Mitchel@example.com','Usuario','Femenino','Comercial','Ejecutiva','2023-10-11 00:56:30');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Usuarios_Log`
--

LOCK TABLES `Usuarios_Log` WRITE;
/*!40000 ALTER TABLE `Usuarios_Log` DISABLE KEYS */;
INSERT INTO `Usuarios_Log` VALUES (1,10,'2023-10-11 19:56:31','Nombre actualizado de \"Sergio\" a \"NuevoNombre\"; Apellido actualizado de \"Torres\" a \"NuevoApellido\"; Email actualizado de \"sergio.torres@example.com\" a \"NuevoEmail@email.com\"; '),(2,1,'2023-10-12 01:26:05','Nombre actualizado de \"Juan\" a \"FCO\"; ');
/*!40000 ALTER TABLE `Usuarios_Log` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-25 12:45:40
