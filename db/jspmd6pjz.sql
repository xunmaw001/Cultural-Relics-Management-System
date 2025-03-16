-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmd6pjz
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmd6pjz/upload/1615970231176.jpg'),(2,'picture2','http://localhost:8080/jspmd6pjz/upload/1615970018223.jpg'),(3,'picture3','http://localhost:8080/jspmd6pjz/upload/1615970223133.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusswenwuxinxi`
--

DROP TABLE IF EXISTS `discusswenwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusswenwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615970404919 DEFAULT CHARSET=utf8 COMMENT='文物信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusswenwuxinxi`
--

LOCK TABLES `discusswenwuxinxi` WRITE;
/*!40000 ALTER TABLE `discusswenwuxinxi` DISABLE KEYS */;
INSERT INTO `discusswenwuxinxi` VALUES (101,'2021-03-17 08:27:15',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-17 08:27:15',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-17 08:27:15',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-17 08:27:15',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-17 08:27:15',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-17 08:27:15',6,6,'用户名6','评论内容6','回复内容6'),(1615970404918,'2021-03-17 08:40:04',1615970155601,1615970294133,NULL,'很不错的文物',NULL);
/*!40000 ALTER TABLE `discusswenwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615970446228 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (61,'2021-03-17 08:27:15','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(62,'2021-03-17 08:27:15','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(63,'2021-03-17 08:27:15','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(64,'2021-03-17 08:27:15','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(65,'2021-03-17 08:27:15','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(66,'2021-03-17 08:27:15','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615970434003,'2021-03-17 08:40:33','陶瓷文物交流','<p>可以和文物爱好者进行交流</p>',0,1615970294133,'2','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615970483697 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (91,'2021-03-17 08:27:15',1,'用户名1','留言内容1','回复内容1'),(92,'2021-03-17 08:27:15',2,'用户名2','留言内容2','回复内容2'),(93,'2021-03-17 08:27:15',3,'用户名3','留言内容3','回复内容3'),(94,'2021-03-17 08:27:15',4,'用户名4','留言内容4','回复内容4'),(95,'2021-03-17 08:27:15',5,'用户名5','留言内容5','回复内容5'),(96,'2021-03-17 08:27:15',6,'用户名6','留言内容6','回复内容6'),(1615970483696,'2021-03-17 08:41:23',1615970294133,'2','请问有玉器文物吗','有');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615970256271 DEFAULT CHARSET=utf8 COMMENT='文物资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-03-17 08:27:15','标题1','简介1','http://localhost:8080/jspmd6pjz/upload/1615970031911.jpg','内容1\r\n'),(82,'2021-03-17 08:27:15','标题2','简介2','http://localhost:8080/jspmd6pjz/upload/1615970036960.jpg','内容2\r\n'),(83,'2021-03-17 08:27:15','标题3','简介3','http://localhost:8080/jspmd6pjz/upload/1615970041529.jpg','内容3\r\n'),(84,'2021-03-17 08:27:15','标题4','简介4','http://localhost:8080/jspmd6pjz/upload/1615970046746.jpg','内容4\r\n'),(85,'2021-03-17 08:27:15','标题5','简介5','http://localhost:8080/jspmd6pjz/upload/1615970053175.jpg','内容5\r\n'),(86,'2021-03-17 08:27:15','标题6','简介6','http://localhost:8080/jspmd6pjz/upload/1615970059470.jpg','内容6\r\n'),(1615970256270,'2021-03-17 08:37:35','文物资讯A','文物资讯','http://localhost:8080/jspmd6pjz/upload/1615970248712.jpg','资讯内容\r\n<img src=\"http://localhost:8080/jspmd6pjz/upload/1615970254407.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmd6pjz/upload/1615970254407.jpg\">\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615970360269 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615970360268,'2021-03-17 08:39:19',1615970294133,1615970155601,'wenwuxinxi','毛公鼎','http://localhost:8080/jspmd6pjz/upload/1615970137880.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','c02ycld9qwgxtxvtvxn0a90kl2jz48jy','2021-03-17 08:27:45','2021-03-17 09:34:48'),(2,1615970294133,'2','yonghu','用户','3amxvjon0zuitrot8ni8gra9vruiw5vo','2021-03-17 08:38:19','2021-03-17 09:38:19');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-17 08:27:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenwufenlei`
--

DROP TABLE IF EXISTS `wenwufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wenwufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenwufenlei` varchar(200) NOT NULL COMMENT '文物分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wenwufenlei` (`wenwufenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1615970126922 DEFAULT CHARSET=utf8 COMMENT='文物分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenwufenlei`
--

LOCK TABLES `wenwufenlei` WRITE;
/*!40000 ALTER TABLE `wenwufenlei` DISABLE KEYS */;
INSERT INTO `wenwufenlei` VALUES (21,'2021-03-17 08:27:15','文物分类1'),(22,'2021-03-17 08:27:15','文物分类2'),(23,'2021-03-17 08:27:15','文物分类3'),(24,'2021-03-17 08:27:15','文物分类4'),(25,'2021-03-17 08:27:15','文物分类5'),(26,'2021-03-17 08:27:15','文物分类6'),(1615970114966,'2021-03-17 08:35:14','青铜'),(1615970120498,'2021-03-17 08:35:20','陶瓷'),(1615970126921,'2021-03-17 08:35:26','书画');
/*!40000 ALTER TABLE `wenwufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenwuwaijie`
--

DROP TABLE IF EXISTS `wenwuwaijie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wenwuwaijie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenwubianhao` varchar(200) DEFAULT NULL COMMENT '文物编号',
  `wenwumingcheng` varchar(200) DEFAULT NULL COMMENT '文物名称',
  `wenwufenlei` varchar(200) DEFAULT NULL COMMENT '文物分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `waijieshiyou` varchar(200) DEFAULT NULL COMMENT '外借事由',
  `waijieriqi` date DEFAULT NULL COMMENT '外借日期',
  `jieyongdanwei` varchar(200) DEFAULT NULL COMMENT '借用单位',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615970187267 DEFAULT CHARSET=utf8 COMMENT='文物外借';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenwuwaijie`
--

LOCK TABLES `wenwuwaijie` WRITE;
/*!40000 ALTER TABLE `wenwuwaijie` DISABLE KEYS */;
INSERT INTO `wenwuwaijie` VALUES (41,'2021-03-17 08:27:15','文物编号1','文物名称1','文物分类1','http://localhost:8080/jspmd6pjz/upload/1615969925338.jpg','外借事由1','2021-03-17','借用单位1','联系人1','13823888881','外借中','2021-03-17 16:27:15'),(42,'2021-03-17 08:27:15','文物编号2','文物名称2','文物分类2','http://localhost:8080/jspmd6pjz/upload/1615969930950.jpg','外借事由2','2021-03-17','借用单位2','联系人2','13823888882','外借中','2021-03-17 16:27:15'),(43,'2021-03-17 08:27:15','文物编号3','文物名称3','文物分类3','http://localhost:8080/jspmd6pjz/upload/1615969936474.jpg','外借事由3','2021-03-17','借用单位3','联系人3','13823888883','外借中','2021-03-17 16:27:15'),(44,'2021-03-17 08:27:15','文物编号4','文物名称4','文物分类4','http://localhost:8080/jspmd6pjz/upload/1615969942583.jpg','外借事由4','2021-03-17','借用单位4','联系人4','13823888884','外借中','2021-03-17 16:27:15'),(45,'2021-03-17 08:27:15','文物编号5','文物名称5','文物分类5','http://localhost:8080/jspmd6pjz/upload/1615969951001.jpg','外借事由5','2021-03-17','借用单位5','联系人5','13823888885','外借中','2021-03-17 16:27:15'),(46,'2021-03-17 08:27:15','文物编号6','文物名称6','文物分类6','http://localhost:8080/jspmd6pjz/upload/wenwuwaijie_tupian6.jpg','外借事由6','2021-03-17','借用单位6','联系人6','13823888886','外借中','2021-03-17 16:27:15'),(1615970187266,'2021-03-17 08:36:26','1615970129','毛公鼎','青铜','http://localhost:8080/jspmd6pjz/upload/1615970137880.jpg','rtry','2021-03-17','dfrtr','陈已','12345678978','已归还','2021-03-18 14:14:05');
/*!40000 ALTER TABLE `wenwuwaijie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenwuweixiu`
--

DROP TABLE IF EXISTS `wenwuweixiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wenwuweixiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenwubianhao` varchar(200) DEFAULT NULL COMMENT '文物编号',
  `wenwumingcheng` varchar(200) DEFAULT NULL COMMENT '文物名称',
  `wenwufenlei` varchar(200) DEFAULT NULL COMMENT '文物分类',
  `weixiushuoming` longtext COMMENT '维修说明',
  `weixiushijian` date DEFAULT NULL COMMENT '维修时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615970203218 DEFAULT CHARSET=utf8 COMMENT='文物维修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenwuweixiu`
--

LOCK TABLES `wenwuweixiu` WRITE;
/*!40000 ALTER TABLE `wenwuweixiu` DISABLE KEYS */;
INSERT INTO `wenwuweixiu` VALUES (51,'2021-03-17 08:27:15','文物编号1','文物名称1','文物分类1','维修说明1','2021-03-17'),(52,'2021-03-17 08:27:15','文物编号2','文物名称2','文物分类2','维修说明2','2021-03-17'),(53,'2021-03-17 08:27:15','文物编号3','文物名称3','文物分类3','维修说明3','2021-03-17'),(54,'2021-03-17 08:27:15','文物编号4','文物名称4','文物分类4','维修说明4','2021-03-17'),(55,'2021-03-17 08:27:15','文物编号5','文物名称5','文物分类5','维修说明5','2021-03-17'),(56,'2021-03-17 08:27:15','文物编号6','文物名称6','文物分类6','维修说明6','2021-03-17'),(1615970203217,'2021-03-17 08:36:42','1615970129','毛公鼎','青铜','维修','2021-03-17');
/*!40000 ALTER TABLE `wenwuweixiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenwuxinxi`
--

DROP TABLE IF EXISTS `wenwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wenwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenwubianhao` varchar(200) DEFAULT NULL COMMENT '文物编号',
  `wenwumingcheng` varchar(200) NOT NULL COMMENT '文物名称',
  `wenwufenlei` varchar(200) NOT NULL COMMENT '文物分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `wenwujieshao` longtext COMMENT '文物介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wenwubianhao` (`wenwubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615970155602 DEFAULT CHARSET=utf8 COMMENT='文物信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenwuxinxi`
--

LOCK TABLES `wenwuxinxi` WRITE;
/*!40000 ALTER TABLE `wenwuxinxi` DISABLE KEYS */;
INSERT INTO `wenwuxinxi` VALUES (31,'2021-03-17 08:27:15','文物编号1','文物名称1','文物分类1','http://localhost:8080/jspmd6pjz/upload/1615969888157.jpg','','文物介绍1','2021-03-17 16:31:19',3),(32,'2021-03-17 08:27:15','文物编号2','文物名称2','文物分类2','http://localhost:8080/jspmd6pjz/upload/1615969894546.jpg','','文物介绍2','2021-03-17 16:31:32',5),(33,'2021-03-17 08:27:15','文物编号3','文物名称3','文物分类3','http://localhost:8080/jspmd6pjz/upload/1615969899188.jpg','','文物介绍3','2021-03-17 16:31:37',5),(34,'2021-03-17 08:27:15','文物编号4','文物名称4','文物分类4','http://localhost:8080/jspmd6pjz/upload/1615969903872.jpg','','文物介绍4','2021-03-17 16:31:42',6),(35,'2021-03-17 08:27:15','文物编号5','文物名称5','文物分类5','http://localhost:8080/jspmd6pjz/upload/wenwuxinxi_tupian5.jpg','','文物介绍5','2021-03-17 16:31:47',8),(36,'2021-03-17 08:27:15','文物编号6','文物名称6','文物分类6','http://localhost:8080/jspmd6pjz/upload/wenwuxinxi_tupian6.jpg','','文物介绍6','2021-03-17 16:38:48',13),(1615970155601,'2021-03-17 08:35:55','1615970129','毛公鼎','青铜','http://localhost:8080/jspmd6pjz/upload/1615970137880.jpg','http://localhost:8080/jspmd6pjz/upload/1615970152120.mp4','毛公鼎通高近54厘米，重34.5公斤，大口圆腹，整个造型浑厚而凝重，饰纹也十分简洁有力、古雅朴素，标志着西周晚期，青铜器已经从浓重的神秘色彩中摆脱出来，淡化了宗教意识而增强了生活气息。','2021-03-17 16:40:07',4);
/*!40000 ALTER TABLE `wenwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615970294134 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-17 08:27:15','用户1','123456','姓名1','男','http://localhost:8080/jspmd6pjz/upload/yonghu_touxiang1.jpg','13823888881','440300199101010001'),(12,'2021-03-17 08:27:15','用户2','123456','姓名2','男','http://localhost:8080/jspmd6pjz/upload/yonghu_touxiang2.jpg','13823888882','440300199202020002'),(13,'2021-03-17 08:27:15','用户3','123456','姓名3','男','http://localhost:8080/jspmd6pjz/upload/yonghu_touxiang3.jpg','13823888883','440300199303030003'),(14,'2021-03-17 08:27:15','用户4','123456','姓名4','男','http://localhost:8080/jspmd6pjz/upload/yonghu_touxiang4.jpg','13823888884','440300199404040004'),(15,'2021-03-17 08:27:15','用户5','123456','姓名5','男','http://localhost:8080/jspmd6pjz/upload/yonghu_touxiang5.jpg','13823888885','440300199505050005'),(16,'2021-03-17 08:27:15','用户6','123456','姓名6','男','http://localhost:8080/jspmd6pjz/upload/yonghu_touxiang6.jpg','13823888886','440300199606060006'),(1615970294133,'2021-03-17 08:38:14','2','2','王一','女','http://localhost:8080/jspmd6pjz/upload/1615970308591.jpg','12312312312','123456789789456123');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-17 17:17:36
