-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: SpringCommerce
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_product_list`
--

DROP TABLE IF EXISTS `cart_product_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_product_list` (
  `cart_id` bigint NOT NULL,
  `product_list_id` bigint NOT NULL,
  UNIQUE KEY `UK_3nb67npjebi0qkas6w3f1vui1` (`product_list_id`),
  KEY `FK3e7t3dn07yk0ucu099hghxm06` (`cart_id`),
  CONSTRAINT `FK3e7t3dn07yk0ucu099hghxm06` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `FK7c93qa3xmifohecqqhjx9nxvb` FOREIGN KEY (`product_list_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_product_list`
--

LOCK TABLES `cart_product_list` WRITE;
/*!40000 ALTER TABLE `cart_product_list` DISABLE KEYS */;
INSERT INTO `cart_product_list` VALUES (1,1),(2,7),(3,2);
/*!40000 ALTER TABLE `cart_product_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_quantity`
--

DROP TABLE IF EXISTS `cart_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_quantity` (
  `cart_id` bigint NOT NULL,
  `quantity` int DEFAULT NULL,
  KEY `FK27tun8awkkr5kt4k6n298rs76` (`cart_id`),
  CONSTRAINT `FK27tun8awkkr5kt4k6n298rs76` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_quantity`
--

LOCK TABLES `cart_quantity` WRITE;
/*!40000 ALTER TABLE `cart_quantity` DISABLE KEYS */;
INSERT INTO `cart_quantity` VALUES (1,4),(2,1),(3,1);
/*!40000 ALTER TABLE `cart_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Phong Cách Hip Hop Hàn Quốc','Vòng cổ Mayebe Lavend',40000,'https://down-vn.img.susercontent.com/file/624858930ae28d86049a2b0a2c361897'),(2,'Phong Cách Hip Hop Âu Mỹ Cho Nam Và Nữ','Kính Mát Nam',129000,'https://down-vn.img.susercontent.com/file/c26ba5e8fc1b696af9b864b3bcc80f5b'),(3,'Phong Cách Hàn Quốc Giữ Ấm Thu Đông Ulzzang','Mũ Lông Cừu Bucket Retro',20999,'https://down-vn.img.susercontent.com/file/sg-11134201-22110-q1zdn4gjj9jv3d'),(4,'Phong Cách Punk Retro Cá Tính Thời Trang','Nhẫn Đeo Tay',220000,'https://down-vn.img.susercontent.com/file/54b005bbfc4780f1a48735d07489729b'),(5,'Hình Nơ Cỡ Lớn Kiểu Pháp Thời Trang Thu Đông','Kẹp Tóc',16000,'https://down-vn.img.susercontent.com/file/0bf80ef3f8a31041bb64f4d735d6c090'),(6,'Hình Thánh Giá Phong Cách Punk Gothic','Khuyên Tai Chuỗi Xích Đôi',10900,'https://down-vn.img.susercontent.com/file/14d01883b2aa7bf8f691f0ebe17ee17e'),(7,'Dây Nịt Nữ Mặt Khóa Đồng Cao Cấp Thời Trang','Thắt Lưng Nữ',40900,'https://down-vn.img.susercontent.com/file/vn-11134201-23020-pw9anckj5snvf2'),(8,'Mặt Hình Phi Hành Gia Chất Liệu Hợp Kim','Vòng cổ ',19500,'https://down-vn.img.susercontent.com/file/sg-11134201-7qvf2-les1764r3a5y75');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` VALUES (1,'1/1/1d','1@gmail.com','1'),(2,'1/1d','luonggiabao1310@gmail.com','bao bao'),(3,'1/1/1d','luonggiabao1310@gmail.com','1'),(4,'1/1/1d','1@gmail.com','1');
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'SpringCommerce'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-09 23:57:00
