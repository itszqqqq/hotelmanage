-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '管理员号',
  `name` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '管理员姓名',
  `passwd` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','483a2983e5106f0b7d1bcdec9c28851fadc98a5246920854aae5c3bbd8d92000'),(2,'zq','483a2983e5106f0b7d1bcdec9c28851fadc98a5246920854aae5c3bbd8d92000'),(3,'yz','483a2983e5106f0b7d1bcdec9c28851fadc98a5246920854aae5c3bbd8d92000'),(4,'lym','483a2983e5106f0b7d1bcdec9c28851fadc98a5246920854aae5c3bbd8d92000');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `authorized_managers`
--

DROP TABLE IF EXISTS `authorized_managers`;
/*!50001 DROP VIEW IF EXISTS `authorized_managers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `authorized_managers` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `passwd`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cardid` char(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '客户身份证',
  `linkman` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '客户姓名',
  `phone` char(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '联系电话',
  PRIMARY KEY (`cardid`),
  UNIQUE KEY `customercardid_index` (`cardid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='客户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('421083200202253855','尹政','18856365684'),('430281188412150313','啊啊','18473481958'),('430281199412150111','森森','18473481922'),('430281199412150312','哦哦','18419581245'),('430281199412150313','小森','18856365678');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `ms_id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `title` varchar(30) NOT NULL COMMENT '主题',
  `name` varchar(10) NOT NULL COMMENT '名字',
  `mailbox` varchar(50) NOT NULL COMMENT '邮箱',
  `phone` char(11) NOT NULL COMMENT '手机',
  `content` varchar(240) NOT NULL COMMENT '留言内容',
  PRIMARY KEY (`ms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (12,'搜索','小周','1251662462@qq.com','18627967261','ss'),(13,'啊啊','小尹','1161942111@qq.com','18856365684','ss'),(14,'森森','小刘','1251662462@qq.com','18856365684','试试'),(15,'森森','小王','1251662462@qq.com','18856365684','试试');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `title` varchar(30) NOT NULL COMMENT '图片标题',
  `spic` varchar(100) NOT NULL COMMENT '小图片',
  `bpic` varchar(100) NOT NULL COMMENT '大图片',
  `describes` varchar(240) NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'夜幕降临时的休闲厅','s1.jpg','l1.jpg','位于大厅中部的休闲是一个不错停驻休闲的好地方'),(3,'宾馆休闲亭与湖','s3.jpg','l3.jpg','坐在休闲厅中观看湖中美景'),(4,'舌尖上的美食','20180425035522.jpg','201804250355222.jpg','美食不可辜负'),(5,'宾馆休闲喝茶区','s5.jpg','l5.jpg','喝茶观景'),(6,'干净整洁的卫生间','20180425035622.jpg','201804250356222.jpg','美好体验无烦恼'),(8,'便利的停车场','20180425035714.jpg','201804250357142.jpg','给你的爱车一个更好的环境');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `order_admin_query`
--

DROP TABLE IF EXISTS `order_admin_query`;
/*!50001 DROP VIEW IF EXISTS `order_admin_query`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_admin_query` AS SELECT 
 1 AS `orderid`,
 1 AS `roomid`,
 1 AS `cardid`,
 1 AS `entertime`,
 1 AS `days`,
 1 AS `typeid`,
 1 AS `typename`,
 1 AS `linkman`,
 1 AS `phone`,
 1 AS `messages`,
 1 AS `monetary`,
 1 AS `ostatus`,
 1 AS `oremarks`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_history_query`
--

DROP TABLE IF EXISTS `order_history_query`;
/*!50001 DROP VIEW IF EXISTS `order_history_query`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_history_query` AS SELECT 
 1 AS `orderid`,
 1 AS `roomid`,
 1 AS `cardid`,
 1 AS `entertime`,
 1 AS `days`,
 1 AS `typeid`,
 1 AS `typename`,
 1 AS `linkman`,
 1 AS `phone`,
 1 AS `messages`,
 1 AS `monetary`,
 1 AS `ostatus`,
 1 AS `oremarks`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_query`
--

DROP TABLE IF EXISTS `order_query`;
/*!50001 DROP VIEW IF EXISTS `order_query`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_query` AS SELECT 
 1 AS `orderid`,
 1 AS `roomid`,
 1 AS `cardid`,
 1 AS `entertime`,
 1 AS `days`,
 1 AS `typeid`,
 1 AS `typename`,
 1 AS `linkman`,
 1 AS `phone`,
 1 AS `messages`,
 1 AS `ostatus`,
 1 AS `oremarks`,
 1 AS `price`,
 1 AS `monetary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_roomtype`
--

DROP TABLE IF EXISTS `order_roomtype`;
/*!50001 DROP VIEW IF EXISTS `order_roomtype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_roomtype` AS SELECT 
 1 AS `orderid`,
 1 AS `roomid`,
 1 AS `entertime`,
 1 AS `days`,
 1 AS `monetary`,
 1 AS `typename`,
 1 AS `linkman`,
 1 AS `phone`,
 1 AS `messages`,
 1 AS `ostatus`,
 1 AS `oremarks`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderid` int NOT NULL COMMENT '订单流水号',
  `roomid` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '房间编号',
  `cardid` char(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '客户身份证',
  `entertime` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '入住时间',
  `days` int NOT NULL DEFAULT '1' COMMENT '住宿天数',
  `typeid` int NOT NULL COMMENT '房间类型',
  `ostatus` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '否' COMMENT '是否网上预订',
  `oremarks` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '否' COMMENT '订单是否完成',
  `monetary` decimal(8,2) NOT NULL COMMENT '消费金额',
  `messages` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '无备注信息' COMMENT '订单备注信息',
  PRIMARY KEY (`orderid`),
  KEY `FK_ORDER_TYPE` (`typeid`),
  KEY `FK_ORDER_CUSTOMER` (`cardid`),
  KEY `idcard_index` (`cardid`),
  CONSTRAINT `FK_ORDER_CUSTOMER` FOREIGN KEY (`cardid`) REFERENCES `customer` (`cardid`),
  CONSTRAINT `FK_ORDER_TYPE` FOREIGN KEY (`typeid`) REFERENCES `roomtype` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='订单入住表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (13502,'103','430281199412150312','2023-04-27',2,1005,'否','是',640.00,''),(21339,'101','421083200202253855','2023-06-28',1,1000,'是','是',188.00,'cdsv'),(21626,'105','421083200202253855','2023-06-30',3,1000,'是','否',564.00,'vbr'),(21708,'106','421083200202253855','2023-07-01',1,1001,'是','否',288.00,'rvrbb'),(94036,'104','430281199412150111','2023-05-15',2,1003,'否','是',540.00,'试试');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `orders_delete_trigger` AFTER DELETE ON `orders` FOR EACH ROW BEGIN
    INSERT INTO record (orderid, roomid, cardid, entertime, days, typeid, ostatus, oremarks, monetary, messages)
    VALUES (OLD.orderid, OLD.roomid, OLD.cardid, OLD.entertime, OLD.days, OLD.typeid, OLD.ostatus, OLD.oremarks, OLD.monetary, OLD.messages);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record` (
  `orderid` int NOT NULL COMMENT '订单流水号',
  `roomid` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '房间编号',
  `cardid` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '客户身份证',
  `entertime` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '入住时间',
  `days` int NOT NULL DEFAULT '1' COMMENT '住宿天数',
  `typeid` int NOT NULL COMMENT '房间类型',
  `ostatus` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '否' COMMENT '是否网上预订',
  `oremarks` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '否' COMMENT '订单是否完成',
  `monetary` decimal(8,2) NOT NULL COMMENT '消费金额',
  `messages` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '无备注信息' COMMENT '订单备注信息',
  PRIMARY KEY (`orderid`),
  KEY `FK_RECORD_CUSTOMER` (`cardid`),
  KEY `FK_RECORD_TYPE` (`typeid`),
  CONSTRAINT `FK_RECORD_CUSTOMER` FOREIGN KEY (`cardid`) REFERENCES `customer` (`cardid`),
  CONSTRAINT `FK_RECORD_TYPE` FOREIGN KEY (`typeid`) REFERENCES `roomtype` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='订单入住历史表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES (13351,'102','430281188412150313','2023-04-28',1,1001,'是','是',288.00,'22'),(31214,'102','430281199412150313','2023-04-25',2,1001,'否','是',576.00,'森森');
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `roomid` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '房间编号',
  `typeid` int NOT NULL COMMENT '类型标识',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '是否入住',
  `remarks` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '房间描述',
  `pic` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '房间图片',
  PRIMARY KEY (`roomid`),
  UNIQUE KEY `roomid` (`roomid`),
  KEY `FK_ROOM_TYPE` (`typeid`),
  CONSTRAINT `FK_ROOM_TYPE` FOREIGN KEY (`typeid`) REFERENCES `roomtype` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES ('101',1000,'是','一张床，房间配套设施——牙刷、牙膏、肥皂、梳子、一次性拖鞋等一套，风筒、空调、热水...','d1.jpg'),('103',1005,'是','商务两床房，房间配套设施——牙刷、牙膏、肥皂、梳子、一次性拖鞋等一套，风筒、空调、...','a3.jpg'),('104',1003,'是','商务单床房，房间配套设施——牙刷、牙膏、肥皂、梳子、一次性拖鞋等一套，风筒、空调、...','d3.jpg'),('105',1000,'否','一张床，房间配套设施——牙刷、牙膏、肥皂、梳子、一次性拖鞋等一套，风筒、空调、热水...','d2.jpg'),('106',1001,'否','两张床，房间配套设施——牙刷、牙膏、肥皂、梳子、一次性拖鞋等一套，风筒、空调、热水...','a2.jpg'),('107',1006,'否','两张床，房间配套设施——牙刷、牙膏、肥皂、梳子、一次性拖鞋等一套，风筒、空调、热水...','a2.jpg');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `room_roomtype`
--

DROP TABLE IF EXISTS `room_roomtype`;
/*!50001 DROP VIEW IF EXISTS `room_roomtype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `room_roomtype` AS SELECT 
 1 AS `roomid`,
 1 AS `typeid`,
 1 AS `typename`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `roomtype`
--

DROP TABLE IF EXISTS `roomtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomtype` (
  `typeid` int NOT NULL AUTO_INCREMENT COMMENT '类型标识',
  `typename` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '类型名称',
  `area` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '房间面积',
  `hasNet` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '有' COMMENT '网络',
  `hasTV` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '有' COMMENT '有线电视',
  `price` decimal(8,2) NOT NULL COMMENT '价格',
  `totalnum` int NOT NULL COMMENT '房间数量',
  `leftnum` int NOT NULL COMMENT '剩余数量',
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=1007 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='房间类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtype`
--

LOCK TABLES `roomtype` WRITE;
/*!40000 ALTER TABLE `roomtype` DISABLE KEYS */;
INSERT INTO `roomtype` VALUES (1000,'标准间【单人】','40','有','有',188.00,2,0),(1001,'标准间【双人】','70','有','有',288.00,1,0),(1003,'商务间【单人】','50','有','有',270.00,1,0),(1005,'商务间【双人】','80','有','有',320.00,1,0),(1006,'公寓大床房【双人】','80','有','有',350.00,1,1);
/*!40000 ALTER TABLE `roomtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `authorized_managers`
--

/*!50001 DROP VIEW IF EXISTS `authorized_managers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `authorized_managers` AS select `admin`.`id` AS `id`,`admin`.`name` AS `name`,`admin`.`passwd` AS `passwd` from `admin` where (`admin`.`name` <> 'admin') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_admin_query`
--

/*!50001 DROP VIEW IF EXISTS `order_admin_query`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_admin_query` AS select `a`.`orderid` AS `orderid`,`a`.`roomid` AS `roomid`,`a`.`cardid` AS `cardid`,`a`.`entertime` AS `entertime`,`a`.`days` AS `days`,`b`.`typeid` AS `typeid`,`b`.`typename` AS `typename`,`c`.`linkman` AS `linkman`,`c`.`phone` AS `phone`,`a`.`messages` AS `messages`,`a`.`monetary` AS `monetary`,`a`.`ostatus` AS `ostatus`,`a`.`oremarks` AS `oremarks`,`b`.`price` AS `price` from ((`orders` `a` join `roomtype` `b`) join `customer` `c`) where ((`a`.`typeid` = `b`.`typeid`) and (`c`.`cardid` = `a`.`cardid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_history_query`
--

/*!50001 DROP VIEW IF EXISTS `order_history_query`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_history_query` AS select `a`.`orderid` AS `orderid`,`a`.`roomid` AS `roomid`,`a`.`cardid` AS `cardid`,`a`.`entertime` AS `entertime`,`a`.`days` AS `days`,`b`.`typeid` AS `typeid`,`b`.`typename` AS `typename`,`c`.`linkman` AS `linkman`,`c`.`phone` AS `phone`,`a`.`messages` AS `messages`,`a`.`monetary` AS `monetary`,`a`.`ostatus` AS `ostatus`,`a`.`oremarks` AS `oremarks`,`b`.`price` AS `price` from ((`record` `a` join `roomtype` `b`) join `customer` `c`) where ((`a`.`typeid` = `b`.`typeid`) and (`c`.`cardid` = `a`.`cardid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_query`
--

/*!50001 DROP VIEW IF EXISTS `order_query`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_query` AS select `a`.`orderid` AS `orderid`,`a`.`roomid` AS `roomid`,`a`.`cardid` AS `cardid`,`a`.`entertime` AS `entertime`,`a`.`days` AS `days`,`b`.`typeid` AS `typeid`,`b`.`typename` AS `typename`,`c`.`linkman` AS `linkman`,`c`.`phone` AS `phone`,`a`.`messages` AS `messages`,`a`.`ostatus` AS `ostatus`,`a`.`oremarks` AS `oremarks`,`b`.`price` AS `price`,`a`.`monetary` AS `monetary` from ((`orders` `a` join `roomtype` `b`) join `customer` `c`) where ((`a`.`typeid` = `b`.`typeid`) and (`a`.`cardid` = `c`.`cardid`) and (`a`.`ostatus` = '是') and (`a`.`oremarks` = '否')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_roomtype`
--

/*!50001 DROP VIEW IF EXISTS `order_roomtype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_roomtype` AS select `a`.`orderid` AS `orderid`,`a`.`roomid` AS `roomid`,`a`.`entertime` AS `entertime`,`a`.`days` AS `days`,`a`.`monetary` AS `monetary`,`b`.`typename` AS `typename`,`c`.`linkman` AS `linkman`,`c`.`phone` AS `phone`,`a`.`messages` AS `messages`,`a`.`ostatus` AS `ostatus`,`a`.`oremarks` AS `oremarks` from ((`orders` `a` join `roomtype` `b`) join `customer` `c`) where ((`a`.`typeid` = `b`.`typeid`) and (`a`.`cardid` = `c`.`cardid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `room_roomtype`
--

/*!50001 DROP VIEW IF EXISTS `room_roomtype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `room_roomtype` AS select `a`.`roomid` AS `roomid`,`b`.`typeid` AS `typeid`,`b`.`typename` AS `typename`,`b`.`price` AS `price` from (`room` `a` join `roomtype` `b`) where (`a`.`typeid` = `b`.`typeid`) */;
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

-- Dump completed on 2023-07-06 10:58:12
