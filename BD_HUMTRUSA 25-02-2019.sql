/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.25-log : Database - proyecto_pis2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`proyecto_pis2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `proyecto_pis2`;

/*Table structure for table `cabecera_venta` */

DROP TABLE IF EXISTS `cabecera_venta`;

CREATE TABLE `cabecera_venta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num_venta` varchar(70) DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `tipo_pago` text,
  `tipo_venta` text,
  `subtotal_con_iva` decimal(10,5) NOT NULL,
  `subtotal_sin_iva` decimal(10,5) NOT NULL,
  `iva_total` decimal(10,5) NOT NULL,
  `descuento_total` decimal(10,5) NOT NULL,
  `total` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usu_cab` (`id_usuario`),
  KEY `fk_empr_cab` (`id_empresa`),
  CONSTRAINT `fk_empr_cab` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `fk_usu_cab` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

/*Data for the table `cabecera_venta` */

insert  into `cabecera_venta`(`id`,`num_venta`,`fecha_creacion`,`id_usuario`,`id_empresa`,`tipo_pago`,`tipo_venta`,`subtotal_con_iva`,`subtotal_sin_iva`,`iva_total`,`descuento_total`,`total`) values (5,'000001','2019-02-25 02:02:54',2,1,'contado','factura',8.00000,8.00000,2.00000,1.00000,16.00000),(6,'0000006','2019-02-25 17:39:32',2,1,'Factura',NULL,1800.00000,4.00000,216.00000,2.00000,2018.00000),(7,'0000006','2019-02-25 17:45:46',2,1,'Factura',NULL,1804.00000,4.00000,216.48000,3.00000,2021.48000),(9,'0000006','2019-02-25 18:13:39',2,1,'contado','Factura',8.00000,0.00000,7.96000,1.00000,7.96000),(10,'0000006','2019-02-25 20:08:29',6,1,'contado','Factura',8.00000,4.00000,10.96000,2.00000,10.96000),(11,'0000006','2019-02-27 15:31:16',2,1,'contado','Factura',8.00000,4.00000,10.96000,2.00000,10.96000),(12,'0000006','2019-02-27 15:38:00',2,1,'contado','Factura',10.00000,0.00000,10.20000,1.00000,10.20000),(13,'0000006','2019-02-27 15:44:57',2,1,'contado','Factura',10.00000,0.00000,10.20000,1.00000,10.20000),(14,'0000006','2019-02-27 15:46:50',6,1,'contado','Factura',8.00000,5.00000,6.96000,7.00000,6.96000),(15,'0000006','2019-02-27 17:18:59',2,1,'contado','Factura',2250.00000,0.00000,2519.00000,1.00000,2519.00000),(16,'0011','2019-02-27 18:20:55',2,1,'contado','Factura',10.00000,0.00000,10.20000,1.00000,10.20000),(17,'000012','2019-03-03 23:53:26',6,1,'contado','Factura',1378.00000,182.40000,1721.76000,4.00000,1721.76000),(18,'000013','2019-03-04 04:59:48',6,1,'contado','Factura',60.00000,2.00000,66.20000,3.00000,66.20000),(19,'000014','2019-03-04 05:50:00',6,1,'contado','Factura',10.00000,0.00000,10.20000,1.00000,10.20000),(20,'000015','2019-03-04 05:54:43',6,1,'contado','Factura',100.00000,0.00000,111.00000,1.00000,111.00000),(21,'000016','2019-03-04 06:00:33',4,1,'contado','Factura',8.00000,0.00000,7.96000,1.00000,7.96000),(22,'000017','2019-03-04 06:04:09',6,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(23,'000018','2019-03-04 06:13:55',6,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(24,'000019','2019-03-04 06:14:39',6,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(25,'000020','2019-03-04 06:15:13',6,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(26,'000021','2019-03-04 06:17:43',4,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(27,'000022','2019-03-04 06:18:02',4,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(28,'000023','2019-03-04 06:18:33',4,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(29,'000024','2019-03-04 06:19:06',4,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(30,'000025','2019-03-04 06:19:41',4,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(31,'000026','2019-03-04 06:38:16',2,1,'contado','Factura',8.00000,0.00000,7.96000,1.00000,7.96000),(32,'000027','2019-03-04 06:38:43',2,1,'contado','Factura',8.00000,0.00000,7.96000,1.00000,7.96000),(33,'000028','2019-03-04 06:38:52',2,1,'contado','Factura',8.00000,0.00000,7.96000,1.00000,7.96000),(34,'000029','2019-03-04 06:38:56',2,1,'contado','Factura',8.00000,0.00000,7.96000,1.00000,7.96000),(35,'000030','2019-03-04 06:40:50',2,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(36,'000031','2019-03-04 10:27:41',6,1,'contado','Factura',10.00000,0.00000,10.20000,1.00000,10.20000),(37,'000032','2019-03-04 10:28:07',6,1,'contado','Factura',10.00000,0.00000,10.20000,1.00000,10.20000),(38,'000033','2019-03-04 10:28:10',6,1,'contado','Factura',10.00000,0.00000,10.20000,1.00000,10.20000),(39,'000034','2019-03-04 10:28:10',6,1,'contado','Factura',10.00000,0.00000,10.20000,1.00000,10.20000),(40,'000035','2019-03-04 10:31:05',6,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(41,'000036','2019-03-04 10:31:16',6,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(42,'000037','2019-03-04 10:51:58',2,1,'contado','Factura',0.00000,2.00000,1.00000,1.00000,1.00000),(43,'000038','2019-03-04 10:53:10',2,1,'contado','Factura',0.00000,2.00000,1.00000,1.00000,1.00000),(44,'000039','2019-03-04 10:59:06',6,1,'contado','Factura',900.00000,0.00000,1007.00000,1.00000,1007.00000),(45,'000040','2019-03-04 11:14:41',4,1,'contado','Factura',2250.00000,0.00000,2519.00000,1.00000,2519.00000),(46,'000041','2019-03-04 11:22:51',2,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(47,'000042','2019-03-04 11:24:48',2,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(48,'000043','2019-03-04 11:26:44',2,1,'contado','Factura',16.80000,0.00000,17.82000,1.00000,17.82000),(49,'000044','2019-03-04 11:37:10',6,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(50,'000045','2019-03-04 11:43:25',2,1,'contado','Factura',900.00000,0.00000,1007.00000,1.00000,1007.00000),(51,'000046','2019-03-04 11:48:50',2,1,'contado','Factura',100.00000,0.00000,111.00000,1.00000,111.00000),(52,'000047','2019-03-04 11:49:15',2,1,'contado','Factura',100.00000,0.00000,111.00000,1.00000,111.00000),(53,'000048','2019-03-04 11:49:53',6,1,'contado','Factura',0.00000,5.00000,4.00000,1.00000,4.00000),(54,'000049','2019-03-04 11:51:13',6,1,'contado','Factura',900.00000,0.00000,1007.00000,1.00000,1007.00000),(55,'000050','2019-03-04 14:00:23',2,1,'contado','Factura',0.00000,9.12000,8.12000,1.00000,8.12000),(56,'000051','2019-03-04 14:02:36',6,1,'contado','Factura',1800.00000,0.00000,2014.00000,2.00000,2014.00000),(57,'000052','2019-03-04 14:03:29',2,1,'contado','Factura',900.00000,0.00000,1007.00000,1.00000,1007.00000),(58,'000053','2019-03-04 14:03:59',2,1,'contado','Factura',900.00000,0.00000,1007.00000,1.00000,1007.00000),(59,'000054','2019-03-04 14:05:57',4,1,'contado','Factura',900.00000,0.00000,1007.00000,1.00000,1007.00000),(60,'000055','2019-03-04 19:53:01',2,1,'contado','Factura',900.00000,0.00000,1007.00000,1.00000,1007.00000),(61,'000056','2019-03-04 20:21:37',6,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(62,'000057','2019-03-04 20:24:47',6,1,'contado','Factura',900.00000,0.00000,1007.00000,1.00000,1007.00000),(63,'000058','2019-03-04 20:37:40',4,1,'contado','Factura',900.00000,0.00000,1007.00000,1.00000,1007.00000),(64,'000059','2019-03-05 20:26:52',6,1,'contado','Factura',900.00000,0.00000,1007.00000,1.00000,1007.00000),(65,'000060','2019-03-05 20:28:54',6,1,'contado','Factura',4.00000,0.00000,3.48000,1.00000,3.48000),(66,'000061','2019-03-05 21:51:42',6,1,'contado','Factura',54.00000,0.00000,60.44000,0.04000,60.44000),(67,'000062','2019-03-05 21:52:15',6,1,'contado','Factura',54.00000,0.00000,60.44000,0.04000,60.44000),(68,'000063','2019-03-05 22:15:33',6,1,'contado','Factura',104.00000,2.00000,117.42000,1.06000,117.42000),(69,'000064','2019-03-06 16:51:30',6,1,'contado','Factura',258.00000,3.00000,287.83000,4.13000,287.83000),(70,'000065','2019-03-06 16:52:38',6,1,'contado','Factura',258.00000,3.00000,287.83000,4.13000,287.83000),(71,'000066','2019-03-06 20:34:44',6,1,'contado','Factura',8.00000,0.00000,8.16000,0.80000,8.16000),(72,'000067','2019-03-07 19:16:30',2,1,'contado','Factura',8.00000,0.00000,8.16000,0.80000,8.16000),(73,'000068','2019-03-07 19:20:28',2,1,'contado','Factura',258.00000,4.00000,287.12000,5.84000,287.12000);

/*Table structure for table `clase_producto` */

DROP TABLE IF EXISTS `clase_producto`;

CREATE TABLE `clase_producto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `clase_producto` */

insert  into `clase_producto`(`id`,`nombre`,`estado`) values (1,'ACEITE AGRICOLA','A'),(2,'ALCOHOL','A'),(3,'ARREGLO','A'),(4,'BEBIDAS','A'),(5,'BIENES','A'),(6,'COLONIAS','A'),(7,'ENVASES','A'),(8,'EQUIPOS DE ASEPSIA','A'),(9,'EXTRACTOS NATURALES','A'),(10,'FERRETERIA','A'),(11,'FRAGANCIAS','A'),(12,'LABORATORIO','A'),(13,'MINERAL','A'),(14,'MUESTRAS DE EXTRACTOS','A'),(15,'PRODUCTOS ALIMENTICIOS','A'),(16,'PRODUCTOS COSMETICOS','A'),(17,'PRODUCTOS DE LIMPIEZ','A'),(18,'PRODUCTOS INDUSTRIALES','A'),(19,'PRODUCTOS QUIMICOS','A'),(20,'PRODUCTOS VARIOS','A'),(21,'SEMILLAS','A'),(22,'SERVICIOS','A'),(23,'SOLVENTES','A'),(24,'SUMINISTROS DE HOGAR Y OFICINA','A'),(25,'SUMINISTROS DE OFICINA','A'),(26,'SUMINISTROS OFICINA','A'),(27,'TRANSPORTE','A');

/*Table structure for table `detalle_venta` */

DROP TABLE IF EXISTS `detalle_venta`;

CREATE TABLE `detalle_venta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cabecera_venta` bigint(20) DEFAULT NULL,
  `id_producto` bigint(20) NOT NULL,
  `precio` decimal(10,5) DEFAULT NULL,
  `cantidad` bigint(30) NOT NULL,
  `iva` decimal(10,5) DEFAULT NULL,
  `descuento` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cab_det` (`id_cabecera_venta`),
  KEY `fk_pro_det` (`id_producto`),
  CONSTRAINT `fk_det_cab` FOREIGN KEY (`id_cabecera_venta`) REFERENCES `cabecera_venta` (`id`),
  CONSTRAINT `fk_pro_det` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

/*Data for the table `detalle_venta` */

insert  into `detalle_venta`(`id`,`id_cabecera_venta`,`id_producto`,`precio`,`cantidad`,`iva`,`descuento`) values (2,5,1,30.00000,2,2.00000,1.00000),(3,12,1,20.00000,2,2.00000,1.00000),(4,13,1,2.00000,5,1.20000,1.00000),(5,14,1,2.00000,2,0.48000,5.00000),(6,14,4,1.00000,5,0.00000,1.00000),(7,14,5,0.80000,5,0.48000,1.00000),(8,15,3,450.00000,5,270.00000,1.00000),(9,16,1,2.00000,5,1.20000,1.00000),(11,5,2,20.00000,2,12.00000,1.00000),(12,17,1,2.00000,2,0.48000,1.00000),(13,17,3,450.00000,3,162.00000,1.00000),(14,17,5,0.80000,30,2.88000,1.00000),(15,17,6,4.56000,40,0.00000,1.00000),(16,18,1,2.00000,5,1.20000,1.00000),(17,18,7,25.00000,2,6.00000,1.00000),(18,18,4,1.00000,2,0.00000,1.00000),(19,19,1,2.00000,5,1.20000,1.00000),(20,20,7,25.00000,4,12.00000,1.00000),(21,21,1,2.00000,4,0.96000,1.00000),(22,22,1,2.00000,2,0.48000,1.00000),(23,23,1,2.00000,2,0.48000,1.00000),(24,24,1,2.00000,2,0.48000,1.00000),(25,25,1,2.00000,2,0.48000,1.00000),(26,26,1,2.00000,2,0.48000,1.00000),(27,27,1,2.00000,2,0.48000,1.00000),(28,28,1,2.00000,2,0.48000,1.00000),(29,29,1,2.00000,2,0.48000,1.00000),(30,30,1,2.00000,2,0.48000,1.00000),(31,31,1,2.00000,4,0.96000,1.00000),(32,32,1,2.00000,4,0.96000,1.00000),(33,33,1,2.00000,4,0.96000,1.00000),(34,34,1,2.00000,4,0.96000,1.00000),(35,35,1,2.00000,2,0.48000,1.00000),(36,36,1,2.00000,5,1.20000,1.00000),(37,37,1,2.00000,5,1.20000,1.00000),(38,38,1,2.00000,5,1.20000,1.00000),(39,39,1,2.00000,5,1.20000,1.00000),(40,40,1,2.00000,2,0.48000,1.00000),(41,41,1,2.00000,2,0.48000,1.00000),(42,42,4,1.00000,2,0.00000,1.00000),(43,43,4,1.00000,2,0.00000,1.00000),(44,44,3,450.00000,2,108.00000,1.00000),(45,45,3,450.00000,5,270.00000,1.00000),(46,46,1,2.00000,2,0.48000,1.00000),(47,47,1,2.00000,2,0.48000,1.00000),(48,48,5,0.80000,21,2.02000,1.00000),(49,49,1,2.00000,2,0.48000,1.00000),(50,50,3,450.00000,2,108.00000,1.00000),(51,51,7,25.00000,4,12.00000,1.00000),(52,52,7,25.00000,4,12.00000,1.00000),(53,53,4,1.00000,5,0.00000,1.00000),(54,54,3,450.00000,2,108.00000,1.00000),(55,55,6,4.56000,2,0.00000,1.00000),(56,56,3,450.00000,4,216.00000,2.00000),(57,57,3,450.00000,2,108.00000,1.00000),(58,58,3,450.00000,2,108.00000,1.00000),(59,59,3,450.00000,2,108.00000,1.00000),(60,60,3,450.00000,2,108.00000,1.00000),(61,61,1,2.00000,2,0.48000,1.00000),(62,62,3,450.00000,2,108.00000,1.00000),(63,63,3,450.00000,2,108.00000,1.00000),(64,64,3,450.00000,2,108.00000,1.00000),(65,65,1,2.00000,2,0.48000,1.00000),(66,66,7,25.00000,2,6.00000,0.00000),(67,66,1,2.00000,2,0.48000,0.04000),(68,67,7,25.00000,2,6.00000,0.00000),(69,67,1,2.00000,2,0.48000,0.04000),(70,68,1,2.00000,2,0.48000,0.04000),(71,68,4,1.00000,2,0.00000,0.02000),(72,68,7,25.00000,4,12.00000,1.00000),(73,69,1,2.00000,4,0.96000,1.60000),(74,69,7,25.00000,10,30.00000,2.50000),(75,69,4,1.00000,3,0.00000,0.03000),(76,70,1,2.00000,4,0.96000,1.60000),(77,70,7,25.00000,10,30.00000,2.50000),(78,70,4,1.00000,3,0.00000,0.03000),(79,71,1,2.00000,4,0.96000,0.80000),(80,72,1,2.00000,4,0.96000,0.80000),(81,73,1,2.00000,4,0.96000,0.80000),(82,73,7,25.00000,10,30.00000,5.00000),(83,73,4,1.00000,4,0.00000,0.04000);

/*Table structure for table `empresa` */

DROP TABLE IF EXISTS `empresa`;

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `ruc` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `empresa` */

insert  into `empresa`(`id`,`nombre`,`direccion`,`ruc`) values (1,'empresa x','copp.asosiados exd','383776228');

/*Table structure for table `medida_producto` */

DROP TABLE IF EXISTS `medida_producto`;

CREATE TABLE `medida_producto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `medida_producto` */

insert  into `medida_producto`(`id`,`nombre`,`estado`) values (1,'1/2 KILO','A'),(2,'500ML','A'),(3,'1000 LITROS','A'),(4,'1/4 KILO','A'),(5,'250ML','A'),(6,'12 ONZAS','A'),(7,'30 CC','A'),(8,'GALON(ES) AM','A'),(9,'KILO(S)','A'),(10,'TANQUE 176 KILOS','A'),(11,'LITRO(S)','A');

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `precio_compra_referencial` decimal(10,5) DEFAULT NULL,
  `precio_compra_ult` decimal(10,5) DEFAULT NULL,
  `precio_Vent_A` decimal(10,5) DEFAULT NULL,
  `precio_Vent_B` decimal(10,5) DEFAULT NULL,
  `precio_Vent_C` decimal(10,5) DEFAULT NULL,
  `clase` bigint(20) DEFAULT NULL,
  `tipo` bigint(20) DEFAULT NULL,
  `medida` bigint(20) DEFAULT NULL,
  `stock` bigint(20) DEFAULT NULL,
  `iva` char(1) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pro_clase` (`clase`),
  KEY `fk_pro_tipo` (`tipo`),
  KEY `fk_pro_medi` (`medida`),
  CONSTRAINT `fk_pro_clase` FOREIGN KEY (`clase`) REFERENCES `clase_producto` (`id`),
  CONSTRAINT `fk_pro_medi` FOREIGN KEY (`medida`) REFERENCES `medida_producto` (`id`),
  CONSTRAINT `fk_pro_tipo` FOREIGN KEY (`tipo`) REFERENCES `tipo_producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `producto` */

insert  into `producto`(`id`,`nombre`,`precio_compra_referencial`,`precio_compra_ult`,`precio_Vent_A`,`precio_Vent_B`,`precio_Vent_C`,`clase`,`tipo`,`medida`,`stock`,`iva`,`estado`) values (1,'ACEITE AGRICOLA (SPRY O)',1.70000,1.13000,2.00000,1.82000,1.73000,1,1,8,40,'S','A'),(2,'ACEITE EMULSIONADO',0.90000,0.85000,3.00000,2.00000,1.00000,1,1,9,50,'S','I'),(3,'ACEITE VASELINA',350.00000,0.00000,450.00000,420.00000,400.00000,1,2,10,50,'S','A'),(4,'ALCOHOL FARMACEUTICO',70.00000,0.00000,1.00000,1.10000,1.20000,2,3,11,50,'N','A'),(5,'ALCOHOL ANTISEPTICO',3.00000,0.85000,0.80000,0.85000,0.88000,2,4,11,50,'S','A'),(6,'ALCOHOL GEL ANTISEPTICO 1000CC',8.00000,3.45000,4.56000,4.58000,4.87000,2,4,7,50,'N','A'),(7,'ALCHOL',20.00000,19.00000,25.00000,26.00000,27.00000,2,2,3,90,'S','A');

/*Table structure for table `relacion_roles_usuario` */

DROP TABLE IF EXISTS `relacion_roles_usuario`;

CREATE TABLE `relacion_roles_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_roles` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario_relacion` (`id_usuario`),
  KEY `fk_rol_relacion` (`id_roles`),
  CONSTRAINT `fk_rol_relacion` FOREIGN KEY (`id_roles`) REFERENCES `roles` (`id`),
  CONSTRAINT `fk_usuario_relacion` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `relacion_roles_usuario` */

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `roles` */

insert  into `roles`(`id`,`nombre`) values (1,'ADMINISTRADOR'),(2,'VENDEDOR'),(3,'SUPERVISOR'),(4,'MANTENIMIENTO'),(5,'CLIENTE');

/*Table structure for table `tb_seguridad_usuario` */

DROP TABLE IF EXISTS `tb_seguridad_usuario`;

CREATE TABLE `tb_seguridad_usuario` (
  `cedula_u` varchar(10) DEFAULT NULL,
  `nombres_u` varchar(25) DEFAULT NULL,
  `apellidos_u` varchar(35) DEFAULT NULL,
  `telefono_u` varchar(15) DEFAULT NULL,
  `direccion_u` varchar(50) DEFAULT NULL,
  `contrasena_u` varchar(15) DEFAULT NULL,
  `fecha_accion_u` date DEFAULT NULL,
  `accion_u` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_seguridad_usuario` */

insert  into `tb_seguridad_usuario`(`cedula_u`,`nombres_u`,`apellidos_u`,`telefono_u`,`direccion_u`,`contrasena_u`,`fecha_accion_u`,`accion_u`) values ('09764632','juan jose','flores','38737382','coop.el condor','axj3h4','2019-01-11','Agregado'),('092487605','ALEX 2','EL LEON','2260395','coop.el emplame','asjnx58','2019-01-11','Modificado'),('09764632','juan jose','flores','38737382','coop.el condor','axj3h4','2019-01-11','Eliminado'),('092487605','ALEX 2','EL LEON','2260395','coop.el emplame','asjnx58','2019-02-01','Eliminado'),('092485511','ALEJANDRO','alcalde','042260984','coop.el mirsador','asjnrer68','2019-02-01','Eliminado'),('092475455','ALFONSO','RODRIGUEZ','2255788','coop.el la florida','asjflmm21','2019-02-01','Eliminado'),('092651553','andres','reyes','2245555','coop.la floresta','asexw28xwq','2019-02-01','Eliminado'),('092481515','walter','cedeño','22648485','coop.bastion popular','asjdf514','2019-02-01','Eliminado'),('7727283728','alex tuti','el matatan','3398334','copp.asosiados','tshd823','2019-02-11','Agregado'),('786876988','MARTIN','CALLE','876876','COOP LOS ENANOS','8Y89C89','2019-02-21','Agregado'),('7867786876','JOSE','ESMEALDAS','7876889','COOP.BATALLOON','JKHD88D','2019-02-21','Agregado'),('876878688','BRYAN','SOLEDISPA','786876','COOP.MIRADOR','JH7Y7C8','2019-02-21','Agregado'),('7727283728','alex tuti','el matatan','3398334','copp.asosiados','tshd823','2019-02-24','Modificado'),('7727283728','alex tuti','el matatan','3398334','copp.asosiados','tshd823','2019-02-24','Modificado'),('786876988','MARTIN','CALLE','876876','COOP LOS ENANOS','8Y89C89','2019-02-24','Modificado'),('7867786876','JOSE','ESMEALDAS','7876889','COOP.BATALLOON','JKHD88D','2019-02-24','Modificado'),('876878688','BRYAN','SOLEDISPA','786876','COOP.MIRADOR','JH7Y7C8','2019-02-24','Modificado'),('7727283728','ALEX TUTI','EL MATATAN','3398334','COPP.ASOSIADOS','tshd823','2019-02-24','Modificado'),('786876988','MARTIN','CALLE','876876','COOP LOS ENANOS','8Y89C89','2019-02-24','Modificado'),('786876988','MARTIN','CALLE','876876','COOP LOS ENANOS','8Y89C89','2019-02-24','Modificado'),('7727283728','ALEX TUTI','EL MATATAN','3398334','COPP.ASOSIADOS','tshd823','2019-02-24','Modificado'),('7727283728','ALEX TUTA','EL MATATAN','3398334','COPP.ASOSIADOS','tshd823','2019-02-24','Modificado'),('7727283728','ALEX TUTA','EL MATATAN','3398334','COPP.ASOSIADOS','tshd823','2019-02-24','Modificado'),('7727283728','ALEX TUTA','EL MATATAN','3398334','COPP.ASOSIADOS','tshd823','2019-02-24','Modificado'),('7727283728','ALEX TUTA','EL MATATAN','3398334','COPP.ASOSIADOS','tshd823','2019-02-24','Modificado'),('7867786876','JOSE','ESMEALDAS','7876889','COOP.BATALLOON','JKHD88D','2019-02-24','Modificado'),('7867786876','JOSE','ESMEALDAS','7876889','COOP.BATALLOON','JKHD88D','2019-02-24','Modificado'),('876878688','BRYAN','SOLEDISPA','786876','COOP.MIRADOR','JH7Y7C8','2019-02-24','Modificado'),('876878688','BRYAN','SOLEDISPA','786876','COOP.MIRADOR','JH7Y7C8','2019-02-24','Modificado'),('876878688','BRYAN','SOLEDISPA','786876','COOP.MIRADOR','JH7Y7C8','2019-02-24','Modificado'),('876878688','BRYAN','SOLEDISPA','786876','COOP.MIRADOR','JH7Y7C8','2019-02-24','Modificado'),('7867786876','JOSE','ESMEALDAS','7876889','COOP.BATALLOON','JKHD88D','2019-02-24','Modificado'),('0925241796','JORGE','MUÑOZ','2067','ALBORADA','123','2019-02-25','Agregado');

/*Table structure for table `tipo_producto` */

DROP TABLE IF EXISTS `tipo_producto`;

CREATE TABLE `tipo_producto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `tipo_producto` */

insert  into `tipo_producto`(`id`,`nombre`,`estado`) values (1,'HIC-ACEITE','A'),(2,'INDUSTRIAL','A'),(3,'ALCOHOL ALT','A'),(4,'ANTISEPTICO','A'),(5,'GEL','A'),(6,'HIC-DEODORIZADO','A'),(7,'HIC-DESODORIZADO','A'),(8,'INDUSTRIAL','A'),(9,'POTABLE','A'),(10,'HIC-ESENCIA','A');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(10) NOT NULL,
  `nombres` text NOT NULL,
  `apellidos` text NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `direccion` text NOT NULL,
  `correo` text NOT NULL,
  `contrasena` varchar(15) DEFAULT NULL,
  `tipo_usuario` text,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cedula` (`cedula`),
  UNIQUE KEY `contrasena` (`contrasena`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`cedula`,`nombres`,`apellidos`,`telefono`,`direccion`,`correo`,`contrasena`,`tipo_usuario`,`estado`) values (2,'7727283728','ALEX TUTA','EL MATATAN','3398334','COPP.ASOSIADOS','xvideos.com','tshd823','CLIENTE','A'),(3,'786876988','MARTIN','CALLE','876876','COOP LOS ENANOS','cerdas.com','8Y89C89','ADMINISTRADOR','A'),(4,'7867786876','JOSE','ESMEALDAS','7876889','COOP.BATALLOON','puritanas.com','JKHD88D','CLIENTE','A'),(5,'876878688','BRYAN','SOLEDISPA','786876','COOP.MIRADOR','','JH7Y7C8',NULL,'A'),(6,'0925241796','JORGE','MUÑOZ','2067','ALBORADA','q@.com','123','CLIENTE','A');

/* Trigger structure for table `usuario` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tr_insert_usuario` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `tr_insert_usuario` BEFORE INSERT ON `usuario` FOR EACH ROW BEGIN
INSERT INTO tb_seguridad_usuario VALUES ( new.cedula, new.nombres,
new.apellidos, new.telefono, new.direccion, new.contrasena, CURDATE(),'Agregado');
END */$$


DELIMITER ;

/* Trigger structure for table `usuario` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tr_update_usuario` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `tr_update_usuario` BEFORE UPDATE ON `usuario` FOR EACH ROW BEGIN
INSERT INTO tb_seguridad_usuario VALUES ( new.cedula, new.nombres,
new.apellidos, new.telefono, new.direccion, new.contrasena, CURDATE(),'Modificado');
END */$$


DELIMITER ;

/* Trigger structure for table `usuario` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tr_delete_usuario` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `tr_delete_usuario` BEFORE DELETE ON `usuario` FOR EACH ROW BEGIN
INSERT INTO tb_seguridad_usuario VALUES ( old.cedula, old.nombres,
old.apellidos, old.telefono, old.direccion, old.contrasena, CURDATE(),'Eliminado');
END */$$


DELIMITER ;

/* Function  structure for function  `validarUsuario` */

/*!50003 DROP FUNCTION IF EXISTS `validarUsuario` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `validarUsuario`(cedula1 VARCHAR(10)) RETURNS int(11)
BEGIN
	DECLARE val INT;
        SELECT COUNT(cedula) INTO val FROM `usuario` WHERE cedula = cedula1;
        RETURN val;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `agregarComponenteProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `agregarComponenteProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarComponenteProducto`(in op int,in componente text,out valor text)
BEGIN
	declare val int;
	if(op=1)then
		set val = (SELECT COUNT(`nombre`)  FROM `clase_producto` WHERE `nombre` = componente);
		IF(val<1)then	
		insert into `clase_producto`(`nombre`,`estado`)values(componente, 'A');
		set valor='CLASE AGREGADA';
		else 
		set valor = 'CLASE YA EXISTE';
		end if;
	end if;
	if(op=2)then
		SET val = (SELECT COUNT(`nombre`)  FROM `tipo_producto` WHERE `nombre` = componente);
		IF(val<1)THEN
		insert into `tipo_producto`(`nombre`,`estado`)VALUES(componente, 'A');
		SET valor='TIPO AGREGADO';
		ELSE 
		SET valor = 'TIPO YA EXISTE';
		END IF;
	end if;
	IF(op=3)THEN
		SET val = (SELECT COUNT(`nombre`)  FROM `medida_producto` WHERE `nombre` = componente);
		IF(val<1)THEN
		INSERT INTO `medida_producto`(`nombre`,`estado`)VALUES(componente, 'A');
		SET valor='MEDIDA AGREGADA';
		ELSE 
		SET valor = 'MEDIDA YA EXISTE';
		END IF;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `inactivarProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `inactivarProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `inactivarProducto`(in op int ,in idPro bigint)
BEGIN
	if (op=1)then
	update `producto` set `producto`.`estado`='I' where `producto`.`id`=idPro;
	end if;
	IF (op=2)THEN
	UPDATE `producto` SET `producto`.`estado`='A' WHERE `producto`.`id`=idPro;
	END IF;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `inactivarUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `inactivarUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `inactivarUsuario`(IN op INT ,IN idUsu BIGINT)
BEGIN
	IF (op=1)THEN
	UPDATE `usuario` SET `usuario`.`estado`='I' WHERE `usuario`.`id`=idUsu;
	END IF;
	IF (op=2)THEN
	UPDATE `usuario` SET `usuario`.`estado`='A' WHERE `usuario`.`id`=idUsu;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `ingresoProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `ingresoProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ingresoProducto`(IN nombre1 VARCHAR(100),IN compra_ref DECIMAL(10,5),IN precio_ult DECIMAL(10,5),IN precio_A DECIMAL(10,5),
IN precio_B DECIMAL(10,5),IN precio_C DECIMAL(10,5),IN clase7 BIGINT,IN tipo8 BIGINT,IN medida9 BIGINT,IN stock10 BIGINT,IN iva11 TEXT,OUT valor TEXT)
BEGIN
    
    insert into `producto`(`nombre`,`precio_compra_referencial`,`precio_compra_ult`,`precio_Vent_A`,`precio_Vent_B`,`precio_Vent_C`,
    `clase`,`tipo`,`medida`,`stock`,`iva`,`estado`)values(nombre1,compra_ref,precio_ult,precio_A,precio_B,precio_C,clase7,
    tipo8,medida9,stock10,iva11,'A');
    set valor='¡PRODUCTO INGRESADO!';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `ingresoUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `ingresoUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ingresoUsuario`(in cedula1 varchar(10),in nombre2 text, in apellido3 text,
in telefono4 varchar(12),in direccion5 text, in correo6 text,in contrasena7 varchar(15),in tipo_usu8 text,out valor text)
BEGIN
	declare val INT;
	SET val = (SELECT validarUsuario(cedula1));
	if (val < 1) then 
	insert into `usuario`(`cedula`,`nombres`,`apellidos`,`telefono`,`direccion`,`correo`,`contrasena`,`tipo_usuario`,`estado`)values(cedula1,nombre2,
	apellido3,telefono4,direccion5,correo6,contrasena7,tipo_usu8,'A');
	set valor='REGISTRO CON EXITO';
	ELSE
	SET valor='USUARIO EXISTENTE';
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `InsertarCabeceraVentas` */

/*!50003 DROP PROCEDURE IF EXISTS  `InsertarCabeceraVentas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarCabeceraVentas`(
    in _num_venta varchar(70),
    in _id_usuario BIGINT,
    in _id_empresa bigint,
    in _tipo_pago TEXT,
    in _tipo_venta text,
    in _Subtotal_con_iva decimal(10,5),
    in _Subtotal_sin_iva decimal(10,5),
    in _iva_total decimal(10,5),
    in _descuento_total decimal(19,5),
    in _total decimal(10,5),
	out valor text
)
BEGIN
	
	declare _fecha_creacion datetime;
    set _fecha_creacion = now();
    set valor='';
    insert into `cabecera_venta`(num_venta,fecha_creacion,id_usuario,id_empresa,tipo_pago,tipo_venta,Subtotal_con_iva,Subtotal_sin_iva,iva_total,descuento_total,total)
	values(_num_venta,_fecha_creacion,_id_usuario,_id_empresa,_tipo_pago,_tipo_venta,_Subtotal_con_iva,_Subtotal_sin_iva,_iva_total,_descuento_total,_total);
    set valor = (select id from cabecera_venta where id_usuario=_id_usuario  and num_venta = _num_venta and fecha_creacion = _fecha_creacion );
END */$$
DELIMITER ;

/* Procedure structure for procedure `InsertarDetalleVentas` */

/*!50003 DROP PROCEDURE IF EXISTS  `InsertarDetalleVentas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarDetalleVentas`(
	in _id_cabecera_venta BIGINT,
    in _id_producto BIGINT,
    in _precio decimal(10,5),
    in _cantidad bigint,
    in _iva decimal(10,5),
    in _descuento decimal(10,5),
    out valor text
)
BEGIN
	set valor='';
    insert into `detalle_venta`(id_cabecera_venta,id_producto,precio,cantidad,iva,descuento)
	values(_id_cabecera_venta,_id_producto,_precio,_cantidad,_iva,_descuento);
    set valor = (select id from detalle_venta where id_cabecera_venta =_id_cabecera_venta  and id_producto = _id_producto and cantidad = _cantidad);
END */$$
DELIMITER ;

/* Procedure structure for procedure `listarComboProductos` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarComboProductos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarComboProductos`(in op int)
BEGIN
	if (op = 1) then
	select `id`,`nombre`,`estado` from `clase_producto` where `estado`='A';
	end if;
	IF (op = 2) THEN
	SELECT `id`,`nombre`,`estado` FROM `tipo_producto` WHERE `estado`='A';
	END IF;
	IF (op = 3) THEN
	SELECT `id`,`nombre`,`estado` FROM `medida_producto` WHERE `estado`='A';
	END IF;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listarJoinProductos` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarJoinProductos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarJoinProductos`(in op int)
BEGIN
if (op=1)then
SELECT p.`id`,p.`nombre`,p.`precio_compra_referencial`,p.`precio_compra_ult`,p.`precio_Vent_A`,p.`precio_Vent_B`,p.`precio_Vent_C`,p.`clase` AS id_clase,
cp.`nombre` AS clase ,p.`tipo` AS id_tipo ,tp.`nombre` AS tipo ,p.`medida` AS id_medida ,mp.`nombre` AS medida,p.`stock`,p.`iva`,p.`estado`FROM `producto` p 
JOIN `clase_producto` cp ON cp.`id`= p.`clase`
JOIN `tipo_producto` tp ON tp.`id`= p.`tipo`
JOIN `medida_producto` mp ON mp.`id`=p.`medida`
where p.`estado`='A';
end if;
IF (op=2)THEN
SELECT p.`id`,p.`nombre`,p.`precio_compra_referencial`,p.`precio_compra_ult`,p.`precio_Vent_A`,p.`precio_Vent_B`,p.`precio_Vent_C`,p.`clase` AS id_clase,
cp.`nombre` AS clase ,p.`tipo` AS id_tipo ,tp.`nombre` AS tipo ,p.`medida` AS id_medida ,mp.`nombre` AS medida,p.`stock`,p.`iva`,p.`estado`FROM `producto` p 
JOIN `clase_producto` cp ON cp.`id`= p.`clase`
JOIN `tipo_producto` tp ON tp.`id`= p.`tipo`
JOIN `medida_producto` mp ON mp.`id`=p.`medida`
WHERE p.`estado`='I';
END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `listarUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarUsuario`(in op int)
BEGIN
	if(op=1)then
	select `id`,`cedula`,`nombres`,`apellidos`,`telefono`,`direccion`,`correo`,`contrasena`,`tipo_usuario`,`estado` 
	from `usuario` where `estado`='A';
	end if;
	IF(op=2)THEN
	SELECT `id`,`cedula`,`nombres`,`apellidos`,`telefono`,`direccion`,`correo`,`contrasena`,`tipo_usuario`,`estado` 
	FROM `usuario` WHERE `estado`='I';
	end if;
	IF(op=3)THEN
	SELECT `id`,`cedula`,`nombres`,`apellidos`,`telefono`,`direccion`,`correo`,`contrasena`,`tipo_usuario`,`estado` 
	FROM `usuario` WHERE `tipo_usuario`='CLIENTE';
	end if;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `modificarProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `modificarProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `modificarProducto`(in nombre1 varchar(100),in compra_ref decimal(10,5),in precio_ult DECIMAL(10,5),in precio_A DECIMAL(10,5),
in precio_B DECIMAL(10,5),in precio_C DECIMAL(10,5),in clase7 bigint,in tipo8 bigint,in medida9 bigint,in stock10 bigint,in iva11 text,in idpro12 bigint,out valor text)
BEGIN
	update `producto` SET `nombre`=nombre1,`precio_compra_referencial`=compra_ref,`precio_compra_ult`=precio_ult,`precio_Vent_A`=precio_A,
	`precio_Vent_B`=precio_B,`precio_Vent_C`=precio_C,`clase`=clase7,`tipo`=tipo8,`medida`=medida9,`stock`=stock10,`iva`=iva11 
        where `id`= idpro12;
	set valor = 'PRODUCTO ACTUALIZADO';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `modificarUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `modificarUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `modificarUsuario`(IN cedula1 VARCHAR(10),IN nombre2 TEXT, IN apellido3 TEXT,
IN telefono4 VARCHAR(12),IN direccion5 TEXT, IN correo6 TEXT,IN contrasena7 VARCHAR(15),IN tipo_usu8 TEXT,in id9 bigint,OUT valor TEXT)
BEGIN
	Update `usuario` set `cedula`= cedula1,`nombres`= nombre2,`apellidos`= apellido3 ,`telefono`= telefono4,`direccion`= direccion5,`correo`= correo6,
	`contrasena`= contrasena7,`tipo_usuario`= tipo_usu8 where `id`= id9;
	SET valor='MODIFICACION CON EXITO';
    END */$$
DELIMITER ;

/*Table structure for table `claseproductos_humtrusa` */

DROP TABLE IF EXISTS `claseproductos_humtrusa`;

/*!50001 DROP VIEW IF EXISTS `claseproductos_humtrusa` */;
/*!50001 DROP TABLE IF EXISTS `claseproductos_humtrusa` */;

/*!50001 CREATE TABLE  `claseproductos_humtrusa`(
 `id` bigint(20) ,
 `nombre` text ,
 `estado` char(1) 
)*/;

/*Table structure for table `medidaproductos_humtrusa` */

DROP TABLE IF EXISTS `medidaproductos_humtrusa`;

/*!50001 DROP VIEW IF EXISTS `medidaproductos_humtrusa` */;
/*!50001 DROP TABLE IF EXISTS `medidaproductos_humtrusa` */;

/*!50001 CREATE TABLE  `medidaproductos_humtrusa`(
 `id` bigint(20) ,
 `nombre` text ,
 `estado` char(1) 
)*/;

/*Table structure for table `productos_clase_humtrusa` */

DROP TABLE IF EXISTS `productos_clase_humtrusa`;

/*!50001 DROP VIEW IF EXISTS `productos_clase_humtrusa` */;
/*!50001 DROP TABLE IF EXISTS `productos_clase_humtrusa` */;

/*!50001 CREATE TABLE  `productos_clase_humtrusa`(
 `id` bigint(20) ,
 `nombre` varchar(100) ,
 `precio_compra_referencial` decimal(10,5) ,
 `precio_compra_ult` decimal(10,5) ,
 `precio_Vent_A` decimal(10,5) ,
 `stock` bigint(20) ,
 `medida` text ,
 `tipo` text ,
 `clase` text 
)*/;

/*Table structure for table `productos_humtrusa` */

DROP TABLE IF EXISTS `productos_humtrusa`;

/*!50001 DROP VIEW IF EXISTS `productos_humtrusa` */;
/*!50001 DROP TABLE IF EXISTS `productos_humtrusa` */;

/*!50001 CREATE TABLE  `productos_humtrusa`(
 `id` bigint(20) ,
 `nombre` varchar(100) ,
 `precio_compra_referencial` decimal(10,5) ,
 `precio_compra_ult` decimal(10,5) ,
 `precio_Vent_A` decimal(10,5) ,
 `stock` bigint(20) 
)*/;

/*Table structure for table `productos_tipo_humtrusa` */

DROP TABLE IF EXISTS `productos_tipo_humtrusa`;

/*!50001 DROP VIEW IF EXISTS `productos_tipo_humtrusa` */;
/*!50001 DROP TABLE IF EXISTS `productos_tipo_humtrusa` */;

/*!50001 CREATE TABLE  `productos_tipo_humtrusa`(
 `id` bigint(20) ,
 `nombre` varchar(100) ,
 `precio_compra_referencial` decimal(10,5) ,
 `precio_compra_ult` decimal(10,5) ,
 `precio_Vent_A` decimal(10,5) ,
 `stock` bigint(20) ,
 `medida` text ,
 `tipo` text 
)*/;

/*Table structure for table `tipoproductos_humtrusa` */

DROP TABLE IF EXISTS `tipoproductos_humtrusa`;

/*!50001 DROP VIEW IF EXISTS `tipoproductos_humtrusa` */;
/*!50001 DROP TABLE IF EXISTS `tipoproductos_humtrusa` */;

/*!50001 CREATE TABLE  `tipoproductos_humtrusa`(
 `id` bigint(20) ,
 `nombre` text ,
 `estado` char(1) 
)*/;

/*Table structure for table `usuarios_humtrusa` */

DROP TABLE IF EXISTS `usuarios_humtrusa`;

/*!50001 DROP VIEW IF EXISTS `usuarios_humtrusa` */;
/*!50001 DROP TABLE IF EXISTS `usuarios_humtrusa` */;

/*!50001 CREATE TABLE  `usuarios_humtrusa`(
 `id` int(11) ,
 `cedula` varchar(10) ,
 `nombres` text ,
 `apellidos` text ,
 `telefono` varchar(12) 
)*/;

/*View structure for view claseproductos_humtrusa */

/*!50001 DROP TABLE IF EXISTS `claseproductos_humtrusa` */;
/*!50001 DROP VIEW IF EXISTS `claseproductos_humtrusa` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `claseproductos_humtrusa` AS select `clase_producto`.`id` AS `id`,`clase_producto`.`nombre` AS `nombre`,`clase_producto`.`estado` AS `estado` from `clase_producto` */;

/*View structure for view medidaproductos_humtrusa */

/*!50001 DROP TABLE IF EXISTS `medidaproductos_humtrusa` */;
/*!50001 DROP VIEW IF EXISTS `medidaproductos_humtrusa` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `medidaproductos_humtrusa` AS select `medida_producto`.`id` AS `id`,`medida_producto`.`nombre` AS `nombre`,`medida_producto`.`estado` AS `estado` from `medida_producto` */;

/*View structure for view productos_clase_humtrusa */

/*!50001 DROP TABLE IF EXISTS `productos_clase_humtrusa` */;
/*!50001 DROP VIEW IF EXISTS `productos_clase_humtrusa` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `productos_clase_humtrusa` AS select `p`.`id` AS `id`,`p`.`nombre` AS `nombre`,`p`.`precio_compra_referencial` AS `precio_compra_referencial`,`p`.`precio_compra_ult` AS `precio_compra_ult`,`p`.`precio_Vent_A` AS `precio_Vent_A`,`p`.`stock` AS `stock`,`mp`.`nombre` AS `medida`,`tp`.`nombre` AS `tipo`,`cp`.`nombre` AS `clase` from (((`producto` `p` join `medida_producto` `mp` on((`mp`.`id` = `p`.`medida`))) join `tipo_producto` `tp` on((`tp`.`id` = `p`.`tipo`))) join `clase_producto` `cp` on((`cp`.`id` = `p`.`clase`))) */;

/*View structure for view productos_humtrusa */

/*!50001 DROP TABLE IF EXISTS `productos_humtrusa` */;
/*!50001 DROP VIEW IF EXISTS `productos_humtrusa` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `productos_humtrusa` AS select `producto`.`id` AS `id`,`producto`.`nombre` AS `nombre`,`producto`.`precio_compra_referencial` AS `precio_compra_referencial`,`producto`.`precio_compra_ult` AS `precio_compra_ult`,`producto`.`precio_Vent_A` AS `precio_Vent_A`,`producto`.`stock` AS `stock` from `producto` */;

/*View structure for view productos_tipo_humtrusa */

/*!50001 DROP TABLE IF EXISTS `productos_tipo_humtrusa` */;
/*!50001 DROP VIEW IF EXISTS `productos_tipo_humtrusa` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `productos_tipo_humtrusa` AS select `p`.`id` AS `id`,`p`.`nombre` AS `nombre`,`p`.`precio_compra_referencial` AS `precio_compra_referencial`,`p`.`precio_compra_ult` AS `precio_compra_ult`,`p`.`precio_Vent_A` AS `precio_Vent_A`,`p`.`stock` AS `stock`,`mp`.`nombre` AS `medida`,`tp`.`nombre` AS `tipo` from ((`producto` `p` join `medida_producto` `mp` on((`mp`.`id` = `p`.`medida`))) join `tipo_producto` `tp` on((`tp`.`id` = `p`.`tipo`))) */;

/*View structure for view tipoproductos_humtrusa */

/*!50001 DROP TABLE IF EXISTS `tipoproductos_humtrusa` */;
/*!50001 DROP VIEW IF EXISTS `tipoproductos_humtrusa` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tipoproductos_humtrusa` AS select `tipo_producto`.`id` AS `id`,`tipo_producto`.`nombre` AS `nombre`,`tipo_producto`.`estado` AS `estado` from `tipo_producto` */;

/*View structure for view usuarios_humtrusa */

/*!50001 DROP TABLE IF EXISTS `usuarios_humtrusa` */;
/*!50001 DROP VIEW IF EXISTS `usuarios_humtrusa` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usuarios_humtrusa` AS select `u`.`id` AS `id`,`u`.`cedula` AS `cedula`,`u`.`nombres` AS `nombres`,`u`.`apellidos` AS `apellidos`,`u`.`telefono` AS `telefono` from `usuario` `u` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
