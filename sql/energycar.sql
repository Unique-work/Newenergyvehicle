/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80000
Source Host           : localhost:3306
Source Database       : energycar

Target Server Type    : MYSQL
Target Server Version : 80000
File Encoding         : 65001

Date: 2018-05-14 15:19:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for c3p0testtable
-- ----------------------------

-- ----------------------------
-- Table structure for cardistribution
-- ----------------------------
DROP TABLE IF EXISTS `cardistribution`;
CREATE TABLE `cardistribution` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `carmessageid` int(11) DEFAULT NULL COMMENT '车辆id',
  `distributionid` int(11) DEFAULT NULL COMMENT '车辆分布id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cardistribution
-- ----------------------------
INSERT INTO `cardistribution` VALUES ('1', '51', '10');
INSERT INTO `cardistribution` VALUES ('2', '52', '10');
INSERT INTO `cardistribution` VALUES ('3', '53', '10');
INSERT INTO `cardistribution` VALUES ('4', '54', '10');
INSERT INTO `cardistribution` VALUES ('5', '55', '10');
INSERT INTO `cardistribution` VALUES ('6', '56', '10');
INSERT INTO `cardistribution` VALUES ('7', '57', '10');
INSERT INTO `cardistribution` VALUES ('70', '52', '3');
INSERT INTO `cardistribution` VALUES ('76', '53', '11');
INSERT INTO `cardistribution` VALUES ('82', '54', '12');
INSERT INTO `cardistribution` VALUES ('89', '51', '15');

-- ----------------------------
-- Table structure for carfriend
-- ----------------------------
DROP TABLE IF EXISTS `carfriend`;
CREATE TABLE `carfriend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carfname` varchar(255) DEFAULT NULL,
  `cartype` varchar(255) DEFAULT NULL,
  `carnumber` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL COMMENT '用户id',
  `friendid` varchar(255) DEFAULT NULL COMMENT '车友id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carfriend
-- ----------------------------
INSERT INTO `carfriend` VALUES ('2', '萨芬', '公交车', '浙B9273242', '0bb8db26-d804-4c5c-be04-f8257922c491', 'c08240d2-2596-4869-bedd-1aec4f54faf1');
INSERT INTO `carfriend` VALUES ('4', '水电费', '大型货车', '苏JJ897923', '0bb8db26-d804-4c5c-be04-f8257922c491', '712c1211-0f4a-41be-a40c-2bb8962729fd');
INSERT INTO `carfriend` VALUES ('5', 'ssdsDD', '皮卡车', '苏J7867X8', null, null);
INSERT INTO `carfriend` VALUES ('6', 'kgkg', '大型客车', '苏8879233', null, null);
INSERT INTO `carfriend` VALUES ('7', '偶哈哈哈', '大型客车', '苏8888888', null, null);
INSERT INTO `carfriend` VALUES ('8', '卡活动', '大型货车', '苏U882323', null, null);
INSERT INTO `carfriend` VALUES ('9', '车友8', '小轿车', '苏82372793', null, null);
INSERT INTO `carfriend` VALUES ('10', '堵车', '的士速递', '苏7667868', null, null);
INSERT INTO `carfriend` VALUES ('11', 'ccccccccc', '公交车', '苏N888JJJJ', null, null);
INSERT INTO `carfriend` VALUES ('12', 'vvvdd', '跑车', '苏9999999', null, null);
INSERT INTO `carfriend` VALUES ('13', '撤撤撤', '巴士', '浙J889065', null, null);
INSERT INTO `carfriend` VALUES ('20', '快快快', '大型货车', '苏H88882923', null, null);
INSERT INTO `carfriend` VALUES ('22', '对对对', '拖拉机', '苏P090990', null, null);
INSERT INTO `carfriend` VALUES ('23', '车友8', '小轿车', '苏82372793', '0bb8db26-d804-4c5c-be04-f8257922c491', '377b7f6f-3ede-4114-849b-7e06d5075e2a');
INSERT INTO `carfriend` VALUES ('25', '对对对', '大型货车', '苏P090990', 'c08240d2-2596-4869-bedd-1aec4f54faf1', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `carfriend` VALUES ('26', null, null, null, '0bb8db26-d804-4c5c-be04-f8257922c491', '6f3df006-0009-41c0-b77f-982e20fbc366');
INSERT INTO `carfriend` VALUES ('27', null, null, null, '6f3df006-0009-41c0-b77f-982e20fbc366', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `carfriend` VALUES ('28', null, null, null, 'bdbfe226-c8e3-4b91-9917-a0ab176ea815', '6f3df006-0009-41c0-b77f-982e20fbc366');
INSERT INTO `carfriend` VALUES ('29', null, null, null, '6f3df006-0009-41c0-b77f-982e20fbc366', 'bdbfe226-c8e3-4b91-9917-a0ab176ea815');

-- ----------------------------
-- Table structure for carmessage
-- ----------------------------
DROP TABLE IF EXISTS `carmessage`;
CREATE TABLE `carmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水ID',
  `vehID` varchar(20) NOT NULL COMMENT '车辆ID，可以用车架号',
  `plateNumber` varchar(50) DEFAULT NULL COMMENT '车牌',
  `brand` varchar(255) DEFAULT NULL COMMENT '品牌',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `producedate` date DEFAULT NULL COMMENT '出厂日期',
  `currentmileage` int(255) DEFAULT NULL COMMENT '当前里程数',
  `userid` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `createid` varchar(255) DEFAULT NULL COMMENT '创建人ID',
  `cartype` varchar(255) DEFAULT NULL COMMENT '车辆类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carmessage
-- ----------------------------
INSERT INTO `carmessage` VALUES ('51', '苏BZ111', '苏BZ111', '奥迪', '123321', '2017-05-29', '500', 'c6b5ed53-530f-4a0a-81ca-385ae1f619a7', '13121212', '大型公交车');
INSERT INTO `carmessage` VALUES ('53', '苏BZ123', '苏BZ123', '标致', '苏BZ123', '2017-06-14', '15365', null, '13121212', '小型私家车');
INSERT INTO `carmessage` VALUES ('54', '苏B7K85', '苏B7K85', '别克', '苏B7K85', '2017-06-06', '25640', null, '13121212', '小型私家车');
INSERT INTO `carmessage` VALUES ('55', '苏BZ116', '苏BZ116', '尼桑', '111', '2017-06-07', '12', '050f90df-0d14-4c51-84c6-7ae8cffe6320', '13121212', '中型面包车');
INSERT INTO `carmessage` VALUES ('57', '苏BZ121', '苏BZ121', '马自达', '123321', '2017-06-06', '111', '265082a5-2df4-44e0-afc2-e1aaaa22514c', '13121212', '小型私家车');
INSERT INTO `carmessage` VALUES ('58', '鲁A12D2', '鲁A12D2', '奥迪', '鲁A12d2', '2017-05-29', '15000', null, '13121212', '小型私家车');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `text` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `contentid` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL COMMENT '评论时间',
  `userid` varchar(255) DEFAULT NULL COMMENT '评论人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('12', 'good', '11', '2017-06-07 16:34:41', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('13', 'hi表达法犯法', '11', '2017-06-07 16:34:49', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('14', 'feer', '12', '2017-06-08 08:57:35', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('15', '舒服点', '13', '2017-06-08 13:35:35', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('16', '发鹅鹅鹅饿鹅鹅鹅饿', '11', '2017-06-08 13:35:42', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('17', '发发发', '12', '2017-06-08 13:58:50', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('18', '十点多', '13', '2017-06-08 14:11:05', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('19', 'fff', '15', '2017-06-08 15:58:23', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('20', '水电费', '17', '2017-06-12 17:13:23', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('21', '嘻嘻嘻', '17', '2017-06-12 17:13:32', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('22', '啛啛喳喳错错错错错', '17', '2017-06-12 17:14:27', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('23', '今天路上堵车', '17', '2017-06-12 17:14:59', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('24', '车坏了', '17', '2017-06-12 17:16:07', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('25', '不是说', '14', '2017-06-12 17:17:30', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('26', 'sgsgs', '15', '2017-06-14 10:17:02', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('27', 'q', '19', '2017-06-14 16:46:51', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('28', 'rrrrrrr', '20', '2017-06-16 09:13:37', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('29', 'xxx', '22', '2017-06-22 09:48:24', '50b120a7-1775-4d35-b768-9a3a3a4275d4');
INSERT INTO `comment` VALUES ('30', 'zz', '21', '2017-06-23 16:43:09', null);
INSERT INTO `comment` VALUES ('31', 'dddd', '28', '2017-06-24 10:10:58', null);
INSERT INTO `comment` VALUES ('32', 'cccc', '28', '2017-06-24 10:11:04', null);
INSERT INTO `comment` VALUES ('33', 'aaaa', '28', '2017-06-24 10:11:07', null);
INSERT INTO `comment` VALUES ('35', '那大家还是绕行吧', '29', '2017-06-26 09:56:12', null);
INSERT INTO `comment` VALUES ('36', '是的', '29', '2017-06-26 09:56:35', null);
INSERT INTO `comment` VALUES ('37', 'sdfsdf ', '29', '2017-06-26 10:00:28', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('38', 'ddd', '29', '2017-06-26 10:39:32', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('39', 'ssd', '29', '2017-06-26 10:42:44', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('40', 'cccc', '29', '2017-06-26 10:43:27', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('41', 'vvv', '29', '2017-06-26 10:47:18', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('42', 'xx', '29', '2017-06-26 10:47:51', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('43', 'sds', '29', '2017-06-26 10:49:07', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('44', 'vvv', '29', '2017-06-26 10:50:19', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('45', 'vbr', '28', '2017-06-26 10:50:57', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('46', 'vv', '28', '2017-06-26 10:51:24', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('47', 'sss', '29', '2017-06-26 13:04:36', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('48', 'sdfsdffffff', '27', '2017-06-26 13:04:52', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('49', 'fsdfsdf', '27', '2017-06-26 13:04:55', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('50', 'sds', '29', '2017-06-30 11:03:57', 'c08240d2-2596-4869-bedd-1aec4f54faf1');
INSERT INTO `comment` VALUES ('51', 'c', '29', '2017-06-30 11:05:13', 'c08240d2-2596-4869-bedd-1aec4f54faf1');
INSERT INTO `comment` VALUES ('52', '我就在附近，我来帮你', '31', '2017-06-30 12:28:30', 'c08240d2-2596-4869-bedd-1aec4f54faf1');
INSERT INTO `comment` VALUES ('53', 'è°¢è°¢', '31', '2017-09-22 13:14:01', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('54', 'åå', '31', '2017-09-22 13:47:37', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('55', 'ååå', '31', '2017-09-22 13:48:28', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('56', 'ååå', '31', '2017-09-22 13:54:40', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('57', 'åå', '31', '2017-09-22 13:56:31', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('58', '你好', '31', '2017-09-22 16:01:41', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `comment` VALUES ('59', '到哪了', '35', '2017-11-05 19:30:05', '0bb8db26-d804-4c5c-be04-f8257922c491');

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `txt` varchar(5000) DEFAULT NULL COMMENT '发送的文字信息',
  `praise` int(255) DEFAULT NULL COMMENT '点赞',
  `comments` int(255) DEFAULT NULL COMMENT '评论',
  `releasetime` datetime DEFAULT NULL COMMENT '发布时间',
  `carfriendid` int(11) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES ('30', '<p>今天高速路况良好。<br/></p>', '1', '0', '2017-06-30 10:57:02', null, 'c08240d2-2596-4869-bedd-1aec4f54faf1');
INSERT INTO `content` VALUES ('31', '<p>我在312国道上车子坏了，求帮忙</p><p></p>', '0', '7', '2017-06-30 12:28:03', null, '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `content` VALUES ('32', '<p>ä»å¤©å¤©æ°ä¸é</p>', '0', '0', '2017-09-22 13:14:13', null, '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `content` VALUES ('33', '<p>å¤§å®¶å¥½</p>', '0', '0', '2017-09-22 13:17:59', null, '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `content` VALUES ('34', '<p>哈哈</p>', '0', '0', '2017-09-22 13:56:22', null, '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `content` VALUES ('35', '<p>这个点南环高架一点都不堵，爽</p>', '1', '1', '2017-11-05 19:29:06', null, 'c08240d2-2596-4869-bedd-1aec4f54faf1');
INSERT INTO `content` VALUES ('36', '<p>balabala</p>', '0', '0', '2017-11-05 22:03:19', null, 'bdbfe226-c8e3-4b91-9917-a0ab176ea815');

-- ----------------------------
-- Table structure for contentpraise
-- ----------------------------
DROP TABLE IF EXISTS `contentpraise`;
CREATE TABLE `contentpraise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentid` int(11) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contentpraise
-- ----------------------------
INSERT INTO `contentpraise` VALUES ('1', '29', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `contentpraise` VALUES ('5', '28', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `contentpraise` VALUES ('6', '27', '0bb8db26-d804-4c5c-be04-f8257922c491');
INSERT INTO `contentpraise` VALUES ('7', '29', 'c08240d2-2596-4869-bedd-1aec4f54faf1');
INSERT INTO `contentpraise` VALUES ('8', '30', 'c08240d2-2596-4869-bedd-1aec4f54faf1');
INSERT INTO `contentpraise` VALUES ('9', '35', '0bb8db26-d804-4c5c-be04-f8257922c491');

-- ----------------------------
-- Table structure for distribution
-- ----------------------------
DROP TABLE IF EXISTS `distribution`;
CREATE TABLE `distribution` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `carnumber` int(11) DEFAULT NULL COMMENT '车辆数量',
  `longtude` decimal(10,7) DEFAULT NULL COMMENT '经度',
  `latitude` decimal(10,7) DEFAULT NULL COMMENT '纬度',
  `province` varchar(255) DEFAULT NULL COMMENT '所在省份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of distribution
-- ----------------------------
INSERT INTO `distribution` VALUES ('1', '23', '116.4600000', '39.9200000', '北京市');
INSERT INTO `distribution` VALUES ('2', '33', '117.2000000', '39.1300000', '天津市');
INSERT INTO `distribution` VALUES ('3', '44', '121.4800000', '31.2200000', '上海市');
INSERT INTO `distribution` VALUES ('4', '22', '106.5400000', '29.5900000', '重庆市');
INSERT INTO `distribution` VALUES ('5', '12', '114.4800000', '38.0300000', '河北省');
INSERT INTO `distribution` VALUES ('6', '77', '112.5300000', '37.8700000', '山西省');
INSERT INTO `distribution` VALUES ('7', '33', '123.3800000', '41.8000000', '辽宁省');
INSERT INTO `distribution` VALUES ('8', '25', '125.3500000', '43.8800000', '吉林省');
INSERT INTO `distribution` VALUES ('9', '15', '126.6300000', '45.7500000', '黑龙江省');
INSERT INTO `distribution` VALUES ('10', '98', '118.7800000', '32.0400000', '江苏省');
INSERT INTO `distribution` VALUES ('11', '34', '120.1900000', '30.2600000', '浙江省');
INSERT INTO `distribution` VALUES ('12', '54', '117.2700000', '31.8600000', '安徽省');
INSERT INTO `distribution` VALUES ('13', '62', '119.3000000', '26.0800000', '福建省');
INSERT INTO `distribution` VALUES ('14', '45', '115.8900000', '28.6800000', '江西省');
INSERT INTO `distribution` VALUES ('15', '30', '117.0000000', '36.6300000', '山东省');
INSERT INTO `distribution` VALUES ('16', '67', '113.6500000', '34.7600000', '河南省');
INSERT INTO `distribution` VALUES ('17', '74', '114.3100000', '30.5200000', '湖北省');
INSERT INTO `distribution` VALUES ('18', '20', '113.0000000', '28.2100000', '湖南省');
INSERT INTO `distribution` VALUES ('19', '80', '113.2300000', '23.1600000', '广东省');
INSERT INTO `distribution` VALUES ('20', '89', '110.3500000', '20.0200000', '海南省');
INSERT INTO `distribution` VALUES ('21', '77', '104.0600000', '30.6700000', '四川省');
INSERT INTO `distribution` VALUES ('22', '55', '106.7100000', '26.5700000', '贵州省');
INSERT INTO `distribution` VALUES ('23', '23', '102.7300000', '25.0400000', '云南省');
INSERT INTO `distribution` VALUES ('24', '45', '108.9500000', '34.2700000', '陕西省');
INSERT INTO `distribution` VALUES ('25', '51', '103.7300000', '36.0300000', '甘肃省');
INSERT INTO `distribution` VALUES ('26', '31', '101.7400000', '36.5600000', '青海省');
INSERT INTO `distribution` VALUES ('27', '13', '121.5000000', '25.0300000', '台湾省');
INSERT INTO `distribution` VALUES ('28', '11', '111.6500000', '40.8200000', '内蒙古自治区');
INSERT INTO `distribution` VALUES ('29', '8', '108.3300000', '22.8400000', '广西壮族自治区');
INSERT INTO `distribution` VALUES ('30', '4', '91.1100000', '29.9700000', '西藏自治区');
INSERT INTO `distribution` VALUES ('31', '46', '106.2700000', '38.4700000', '宁夏回族自治区');
INSERT INTO `distribution` VALUES ('32', '39', '87.6800000', '43.7700000', '新疆维吾尔族自治区');
INSERT INTO `distribution` VALUES ('33', '56', '114.0800000', '22.2000000', '香港特别行政区');
INSERT INTO `distribution` VALUES ('34', '50', '113.3300000', '22.1300000', '澳门特别行政区');

-- ----------------------------
-- Table structure for fault
-- ----------------------------
DROP TABLE IF EXISTS `fault`;
CREATE TABLE `fault` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `faulttype` int(11) DEFAULT NULL COMMENT '故障类型',
  `faultnumber` int(11) DEFAULT NULL COMMENT '故障数量',
  `faultname` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fault
-- ----------------------------
INSERT INTO `fault` VALUES ('1', '1', '43', '正常使用', null);
INSERT INTO `fault` VALUES ('2', '2', '9', '小型故障', null);
INSERT INTO `fault` VALUES ('3', '3', '12', '严重故障', null);

-- ----------------------------
-- Table structure for faultinfo
-- ----------------------------
DROP TABLE IF EXISTS `faultinfo`;
CREATE TABLE `faultinfo` (
  `id` int(11) NOT NULL,
  `faultID` varchar(50) NOT NULL,
  `faultState` varchar(100) NOT NULL,
  `vehID` varchar(50) NOT NULL,
  `realtime` varchar(100) NOT NULL,
  `faultLevel` varchar(50) DEFAULT NULL,
  `modID` varchar(50) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `realtime` (`realtime`),
  KEY `modID` (`modID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of faultinfo
-- ----------------------------
INSERT INTO `faultinfo` VALUES ('1', '123456', '电池', '苏BZ111', '2017-6-27', '3', '3', '电池故障');
INSERT INTO `faultinfo` VALUES ('2', '123457', '车轮', '苏BZ123', '2017-7-2', '2', '2', '后视镜故障');
INSERT INTO `faultinfo` VALUES ('3', '122313', '发动机', '苏BK886', '2014-2-2', '2', '1', '引擎故障');
INSERT INTO `faultinfo` VALUES ('4', '123458', '超里程', '苏B7K85', '2013-3-3', '2', '4', '超出里程表');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `roletype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '企业用户', '1');
INSERT INTO `role` VALUES ('2', '个人用户', '0');

-- ----------------------------
-- Table structure for tbfaultmean
-- ----------------------------
DROP TABLE IF EXISTS `tbfaultmean`;
CREATE TABLE `tbfaultmean` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `faultID` varchar(50) NOT NULL,
  `faultmean` varchar(50) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `faultID` (`faultID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbfaultmean
-- ----------------------------
INSERT INTO `tbfaultmean` VALUES ('1', '123456', '电量不足', null);
INSERT INTO `tbfaultmean` VALUES ('2', '123457', '轮胎磨损', null);
INSERT INTO `tbfaultmean` VALUES ('3', '123458', '里程数超出', null);
INSERT INTO `tbfaultmean` VALUES ('4', '122313', '引擎损坏', null);

-- ----------------------------
-- Table structure for tbfaultsolution
-- ----------------------------
DROP TABLE IF EXISTS `tbfaultsolution`;
CREATE TABLE `tbfaultsolution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faultID` varchar(100) NOT NULL,
  `verNumber` int(2) NOT NULL,
  `faultSolution` varchar(500) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`faultID`,`verNumber`),
  UNIQUE KEY `faultID` (`faultID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbfaultsolution
-- ----------------------------
INSERT INTO `tbfaultsolution` VALUES ('1', '123456', '10', '充电', '电池故障');
INSERT INTO `tbfaultsolution` VALUES ('2', '123457', '10', '换轮胎', '车轮故障');
INSERT INTO `tbfaultsolution` VALUES ('3', '122313', '10', '维修引擎', '发动机故障');
INSERT INTO `tbfaultsolution` VALUES ('4', '123458', '10', '维修ABS', 'ABS系统故障');

-- ----------------------------
-- Table structure for tbframe
-- ----------------------------
DROP TABLE IF EXISTS `tbframe`;
CREATE TABLE `tbframe` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水ID',
  `frameID` varchar(100) NOT NULL COMMENT '帧ID',
  `vehID` varchar(50) NOT NULL COMMENT '车号',
  `realtime` varchar(50) NOT NULL COMMENT '数据采集实时时间',
  `modID` varchar(50) NOT NULL COMMENT '模块ID-发送模块',
  `cycle_time` varchar(100) DEFAULT NULL COMMENT '发送周期',
  `para1_name` varchar(100) DEFAULT NULL COMMENT '参数1名',
  `para1_value` varchar(100) DEFAULT NULL COMMENT '参数1值',
  `para2_name` varchar(100) DEFAULT NULL COMMENT '参数2名',
  `para2_value` varchar(100) DEFAULT NULL COMMENT '参数2值',
  `para3_name` varchar(100) DEFAULT NULL COMMENT '参数3名',
  `para3_value` varchar(100) DEFAULT NULL COMMENT '参数3值',
  `para4_name` varchar(100) DEFAULT NULL COMMENT '参数4名',
  `para4_value` varchar(100) DEFAULT NULL COMMENT '参数4值',
  `para5_name` varchar(100) DEFAULT NULL COMMENT '参数5名',
  `para5_value` varchar(100) DEFAULT NULL COMMENT '参数5值',
  `para6_name` varchar(100) DEFAULT NULL COMMENT '参数6名',
  `para6_value` varchar(100) DEFAULT NULL COMMENT '参数6值',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`Id`),
  KEY `modID` (`modID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbframe
-- ----------------------------
INSERT INTO `tbframe` VALUES ('1', '0CF00400', '001', '2017-2-2', '00', null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for tbmodpartype
-- ----------------------------
DROP TABLE IF EXISTS `tbmodpartype`;
CREATE TABLE `tbmodpartype` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水ID',
  `parName` varchar(50) NOT NULL COMMENT '参数名',
  `parMean` varchar(100) DEFAULT NULL COMMENT '参数含义',
  `parValType` varchar(50) DEFAULT NULL COMMENT '参数值类型',
  `modID` varchar(50) NOT NULL COMMENT '模块ID',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `parName` (`parName`),
  KEY `modID` (`modID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmodpartype
-- ----------------------------
INSERT INTO `tbmodpartype` VALUES ('1', 'MotRealTorq', '发动机真实扭矩', 'int', '00', null);

-- ----------------------------
-- Table structure for tbvehicles
-- ----------------------------
DROP TABLE IF EXISTS `tbvehicles`;
CREATE TABLE `tbvehicles` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `vehID` varchar(20) NOT NULL,
  `plateNumber` varchar(20) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbvehicles
-- ----------------------------
INSERT INTO `tbvehicles` VALUES ('1', '1', '11', '1');
INSERT INTO `tbvehicles` VALUES ('2', '1', '11', '1');
INSERT INTO `tbvehicles` VALUES ('3', '1', '11', '1');

-- ----------------------------
-- Table structure for tbvehlocation
-- ----------------------------
DROP TABLE IF EXISTS `tbvehlocation`;
CREATE TABLE `tbvehlocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehID` varchar(100) DEFAULT NULL,
  `modID` varchar(100) DEFAULT NULL,
  `realtime` varchar(100) DEFAULT NULL,
  `latitudes` varchar(255) DEFAULT NULL,
  `longitudes` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `recordtime` date DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL COMMENT '对应的省份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbvehlocation
-- ----------------------------
INSERT INTO `tbvehlocation` VALUES ('1', '苏BZ111', '123321', '2017-6-25', '120.39', '31.59', '无锡', '2017-06-27', '江苏省');
INSERT INTO `tbvehlocation` VALUES ('2', '苏BZ211', 'D2', '2017-6-15', '121.11', '31.25', '苏州', '2017-06-21', '江苏省');
INSERT INTO `tbvehlocation` VALUES ('4', '苏BZ123', 'D0', '2017-4-13', '121.305', '32.08', '南通', '2017-06-09', '江苏省');
INSERT INTO `tbvehlocation` VALUES ('5', '苏BZ121', 'D1', '2017-6-17', '120.648', '31.22', '上海', '2017-06-01', '上海市');
INSERT INTO `tbvehlocation` VALUES ('6', '苏BZ211', 'D2', '2017-6-21', '121.11', '31.45', '太仓', '2017-06-15', '江苏省');
INSERT INTO `tbvehlocation` VALUES ('12', '苏BK886', 'D8', '2017-6-13', '120.26', '31.91', '江阴', '2017-06-02', '江苏省');
INSERT INTO `tbvehlocation` VALUES ('17', '苏B7K85', '03', '2017-6-10', '118.78', '32.304', '南京', '2017-05-24', '江苏省');
INSERT INTO `tbvehlocation` VALUES ('29', '苏BZ116', 'D0', '2017-6-25', '120.29', '31.59', '无锡', '2017-06-27', '江苏省');
INSERT INTO `tbvehlocation` VALUES ('30', '鲁A12D2', 'D0', '2017-4-13', '120.39', '36.59', '济南', '2017-06-27', '山东省');

-- ----------------------------
-- Table structure for tbvehmod
-- ----------------------------
DROP TABLE IF EXISTS `tbvehmod`;
CREATE TABLE `tbvehmod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modID` varchar(50) NOT NULL,
  `modNameRe` varchar(50) DEFAULT NULL,
  `modName` varchar(50) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`modID`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbvehmod
-- ----------------------------
INSERT INTO `tbvehmod` VALUES ('1', '00', 'EMS', '发动机&控制器', '标准定义');
INSERT INTO `tbvehmod` VALUES ('2', '03', 'TCU', '自动变速箱', '扩展定义');
INSERT INTO `tbvehmod` VALUES ('3', 'D0', 'HVCU', '整车控制器', '标准定义');
INSERT INTO `tbvehmod` VALUES ('4', 'D1', 'MCU1', '驱动电机1', '');
INSERT INTO `tbvehmod` VALUES ('5', 'D2', 'MCU2', '驱动电机2', '');
INSERT INTO `tbvehmod` VALUES ('6', 'D3', 'BMS1', '电池管理系统1', '储能管理系统');
INSERT INTO `tbvehmod` VALUES ('7', 'D4', 'BMS2', '电池管理系统2', '储能管理系统');
INSERT INTO `tbvehmod` VALUES ('8', 'D5', 'UMS', '超级电容管理系统', '储能管理系统');
INSERT INTO `tbvehmod` VALUES ('9', 'D6', 'HSM', '状态监视器', '');
INSERT INTO `tbvehmod` VALUES ('10', 'D8', 'ACCU', '空调控制面板', '');
INSERT INTO `tbvehmod` VALUES ('11', 'D9', 'HSM', '状态监视器', '');
INSERT INTO `tbvehmod` VALUES ('12', 'E1', 'GPS', '全球定位单元', '');

-- ----------------------------
-- Table structure for uploadfile
-- ----------------------------
DROP TABLE IF EXISTS `uploadfile`;
CREATE TABLE `uploadfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `filename` varchar(255) DEFAULT NULL COMMENT '上传的文件名',
  `filepath` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `filetype` varchar(255) DEFAULT NULL COMMENT '文件类型',
  `filetime` datetime DEFAULT NULL COMMENT '上传时间',
  `uploadname` varchar(255) DEFAULT NULL COMMENT '上传后的文件名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uploadfile
-- ----------------------------
INSERT INTO `uploadfile` VALUES ('20', '10、登录注册', 'D:\\Program Files (x86)\\apache-tomcat-7.0.78\\webapps\\car\\upload1\\f16aa95e-145a-48b0-957b-3bdacc106897.jpg', 'jpg', '2017-06-07 16:31:10', 'f16aa95e-145a-48b0-957b-3bdacc106897');
INSERT INTO `uploadfile` VALUES ('21', '7、车辆管理', 'D:\\Program Files (x86)\\apache-tomcat-7.0.78\\webapps\\car\\upload1\\50245062-2b8e-445b-968f-5fd395182c5a.jpg', 'jpg', '2017-06-07 16:33:27', '50245062-2b8e-445b-968f-5fd395182c5a');
INSERT INTO `uploadfile` VALUES ('22', '6、故障车辆、用户信息', 'D:\\Program Files (x86)\\apache-tomcat-7.0.78\\webapps\\car\\upload1\\af137019-a5a4-4dce-98fb-c113edfbe388.jpg', 'jpg', '2017-06-08 10:21:49', 'af137019-a5a4-4dce-98fb-c113edfbe388');
INSERT INTO `uploadfile` VALUES ('23', '1、首页1', 'D:\\Program Files (x86)\\apache-tomcat-7.0.78\\webapps\\car\\upload1\\d7593fbc-f7c4-4ff0-a8d9-021a9b68b202.jpg', 'jpg', '2017-06-08 14:10:20', 'd7593fbc-f7c4-4ff0-a8d9-021a9b68b202');
INSERT INTO `uploadfile` VALUES ('24', '5-2、大数据分析', 'D:\\Program Files (x86)\\apache-tomcat-7.0.78\\webapps\\car\\upload1\\00566f78-dec1-4092-a309-a9674f327ba2.jpg', 'jpg', '2017-06-08 15:57:16', '00566f78-dec1-4092-a309-a9674f327ba2');
INSERT INTO `uploadfile` VALUES ('25', '1、首页1', 'D:\\Program Files (x86)\\apache-tomcat-7.0.78\\webapps\\car\\upload1\\bd7611c8-ab18-458b-b2f6-44c6f975950c.jpg', 'jpg', '2017-06-09 09:17:27', 'bd7611c8-ab18-458b-b2f6-44c6f975950c');
INSERT INTO `uploadfile` VALUES ('26', '6、故障车辆、用户信息', 'D:\\Program Files (x86)\\apache-tomcat-7.0.78\\webapps\\car\\upload1\\6b99ac0e-8e55-492a-9b48-7638b7ad9215.jpg', 'jpg', '2017-06-09 09:17:53', '6b99ac0e-8e55-492a-9b48-7638b7ad9215');
INSERT INTO `uploadfile` VALUES ('27', '5-2、大数据分析', 'D:\\Program Files (x86)\\apache-tomcat-7.0.78\\webapps\\car\\upload1\\1b7e9c44-3314-4b07-ab1b-cc28abad4efb.jpg', 'jpg', '2017-06-09 09:18:43', '1b7e9c44-3314-4b07-ab1b-cc28abad4efb');
INSERT INTO `uploadfile` VALUES ('28', '7、车辆管理', 'D:\\Program Files (x86)\\apache-tomcat-7.0.78\\webapps\\car\\upload1\\acba474d-facf-4229-98d0-27c3a817b77c.jpg', 'jpg', '2017-06-09 09:19:18', 'acba474d-facf-4229-98d0-27c3a817b77c');
INSERT INTO `uploadfile` VALUES ('29', '10、登录注册', 'D:\\Program Files (x86)\\apache-tomcat-7.0.78\\webapps\\car\\upload1\\f4333ea6-79ae-43d7-8c56-47185d32951e.jpg', 'jpg', '2017-06-21 15:55:02', 'f4333ea6-79ae-43d7-8c56-47185d32951e');
INSERT INTO `uploadfile` VALUES ('30', '10、登录注册', 'D:\\Program Files (x86)\\apache-tomcat-7.0.78\\webapps\\car\\upload1\\c8118abf-f117-4c3c-ad1f-85a29ecb4fd2.jpg', 'jpg', '2017-06-21 15:56:15', 'c8118abf-f117-4c3c-ad1f-85a29ecb4fd2');
INSERT INTO `uploadfile` VALUES ('31', '7、车辆管理', 'D:\\Program Files (x86)\\apache-tomcat-7.0.78\\webapps\\car\\upload1\\d33b16d7-5842-4f1d-9a09-8078aadbaaa4.jpg', 'jpg', '2017-06-21 16:05:38', 'd33b16d7-5842-4f1d-9a09-8078aadbaaa4');
INSERT INTO `uploadfile` VALUES ('32', '10、登录注册', 'D:\\Program Files (x86)\\apache-tomcat-7.0.78\\webapps\\car\\upload1\\6b5da0a7-7586-443f-9b75-580be4c545e0.jpg', 'jpg', '2017-06-26 09:51:23', '6b5da0a7-7586-443f-9b75-580be4c545e0');
INSERT INTO `uploadfile` VALUES ('33', '2222', 'D:\\apache-tomcat-7.0.67\\webapps\\car\\upload1\\c098e822-ed5c-43d6-840a-1ed5ec864c45.png', 'png', '2017-06-30 12:28:02', 'c098e822-ed5c-43d6-840a-1ed5ec864c45');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL COMMENT '账号创建时间',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `birthdate` date DEFAULT NULL COMMENT '出生日期',
  `sex` int(4) DEFAULT NULL COMMENT '性别',
  `dltime` date DEFAULT NULL COMMENT '初次拿到驾照时间',
  `hpic` varchar(255) DEFAULT NULL COMMENT '头像图片路径',
  `usertype` int(255) DEFAULT NULL COMMENT '用户类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('050f90df-0d14-4c51-84c6-7ae8cffe6320', 'fch1', '123456', '2017-06-30 09:34:22', 'fch1', '2017-06-30', '1', '2017-06-30', '', '0');
INSERT INTO `user` VALUES ('07b82979-bb22-4237-a665-eb99a1308210', 'custom1', '123321', '2017-11-05 15:59:22', 'custom1', '1987-06-19', '1', '2017-11-05', '', '0');
INSERT INTO `user` VALUES ('08bb64d9-d3f0-4530-b0e8-507882e8bdec', 'custom2', '123321', '2017-11-05 16:02:09', 'custom', '1983-03-20', '1', '2012-11-05', '', '0');
INSERT INTO `user` VALUES ('0bb8db26-d804-4c5c-be04-f8257922c491', 'Tom', 'abc123', '2017-11-05 22:04:10', '汤姆123', '1993-01-20', '0', '2016-06-22', '\\car\\upload1\\c252cc38-37fc-4c67-86fe-7e97d2e11adf.jpg', '0');
INSERT INTO `user` VALUES ('1d6b2a7b-fb01-4b38-9a80-505a1fc8d872', 'd', 'd', '2017-06-20 09:13:54', 'd', '2017-06-20', '1', '2017-06-20', '', '0');
INSERT INTO `user` VALUES ('20480919-4fea-4e43-9efe-d123f71bc8a5', 'wenwen123', '123321', '2017-11-05 15:14:36', 'wenwen123', '1983-06-05', '1', '2017-11-05', '', '0');
INSERT INTO `user` VALUES ('377b7f6f-3ede-4114-849b-7e06d5075e2a', '123', '123', '2017-06-22 14:29:02', '12345', '2010-09-21', '1', '2011-10-09', '', '0');
INSERT INTO `user` VALUES ('3fd7228b-92e5-49b8-a98a-09bd87a4703e', 'test123', '123321', '2017-11-05 15:49:15', 'test', '2017-11-05', '1', '2017-11-05', '', '0');
INSERT INTO `user` VALUES ('4e92d819-0f96-4675-99af-1978cea290fc', 'xxx', 'f561aaf6ef0bf14d4208bb46a4ccb3ad', '2017-06-20 08:54:25', 'xxx', '2017-06-20', '1', '2017-06-20', '', '0');
INSERT INTO `user` VALUES ('6bc0bdfc-2b20-48bd-bd03-9bfb1e009da0', 'zz', '25ed1bcb423b0b7200f485fc5ff71c8e', '2017-06-19 16:13:49', 'zz', '2017-06-19', '0', '2017-06-19', '', '0');
INSERT INTO `user` VALUES ('6f3df006-0009-41c0-b77f-982e20fbc366', 'wenwen', '123321', '2018-04-12 11:23:46', 'wenwen789', '1990-06-05', '0', '2012-11-05', '\\car\\upload1\\209910a3-6f68-4c21-90ab-01b17b3335a6.jpg', '0');
INSERT INTO `user` VALUES ('72edd9f1-3a71-487e-a5d7-90597ad2db63', 'asddsa', '123456', '2017-09-25 16:03:40', '测试', '2017-06-19', '1', '2017-06-19', '', '1');
INSERT INTO `user` VALUES ('7549992f-a789-418b-80c3-7fb1bbad676d', 'amily', '123456', '2017-09-28 16:04:57', 'amily', '1990-04-10', '1', '2015-05-15', '', '0');
INSERT INTO `user` VALUES ('7c02a612-a98c-4b09-aa93-f00eecc72d16', 'b', 'b', '2017-06-20 09:14:16', 'b', '2017-06-20', '1', '2017-06-20', '', '0');
INSERT INTO `user` VALUES ('7c712d06-f896-4169-afb9-93251c44d2cf', '44', '44', '2017-06-20 09:13:16', '44', '2017-06-20', '1', '2017-06-20', '', '0');
INSERT INTO `user` VALUES ('9e7fb240-fccd-492d-9846-74a8b5d0ad89', 'wzh', '123456', '2017-06-30 10:52:19', 'wzh', '2017-06-30', '1', '2017-06-30', '', '0');
INSERT INTO `user` VALUES ('b0263284-d09d-4bdf-a865-4191cf525216', 'www', 'www', '2017-06-30 11:30:24', 'www', '2000-03-30', '1', '2014-11-30', '', '0');
INSERT INTO `user` VALUES ('b02d89e7-873f-4c0f-ae11-ef64561dd1f1', '231', '123456', '2017-07-03 09:19:55', '321', '2017-07-07', '1', '2017-05-01', '', '1');
INSERT INTO `user` VALUES ('b7d94226-dae9-415b-96c9-1d47b66d586d', 'test', 'test', '2017-09-26 14:23:18', '测试', '1988-09-26', '1', '2012-09-26', '', '0');
INSERT INTO `user` VALUES ('b8ed68f0-1ca1-4b8f-8ba5-c61fda48a11a', 'assssss', '123456', '2017-06-21 16:57:30', 'assad', '2017-06-21', '1', '2017-06-21', '', '1');
INSERT INTO `user` VALUES ('bd906313-7c37-4d48-ba50-ebbeadebb608', 'zzzfdf', '550a141f12de6341fba65b0ad0433500', '2017-06-21 20:09:00', 'zzz', '2014-03-15', '1', '1936-09-06', '', '0');
INSERT INTO `user` VALUES ('bdbfe226-c8e3-4b91-9917-a0ab176ea815', 'balabala', '123321', '2017-11-05 22:02:53', 'balabala', '1987-07-08', '1', '2010-11-05', '\\car\\upload1\\d05f1403-5940-469d-8f6b-3c2edca4308d.jpg', '0');
INSERT INTO `user` VALUES ('c08240d2-2596-4869-bedd-1aec4f54faf1', 'admin', '123456', '2017-11-05 22:04:48', 'admin', '2017-06-20', '1', '2017-06-20', '\\car\\upload1\\b79384c4-4765-491d-9eac-9e3987fb486f.jpg', '1');
INSERT INTO `user` VALUES ('c6b5ed53-530f-4a0a-81ca-385ae1f619a7', 'wasd', '123456', '2017-06-21 16:52:50', 'wasd', '2017-06-21', '0', '2017-06-21', '', '1');
INSERT INTO `user` VALUES ('daa80c57-019e-470a-8ba8-8cccc13a9922', 'wennie', '123321', '2017-11-05 21:53:31', 'wennie', '1991-02-18', '1', '2011-11-05', '', '0');
INSERT INTO `user` VALUES ('e5026a7a-26a4-42c4-9bcb-5e5cb4e2c814', 'zzx', '9336ebf25087d91c818ee6e9ec29f8c1', '2017-06-20 08:51:09', 'xx', '2017-06-20', '1', '2017-06-20', '', '0');
INSERT INTO `user` VALUES ('e8ae9175-c495-496d-9e9b-0cb5a8cac039', 'bb', 'b', '2017-06-20 09:14:22', 'b', '2017-06-20', '1', '2017-06-20', '', '0');

-- ----------------------------
-- Table structure for userrole
-- ----------------------------
DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userrole_1` (`roleid`),
  KEY `userrole_2` (`userid`),
  CONSTRAINT `userrole_1` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userrole_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userrole
-- ----------------------------
INSERT INTO `userrole` VALUES ('1', 'c08240d2-2596-4869-bedd-1aec4f54faf1', '1', null, null);
INSERT INTO `userrole` VALUES ('2', 'c08240d2-2596-4869-bedd-1aec4f54faf1', '2', null, null);
