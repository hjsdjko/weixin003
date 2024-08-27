-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl94375357
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
-- Current Database: `cl94375357`
--

/*!40000 DROP DATABASE IF EXISTS `cl94375357`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl94375357` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl94375357`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) DEFAULT NULL COMMENT '收货人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `isdefault` varchar(200) DEFAULT NULL COMMENT '是否默认地址',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2024-04-27 07:17:45','地址1','张三','19819881111','是',11),(2,'2024-04-27 07:17:45','地址2','李四','19819882222','是',12),(3,'2024-04-27 07:17:45','地址3','王五','19819883333','是',13),(4,'2024-04-27 07:17:45','地址4','赵六','19819884444','是',14),(5,'2024-04-27 07:17:45','地址5','孙七','19819885555','是',15),(6,'2024-04-27 07:17:45','地址6','周八','19819886666','是',16);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT NULL COMMENT '商品表名',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '单价',
  `discountprice` double DEFAULT NULL COMMENT '折扣价',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问内容',
  `reply` longtext COMMENT '回复内容',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='咨询客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (111,'2024-04-27 07:17:45',1,'提问内容1','回复内容1',1,1),(112,'2024-04-27 07:17:45',2,'提问内容2','回复内容2',2,2),(113,'2024-04-27 07:17:45',3,'提问内容3','回复内容3',3,3),(114,'2024-04-27 07:17:45',4,'提问内容4','回复内容4',4,4),(115,'2024-04-27 07:17:45',5,'提问内容5','回复内容5',5,5),(116,'2024-04-27 07:17:45',6,'提问内容6','回复内容6',6,6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusswupinxinxi`
--

DROP TABLE IF EXISTS `discusswupinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusswupinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusswupinxinxi`
--

LOCK TABLES `discusswupinxinxi` WRITE;
/*!40000 ALTER TABLE `discusswupinxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusswupinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxinwenzixun`
--

DROP TABLE IF EXISTS `discussxinwenzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxinwenzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxinwenzixun`
--

LOCK TABLES `discussxinwenzixun` WRITE;
/*!40000 ALTER TABLE `discussxinwenzixun` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussxinwenzixun` ENABLE KEYS */;
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
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1714203747427 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (101,'2024-04-27 07:17:45','帖子标题1','帖子内容1',0,'用户名1','file/forumAvatarurl1.jpg,file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg','开放',1),(102,'2024-04-27 07:17:45','帖子标题2','帖子内容2',0,'用户名2','file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg','开放',2),(103,'2024-04-27 07:17:45','帖子标题3','帖子内容3',0,'用户名3','file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg','开放',3),(104,'2024-04-27 07:17:45','帖子标题4','帖子内容4',0,'用户名4','file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg','开放',4),(105,'2024-04-27 07:17:45','帖子标题5','帖子内容5',0,'用户名5','file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg','开放',5),(106,'2024-04-27 07:17:45','帖子标题6','帖子内容6',0,'用户名6','file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg,file/forumAvatarurl8.jpg','开放',6),(1714203747426,'2024-04-27 07:42:26',NULL,'<p><img src=\"http://localhost:8080/cl94375357/file/1714203745597.jpg\" alt=\"图像\"></p>',101,'','file/yonghuTouxiang1.jpg',NULL,31);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-04-27 07:17:45','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common27\",\"menu\":\"后台管理\",\"unicode\":\"&#xee2c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"},{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-common14\",\"menu\":\"管理员管理\",\"unicode\":\"&#xedfb;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"物品信息\",\"menuJump\":\"列表\",\"tableName\":\"wupinxinxi\"}],\"fontClass\":\"icon-common15\",\"menu\":\"物品信息管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"物品分类\",\"menuJump\":\"列表\",\"tableName\":\"wupinfenlei\"}],\"fontClass\":\"icon-common30\",\"menu\":\"物品分类管理\",\"unicode\":\"&#xee30;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"全部订单\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"发货\",\"物流\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"物流\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"已发货订单\",\"menuJump\":\"已发货\",\"tableName\":\"orders\"}],\"fontClass\":\"icon-common50\",\"menu\":\"订单管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"论坛交流\",\"tableName\":\"forum\"}],\"menu\":\"论坛管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"新闻资讯\",\"menuJump\":\"列表\",\"tableName\":\"xinwenzixun\"}],\"fontClass\":\"icon-common43\",\"menu\":\"新闻资讯管理\",\"unicode\":\"&#xef27;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"咨询客服\",\"menuJump\":\"列表\",\"tableName\":\"chat\"}],\"fontClass\":\"icon-common39\",\"menu\":\"咨询客服管理\",\"unicode\":\"&#xeeba;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看评论\"],\"fontClass\":\"icon-common15\",\"menu\":\"物品信息\",\"menuJump\":\"列表\",\"tableName\":\"wupinxinxi\",\"unicode\":\"&#xedfc;\"}],\"fontClass\":\"icon-common15\",\"menu\":\"物品信息\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看评论\"],\"menu\":\"新闻资讯\",\"menuJump\":\"列表\",\"tableName\":\"xinwenzixun\"}],\"menu\":\"新闻资讯管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"购物车\",\"menuJump\":\"列表\",\"tableName\":\"cart\"}],\"fontClass\":\"icon-common1\",\"menu\":\"购物车管理\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"地址\",\"menuJump\":\"列表\",\"tableName\":\"address\"}],\"fontClass\":\"icon-edit--fill\",\"menu\":\"地址\",\"unicode\":\"&#xedf8;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"全部订单\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"确认收货\",\"物流\"],\"menu\":\"已发货订单\",\"menuJump\":\"已发货\",\"tableName\":\"orders\"}],\"fontClass\":\"icon-common50\",\"menu\":\"订单管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common12\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xedf4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"论坛交流\",\"tableName\":\"forum\"},{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"我的发布\",\"menuJump\":\"14\",\"tableName\":\"forum\"}],\"menu\":\"论坛管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"咨询客服\",\"menuJump\":\"列表\",\"tableName\":\"chat\"}],\"fontClass\":\"icon-common39\",\"menu\":\"咨询客服管理\",\"unicode\":\"&#xeeba;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看评论\"],\"fontClass\":\"icon-common15\",\"menu\":\"物品信息\",\"menuJump\":\"列表\",\"tableName\":\"wupinxinxi\",\"unicode\":\"&#xedfc;\"}],\"fontClass\":\"icon-common15\",\"menu\":\"物品信息\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看评论\"],\"menu\":\"新闻资讯\",\"menuJump\":\"列表\",\"tableName\":\"xinwenzixun\"}],\"menu\":\"新闻资讯管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT NULL COMMENT '商品表名',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '单价',
  `discountprice` double DEFAULT NULL COMMENT '折扣价',
  `total` double DEFAULT NULL COMMENT '总价',
  `discounttotal` double DEFAULT NULL COMMENT '折扣总价格',
  `type` varchar(200) DEFAULT NULL COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `logistics` longtext COMMENT '物流',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,31,'账号1','yonghu','用户','6dqadoxoey6zfpo06297y0ozftw77sqy','2024-04-27 07:42:10','2024-04-27 08:42:11');
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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-04-27 07:17:45','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinfenlei`
--

DROP TABLE IF EXISTS `wupinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinfenlei` varchar(200) DEFAULT NULL COMMENT '物品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='物品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinfenlei`
--

LOCK TABLES `wupinfenlei` WRITE;
/*!40000 ALTER TABLE `wupinfenlei` DISABLE KEYS */;
INSERT INTO `wupinfenlei` VALUES (41,'2024-04-27 07:17:45','物品分类1'),(42,'2024-04-27 07:17:45','物品分类2'),(43,'2024-04-27 07:17:45','物品分类3'),(44,'2024-04-27 07:17:45','物品分类4'),(45,'2024-04-27 07:17:45','物品分类5'),(46,'2024-04-27 07:17:45','物品分类6');
/*!40000 ALTER TABLE `wupinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinxinxi`
--

DROP TABLE IF EXISTS `wupinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `tupian` longtext COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `wupinfenlei` varchar(200) DEFAULT NULL COMMENT '物品分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `jichengxin` varchar(200) DEFAULT NULL COMMENT '几成新',
  `wupinlaiyuan` varchar(200) DEFAULT NULL COMMENT '物品来源',
  `wupinxiangqing` longtext COMMENT '物品详情',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `price` double DEFAULT NULL COMMENT '价格',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `onelimittimes` int(11) DEFAULT NULL COMMENT '单限',
  `alllimittimes` int(11) DEFAULT NULL COMMENT '库存',
  `thumbsupnum` int(11) DEFAULT NULL COMMENT '赞',
  `crazilynum` int(11) DEFAULT NULL COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='物品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinxinxi`
--

LOCK TABLES `wupinxinxi` WRITE;
/*!40000 ALTER TABLE `wupinxinxi` DISABLE KEYS */;
INSERT INTO `wupinxinxi` VALUES (51,'2024-04-27 07:17:45','物品名称1','file/wupinxinxiTupian1.jpg,file/wupinxinxiTupian2.jpg,file/wupinxinxiTupian3.jpg','规格1','物品分类1','品牌1','几成新1','物品来源1','物品详情1',1,99.9,'2024-04-27 15:17:45',1,99,1,1),(52,'2024-04-27 07:17:45','物品名称2','file/wupinxinxiTupian2.jpg,file/wupinxinxiTupian3.jpg,file/wupinxinxiTupian4.jpg','规格2','物品分类2','品牌2','几成新2','物品来源2','物品详情2',2,99.9,'2024-04-27 15:17:45',2,99,2,2),(53,'2024-04-27 07:17:45','物品名称3','file/wupinxinxiTupian3.jpg,file/wupinxinxiTupian4.jpg,file/wupinxinxiTupian5.jpg','规格3','物品分类3','品牌3','几成新3','物品来源3','物品详情3',3,99.9,'2024-04-27 15:17:45',3,99,3,3),(54,'2024-04-27 07:17:45','物品名称4','file/wupinxinxiTupian4.jpg,file/wupinxinxiTupian5.jpg,file/wupinxinxiTupian6.jpg','规格4','物品分类4','品牌4','几成新4','物品来源4','物品详情4',4,99.9,'2024-04-27 15:17:45',4,99,4,4),(55,'2024-04-27 07:17:45','物品名称5','file/wupinxinxiTupian5.jpg,file/wupinxinxiTupian6.jpg,file/wupinxinxiTupian7.jpg','规格5','物品分类5','品牌5','几成新5','物品来源5','物品详情5',5,99.9,'2024-04-27 15:17:45',5,99,5,5),(56,'2024-04-27 07:17:45','物品名称6','file/wupinxinxiTupian6.jpg,file/wupinxinxiTupian7.jpg,file/wupinxinxiTupian8.jpg','规格6','物品分类6','品牌6','几成新6','物品来源6','物品详情6',6,99.9,'2024-04-27 15:17:45',6,99,6,6);
/*!40000 ALTER TABLE `wupinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinwenzixun`
--

DROP TABLE IF EXISTS `xinwenzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinwenzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `jianjie` varchar(200) DEFAULT NULL COMMENT '简介',
  `tupian` longtext NOT NULL COMMENT '图片',
  `neirong` longtext NOT NULL COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinwenzixun`
--

LOCK TABLES `xinwenzixun` WRITE;
/*!40000 ALTER TABLE `xinwenzixun` DISABLE KEYS */;
INSERT INTO `xinwenzixun` VALUES (121,'2024-04-27 07:17:45','标题1','简介1','file/xinwenzixunTupian1.jpg,file/xinwenzixunTupian2.jpg,file/xinwenzixunTupian3.jpg','内容1','2024-04-27',1),(122,'2024-04-27 07:17:45','标题2','简介2','file/xinwenzixunTupian2.jpg,file/xinwenzixunTupian3.jpg,file/xinwenzixunTupian4.jpg','内容2','2024-04-27',2),(123,'2024-04-27 07:17:45','标题3','简介3','file/xinwenzixunTupian3.jpg,file/xinwenzixunTupian4.jpg,file/xinwenzixunTupian5.jpg','内容3','2024-04-27',3),(124,'2024-04-27 07:17:45','标题4','简介4','file/xinwenzixunTupian4.jpg,file/xinwenzixunTupian5.jpg,file/xinwenzixunTupian6.jpg','内容4','2024-04-27',4),(125,'2024-04-27 07:17:45','标题5','简介5','file/xinwenzixunTupian5.jpg,file/xinwenzixunTupian6.jpg,file/xinwenzixunTupian7.jpg','内容5','2024-04-27',5),(126,'2024-04-27 07:17:45','标题6','简介6','file/xinwenzixunTupian6.jpg,file/xinwenzixunTupian7.jpg,file/xinwenzixunTupian8.jpg','内容6','2024-04-27',6);
/*!40000 ALTER TABLE `xinwenzixun` ENABLE KEYS */;
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
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `nicheng` varchar(200) NOT NULL COMMENT '昵称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `money` double DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-04-27 07:17:45','账号1','123456','昵称1','男','file/yonghuTouxiang1.jpg','19819881111',200),(32,'2024-04-27 07:17:45','账号2','123456','昵称2','男','file/yonghuTouxiang2.jpg','19819881112',200),(33,'2024-04-27 07:17:45','账号3','123456','昵称3','男','file/yonghuTouxiang3.jpg','19819881113',200),(34,'2024-04-27 07:17:45','账号4','123456','昵称4','男','file/yonghuTouxiang4.jpg','19819881114',200),(35,'2024-04-27 07:17:45','账号5','123456','昵称5','男','file/yonghuTouxiang5.jpg','19819881115',200),(36,'2024-04-27 07:17:45','账号6','123456','昵称6','男','file/yonghuTouxiang6.jpg','19819881116',200);
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

-- Dump completed on 2024-05-05 16:22:08
