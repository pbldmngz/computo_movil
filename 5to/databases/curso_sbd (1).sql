# MySQL-Front 5.0  (Build 1.0)

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: curso_mysql
# ------------------------------------------------------
# Server version 5.1.41
CREATE schema if not EXISTS curso_sbd;

USE `curso_sbd`;

#
# Table structure for table category
#

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `left_side` int(11) DEFAULT NULL,
  `right_side` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
INSERT INTO `category` VALUES (1,NULL,'All','All Categories',1,28);
INSERT INTO `category` VALUES (2,1,'Action Figures','All Types of Action Figures',2,11);
INSERT INTO `category` VALUES (3,2,'Sport Action Figures','All Types of Action Figures in Sports',3,8);
INSERT INTO `category` VALUES (4,3,'Tennis Action Figures','Tennis Action Figures',4,5);
INSERT INTO `category` VALUES (5,3,'Football Action Figures','Football Action Figures',6,7);
INSERT INTO `category` VALUES (6,2,'Historical Action Figures','Historical Action Figures',9,10);
INSERT INTO `category` VALUES (7,1,'Video Games','All Types of Video Games',12,19);
INSERT INTO `category` VALUES (8,7,'Racing Video Games','Racing Video Games',13,14);
INSERT INTO `category` VALUES (9,7,'Sports Video Games','Sports Video Games',15,16);
INSERT INTO `category` VALUES (10,7,'Shooting Video Games','Shooting Video Games',17,18);
INSERT INTO `category` VALUES (11,1,'Sports Gear','All Types of Sports Gear',20,25);
INSERT INTO `category` VALUES (12,11,'Soccer Equipment','Soccer Equipment',21,22);
INSERT INTO `category` VALUES (13,11,'Tennis Equipment','Tennis Equipment',23,24);
INSERT INTO `category` VALUES (14,1,'Dolls','All Types of Dolls',26,27);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table customer
#

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `created_on` date NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `billing_address` varchar(100) NOT NULL,
  `billing_city` varchar(35) NOT NULL,
  `billing_province` char(2) NOT NULL,
  `billing_postcode` varchar(8) NOT NULL,
  `billing_country` char(2) NOT NULL,
  `shipping_address` varchar(100) NOT NULL,
  `shipping_city` varchar(35) NOT NULL,
  `shipping_province` char(2) NOT NULL,
  `shipping_postcode` varchar(8) NOT NULL,
  `shipping_country` char(2) NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `login` (`login`,`password`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
INSERT INTO `customer` VALUES (1,'johndoe','johndoe','2004-12-07','John','Doe','123 Billing St.','Doeville','NY','10002','US','123 Shipping St.','Doeville','NY','10002','US');
INSERT INTO `customer` VALUES (2,'janesmith','janesmith','2004-12-10','Jane','Smith','456 Billing Rd.','Smithville','CA','90004','US','456 Shipping Rd.','Smithville','CA','90004','US');
INSERT INTO `customer` VALUES (3,'markbrown','markbrown','2004-12-31','Mark','Brown','789 BillTo Dr.','Browntown','TX','65498','US','789 ShipTo Dr.','Browntown','TX','65498','US');
INSERT INTO `customer` VALUES (4,'homersimpson','homersimpson','2005-02-01','Homer','Simpson','444 Main St.','Springfield','IL','46819','US','44 Main St.','Springfield','IL','46819','US');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table customerorder
#

DROP TABLE IF EXISTS `customerorder`;
CREATE TABLE `customerorder` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `status` char(2) NOT NULL,
  `shipping_method` int(11) NOT NULL,
  `ordered_on` date NOT NULL,
  `shipping_price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `Customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
INSERT INTO `customerorder` VALUES (1,1,'CM',1,'2004-12-07',10);
INSERT INTO `customerorder` VALUES (2,1,'CM',2,'2004-12-08',20);
INSERT INTO `customerorder` VALUES (3,1,'PR',4,'2005-01-02',0);
INSERT INTO `customerorder` VALUES (4,2,'CN',4,'2005-01-02',0);
INSERT INTO `customerorder` VALUES (5,3,'SH',2,'2005-01-05',20);
INSERT INTO `customerorder` VALUES (6,3,'SH',3,'2005-01-05',30);
/*!40000 ALTER TABLE `customerorder` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table customerorderitem
#

DROP TABLE IF EXISTS `customerorderitem`;
CREATE TABLE `customerorderitem` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `weight` decimal(7,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `Product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `customerorderitem` VALUES (1,4,23.7,1.25,1);
INSERT INTO `customerorderitem` VALUES (2,1,12.95,0.65,1);
INSERT INTO `customerorderitem` VALUES (2,5,4.75,0.75,15);
INSERT INTO `customerorderitem` VALUES (3,7,59.99,3.75,2);
INSERT INTO `customerorderitem` VALUES (4,6,104.75,2.15,1);
INSERT INTO `customerorderitem` VALUES (4,10,46.99,0.25,1);
INSERT INTO `customerorderitem` VALUES (5,2,11.95,0.65,1);
INSERT INTO `customerorderitem` VALUES (5,3,15.95,0.85,1);
INSERT INTO `customerorderitem` VALUES (5,5,4.75,0.75,12);
INSERT INTO `customerorderitem` VALUES (6,5,4.75,0.75,30);
/*!40000 ALTER TABLE `customerorderitem` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table departamento
#

DROP TABLE IF EXISTS `departamento`;
CREATE TABLE `departamento` (
  `IdDepto` int(11) NOT NULL DEFAULT '0',
  `Nombre` varchar(255) NOT NULL DEFAULT '',
  `Ubicacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdDepto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `departamento` VALUES (10,'CONTABILIDAD','NEW YORK');
INSERT INTO `departamento` VALUES (20,'INVESTIGACION','DALLAS');
INSERT INTO `departamento` VALUES (30,'VENTAS','CHICAGO');
INSERT INTO `departamento` VALUES (40,'OPERACIONES','BOSTON');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table empleado
#

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE `empleado` (
  `noEmpleado` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(255) DEFAULT NULL,
  `puesto` int(11) NOT NULL DEFAULT '0',
  `fecha_contratacion` date DEFAULT NULL,
  `Comision` float DEFAULT NULL,
  `depto` int(11) DEFAULT NULL,
  PRIMARY KEY (`noEmpleado`),
  KEY `depto` (`depto`),
  KEY `Puesto` (`puesto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
INSERT INTO `empleado` VALUES (7369,'AMANDA SMITH',1,'1980-12-17',0,20);
INSERT INTO `empleado` VALUES (7499,'TIM ALLEN',2,'1981-02-20',300,30);
INSERT INTO `empleado` VALUES (7521,'PAMELA WARD',2,'1981-02-22',500,30);
INSERT INTO `empleado` VALUES (7566,'BILL JONES',3,'1981-04-02',NULL,20);
INSERT INTO `empleado` VALUES (7654,'JOHN MARTIN',2,'1981-09-28',1400,30);
INSERT INTO `empleado` VALUES (7698,'STEVE BLAKE',3,'1981-05-01',NULL,30);
INSERT INTO `empleado` VALUES (7782,'KATTY CLARK',3,'1981-06-09',NULL,10);
INSERT INTO `empleado` VALUES (7788,'BRIAN SCOTT',4,'1987-07-13',NULL,20);
INSERT INTO `empleado` VALUES (7839,'GERARD KING',5,'1981-11-17',NULL,10);
INSERT INTO `empleado` VALUES (7844,'TED TURNER',2,'1981-09-08',0,30);
INSERT INTO `empleado` VALUES (7876,'PAUL ADAMS',1,'1987-07-13',NULL,20);
INSERT INTO `empleado` VALUES (7900,'ALLISON JAMES',1,'1981-12-03',NULL,30);
INSERT INTO `empleado` VALUES (7902,'DIANE FORD',4,'1981-12-03',NULL,20);
INSERT INTO `empleado` VALUES (7934,'PETER MILLER',1,'0000-00-00',NULL,10);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table orderstatus
#

DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus` (
  `order_status_id` char(2) NOT NULL,
  `description` varchar(150) NOT NULL,
  PRIMARY KEY (`order_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `orderstatus` VALUES ('CL','Closed');
INSERT INTO `orderstatus` VALUES ('CM','Completed');
INSERT INTO `orderstatus` VALUES ('CN','Cancelled');
INSERT INTO `orderstatus` VALUES ('PR','In Progress');
INSERT INTO `orderstatus` VALUES ('SH','Shipped');
/*!40000 ALTER TABLE `orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table product
#

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(35) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `weight` decimal(7,2) NOT NULL,
  `unit_price` decimal(9,2) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
INSERT INTO `product` VALUES (1,'ACT001','Action Figure - Tennis','Tennis Player Action Figure with Accessories',0.65,12.95);
INSERT INTO `product` VALUES (2,'ACT002','Action Figure - Football','Football Player Action Figure with Accessories',0.65,11.95);
INSERT INTO `product` VALUES (3,'ACT003','Action Figure - Gladiator','Roman Gladiator Action Figure',0.85,15.95);
INSERT INTO `product` VALUES (4,'SPT001','Soccer Ball','Standard Size 5 Soccer Ball',1.25,23.7);
INSERT INTO `product` VALUES (5,'SPT002','Tennis Balls','3 Hard Court Tennis Balls',0.75,4.75);
INSERT INTO `product` VALUES (6,'SPT003','Tennis Racket','Fiberglass Tennis Racket',2.15,104.75);
INSERT INTO `product` VALUES (7,'DOL001','Doll','Collectible 1950\'s Doll',3.75,59.99);
INSERT INTO `product` VALUES (8,'VID001','Video Game - Car Racing','Formula 1 Racing Game',0.25,48.99);
INSERT INTO `product` VALUES (9,'VID002','Video Game - Soccer','Championship Soccer Video Game',0.25,44.99);
INSERT INTO `product` VALUES (10,'VID003','Video Game - Football','Professional Football Video Game',0.25,46.99);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table product2category
#

DROP TABLE IF EXISTS `product2category`;
CREATE TABLE `product2category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `product2category` VALUES (1,3);
INSERT INTO `product2category` VALUES (2,3);
INSERT INTO `product2category` VALUES (3,6);
INSERT INTO `product2category` VALUES (4,12);
INSERT INTO `product2category` VALUES (5,13);
INSERT INTO `product2category` VALUES (6,13);
INSERT INTO `product2category` VALUES (7,14);
INSERT INTO `product2category` VALUES (8,8);
INSERT INTO `product2category` VALUES (9,9);
INSERT INTO `product2category` VALUES (10,9);
/*!40000 ALTER TABLE `product2category` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table puesto
#

DROP TABLE IF EXISTS `puesto`;
CREATE TABLE `puesto` (
  `IdPuesto` int(11) NOT NULL DEFAULT '0',
  `Puesto` varchar(255) DEFAULT NULL,
  `salario` float DEFAULT NULL,
  PRIMARY KEY (`IdPuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `puesto` VALUES (1,'CLERK',800);
INSERT INTO `puesto` VALUES (2,'VENDEDOR',1600);
INSERT INTO `puesto` VALUES (3,'MANAGER',3000);
INSERT INTO `puesto` VALUES (4,'ANALISTA',2800);
INSERT INTO `puesto` VALUES (5,'PRESIDENTE',5000);
/*!40000 ALTER TABLE `puesto` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table shippingmethod
#

DROP TABLE IF EXISTS `shippingmethod`;
CREATE TABLE `shippingmethod` (
  `shipping_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cost` decimal(5,2) NOT NULL,
  `min_order_weight` decimal(9,2) NOT NULL,
  `max_order_weight` decimal(9,2) NOT NULL,
  `min_order_total` decimal(9,2) NOT NULL,
  `max_order_total` decimal(9,2) NOT NULL,
  PRIMARY KEY (`shipping_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
INSERT INTO `shippingmethod` VALUES (1,'Light Weight Shipments',10,0,10,0,200);
INSERT INTO `shippingmethod` VALUES (2,'Medium Weight Shipments',20,10.01,20,0,200);
INSERT INTO `shippingmethod` VALUES (3,'Heavy Weight Shipments',30,20.01,200,0,200);
INSERT INTO `shippingmethod` VALUES (4,'Free Shipping',0,200.01,99999.99,200.01,9999999.99);
/*!40000 ALTER TABLE `shippingmethod` ENABLE KEYS */;
UNLOCK TABLES;

#
#  Foreign keys for table customerorder
#

ALTER TABLE `customerorder`
ADD CONSTRAINT `Customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

#
#  Foreign keys for table customerorderitem
#

ALTER TABLE `customerorderitem`
ADD CONSTRAINT `Product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `customerorder` (`order_id`);

#
#  Foreign keys for table empleado
#

ALTER TABLE `empleado`
ADD CONSTRAINT `depto` FOREIGN KEY (`depto`) REFERENCES `departamento` (`IdDepto`);


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
