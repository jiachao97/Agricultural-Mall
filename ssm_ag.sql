/*
SQLyog Enterprise - MySQL GUI v6.14
MySQL - 5.7.17 : Database - ssm_ag
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `ssm_ag`;

USE `ssm_ag`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id（主键）',
  `admin_code` varchar(32) DEFAULT NULL COMMENT '管理员账号',
  `admin_name` varchar(32) DEFAULT NULL COMMENT '管理员姓名',
  `admin_password` varchar(32) DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`admin_id`,`admin_code`,`admin_name`,`admin_password`) values (1,'jc1234','JC','123456');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品分类id（主键）',
  `cate_name` varchar(64) NOT NULL COMMENT '商品分类名称',
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`cate_id`,`cate_name`) values (1,'汉中特色推荐'),(2,'今日推荐'),(3,'精品展示a'),(4,'精品展示b'),(5,'精品展示c'),(6,'精品展示d'),(7,'精品展示e'),(8,'精品展示f'),(9,'种子'),(10,'农药'),(11,'农具'),(12,'农业书籍');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id（主键）',
  `goods_name` varchar(64) NOT NULL COMMENT '商品名称',
  `goods_original_price` double(16,2) DEFAULT NULL COMMENT '原价',
  `goods_current_price` double(16,2) DEFAULT NULL COMMENT '现价',
  `goods_sales_volume` int(11) DEFAULT NULL COMMENT '累计销量',
  `goods_images` varchar(200) DEFAULT NULL COMMENT '商品图片路径',
  `cate_id` int(11) DEFAULT NULL COMMENT '商品分类id（外键）',
  PRIMARY KEY (`goods_id`),
  KEY `FK_goods` (`cate_id`),
  CONSTRAINT `FK_goods` FOREIGN KEY (`cate_id`) REFERENCES `category` (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`goods_id`,`goods_name`,`goods_original_price`,`goods_current_price`,`goods_sales_volume`,`goods_images`,`cate_id`) values (2,'汉中仙毫',259.00,199.00,0,'images/xianhao_big.jpg',1),(3,'留坝蜂蜜',42.00,38.00,0,'images/jingpin_4.jpg',1),(4,'西乡樱桃',13.90,11.90,0,'images/1.jpg',1),(5,'城固蜜桔',5.50,4.80,0,'images/5.jpg',1),(6,'洋县黑米',4.50,4.20,0,'images/jingpin_2.jpg',1),(7,'镇巴腊肉',19.88,17.88,0,'images/larou.jpg',1),(8,'汉中附子',68.00,65.00,0,'images/fuzi.jpg',1),(9,'留坝香菇',4.88,4.28,0,'images/jingpin_3.jpg',1),(10,'略阳杜仲',11.80,9.80,0,'images/duzhong.jpg',1),(11,'佛坪山茱萸',38.80,35.80,0,'images/zhuyu.jpg',1),(12,'汉中仙毫-精美礼盒装',259.00,199.00,0,'images/xianhao.jpg',2),(13,'洋县红米-家人放心购',3.98,3.58,0,'images/hongmi.jpg',2),(14,'西乡松皮蛋-立即抢购',5.80,4.80,0,'images/yadan.png',2),(15,'西乡樱桃',13.90,11.90,0,'images/1.jpg',3),(16,'汉中仙毫',259.00,199.00,0,'images/jingpin_1.jpg',4),(17,'城固蜜桔',5.50,4.80,0,'images/5.jpg',5),(18,'城固香菇',4.88,4.28,0,'images/jingpin_3.jpg',6),(19,'洋县黑米',4.50,4.20,0,'images/jingpin_2.jpg',7),(20,'留坝土蜂蜜',42.88,38.88,0,'images/jingpin_4.jpg',8),(21,'高产常规杂交水稻',2.80,2.50,0,'images/zhongzi_1.jpg',9),(22,'广两优香66稻种',2.80,2.50,0,'images/zhongzi_2.jpg',9),(23,'小香芹',2.20,1.80,0,'images/zhongzi_3.jpg',9),(24,'卷心菜',4.70,4.40,0,'images/zhongzi_4.jpg',9),(25,'黄瓜',3.20,2.80,0,'images/zhongzi_6.jpg',9),(26,'韭菜',2.50,2.20,0,'images/zhongzi_7.jpg',9),(27,'螺丝椒',2.40,2.20,0,'images/zhongzi_8.jpg',9),(28,'大红苋菜',3.80,3.50,0,'images/zhongzi_9.jpg',9),(29,'农季高',32.00,28.00,0,'images/nongyao_1.jpg',10),(30,'毒死蜱',30.00,28.00,0,'images/nongyao_2.png',10),(31,'倍力有机硅',19.00,15.00,0,'images/nongyao_3.png',10),(32,'敌敌畏',14.00,8.00,0,'images/nongyao_4.jpg',10),(33,'嘧菌酯',58.00,50.00,0,'images/nongyao_5.png',10),(34,'迈露迪',255.00,249.00,0,'images/nongyao_6.png',10),(35,'苯醚甲环唑',65.00,62.00,0,'images/nongyao_7.png',10),(36,'丙森锌',85.00,79.00,0,'images/nongyao_8.png',10),(37,'不锈钢锄把双用',65.00,58.00,0,'images/nongju_1.jpg',11),(38,'木柄方锹',78.00,75.00,0,'images/nongju_2.jpg',11),(39,'园艺工具四件套',35.00,33.00,0,'images/nongju_3.jpg',11),(40,'汽油高压打药机',600.00,588.00,0,'images/nongju_4.jpg',11),(41,'小型微耕机/开沟机',2290.00,2198.00,0,'images/nongju_5.jpg',11),(42,'自动旋转喷头',119.00,109.00,0,'images/nongju_6.jpg',11),(43,'汽油自动耕地机',3999.00,3599.00,0,'images/nongju_7.jpg',11),(44,'汽油水稻收割机',780.00,749.00,0,'images/nongju_8.jpg',11),(45,'水稻病虫害防治图解',25.00,22.00,0,'images/shu_1.jpg',12),(46,'茶叶大全',25.00,22.00,0,'images/shu_2.jpg',12),(47,'图说草莓栽培关键技术',28.00,26.00,0,'images/shu_3.jpg',12),(48,'香菇全程标准化操作手册',27.00,25.00,0,'images/shu_4.jpg',12),(49,'梨树病虫害防治图解',16.00,14.00,0,'images/shu_5.jpg',12),(50,'瓜类优质栽培',22.00,19.00,0,'images/shu_6.jpg',12),(51,'棚室蔬菜病虫害防治新技术',42.00,39.00,0,'images/shu_7.jpg',12),(52,'猪病快速诊治',28.00,26.00,0,'images/shu_8.jpg',12);

/*Table structure for table `orderitem` */

DROP TABLE IF EXISTS `orderitem`;

CREATE TABLE `orderitem` (
  `orderItem_id` varchar(32) NOT NULL COMMENT '订单项id（主键）',
  `orderItem_count` int(11) DEFAULT NULL COMMENT '订单项中单种商品的数量',
  `orderItem_subtotal` double(16,2) DEFAULT NULL COMMENT '订单项中单种商品小计',
  `goods_id` int(11) DEFAULT NULL COMMENT '包含哪些商品（外键）',
  `orders_id` varchar(32) DEFAULT NULL COMMENT '属于哪个订单（外键）',
  PRIMARY KEY (`orderItem_id`),
  KEY `FK_1` (`goods_id`),
  KEY `FK_2` (`orders_id`),
  CONSTRAINT `FK_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`),
  CONSTRAINT `FK_2` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderitem` */

insert  into `orderitem`(`orderItem_id`,`orderItem_count`,`orderItem_subtotal`,`goods_id`,`orders_id`) values ('035eceeec6c34a31b6f7e7844a1ad56f',10,42.00,6,'3369d0d144e044b1ad27e54f1a467b8c'),('0c91fb115ec7487e933d71eaaff88a09',1,75.00,38,'ee2b91d02ddb43e189a055ea082837b6'),('1da0917f3efe471cbbdd494d4ae9e9d1',1,2198.00,41,'b1c4435d90514a4fa6864734174136db'),('2591f034af5d46b88ba3107cd4add027',1,199.00,12,'e40d16b9bbf44cbf9837f981292ee7a0'),('2edac8d2243e4a209a1353ff53514b92',12,57.60,5,'ee2b91d02ddb43e189a055ea082837b6'),('3a11492732874411807deafae9bf6dfa',1,28.00,30,'3053a01ffbbf405fb8c6eb7ce0e4d47b'),('45d748e2f4714872aa51266db3fd0cb7',1,4.80,5,'b1c4435d90514a4fa6864734174136db'),('488a52655cff49f788861f6dc42d7198',10,388.80,20,'e40d16b9bbf44cbf9837f981292ee7a0'),('5a4ebd66ca0e461abcc74600c698f14e',10,1990.00,2,'b1c4435d90514a4fa6864734174136db'),('6345ff5bbb764da7bf02650afec817b5',1,38.00,3,'858071adf67241e499d97ef050c9592a'),('76f17438e9fc4a0aac95be55848848ff',10,22.00,27,'3369d0d144e044b1ad27e54f1a467b8c'),('8267db8f857546e6a5f3a3a8807924fc',1,22.00,46,'e40d16b9bbf44cbf9837f981292ee7a0'),('85a80fd36dbe4662b13146f427283e90',1,199.00,2,'4934e03e3b39439e9ac675f2cea7c761'),('8955842e813b416c8af357e5ebdf7b23',2,398.00,2,'810b8399703840eea90d05536a9e9132'),('9e726da10c7b490ebc098fd08f843c5b',1,62.00,35,'e40d16b9bbf44cbf9837f981292ee7a0'),('a564fed47c0a4f93bd9e659950647742',1,199.00,12,'b1c4435d90514a4fa6864734174136db'),('c71bd8711860476da71d0ab552828215',3,14.40,14,'3369d0d144e044b1ad27e54f1a467b8c'),('cc60879ca66a43eba98b8d7d17475c29',12,50.40,6,'3053a01ffbbf405fb8c6eb7ce0e4d47b'),('cd9fbce7ca074d8ea7b89556fd9dbcc4',50,110.00,27,'b1c4435d90514a4fa6864734174136db'),('daa52363c9d44c72aecffb32b3c4dd28',1,28.00,30,'4934e03e3b39439e9ac675f2cea7c761'),('db3b83e0de7245abad8b547058d522e3',1,199.00,2,'e40d16b9bbf44cbf9837f981292ee7a0'),('e335b333f3f049588323d4c25e59ee1c',1,4.80,17,'3053a01ffbbf405fb8c6eb7ce0e4d47b'),('e3d46b5239ad471a8e8bfc76ab6c77b4',1,17.88,7,'b1c4435d90514a4fa6864734174136db'),('e5afd9e739ec47548f8af4759778110e',1,199.00,12,'4934e03e3b39439e9ac675f2cea7c761'),('eb3ace745b9a4047a7b41c9de3a837d6',6,1194.00,2,'3369d0d144e044b1ad27e54f1a467b8c'),('f18a1964c91e45f3bfa1511383c946ee',1,4.28,9,'3369d0d144e044b1ad27e54f1a467b8c'),('ff4ea3b907ca48ec8ee60a1f99032f93',4,19.20,17,'3369d0d144e044b1ad27e54f1a467b8c');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orders_id` varchar(32) NOT NULL COMMENT '订单id（主键）',
  `orders_total` double(16,2) DEFAULT NULL COMMENT '订单总计',
  `orders_state` int(11) DEFAULT NULL COMMENT '订单状态（0：未支付，1：已支付）',
  `orders_createtime` datetime DEFAULT NULL COMMENT '订单生成时间',
  `user_code` varchar(32) DEFAULT NULL COMMENT '订单所属用户账号',
  `user_telephone` varchar(16) DEFAULT NULL COMMENT '订单所属用户联系方式',
  `user_address` varchar(200) DEFAULT NULL COMMENT '订单所属用户收货地址',
  PRIMARY KEY (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`orders_id`,`orders_total`,`orders_state`,`orders_createtime`,`user_code`,`user_telephone`,`user_address`) values ('3053a01ffbbf405fb8c6eb7ce0e4d47b',83.20,0,'2019-05-08 19:51:16','jc1234','18812345678','北京市'),('3369d0d144e044b1ad27e54f1a467b8c',1295.88,0,'2018-09-03 14:35:36','jc1234','18592051314','北京市'),('4934e03e3b39439e9ac675f2cea7c761',426.00,0,'2018-09-04 22:42:00','jc1234','18592051314','北京市'),('810b8399703840eea90d05536a9e9132',398.00,0,'2019-05-31 09:50:09','jc1234','18812345678','北京市'),('858071adf67241e499d97ef050c9592a',38.00,0,'2019-05-20 10:21:17','jc1234','18812345678','北京市'),('b1c4435d90514a4fa6864734174136db',4519.68,0,'2019-05-30 21:15:05','jc1234','18812345678','北京市'),('e40d16b9bbf44cbf9837f981292ee7a0',870.80,0,'2018-09-03 17:08:27','zhangsan','15891707756','北京市三里屯'),('ee2b91d02ddb43e189a055ea082837b6',132.60,0,'2019-05-31 09:44:38','jc1234','18812345678','北京市');

/*Table structure for table `supply` */

DROP TABLE IF EXISTS `supply`;

CREATE TABLE `supply` (
  `sup_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '供求id（主键）',
  `sup_name` varchar(32) DEFAULT NULL COMMENT '供应商品名称',
  `sup_address` varchar(64) DEFAULT NULL COMMENT '供应人地址',
  `sup_explain` varchar(255) DEFAULT NULL COMMENT '供应商品说明',
  `sup_telephone` varchar(16) DEFAULT NULL COMMENT '供应人联系方式',
  `sup_number` varchar(32) DEFAULT NULL COMMENT '可供应商品数量',
  `sup_type` varchar(32) DEFAULT NULL COMMENT '供应商品分类',
  `sup_expiry_date` varchar(64) DEFAULT NULL COMMENT '供应商品截止日期',
  `sup_user` varchar(16) DEFAULT NULL COMMENT '供应人',
  `sup_images` varchar(100) DEFAULT NULL COMMENT '供应商品图片路径',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id（外键）',
  PRIMARY KEY (`sup_id`),
  KEY `FK_supply` (`goods_id`),
  CONSTRAINT `FK_supply` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `supply` */

insert  into `supply`(`sup_id`,`sup_name`,`sup_address`,`sup_explain`,`sup_telephone`,`sup_number`,`sup_type`,`sup_expiry_date`,`sup_user`,`sup_images`,`goods_id`) values (1,'汉中仙毫','西乡茶园','长期供应散装茶叶','15891725532','不限量','茶叶类','2018-05-01至2018-09-31','陈女士','images/gongying_1.jpg',16),(2,'留坝香菇','留坝','供应大量新鲜香菇','15591476557','50kg','蔬菜类','2018-3-24日至2018-6-10','王先生','images/gongying_3.jpg',9),(3,'城固蜜桔','城固','供应大量蜜桔，价格低廉，可入园亲自收购','17806123568','每季200kg','水果类','2017-11-01日起','李先生','images/gongying_2.jpg',5),(4,'留坝蜂蜜','留坝','不限量长期供应土蜂蜜','13891425335','不限量','其他类','长期有效','韩先生','images/gongying_4.jpg',3),(5,'镇巴腊肉','镇巴','供应特色腊肉，支持预定','18373694523','不限量，可预定','肉制品','长期有效','刘先生','images/larou.jpg',7);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id（主键）',
  `user_code` varchar(32) NOT NULL COMMENT '用户账号',
  `user_name` varchar(64) NOT NULL COMMENT '用户名称',
  `user_password` varchar(32) NOT NULL COMMENT '用户密码',
  `user_telephone` varchar(16) DEFAULT NULL COMMENT '用户联系方式',
  `user_address` varchar(100) DEFAULT NULL COMMENT '用户收货地址',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_code`,`user_name`,`user_password`,`user_telephone`,`user_address`) values (1,'jc1234','JC','7f0c8307611d361c4bfb84f08062bec8','18812345678','北京市'),(2,'zhangsan','张三','c884f11beb56e77d3b51960004d185f1','17897977979','北京市'),(3,'jack','jack','eea57924ae18a89161873d1a8740e601','17897977979','北京市三里屯'),(4,'lisi','李四','fca61591ff4f8ed324a0165bea367a49','18997977979','北京市三里屯');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
