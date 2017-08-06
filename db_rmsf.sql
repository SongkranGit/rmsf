/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50505
Source Host           : 127.1.1.1:3306
Source Database       : db_rmsf

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-07 05:37:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app_users
-- ----------------------------
DROP TABLE IF EXISTS `app_users`;
CREATE TABLE `app_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_users
-- ----------------------------

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `name_th` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `description_th` varchar(1000) DEFAULT NULL,
  `description_en` varchar(1000) DEFAULT NULL,
  `detail_th` text,
  `detail_en` text,
  `published_date` datetime NOT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `order_seq` tinyint(3) DEFAULT NULL,
  `published` bit(1) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '1', 'sdfasdf', 'asdfasdf', 'asdfasdf', 'asdfasdf', '<p>asdfasdfasdf</p>', 'asdfasdfasdf', '2017-08-06 00:00:00', null, null, '', '2017-08-06 14:36:10', null, '1');
INSERT INTO `articles` VALUES ('2', '6', 'ฟหกดฟห', 'sdfasdfa', 'ฟหกดฟหกด', 'sdfasdfa', '<p>ดฟหกดsfasdfasdfasdfasdfasdfasdfassf</p>', '<p>asdfasdfasdfasdfasdf</p>', '2017-08-07 00:00:00', null, null, '', '2017-08-06 22:40:37', '2017-08-06 23:20:33', '0');
INSERT INTO `articles` VALUES ('3', '2', 'ชื่อบทความ', 'sdfas', 'คำอธิบาย', 'sdfasdfasdfasdf', '<p>ฟหกดฟหกดฟหกด</p>\r\n<p> </p>\r\n<p> </p>', '<p>asdfasdfasdfasdfasdfasfasdfasdf</p>\r\n<p><img src=\"http://rmsf.dev/uploads/022a4423-c626-4851-8880-5e0faf368c5b.png?1502052343264\" width=\"533\" height=\"200\" /></p>', '2017-08-07 00:00:00', null, null, '', '2017-08-06 22:43:51', '2017-08-06 23:19:01', '0');

-- ----------------------------
-- Table structure for article_images
-- ----------------------------
DROP TABLE IF EXISTS `article_images`;
CREATE TABLE `article_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `image_uuid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image_old_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order_seq` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of article_images
-- ----------------------------
INSERT INTO `article_images` VALUES ('80', '14', 'a5e3c655-665d-4090-899a-fa77626e20c2', 'article.jpg', 'a5e3c655-665d-4090-899a-fa77626e20c2.jpg', '2', '135', '2017-02-26 16:11:24', null);
INSERT INTO `article_images` VALUES ('82', null, 'f2bbc5d9-30f2-4c0b-a536-d6027ed4382a', 'switzerland_alps_mountains_night_beautiful_landsca', 'f2bbc5d9-30f2-4c0b-a536-d6027ed4382a.jpg', null, '820', '2017-08-05 22:28:02', null);
INSERT INTO `article_images` VALUES ('83', null, 'b35fc93e-5a4f-42f0-b279-d9ef3e62a415', 'river_trees_fog_reflection_100440_1920x1080.jpg', 'b35fc93e-5a4f-42f0-b279-d9ef3e62a415.jpg', null, '778', '2017-08-05 22:28:06', null);
INSERT INTO `article_images` VALUES ('84', null, '5b853f8a-a55f-4b7b-8de2-feead81f7b3e', 'switzerland_alps_mountains_night_beautiful_landsca', '5b853f8a-a55f-4b7b-8de2-feead81f7b3e.jpg', null, '820', '2017-08-05 23:34:02', null);
INSERT INTO `article_images` VALUES ('85', null, '70733488-f380-4a1a-836f-7496bf9936fe', 'switzerland_alps_mountains_night_beautiful_landsca', '70733488-f380-4a1a-836f-7496bf9936fe.jpg', null, '820', '2017-08-06 00:09:53', null);
INSERT INTO `article_images` VALUES ('86', null, 'c3f4f87e-9ae9-4ac4-98a0-6bc6d8c509eb', 'switzerland_alps_mountains_night_beautiful_landsca', 'c3f4f87e-9ae9-4ac4-98a0-6bc6d8c509eb.jpg', null, '820', '2017-08-06 05:51:48', null);
INSERT INTO `article_images` VALUES ('88', '2', 'feeb30f9-622a-4e16-889a-2676ce44cebe', 'river_trees_fog_reflection_100440_1920x1080.jpg', 'feeb30f9-622a-4e16-889a-2676ce44cebe.jpg', '1', '778', '2017-08-06 23:03:30', null);
INSERT INTO `article_images` VALUES ('89', '2', 'a314c053-e0ed-421a-a1a4-5bbff0ef1d4f', 'switzerland_alps_mountains_night_beautiful_landsca', 'a314c053-e0ed-421a-a1a4-5bbff0ef1d4f.jpg', '1', '820', '2017-08-06 23:04:11', null);
INSERT INTO `article_images` VALUES ('90', '3', '17dacdfe-c541-4310-88f6-99d714d4ec62', 'switzerland_alps_mountains_night_beautiful_landsca', '17dacdfe-c541-4310-88f6-99d714d4ec62.jpg', '1', '820', '2017-08-06 23:17:55', null);

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `note` text NOT NULL,
  `courses` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL,
  `line_id` varchar(50) NOT NULL,
  `qr_code_id` varchar(50) NOT NULL,
  `is_approve` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('87', 'Test', 'bsongkran_167@hotmail.com', '2', '0', '', 'sss', 'a:4:{i:0;s:1:\"1\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"4\";}', '2016-07-10 15:37:41', null, '', '', '', '\0');
INSERT INTO `contacts` VALUES ('88', 'test', 'bsongkran167@gmail.com', '10', '5', 'sss', 'sfasfsdf', 'a:4:{i:0;s:1:\"0\";i:1;s:1:\"2\";i:2;s:1:\"0\";i:3;s:1:\"0\";}', '2016-08-14 08:39:12', null, '', 'ssss', '', '\0');
INSERT INTO `contacts` VALUES ('89', 'sdrfas', 'bsongkran167@gmail.com', '2', '1', '', 'sdrfsdr', 'a:4:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"4\";}', '2016-08-14 08:40:22', null, '', '', '', '\0');
INSERT INTO `contacts` VALUES ('90', 'หดห', 'bsongkran167@gmail.com', '2', '0', 'หกด', 'sdfsfs', 'a:4:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"4\";}', '2016-08-14 08:45:26', null, '', '', '', '\0');
INSERT INTO `contacts` VALUES ('91', 'sdfasdf', 'bsongkran167@gmail.com', '2', '0', '', 'sfsdf', 'a:4:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"3\";i:3;s:1:\"0\";}', '2016-08-14 08:48:11', null, '', '', '', '\0');
INSERT INTO `contacts` VALUES ('92', 'sdfasf', 'bsongkran167@gmail.com', '2', '0', '', 'sdf', 'a:4:{i:0;s:1:\"1\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";}', '2016-08-14 08:49:13', null, '', '', '', '\0');
INSERT INTO `contacts` VALUES ('93', 'asdasd', 'bsongkran167@gmail.com', '2', '0', '', 'sdfsd', 'a:4:{i:0;s:1:\"0\";i:1;s:1:\"2\";i:2;s:1:\"0\";i:3;s:1:\"0\";}', '2016-08-14 08:50:05', null, '', '', '', '\0');
INSERT INTO `contacts` VALUES ('94', 'asfsf', 'bsongkran167@gmail.com', '2', '0', '', 'sdf', 'a:4:{i:0;s:1:\"0\";i:1;s:1:\"2\";i:2;s:1:\"0\";i:3;s:1:\"0\";}', '2016-08-14 08:52:07', null, '', '', '', '\0');
INSERT INTO `contacts` VALUES ('95', 'sdfsdf', 'bsongkran167@gmail.com', '2', '0', '', 'sdfasdf', 'a:4:{i:0;s:1:\"0\";i:1;s:1:\"2\";i:2;s:1:\"0\";i:3;s:1:\"0\";}', '2016-08-14 08:53:39', null, '', '', '', '\0');
INSERT INTO `contacts` VALUES ('96', 'sdfsdfds', 'bsongkran167@gmail.com', '2', '0', '', 'sdfsdfdsffs', 'a:4:{i:0;s:1:\"0\";i:1;s:1:\"2\";i:2;s:1:\"0\";i:3;s:1:\"0\";}', '2016-08-14 09:03:46', null, '', '', '', '\0');
INSERT INTO `contacts` VALUES ('97', 'สุชาดา คำวงษ์', 'suchada.k9@gmail.com', '9', '41', '0899495963', '-', 'a:4:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";}', '2016-08-14 10:13:35', null, '', 'wan_jiab', '', '\0');
INSERT INTO `contacts` VALUES ('98', 'สุชาดา คำวงษ์', 'suchada.k9@gmail.com', '2', '20', '0899495963', 'ทดสอบ', 'a:4:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"0\";i:3;s:1:\"0\";}', '2016-08-14 10:14:40', null, '', 'wan_jiab', '', '\0');
INSERT INTO `contacts` VALUES ('99', 'สุชาดา คำวงษ์', 'suchada.k9@gmail.com', '10', '21', '0899495963', 'sss', 'a:4:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";}', '2016-08-14 10:18:31', null, '', 'wan_jiab', '', '\0');
INSERT INTO `contacts` VALUES ('100', 'สุชาดา คำวงษ์', 'suchada.k9@gmail.com', '19', '20', '0899495963', 'test', 'a:4:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";}', '2016-08-15 18:38:59', null, '', 'wan_jiab', '', '\0');
INSERT INTO `contacts` VALUES ('101', 'TestQR', 'bsongkran167@gmail.com', '2', '0', '', 'sdfsfdsf', 'a:4:{i:0;s:1:\"0\";i:1;s:1:\"2\";i:2;s:1:\"0\";i:3;s:1:\"0\";}', '2016-08-17 22:26:21', null, '', '', '82ba07e0-7154-46c3-856e-d0a98176fb51', '\0');
INSERT INTO `contacts` VALUES ('102', 'Test Approve', 'bsongkran167@gmail.com', '10', '20', '125555', 'sfsdfdsfdsf', 'a:4:{i:0;s:1:\"0\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";}', '2016-08-17 23:32:42', '2016-08-20 08:56:58', '\0', 'ssssss', '7eeb9b24-b3b6-44cc-a9ad-4163cf3d5bae', '');
INSERT INTO `contacts` VALUES ('103', 'TestApprove', 'bsongkran167@gmail.com', '7', '22', 'xxx', 'sfsfdsfdsfdsfdsf', 'a:4:{i:0;s:1:\"1\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"4\";}', '2016-08-17 23:50:11', '2016-08-17 23:53:46', '', '222', '2297641f-e29e-4ba1-bd23-86c6af498b1e', '');
INSERT INTO `contacts` VALUES ('104', 'TestApprove3', 'bsongkran167@gmail.com', '11', '22', '', 'TestApprove3', 'a:4:{i:0;s:1:\"0\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"0\";}', '2016-08-17 23:52:57', '2016-08-17 23:54:36', '\0', '', 'b0265c63-b549-4bcf-8d21-df2814a86ea1', '');

-- ----------------------------
-- Table structure for galleries
-- ----------------------------
DROP TABLE IF EXISTS `galleries`;
CREATE TABLE `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `published` bit(1) NOT NULL,
  `order_seq` tinyint(3) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of galleries
-- ----------------------------
INSERT INTO `galleries` VALUES ('1', null, 'นักเรียนที่มาเรียน สอบเข้าจุฬาฯได้ ในปี 2013', 'เข้าศึกษาได้ทั้งสิ้น 43 คน  คิดเป็น 92% \r\nสำเร็จในทุกคณะโดยเฉพาะคณะพาณิชยศาสตร์และการบัญชี รุ่น Early Admission เข้าได้ 2 คน\r\nอายุเฉลี่ยของนักเรียน SPC ที่เข้าจุฬาฯได้ ในปีนี้ อายุ 15 ปี 7 เดือน\r\nและมีนักเรียนที่จบเพียงเกรด 8  เข้าจุฬาฯได้ถึง 9 คน', '', '1', '2016-06-12 17:01:57', '2016-08-15 18:54:14', '0');
INSERT INTO `galleries` VALUES ('2', null, 'Hall of Success', 'Hall of Success', '', '2', '2016-06-22 20:28:59', '2016-06-22 20:28:59', '0');
INSERT INTO `galleries` VALUES ('3', null, 'เลือกที่นี่เพราะ', 'รายละเอียด เลือกที่นี่เพราะ', '', '4', '2016-07-09 21:34:12', '2016-08-15 19:00:09', '0');
INSERT INTO `galleries` VALUES ('4', null, 'ความเหมือนที่แตกต่าง', 'เพราะ SPC ไม่ใช่แค่สถาบันกวดวิชาที่ให้แค่ความรู้  แต่ที่ SPC สังคมของเราอบอุ่น เป็นเหมือนบ้าน  เหมือนครอบครัวที่คอยดูแลกันและกัน  เป็นสังคมที่เกื้อกูลกัน  พ่อแม่ดูแลลูก  พี่ดูแลน้องจากรุ่นสู่รุ่น  เพื่อนช่วยเพื่อน  เพื่อที่ทุกคนจะสำเร็จสู่รั้วมหาวิทยาลัยที่ตั้งใจ            ', '', '3', '2016-07-09 21:34:36', '2016-08-17 14:24:25', '0');
INSERT INTO `galleries` VALUES ('5', null, 'SPC พาชมมหาวิทยาลัย', 'SPC พาชมมหาวิทยาลัย', '', '5', '2017-01-21 00:47:35', '2017-01-21 00:47:35', '0');

-- ----------------------------
-- Table structure for galleries_images
-- ----------------------------
DROP TABLE IF EXISTS `galleries_images`;
CREATE TABLE `galleries_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `caption_en` varchar(2000) NOT NULL,
  `caption_th` varchar(2000) NOT NULL,
  `description_th` text,
  `description_en` text,
  `file_name` varchar(255) NOT NULL,
  `order_seq` tinyint(3) DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `image_uuid` varchar(50) NOT NULL,
  `image_old_name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  PRIMARY KEY (`id`,`gallery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of galleries_images
-- ----------------------------
INSERT INTO `galleries_images` VALUES ('1', '1', 'น้องฮิม เกรด 8 จาก NIVAติด ISE และ BSAC เลือก ISE (AERO)', 'น้องฮิม เกรด 8 จาก NIVAติด ISE และ BSAC เลือก ISE (AERO)', 'น้องฮิม  เกรด 8  จาก NIVAติด ISE และ  BSAC เลือก ISE (AERO) ', 'น้องฮิม  เกรด 8  จาก NIVAติด ISE และ  BSAC เลือก ISE (AERO) ', '32e30239-b010-4df9-bec0-037f5cb6838e.jpg', '1', '', '2016-06-12 17:14:00', '2017-02-26 09:39:18', '', '', '0');
INSERT INTO `galleries_images` VALUES ('2', '1', 'น้องพันวา เกรด 8 จาก RIS ติด BALAC, JIPP เลือก JIPP', 'น้องพันวา เกรด 8 จาก RIS ติด BALAC, JIPP เลือก JIPP', 'น้องพันวา เกรด 8   จาก RIS  ติด BALAC, JIPP เลือก JIPP', 'น้องพันวา เกรด 8   จาก RIS  ติด BALAC, JIPP เลือก JIPP', '8b5b881a-b615-405a-bcac-d607c82e3a90.jpg', '2', '', '2016-06-12 18:01:21', '2017-02-26 09:39:47', '', '', '0');
INSERT INTO `galleries_images` VALUES ('4', '4', 'หนูได้  BBA CU ตามที่หนูฝันไว้เพราะครูหยก และ คุณครูคนอื่นๆใน SPC', 'หนูได้  BBA CU ตามที่หนูฝันไว้เพราะครูหยก และ คุณครูคนอื่นๆใน SPC', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/photo1.jpg?1468075760655\" alt=\"\" width=\"361\" height=\"500\" /></p>', '', 'b7cd4bda-6459-442e-9944-7643cfb3dabe.png', '4', '', '2016-06-12 21:28:40', '2017-02-26 15:50:10', '', '', '0');
INSERT INTO `galleries_images` VALUES ('5', '1', 'น้องแพร เกรด 8 จาก ICS ติด JIPP', 'น้องแพร เกรด 8 จาก ICS ติด JIPP', ' น้องแพร   เกรด 8  จาก  ICS ติด JIPP    ', ' น้องแพร  เกรด 8  จาก  ICS ติด JIPP    ', '42012ed1-e2b9-444c-a6bc-cef1d32b0966.jpg', '3', '', '2016-06-20 23:52:57', '2017-02-26 17:32:14', '', '', '0');
INSERT INTO `galleries_images` VALUES ('6', '1', 'น้องฝ้าย เกรด 8 จาก ICS ติด COMM ARTS', 'น้องฝ้าย เกรด 8 จาก ICS ติด COMM ARTS', 'น้องฝ้าย เกรด 8  จาก  ICS ติด COMM ARTS', 'น้องฝ้าย เกรด 8  จาก  ICS ติด COMM ARTS', 'a4da3b66-9ca2-4d38-8243-3f842e33eb7a.jpg', '4', '', '2016-06-20 23:53:33', '2017-02-26 09:46:10', '', '', '0');
INSERT INTO `galleries_images` VALUES ('7', '1', 'น้องแชมพู เกรด 8 จาก PAN ASIA ติด BSAC', 'น้องแชมพู เกรด 8 จาก PAN ASIA ติด BSAC', ' น้องแชมพู เกรด 8 จาก PAN  ASIA  ติด BSAC ', ' น้องแชมพู เกรด 8 จาก PAN  ASIA  ติด BSAC ', 'f4c915e3-f420-42a1-8f13-31f477a58fb2.jpg', '5', '', '2016-06-20 23:54:20', '2017-02-26 09:47:50', '', '', '0');
INSERT INTO `galleries_images` VALUES ('8', '1', 'น้องแม็ค เกรด 8 จาก KINKAID ติด INDA, COMM DEE เลือก COMMDEE', 'น้องแม็ค เกรด 8 จาก KINKAID ติด INDA, COMM DEE เลือก COMMDEE', 'น้องแม็ค  เกรด 8 จาก  KINKAID ติด INDA, COMM DEE เลือก COMMDEE ', 'น้องแม็ค  เกรด 8 จาก  KINKAID ติด INDA, COMM DEE เลือก COMMDEE ', '00de48e2-8aec-47ea-90d9-dd3251fce6cd.jpg', '6', '', '2016-06-20 23:54:52', '2017-02-26 09:48:34', '', '', '0');
INSERT INTO `galleries_images` VALUES ('9', '1', 'น้องลูกแก้ว เกรด 8 จาก KINKAID ติด BSAC', 'น้องลูกแก้ว เกรด 8 จาก KINKAID ติด BSAC', 'น้องลูกแก้ว เกรด 8  จาก KINKAID  ติด  BSAC', 'น้องลูกแก้ว เกรด 8  จาก KINKAID  ติด  BSAC', '1afb2f42-026b-44a4-bbf6-f2802403e580.jpg', '5', '', '2016-06-20 23:55:27', '2017-02-26 09:49:49', '', '', '0');
INSERT INTO `galleries_images` VALUES ('10', '2', '', '', 'Big', 'Big', '63e3966c-e550-42ef-bfdc-98e75a0be70a.png', '1', '', '2016-06-22 20:37:19', '2017-02-26 11:50:03', '', '', '0');
INSERT INTO `galleries_images` VALUES ('11', '2', '', '', 'Dear', 'Dear', '690e5d29-860c-4927-b74f-e3075649a55c.png', '1', '', '2016-06-22 20:37:27', '2017-02-26 11:53:25', '', '', '0');
INSERT INTO `galleries_images` VALUES ('12', '2', '', '', 'Fon', 'Fon', 'dc45586b-563b-4346-b4f0-b6f05d55cfdf.png', '1', '', '2016-06-22 20:37:34', '2017-02-26 11:54:02', '', '', '0');
INSERT INTO `galleries_images` VALUES ('13', '2', '', '', 'Ice', 'Ice', '0ed63f62-4f3c-4f55-b2b2-6abd64b5c24b.png', '1', '', '2016-06-22 20:37:41', '2017-02-26 12:00:22', '', '', '0');
INSERT INTO `galleries_images` VALUES ('14', '2', '', '', 'Jane', 'Jane', '505dd58d-2faf-4faf-9fbd-1e3256996800.png', '1', '', '2016-06-22 20:37:48', '2017-02-26 12:01:56', '', '', '0');
INSERT INTO `galleries_images` VALUES ('15', '2', '', '', 'Janewit', 'Janewit', '41cc6121-8c10-487d-a2e9-92638fb769fa.png', '1', '', '2016-06-22 20:37:54', '2017-02-26 12:02:29', '', '', '0');
INSERT INTO `galleries_images` VALUES ('16', '2', '', '', 'Kea', 'Kea', '9b4becd0-ef47-468f-8f8e-0db28553abad.png', '1', '', '2016-06-22 20:38:00', '2017-02-26 12:04:00', '', '', '0');
INSERT INTO `galleries_images` VALUES ('17', '2', '', '', 'Kitty', 'Kitty', '1981763e-fa69-4cfe-bd6f-c25f935554e4.png', '1', '', '2016-06-22 20:38:08', '2017-02-26 12:04:22', '', '', '0');
INSERT INTO `galleries_images` VALUES ('18', '2', '', '', 'Kwang', 'Kwang', 'a7dde086-cd8c-434d-8be7-8fb35e7d0edc.png', '1', '', '2016-06-22 20:38:15', '2017-02-26 12:04:39', '', '', '0');
INSERT INTO `galleries_images` VALUES ('19', '2', '', '', 'Mapang', 'Mapang', '5d92f94d-9ad0-47c4-b76f-3f70be43fdc0.png', '1', '', '2016-06-22 20:38:29', '2017-02-26 12:06:04', '', '', '0');
INSERT INTO `galleries_images` VALUES ('20', '2', '', '', 'Mieng', 'Mieng', '114d30a7-fb3e-4611-acf7-65f64d526fa6.png', '1', '', '2016-06-22 20:38:36', '2017-02-26 12:15:17', '', '', '0');
INSERT INTO `galleries_images` VALUES ('21', '2', '', '', 'Mook', 'Mook', '1ee4ab9c-62b7-402e-b658-e3ccb89d0f3c.png', '1', '', '2016-06-22 20:38:44', '2017-02-26 12:15:51', '', '', '0');
INSERT INTO `galleries_images` VALUES ('22', '2', '', '', 'New', 'New', '1ccc619b-4ab5-48ab-af15-9e6277446442.png', '1', '', '2016-06-22 20:38:50', '2017-02-26 13:52:17', '', '', '0');
INSERT INTO `galleries_images` VALUES ('23', '2', '', '', 'Nino', 'Nino', '1dc1d73d-a981-4223-8e96-fa92dd345e47.png', '1', '', '2016-06-22 20:38:57', '2017-02-26 13:53:25', '', '', '0');
INSERT INTO `galleries_images` VALUES ('24', '2', '', '', 'Oil', 'Oil', '35453cc0-bbd1-4465-a91a-59549ea2089b.png', '1', '', '2016-06-22 20:39:04', '2017-02-26 13:53:45', '', '', '0');
INSERT INTO `galleries_images` VALUES ('25', '2', '', '', 'Pim', 'Pim', '2524c9a7-219e-4db5-84fc-2feb4974aa69.png', '1', '', '2016-06-22 20:39:12', '2017-02-26 13:58:06', '', '', '0');
INSERT INTO `galleries_images` VALUES ('26', '2', '', '', 'Poom & EVE', 'Poom & EVE', 'fa9920a6-f5b2-4d1a-baf1-97ad9cb5fa0b.png', '1', '', '2016-06-22 20:39:20', '2017-02-26 13:58:43', '', '', '0');
INSERT INTO `galleries_images` VALUES ('27', '2', '', '', 'Pop', 'Pop', '3555c0a3-620f-4364-bec1-b55dd64de3ad.png', '1', '', '2016-06-22 20:40:20', '2017-02-26 13:59:33', '', '', '0');
INSERT INTO `galleries_images` VALUES ('28', '2', '', '', 'Pup', 'Pup', '72f435c0-b45c-4ea0-bead-0112923b8b90.png', '1', '', '2016-06-22 20:40:26', '2017-02-26 14:04:05', '', '', '0');
INSERT INTO `galleries_images` VALUES ('29', '2', '', '', 'Shinya', 'Shinya', '768a9d2a-c3f8-467c-9e82-ea24252f42e0.png', '1', '', '2016-06-22 20:40:35', '2017-02-26 14:04:39', '', '', '0');
INSERT INTO `galleries_images` VALUES ('30', '2', '', '', 'Ton', 'Ton', 'db798a08-2877-477e-a9a4-4f81fde86e67.png', '1', '', '2016-06-22 20:40:44', '2017-02-26 15:13:33', '', '', '0');
INSERT INTO `galleries_images` VALUES ('31', '2', '', '', 'Turk', 'Turk', '8d03eaf1-e978-4e47-b0a3-e65d34e49494.png', '1', '', '2016-06-22 20:40:52', '2017-02-26 15:14:02', '', '', '0');
INSERT INTO `galleries_images` VALUES ('32', '2', '', '', 'Win', 'Win', 'd37db1ee-872d-48ff-b129-f99fece81ef4.png', '1', '', '2016-06-22 20:40:59', '2017-02-26 15:14:22', '', '', '0');
INSERT INTO `galleries_images` VALUES ('38', '4', 'นักเรียนชั้นม. 4 จาก รร.รัฐบาล ไม่เคยคิดเลยแม้แต่วินาทีเดียวว่าจะเป็นเด็กจุฬาได้\r\n SPC เป็นความพลิกผันและเป็นการเปิดโอกาสอย่างยิ่งใหญ่ให้แก่ความสำเร็จของลูกสาวกระผม', 'นักเรียนชั้นม. 4 จาก รร.รัฐบาล ไม่เคยคิดเลยแม้แต่วินาทีเดียวว่าจะเป็นเด็กจุฬาได้\r\n SPC เป็นความพลิกผันและเป็นการเปิดโอกาสอย่างยิ่งใหญ่ให้แก่ความสำเร็จของลูกสาวกระผม', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/BOM%20Comment%201.jpg?1468088009580\" alt=\"\" width=\"415\" height=\"500\" /></p>', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/BOM%20Comment%201.jpg?1468082944278\" alt=\"\" width=\"415\" height=\"500\" /></p>', '1b17fa0a-0ccb-414b-a97d-4b74a5040f79.png', '1', '', '2016-07-09 23:49:20', '2017-02-26 15:45:24', '', '', '0');
INSERT INTO `galleries_images` VALUES ('39', '4', 'ความสำเร็จที่ไม่คาดว่าจะมาเร็วขนาดนี้ หนูดีใจมากๆที่ได้มาเป็นส่วนหนึ่งของ SPC', 'ความสำเร็จที่ไม่คาดว่าจะมาเร็วขนาดนี้ หนูดีใจมากๆที่ได้มาเป็นส่วนหนึ่งของ SPC', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/Mook%20Comment(2).jpg?1468088114971\" alt=\"\" width=\"339\" height=\"500\" /></p>', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/Mook%20Comment(2).jpg?1468086147762\" alt=\"\" width=\"339\" height=\"500\" /></p>', 'b53a1285-68da-4963-a9fe-41d27dcbc28c.png', '1', '', '2016-07-10 00:42:31', '2017-02-26 15:47:05', '', '', '0');
INSERT INTO `galleries_images` VALUES ('40', '4', 'เด็กเกรียนอย่างผมก็เข้า วิศวะ จุฬา ฯได้ ถ้าไม่มี อ.Grade Platinum เหล่านี้  ผมคงยังเป็น \"ทีม ม.ปลาย\" อยู่แน่ๆ', 'เด็กเกรียนอย่างผมก็เข้า วิศวะ จุฬา ฯได้ ถ้าไม่มี อ.Grade Platinum เหล่านี้  ผมคงยังเป็น \"ทีม ม.ปลาย\" อยู่แน่ๆ', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/-TEAM%20Comment.jpg?1468106545186\" alt=\"\" width=\"377\" height=\"500\" /></p>\r\n<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/MOM%20Comment(3).jpg?1468106489162\" alt=\"MOM Comment(3)\" width=\"374\" height=\"575\" /></p>', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/-TEAM%20Comment.jpg?1468086247144\" alt=\"\" width=\"377\" height=\"500\" /></p>', '3e51b55a-16b2-457f-a796-6f62d899d32b.png', '1', '', '2016-07-10 00:44:11', '2017-02-26 15:47:48', '', '', '0');
INSERT INTO `galleries_images` VALUES ('41', '4', 'Top IGCSE (Development Studies) score in THAILAND Congratulations!!!!!', 'Top IGCSE (Development Studies) score in THAILAND Congratulations!!!!!', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/View%20Comment.jpg?1468086291146\" alt=\"\" width=\"380\" height=\"500\" /></p>', '', '327d959e-63cb-403d-a2ea-fc7edf0f87dc.png', '1', '', '2016-07-10 00:44:53', '2017-02-26 15:48:41', '', '', '0');
INSERT INTO `galleries_images` VALUES ('42', '4', 'Congratulations หนูไม่เพียงแต่สอบติด EBA จุฬาฯ  หนูได้รับทุนการศึกษาอีกด้วย', 'Congratulations หนูไม่เพียงแต่สอบติด EBA จุฬาฯ  หนูได้รับทุนการศึกษาอีกด้วย', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/PRIM%20comment%202(1).jpg?1468106642402\" alt=\"PRIM comment 2(1)\" /></p>', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/PRIM%20comment%202(1).jpg?1468086332057\" alt=\"\" width=\"450\" height=\"490\" /></p>', '1c7f09ab-e5ab-41a5-9de4-f2d05aa9d49a.png', '1', '', '2016-07-10 00:45:35', '2017-02-26 15:49:30', '', '', '0');
INSERT INTO `galleries_images` VALUES ('43', '3', '  คุณปิ่นศรี ลิยะมาพรสกุล ประธานเจ้าหน้าที่ฝ่ายการเงิน บริษัทปัญจพล เปเปอร์ อินดัสตรี จำกัด โทร. 02 231 1100 ต่อ 200 นายพิชเญศ ลิยะมาพรสกุล วิศวะฯ Inter จุฬาiconดิฉันคงเป็นเหมือนแม่ทั่วไปที่อยากหาสิ่งที่ดีที่สุดให้ลูก  ไม่ว่าจะเป็นพื้นฐานชีวิต  ปัจจัยสี่  สิ่งแวดล้อม  การเรียนหนังสือ', '  คุณปิ่นศรี ลิยะมาพรสกุล ประธานเจ้าหน้าที่ฝ่ายการเงิน บริษัทปัญจพล เปเปอร์ อินดัสตรี จำกัด โทร. 02 231 1100 ต่อ 200 นายพิชเญศ ลิยะมาพรสกุล วิศวะฯ Inter จุฬาiconดิฉันคงเป็นเหมือนแม่ทั่วไปที่อยากหาสิ่งที่ดีที่สุดให้ลูก  ไม่ว่าจะเป็นพื้นฐานชีวิต  ปัจจัยสี่  สิ่งแวดล้อม  การเรียนหนังสือ', '<p>คุณปิ่นศรี ลิยะมาพรสกุล ประธานเจ้าหน้าที่ฝ่ายการเงิน บริษัทปัญจพล เปเปอร์ อินดัสตรี จำกัด โทร. 02 231 1100 ต่อ 200 นายพิชเญศ ลิยะมาพรสกุล วิศวะฯ Inter จุฬา article<br />หรือแม้แต่การคบเพื่อนก็ตาม แต่บางครั้งถึงแม้ว่าเราเป็นแม่เราก็ไม่สามารถก้าวล่วงได้ทั้งหมดเพราะเมื่อลูกเติบใหญ่ขึ้น เขาจะมีความคิดส่วนตัว มีโลกของตัวเอง ซึ่งเราคงทำได้เท่าที่เราทำ ดิฉันมีลูก 3 คน เอิง โอม อาร์ม สำหรับเอิง ปีนี้จะจบจากธรรมศาสตร์ คณะวารสารศาสตร์ โอมปีนี้ต้องเข้ามหาวิทยาลัย ซึ่งเป็นภาระหนักมากภาระหนึ่งในชีวิต ดิฉันก็มีความใฝ่ฝันและความหวังที่จะให้โอมเข้ามหาวิทยาลัยที่ดีเพื่อเป็นพื้นฐานการดำรงชีวิตในอนาคต ดิฉันยอมรับว่าการที่โอมเรียน International Program ทำให้ดิฉันต้องขวนขวายข้อมูลมากกว่าปกติเมื่อเทียบกับเอิงที่เข้ามหาวิทยาลัยปกติ เนื่องจาก International Program เป็นการยื่นคะแนนและสอบตรงกับแต่ละมหาวิทยาลัย ซึ่งแต่ละมหาวิทยาลัยก็สามารถปรับเปลี่ยนเงื่อนไขการรับนักศึกษาได้ตลอดเวลา และค่อนข้างใหม่สำหรับประเทศไทย</p>\r\n<p>ดิฉันได้รู้จัก อาจารย์ วิบูลย์ ที่ Study Plus Center โดยน้องโอมเป็นคนพาไป เพราะอยู่ใกล้โรงเรียน สะดวกดี จากการพูดคุยก็รู้สึกว่าคุณครูให้ความเอาใจใส่นักเรียนทุกคน คอยติดตามและส่งข่าวไม่ว่าจะเป็นความคืบหน้าการเรียนของลูกหรือแนวทางการรับนักศึกษาของมหาวิทยาลัย ตลอดจนให้กำลังใจ ความเชื่อ และ มั่นใจศักยภาพของลูก ดิฉันเห็นว่าการเป็นสถาบันการสอนในลักษณะการติวเพื่อการสอบเข้า หรือการเรียนต่อ สิ่งที่มีความสำคัญ คือ การรู้จักลูกศิษย์ เพื่อจะสามารถให้คำแนะนำที่เป็นไปได้ตามศักยภาพของลูกศิษย์แต่ละคน สำหรับการเลือกอาจารย์ที่่่่่่นำมาสอนนั้น ดิฉันคิดว่ามีส่วนสำคัญเช่นกันซึ่งขึ้นกับมุมมองของแต่ละสถาบันซึ่งก็หาได้จากที่นี่</p>\r\n<p>ท้ายนี้ดิฉันรูสึกดีใจที่ให้ลูกเรียนพิเศษที่นี่ และขอเป็นกำลังใจให้อาจารย์วิบูลย์และทีมงานประสบความสำเร็จในการดำเนินงานตามที่ตั้งใจไว้ค่ะ</p>', '<p>คุณปิ่นศรี ลิยะมาพรสกุล ประธานเจ้าหน้าที่ฝ่ายการเงิน บริษัทปัญจพล เปเปอร์ อินดัสตรี จำกัด โทร. 02 231 1100 ต่อ 200 นายพิชเญศ ลิยะมาพรสกุล วิศวะฯ Inter จุฬา article<br />หรือแม้แต่การคบเพื่อนก็ตาม แต่บางครั้งถึงแม้ว่าเราเป็นแม่เราก็ไม่สามารถก้าวล่วงได้ทั้งหมดเพราะเมื่อลูกเติบใหญ่ขึ้น เขาจะมีความคิดส่วนตัว มีโลกของตัวเอง ซึ่งเราคงทำได้เท่าที่เราทำ ดิฉันมีลูก 3 คน เอิง โอม อาร์ม สำหรับเอิง ปีนี้จะจบจากธรรมศาสตร์ คณะวารสารศาสตร์ โอมปีนี้ต้องเข้ามหาวิทยาลัย ซึ่งเป็นภาระหนักมากภาระหนึ่งในชีวิต ดิฉันก็มีความใฝ่ฝันและความหวังที่จะให้โอมเข้ามหาวิทยาลัยที่ดีเพื่อเป็นพื้นฐานการดำรงชีวิตในอนาคต ดิฉันยอมรับว่าการที่โอมเรียน International Program ทำให้ดิฉันต้องขวนขวายข้อมูลมากกว่าปกติเมื่อเทียบกับเอิงที่เข้ามหาวิทยาลัยปกติ เนื่องจาก International Program เป็นการยื่นคะแนนและสอบตรงกับแต่ละมหาวิทยาลัย ซึ่งแต่ละมหาวิทยาลัยก็สามารถปรับเปลี่ยนเงื่อนไขการรับนักศึกษาได้ตลอดเวลา และค่อนข้างใหม่สำหรับประเทศไทย</p>\r\n<p>ดิฉันได้รู้จัก อาจารย์ วิบูลย์ ที่ Study Plus Center โดยน้องโอมเป็นคนพาไป เพราะอยู่ใกล้โรงเรียน สะดวกดี จากการพูดคุยก็รู้สึกว่าคุณครูให้ความเอาใจใส่นักเรียนทุกคน คอยติดตามและส่งข่าวไม่ว่าจะเป็นความคืบหน้าการเรียนของลูกหรือแนวทางการรับนักศึกษาของมหาวิทยาลัย ตลอดจนให้กำลังใจ ความเชื่อ และ มั่นใจศักยภาพของลูก ดิฉันเห็นว่าการเป็นสถาบันการสอนในลักษณะการติวเพื่อการสอบเข้า หรือการเรียนต่อ สิ่งที่มีความสำคัญ คือ การรู้จักลูกศิษย์ เพื่อจะสามารถให้คำแนะนำที่เป็นไปได้ตามศักยภาพของลูกศิษย์แต่ละคน สำหรับการเลือกอาจารย์ที่่่่่่นำมาสอนนั้น ดิฉันคิดว่ามีส่วนสำคัญเช่นกันซึ่งขึ้นกับมุมมองของแต่ละสถาบันซึ่งก็หาได้จากที่นี่</p>\r\n<p>ท้ายนี้ดิฉันรูสึกดีใจที่ให้ลูกเรียนพิเศษที่นี่ และขอเป็นกำลังใจให้อาจารย์วิบูลย์และทีมงานประสบความสำเร็จในการดำเนินงานตามที่ตั้งใจไว้ค่ะ</p>', '41c0cd73-41f2-4823-a404-0f0834fbd746.png', '1', '', '2016-07-10 06:29:36', '2017-02-26 15:17:18', '', '', '0');
INSERT INTO `galleries_images` VALUES ('45', '3', '', 'คุณถวัลย์ สังข์เพ็ขร ศิษยาภิบาลโบสถ์ Bible Church Thailand รัชโยธิน โทร. 083 420 9084 น.ส.ศิโยน สังข์เพ็ขร BSAC จุฬาฯ\r\nไม่เคยหวังไว้ว่าลูกจะเข้าจุฬาฯได้  และไม่รู้ว่าจะเข้าได้อย่างไร  ขอบคุณพระเจ้าที่ให้เรามาพบ Study Plus Center ที่เปรียบเสมือนเครื่องมือ  แหล่งความรู้  และเป็นพลังในการขับเคลื่อนสู่ฝันที่วาดไว้', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/P1000340(1).jpg?1468110064502\" alt=\"P1000340(1)\" /></p>\r\n<p>คุณถวัลย์ สังข์เพ็ขร ศิษยาภิบาลโบสถ์ Bible Church Thailand รัชโยธิน โทร. 083 420 9084 น.ส.ศิโยน สังข์เพ็ขร BSAC จุฬาฯ<br /> <br />ดีใจและนับว่าเป็นพระพรและของขวัญสำหรับแอนนาและครอบครัวอย่างมากในปี 2010 กับการที่แอนนาสามารถเดินทางไปหยิบฝันที่วางไว้ด้วยการสามารถเข้าเป็นนิสิตจุฬาฯปีนี้ คณะวิทยาศาสตร์ เคมีประยุกต์ หลักสูตรนานาชาติ</p>\r\n<p>จำได้ว่าเมื่อ 2-3 ปีที่ผ่านมาพวกเราไม่กล้าที่จะตั้งความฝันนี้เพราะไม่รู้ว่าจะเข้าเรียนที่จุฬาฯได้อย่างไร จนกระทั่งมาพบ Study Plus Center รับการท้าทาย และหนุนใจเพื่อไปสู่ฝันนี้</p>\r\n<p>จากที่แอนนาเรียน เกรด 10 เทอมหนึ่ง ถูกท้าทายให้ออกมาเรียน GED/ SAT เพื่อสอบเข้าจุฬาฯ</p>\r\n<p>จากความกลัว - ความลังเล กลายเป็นความมุ่งมั่น กล้า และทุ่มเทตามที่ Study Plus Center จัดตารางเรียนให้จนกระทั่งได้เข้าเรียนที่จุฬาลงกรณ์มหาวิทยาลัย</p>\r\n<p>ขอขบคุณ Study Plus Center ที่เปรีียบเสมือนเครื่องมือ แหล่งความรู้ พลังในการให้แอนนาได้ขับเคลื่อนจนถึงฝั่ง หยิบฝันที่วาดไว้และจะสู้ต่อไป</p>', '', 'efb507fc-7360-4388-8ecc-9a9a553197ce.png', '1', '', '2016-07-10 07:21:30', '2017-02-26 15:20:26', '', '', '0');
INSERT INTO `galleries_images` VALUES ('46', '3', 'ด.ญ.ภรมน ฉิมตะวัน นิสิตใหม่ คณะ BSAC จุฬาฯ\r\nหนูโชคดีที่ได้เจออาจารย์หยก หนูถึงได้มีวันนี้  อะไรที่มันดูยากอาจารย์ก็ทำให้หนูมีกำลังใจสู้และรู้สึกว่ามันง่าย  และหนูก็สามารถทำได้สำเร็จด้วยความภาคภูมิใจ ขอบคุณอาจารญ์ขั้นเทพทุกคนค่ะ', 'ด.ญ.ภรมน ฉิมตะวัน นิสิตใหม่ คณะ BSAC จุฬาฯ\r\nหนูโชคดีที่ได้เจออาจารย์หยก หนูถึงได้มีวันนี้  อะไรที่มันดูยากอาจารย์ก็ทำให้หนูมีกำลังใจสู้และรู้สึกว่ามันง่าย  และหนูก็สามารถทำได้สำเร็จด้วยความภาคภูมิใจ ขอบคุณอาจารญ์ขั้นเทพทุกคนค่ะ', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/Poramon%20Chimtawan(1).jpg?1468110216908\" alt=\"\" width=\"353\" height=\"500\" /></p>', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/Poramon%20Chimtawan(1).jpg?1468110161253\" alt=\"\" width=\"353\" height=\"500\" /></p>', '2f9ab92c-a1bb-4530-889f-c8871683fe23.png', '1', '', '2016-07-10 07:22:45', '2017-02-26 15:22:32', '', '', '0');
INSERT INTO `galleries_images` VALUES ('47', '3', 'ภูริภัทร ภัทรปกรณ์ นิสิตคณะเศณษฐศาสตร์ หลักสูตรนานาชาติ จุฬาลงกรณ์มหาวิทยาลัย\r\nขอบคุณจากใจจริงต่อทุกๆคนที่มีส่วนร่วมกวดขันให้ผมสามารถผ่านการคัดเลือกเข้าจุฬาฯได้  ชีวิตในรั้วจามจุรีเป็นอย่างที่ฝันจริงๆ', 'ภูริภัทร ภัทรปกรณ์ นิสิตคณะเศณษฐศาสตร์ หลักสูตรนานาชาติ จุฬาลงกรณ์มหาวิทยาลัย\r\nขอบคุณจากใจจริงต่อทุกๆคนที่มีส่วนร่วมกวดขันให้ผมสามารถผ่านการคัดเลือกเข้าจุฬาฯได้  ชีวิตในรั้วจามจุรีเป็นอย่างที่ฝันจริงๆ', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/Turk%20Comment.jpg?1468110298876\" alt=\"\" width=\"430\" height=\"500\" /></p>', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/Turk%20Comment.jpg?1468110311100\" alt=\"\" width=\"430\" height=\"500\" /></p>', '112443a0-389b-4455-b12c-fe9533148746.png', '1', '', '2016-07-10 07:25:15', '2017-02-26 15:38:06', '', '', '0');
INSERT INTO `galleries_images` VALUES ('48', '3', ' พิมประภา ตั้งประภาพร สถาปัตย์ จุฬาฯ\r\nขอบคุณลุงหยกและอาจารย์ทุกคนที่ Study Plus นะคะ  ที่นี่เหมือนเป็นครอบครัวอีกครอบครัวของพิมเลย  รู้สึกประทับใจมากค่ะ', ' พิมประภา ตั้งประภาพร สถาปัตย์ จุฬาฯ\r\nขอบคุณลุงหยกและอาจารย์ทุกคนที่ Study Plus นะคะ  ที่นี่เหมือนเป็นครอบครัวอีกครอบครัวของพิมเลย  รู้สึกประทับใจมากค่ะ', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/PIM_KAMICAZE(1).jpg?1468110399468\" alt=\"\" width=\"370\" height=\"500\" /></p>', '', '46bb8878-a093-418e-a146-bd4f0ce34625.png', '1', '', '2016-07-10 07:26:54', '2017-02-26 15:39:31', '', '', '0');
INSERT INTO `galleries_images` VALUES ('49', '3', 'น.ส.สมิขฌา กาญจนวัฒนา นิสิต คณะวิทยาศาสตร์ประยุกต์ (BSAC) จุฬาฯ\r\nเรียนแล้วสนุก  คุณครูทุกคนท่านเป็นกันเอง  พยายามอธิบายจนให้เราเข้าใจ  ได้เข้าจุฬาฯอย่างที่ฝันไว้ค่ะ', 'น.ส.สมิขฌา กาญจนวัฒนา นิสิต คณะวิทยาศาสตร์ประยุกต์ (BSAC) จุฬาฯ\r\nเรียนแล้วสนุก  คุณครูทุกคนท่านเป็นกันเอง  พยายามอธิบายจนให้เราเข้าใจ  ได้เข้าจุฬาฯอย่างที่ฝันไว้ค่ะ', '<p>น.ส.สมิขฌา กาญจนวัฒนา นิสิต คณะวิทยาศาสตร์ประยุกต์ (BSAC) จุฬาฯ<br />ก็คงเหมือนพ่อ-แม่ทุกคนแหละครับในการมีส่วนสนับสนุนและส่งเสริมลูกให้ได้ทำในสิ่งที่ต้องการ Study Plus เป็นทางเลือกหนึ่งที่ลูกเองต้องการ เพื่อเป็นช่องทางเข้าศึกษาต่อ Inter ที่จุฬาฯ ซึ่งลูกเองก็ทำได้ ผมจึงขอขอบคุณ อจ. วิบูลย์และทีมงาน Study Plus Center เป็นอย่างสูง และอยากฝากบอกต่อให้กับผู้ปกครองท่านอื่นๆพิจารณา Study Plus Center เป็นทางเลือกทางการศึกษาอีกทางหนึ่งให้กับลูกๆของท่านต่อไปนะครับ</p>\r\n<p>วีระชัย กาญจนวัฒนา (เม่ง)</p>\r\n<p>081 806 3765</p>\r\n<p> </p>\r\n<p>หนูเรียนอยู่ที่โรงเรียนนวมินทราชินูทิศ เตรียมอุดมศึกษาน้อมเกล้า ชั้นมัธยมศึกษาปีที่ 5 เรียนกับทางสถาบัน Study Plus Center มาเป็นเวลาเกือบปีได้ เรียน GED SAT ฯลฯ</p>\r\n<p>ตอนแรกที่มาเรียนก็ไม่ได้ตั้งใจที่จะมาทางนี้อย่างจริงจัง แต่พอมาเรียนที่นี่ไปนานๆก็ทำให้รู้สึกมีความมุ่งมั่นที่จะเข้าจุฬาฯ เรียนแล้วสนุก คุณครูทุกท่านเป็นกันเอง พยายามอธิบายจนให้เราเข้าใจ ที่สำคัญได้เพื่อนๆใหม่ๆเยอะมาก ทำให้เรามีสังคมเพิ่มอีกสังคมหนึ่ง</p>\r\n<p>สุดท้าย ขอขอบคุณ A. Wiboon และทางสถาบัน Study Plus Center เป็นอย่างมากเลยค่ะที่ทำให้หนูประสบความสำเร็จ ได้เข้าจุฬาฯอย่างที่ฝันไว้ค่ะ ที่สำคัญต้องขอบคุณครอบครัวที่เป็นแรงผลักดันและเป็นกำลังใจที่ดี</p>\r\n<p>อยากเชิญชวนเพื่อนๆ พี่ๆ น้องๆ ทุกคนมาเรียนที่ Study Plus Center นะค่ะ ขอบอกว่าดีจริงๆค่ะ ประสบความสำเร็จแน่นอนค่ะ</p>\r\n<p>สมิชฌา กาญจนวัฒนา (เจน)</p>', '<p>น.ส.สมิขฌา กาญจนวัฒนา นิสิต คณะวิทยาศาสตร์ประยุกต์ (BSAC) จุฬาฯ<br />ก็คงเหมือนพ่อ-แม่ทุกคนแหละครับในการมีส่วนสนับสนุนและส่งเสริมลูกให้ได้ทำในสิ่งที่ต้องการ Study Plus เป็นทางเลือกหนึ่งที่ลูกเองต้องการ เพื่อเป็นช่องทางเข้าศึกษาต่อ Inter ที่จุฬาฯ ซึ่งลูกเองก็ทำได้ ผมจึงขอขอบคุณ อจ. วิบูลย์และทีมงาน Study Plus Center เป็นอย่างสูง และอยากฝากบอกต่อให้กับผู้ปกครองท่านอื่นๆพิจารณา Study Plus Center เป็นทางเลือกทางการศึกษาอีกทางหนึ่งให้กับลูกๆของท่านต่อไปนะครับ</p>\r\n<p>วีระชัย กาญจนวัฒนา (เม่ง)</p>\r\n<p>081 806 3765</p>\r\n<p> </p>\r\n<p>หนูเรียนอยู่ที่โรงเรียนนวมินทราชินูทิศ เตรียมอุดมศึกษาน้อมเกล้า ชั้นมัธยมศึกษาปีที่ 5 เรียนกับทางสถาบัน Study Plus Center มาเป็นเวลาเกือบปีได้ เรียน GED SAT ฯลฯ</p>\r\n<p>ตอนแรกที่มาเรียนก็ไม่ได้ตั้งใจที่จะมาทางนี้อย่างจริงจัง แต่พอมาเรียนที่นี่ไปนานๆก็ทำให้รู้สึกมีความมุ่งมั่นที่จะเข้าจุฬาฯ เรียนแล้วสนุก คุณครูทุกท่านเป็นกันเอง พยายามอธิบายจนให้เราเข้าใจ ที่สำคัญได้เพื่อนๆใหม่ๆเยอะมาก ทำให้เรามีสังคมเพิ่มอีกสังคมหนึ่ง</p>\r\n<p>สุดท้าย ขอขอบคุณ A. Wiboon และทางสถาบัน Study Plus Center เป็นอย่างมากเลยค่ะที่ทำให้หนูประสบความสำเร็จ ได้เข้าจุฬาฯอย่างที่ฝันไว้ค่ะ ที่สำคัญต้องขอบคุณครอบครัวที่เป็นแรงผลักดันและเป็นกำลังใจที่ดี</p>\r\n<p>อยากเชิญชวนเพื่อนๆ พี่ๆ น้องๆ ทุกคนมาเรียนที่ Study Plus Center นะค่ะ ขอบอกว่าดีจริงๆค่ะ ประสบความสำเร็จแน่นอนค่ะ</p>\r\n<p>สมิชฌา กาญจนวัฒนา (เจน)</p>', 'aec26d86-4e7e-41ff-8c25-b8b7a85cbf96.png', '1', '', '2016-07-10 07:29:52', '2017-02-26 15:42:12', '', '', '0');
INSERT INTO `galleries_images` VALUES ('50', '3', 'Chayanis Pornkeratiwat: I\'m studying Medicine in China.I had a really great time here...', 'Chayanis Pornkeratiwat: I\'m studying Medicine in China. I had a really great time here...', '<p>I studies  IELTS, Calulus, Organic Chemistry, and Biochemistry in Study Plus Center. In here, I got lots of things, knowledges, and friends. Now I\'m studying Medicine in China and I have to study calculus in the first term. When I had some problems with my homework, the note book  from Study Plus Center helps me a lot. So I would like to thank you Study Plus Center to give me a lot of good things and good experiences and also for my knowledge. It was very good and I had a really great time here, thank you again.</p>', '<p>I studies&nbsp; IELTS, Calulus, Organic Chemistry, and Biochemistry in Study Plus Center. In here, I got lots of things, knowledges, and friends. Now I\'m studying Medicine in China and I have to study calculus in the first term. When I had some problems with my homework, the note book &nbsp;from Study Plus Center helps me a lot. So I would like to thank you Study Plus Center to give me a lot of good things and good experiences and also for my knowledge. It was very good and I had a really great time here, thank you again.</p>', '0a862ab4-6029-4ee3-a100-7d5a466c51f0.png', '1', '', '2016-07-10 07:32:23', '2017-02-26 15:42:55', '', '', '0');
INSERT INTO `galleries_images` VALUES ('52', '5', '', '', '<p><br data-mce-bogus=\"1\"></p>', '<p><br data-mce-bogus=\"1\"></p>', '899bdbfd-df48-4da2-81cc-54ce634222e7.jpeg', '6', '', '2017-01-21 00:54:57', '2017-02-26 15:53:00', '', '', '0');
INSERT INTO `galleries_images` VALUES ('53', '5', '', '', '', '', 'e85430d0-3271-46b6-8ee0-0b062fd8c015.jpeg', '2', '', '2017-01-21 00:56:57', '2017-02-26 15:51:51', '', '', '0');
INSERT INTO `galleries_images` VALUES ('54', '5', '', '', '', '', 'c82b76de-aa42-4628-bfe8-f7b852f1cc58.jpeg', '3', '', '2017-01-21 00:57:17', '2017-02-26 15:52:09', '', '', '0');
INSERT INTO `galleries_images` VALUES ('55', '5', '', '', '', '', '7c95b688-ae13-49e1-bd4f-0c342541baa7.jpeg', '4', '', '2017-01-21 00:57:39', '2017-02-26 15:52:28', '', '', '0');
INSERT INTO `galleries_images` VALUES ('56', '5', '', '', '', '', '2d092dde-0e18-4caf-bea1-471b6043063e.jpeg', '5', '', '2017-01-21 00:57:53', '2017-02-26 15:52:44', '', '', '0');
INSERT INTO `galleries_images` VALUES ('57', '5', '', '', '', '', 'ca534a5d-cc58-4a4c-957b-f69636a4b9da.jpeg', '1', '', '2017-01-21 00:58:17', '2017-02-26 15:51:30', '', '', '0');
INSERT INTO `galleries_images` VALUES ('59', '0', '', '', null, null, '26282335-9951-4f19-8f36-5fae651c09f1.jpg', null, '\0', '2017-02-27 09:58:43', null, '26282335-9951-4f19-8f36-5fae651c09f1', 'too-cute-doggone-it-video-playlist.jpg', '70');
INSERT INTO `galleries_images` VALUES ('60', '0', '', '', null, null, '9825fb76-5436-44e3-836c-2055120155ab.jpg', null, '\0', '2017-02-27 09:58:47', null, '9825fb76-5436-44e3-836c-2055120155ab', 'watchan41.jpg', '185');
INSERT INTO `galleries_images` VALUES ('61', '0', '', '', null, null, 'f32f472d-03b5-482a-8175-9b091af3196a.jpg', null, '\0', '2017-08-06 23:29:17', null, 'f32f472d-03b5-482a-8175-9b091af3196a', 'river_trees_fog_reflection_100440_1920x1080.jpg', '778');

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of members
-- ----------------------------
INSERT INTO `members` VALUES ('1', 'berm', 'bsongkran@hotmail.com', '8787778', 'test title ', '2016-05-13 12:42:04', null, '\0');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_th` varchar(1000) NOT NULL,
  `title_en` varchar(2000) DEFAULT NULL,
  `title_th` varchar(2000) DEFAULT NULL,
  `body_th` text,
  `body_en` text,
  `published_date` datetime NOT NULL,
  `published` bit(1) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `order_seq` tinyint(3) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `name_en` varchar(1000) NOT NULL,
  `is_show_on_home_page` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('20', 'ประชาสัมพันธ์', 'ข่าวของฉันข่าวของฉันข่าวของฉันข่าวของฉันข่าวของฉันข่าวของฉันข่าวของฉัน', '', '<h3 class=\"title\">&nbsp;</h3>\r\n<div align=\"center\">&nbsp;</div>', '', '2016-06-15 00:00:00', '', '214e7596-d7fb-438b-a95d-336269fd6b8d.jpg', '1', '2016-06-05 18:32:11', '2016-08-15 18:56:49', '1', '', '\0');
INSERT INTO `news` VALUES ('21', 'Promotion', 'Liverpool International Language Academy (LILA) ก่อตั้งขึ้นเมื่อปี 2004 โดยการรวมกลุ่มของอาจารย์ที่มีประสบการณ์ด้านการสอนภาษาอังกฤษที่ต้องการให้เป็นโรงเรียนสอนภาษาอังกฤษที่ดีที่สุดในเมืองลิเวอร์พูล โดยโรงเรียนตั้งอยู่ใจกลางเมืองลิเวอร์พูล ย่านถนน Anson และอยู่ใกล้กับมหาวิทยาลัยชื่อดังอย่าง University of Liverpool และสถานีรถไฟหลักซึ่งจะทำให้สะดวกต่อการเดินทางเป็นอย่างมาก และสามารถเดินทางไปยังลอนดอนโดยใช้เวลาเพียง 2ชั่วโมงกว่าๆ เท่านั้นด้วยรถไฟ LILA จะเป็นโรงเรียนขนาดเล็กแต่ก็เต็มเปี่ยมไปด้วยคุณภาพที่จะเห็นได้จากการได้รับการรับรองจากหน่วยงานต่างๆ เช่น British Council, English UK และเป็นหนึ่งในสมาชิกของกลุ่ม Quality English (QE) ซึ่งเป็นเครื่องการันตีได้อย่างแน่นอน', '', '<p> </p>\r\n<p> </p>', '<p><strong>Liverpool International Language Academy (LILA)</strong> ก่อตั้งขึ้นเมื่อปี 2004 โดยการรวมกลุ่มของอาจารย์ที่มีประสบการณ์ด้านการสอนภาษาอังกฤษที่ต้องการให้เป็นโรงเรียนสอนภาษาอังกฤษที่ดีที่สุดในเมืองลิเวอร์พูล โดยโรงเรียนตั้งอยู่ใจกลางเมืองลิเวอร์พูล ย่านถนน Anson และอยู่ใกล้กับมหาวิทยาลัยชื่อดังอย่าง University of Liverpool และสถานีรถไฟหลักซึ่งจะทำให้สะดวกต่อการเดินทางเป็นอย่างมาก และสามารถเดินทางไปยังลอนดอนโดยใช้เวลาเพียง 2ชั่วโมงกว่าๆ เท่านั้นด้วยรถไฟ LILA จะเป็นโรงเรียนขนาดเล็กแต่ก็เต็มเปี่ยมไปด้วยคุณภาพที่จะเห็นได้จากการได้รับการรับรองจากหน่วยงานต่างๆ เช่น British Council, English UK และเป็นหนึ่งในสมาชิกของกลุ่ม Quality English (QE) ซึ่งเป็นเครื่องการันตีได้อย่างแน่นอน</p>\r\n<p><strong>Promotion</strong> ส่วนลดค่าเรียน 25% ถึงสิ้นปี 2015</p>\r\n<p>ข้อมูลเพิ่มเติม 02 xxxxxxxxx</p>', '2016-06-06 00:00:00', '', '578a7319-6b91-4ac7-a347-07b4c4f4a806.jpg', '4', '2016-06-06 14:22:24', '2017-01-17 17:13:14', '1', '', '\0');
INSERT INTO `news` VALUES ('22', 'การอบรมภาษาอังกฤษหลักสูตรการเขียนเชิงสร้างสรรค์ (Creative Writing)', 'เรื่องเด่นประจำวัน : การอบรมภาษาอังกฤษหลักสูตรการเขียนเชิงสร้างสรรค์ (Creative Writing)\r\nสถาบันการต่างประเทศเทวะวงศ์วโรปการจัดการอบรมหลักสูตรการเขียนเชิงสร้างสรรค์  Creative Writing แก่นักการทูตแรกเข้ากระทรวงฯ รุ่นที่ 2 ประจำปี 2557 โดยมีวัตถุประสงค์เพื่อต่อยอดและเพิ่มศักยภาพทักษะการเขียนหนังสือราชการภาษาอังกฤษ  พร้อมฝึกปฏิบัติจริงให้เกิดความชำนาญและสามารถปฏิบัติหน้าที่อย่างมีประสิทธิภาพมากยิ่งขึ้น มีผู้เข้าอบรมทั้งสิ้น 24 คน แบ่งเป็น 2 ชั้นเรียน อบรมทุกวันพุธ (ครึ่งวัน) ระหว่างวันที่ 11 กุมภาพันธ์  – 8 เมษายน 2558 ณ ห้องประชุม 1 กระทรวงการต่างประเทศ ', 'เรื่องเด่นประจำวัน : การอบรมภาษาอังกฤษหลักสูตรการเขียนเชิงสร้างสรรค์ (Creative Writing)\r\nสถาบันการต่างประเทศเทวะวงศ์วโรปการจัดการอบรมหลักสูตรการเขียนเชิงสร้างสรรค์  Creative Writing แก่นักการทูตแรกเข้ากระทรวงฯ รุ่นที่ 2 ประจำปี 2557 โดยมีวัตถุประสงค์เพื่อต่อยอดและเพิ่มศักยภาพทักษะการเขียนหนังสือราชการภาษาอังกฤษ  พร้อมฝึกปฏิบัติจริงให้เกิดความชำนาญและสามารถปฏิบัติหน้าที่อย่างมีประสิทธิภาพมากยิ่งขึ้น มีผู้เข้าอบรมทั้งสิ้น 24 คน แบ่งเป็น 2 ชั้นเรียน อบรมทุกวันพุธ (ครึ่งวัน) ระหว่างวันที่ 11 กุมภาพันธ์  – 8 เมษายน 2558 ณ ห้องประชุม 1 กระทรวงการต่างประเทศ  กดกดกดกด', '<h3 class=\"title\">เรื่องเด่นประจำวัน : การอบรมภาษาอังกฤษหลักสูตรการเขียนเชิงสร้างสรรค์ (Creative Writing)</h3>\r\n<div class=\"content-detail\">\r\n<p>สถาบันการต่างประเทศเทวะวงศ์วโรปการจัดการอบรมหลักสูตรการเขียนเชิงสร้างสรรค์  Creative Writing แก่นักการทูตแรกเข้ากระทรวงฯ รุ่นที่ 2 ประจำปี 2557 โดยมีวัตถุประสงค์เพื่อต่อยอดและเพิ่มศักยภาพทักษะการเขียนหนังสือราชการภาษาอังกฤษ  พร้อมฝึกปฏิบัติจริงให้เกิดความชำนาญและสามารถปฏิบัติหน้าที่อย่างมีประสิทธิภาพมากยิ่งขึ้น มีผู้เข้าอบรมทั้งสิ้น 24 คน แบ่งเป็น 2 ชั้นเรียน อบรมทุกวันพุธ (ครึ่งวัน) ระหว่างวันที่ 11 กุมภาพันธ์  – 8 เมษายน 2558 ณ ห้องประชุม 1 กระทรวงการต่างประเทศ </p>\r\n</div>', '<h3 class=\"title\">เรื่องเด่นประจำวัน : การอบรมภาษาอังกฤษหลักสูตรการเขียนเชิงสร้างสรรค์ (Creative Writing)</h3>\r\n<div class=\"content-detail\">\r\n<p>สถาบันการต่างประเทศเทวะวงศ์วโรปการจัดการอบรมหลักสูตรการเขียนเชิงสร้างสรรค์  Creative Writing แก่นักการทูตแรกเข้ากระทรวงฯ รุ่นที่ 2 ประจำปี 2557 โดยมีวัตถุประสงค์เพื่อต่อยอดและเพิ่มศักยภาพทักษะการเขียนหนังสือราชการภาษาอังกฤษ  พร้อมฝึกปฏิบัติจริงให้เกิดความชำนาญและสามารถปฏิบัติหน้าที่อย่างมีประสิทธิภาพมากยิ่งขึ้น มีผู้เข้าอบรมทั้งสิ้น 24 คน แบ่งเป็น 2 ชั้นเรียน อบรมทุกวันพุธ (ครึ่งวัน) ระหว่างวันที่ 11 กุมภาพันธ์  – 8 เมษายน 2558 ณ ห้องประชุม 1 กระทรวงการต่างประเทศ </p>\r\n</div>', '2016-06-25 00:00:00', '', 'e8839eb9-9f5e-4868-8ef7-6e371df32c18.jpg', '2', '2016-06-25 11:56:03', '2017-03-02 23:36:19', '1', '', '');
INSERT INTO `news` VALUES ('23', 'ดอกไม้', '', 'ดอกไม้สวยๆๆ', '<p><img src=\"http://modernsofttech.com/spc/assets/uploads-files/flower-631765_960_720.jpg?1466911728976\" alt=\"\" width=\"500\" height=\"293\" /></p>\r\n<p>งานดอกไม้สวยๆๆๆ</p>', '', '2016-06-26 00:00:00', '\0', 'b206988f-53bc-49a5-9706-69f6894146e6.jpg', '4', '2016-06-26 09:44:37', '2016-06-26 16:39:23', '1', '', '\0');
INSERT INTO `news` VALUES ('24', 'ห้ามพลาดกับคณะวิศวะ!!! ยุค Digital โลกกำลังต้องการ Software Engineering', '', 'โลกกำลังต้องการ Software Engineering', '<p><span style=\"font-weight: 400;\">วันนี้ SPC พานักเรียนและผู้ปกครองมารู้จัก Software Engineer  ณ.สถาบันเทคโนโลยี่เจ้าคุณทหารลาดกระบังหลักสูตรนานาชาติ และได้รับฟังการบรรยายจาก คร.นัทธพงศ์ จึงธีรพานิช รองคณะบดี และ Dr. Xavier Boegly</span></p>\r\n<p>เราได้เข้าใจถึงความสำคัญ Solfware Engineer ในยุค Digital และความก้าวหน้าในอาชืพ การเรียนการสอน ของมหาลัย และการไปต่อยอดที่มหาลัย Glasgow ประเทศสก็อตแลนด์ ตลอดจน การเรียนต่อปริญญาโทรที่ มหาวิทยาลัย Imperial ประเทศอังกฤษ และการสอบชิงทุนไปศึกษาต่ออักด้วย ว๊าววววว สุดยอดไปเลยไหมละ</p>\r\n<p>อีกไม่นานเราจะได้เห็นนักเรียนของ StudyPlusCenter เหล่านี้สำเร็จการศึกษาจากมหาวิทยาลัยนี้ และกลับมาพัฒนาระบบ ICT ของไทนเราเจริญขึ้นๆทัดเทียมต่างชาติได้อย่างแน่นอน</p>\r\n<p>==================================================================================================</p>\r\n<p><span style=\"font-weight: 400;\">สิ่งนี้เป็นนโยบายหลักของ SPC โดย อ.วิบูลย์พร้อมที่จะพานักเรียนทุกคน พร้อมทั้งผู้ปกครองไปเยี่ยมชมและสัมผัส คณะต้างๆทุกมหาวิทยาลัย เป็นประจำตลอด 10ปีตั้งแต่เปิดสถาบันเพื่อมุ่งสู่ความเป็นเลิศ </span></p>\r\n<p><span style=\"font-weight: 400;\">นักเรียนจะต้องมีความสุขกับการเรียนและการต่อยอดในสายอาชีพนั้นๆได้อย่างแม่นยำ </span></p>\r\n<p><span style=\"font-weight: 400;\">นี่คือปนิธาณอันแน่วแน่ ของ อ.วิบูลย์ ชัยนันท์ ผู้อำนวยการสถาบัน SPC.</span></p>\r\n<p style=\"text-align: center;\"><strong><span style=\"color: #008000;\">\"Your Success is Our Goal\"</span></strong></p>', '', '2017-01-18 00:00:00', '', 'e4c99695-b4a2-46bb-92b7-ecd7d9676577.png', '3', '2017-01-17 16:51:52', '2017-02-28 19:54:41', '1', '', '\0');
INSERT INTO `news` VALUES ('25', 'ห้ามพลาดกับคณะวิศวะ!!! ยุค Digital โลกกำลังต้องการ Software Engineering', '', '', '<p>SPC พานักเรียนและผู้ปกครองมารู้จัก Software Engineer &nbsp;ณ.สถาบันเทคโนโลยี่เจ้าคุณทหารลาดกระบังหลักสูตรนานาชาติ และได้รับฟังการบรรยายจาก คร.นัทธพงศ์ จึงธีรพานิช รองคณะบดี และ Dr. Xavier Boegly</p>\r\n<p>เราได้เข้าใจถึงความสำคัญ Solfware Engineer ในยุค Digital และความก้าวหน้าในอาชืพ การเรียนการสอน ของมหาลัย และการไปต่อยอดที่มหาลัย Glasgow ประเทศสก็อตแลนด์ ตลอดจน การเรียนต่อปริญญาโทรที่ มหาวิทยาลัย Imperial ประเทศอังกฤษ และการสอบชิงทุนไปศึกษาต่ออักด้วย ว๊าววววว สุดยอดไปเลยไหมละ</p>\r\n<p>อีกไม่นานเราจะได้เห็นนักเรียนของ StudyPlusCenter เหล่านี้สำเร็จการศึกษาจากมหาวิทยาลัยนี้ และกลับมาพัฒนาระบบ ICT ของไทนเราเจริญขึ้นๆทัดเทียมต่างชาติได้อย่างแน่นอน</p>\r\n<p>=================================================================================================</p>\r\n<p><span style=\"font-weight: 400;\">สิ่งนี้เป็นนโยบายหลักของ SPC โดย อ.วิบูลย์พร้อมที่จะพานักเรียนทุกคน พร้อมทั้งผู้ปกครองไปเยี่ยมชมและสัมผัส คณะต้างๆทุกมหาวิทยาลัย เป็นประจำตลอด 10ปีตั้งแต่เปิดสถาบันเพื่อมุ่งสู่ความเป็นเลิศ </span></p>\r\n<p><span style=\"font-weight: 400;\">นักเรียนจะต้องมีความสุขกับการเรียนและการต่อยอดในสายอาชีพนั้นๆได้อย่างแม่นยำ </span></p>\r\n<p><span style=\"font-weight: 400;\">นี่คือปนิธาณอันแน่วแน่ ของ อ.วิบูลย์ ชัยนันท์ ผู้อำนวยการสถาบัน SPC.</span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #008000;\"><strong>\"Your Success is Our Goal\"</strong></span></p>', '', '2017-01-18 00:00:00', '', null, null, '2017-01-17 16:54:07', '2017-01-17 16:54:07', '1', '', '\0');
INSERT INTO `news` VALUES ('26', 'กระทรวงศึกษาธิการออกมาประกาศวันที่ 15 ก.พ.2560 สอบเทียบและได้รับการเทียบวุฒิการศึกษาขั้นพื้นฐาน', 'จากที่กระทรวงศึกษาธิการออกมาประกาศวันที่ 15 ก.พ.2560 \r\nไม่มีอะไรเปลี่ยนแปลงนะครับ ยังสามารถสอบเทียบและได้รับการเทียบวุฒิการศึกษาขั้นพื้นฐานได้เหมือนเดิมเหมือนเดิม', 'จากที่กระทรวงศึกษาธิการออกมาประกาศวันที่ 15 ก.พ.2560 \r\nไม่มีอะไรเปลี่ยนแปลงนะครับ ยังสามารถสอบเทียบและได้รับการเทียบวุฒิการศึกษาขั้นพื้นฐานได้เหมือนเดิมเหมือนเดิม', '<h1 style=\"text-align: center;\"><strong><span style=\"color: #800000;\">อ้างถึงประกาศระเบียบกระทรวงศึกษาธิการว่าด้วยการปรับปรุงการเทียบวุฒิการศึกษาในประเทศและต่างประเทศระดับการศึกษาขั้นพื้นฐาน  </span></strong></h1>\r\n<h1 style=\"text-align: center;\"><strong><span style=\"color: #800000;\">ประกาศ ณ วันที่ี 15 กุมภาพันธ์ พ.ศ. 2560</span></strong></h1>\r\n<h1> </h1>\r\n<p><span style=\"font-weight: 400;\">เมื่อประกาศฉบับนี้ได้ออกมาทำให้ผู้ประครองและนักเรียนที่กำลังศึกษาอยู่ในหลักสูตรนานาชาติทั้งในและต่างประเทศที่กำลังเตรียมสอบ IGCSE  หรือ GCSE อยู่นั้นเกิดสับสนว่าจะได้รับการเทียบวุฒิการศึกษาขั้นพื้นฐาน (มัธยม 6) ได้หรือไม่  และจะสามารถศึกษาต่อในระดับอุดมศึกษา (มหาวิทยาลัย) ต่อไปได้หรือไม่   กระผม อ.วิบูลย์  ชัยนันท์  ผู้อำนวยการสถาบัน Study Plus Center (SPC) ได้รับการยืนยันจากสำนักงานคณะกรรมการการศึกษาขั้นพื้นฐาน (สพฐ) กระทรวงศึกษาธิการ  โดยจะขยายความข้อสงสัยในข้อ 4 ของประกาศกระทรวง ลงวันที่ 15 กุมภาพันธ์ พ.ศ. 2560 ดังนี้</span></p>\r\n<p> </p>\r\n<p><span style=\"color: #ff0000;\"><strong>คำถาม</strong><strong> :</strong></span> <span style=\"font-weight: 400;\">การได้รับการเทียบวุฒิการศึกษาระดับขั้นพื้นฐานของผู้สอบ IGCSE และ GED ยังได้รับการเทียบวุฒิ </span><span style=\"font-weight: 400;\">โดยศักดิ์ และสิทธิ์เหมือนเดิม หรือไม่</span></p>\r\n<p><span style=\"color: #339966;\"><strong>คำตอบ</strong><strong> :</strong></span> <span style=\"font-weight: 400;\">ยังได้รับการเทียบวุฒิการศึกษาระดับขั้นพื้นฐาน (มัธยม 6)  และสามารถเข้าศึกษาต่อในระดับ</span></p>\r\n<p><span style=\"font-weight: 400;\">อุดมศึกษา (มหาวิทยาลัย) ได้เหมือนเดิมโดยให้สถาบันอุดมศึกษา (มหาวิทยาลัย ) แต่ละแห่ง</span><span style=\"font-weight: 400;\"> กำหนดหลักเกณฑ์  เงื่อนไขและคุณสมบัติของผู้ที่จะเข้าศึกษาต่อในระดับอุดมศึกษา (มหาวิทยาลัย) </span></p>\r\n<p><span style=\"font-weight: 400;\">ตามความเหมาะสมโดยไม่ต้องขอทำการเทียบวุฒิการศึกษาเป็นรายบุคคล  ซึ่งทางกระทรวง</span></p>\r\n<p><span style=\"font-weight: 400;\">ศึกษาธิการจะมีประกาศแจ้งไปยังสำนักงานอุดมศึกษา (สนอ) ต่อไป</span></p>\r\n<p> </p>\r\n<p><span style=\"color: #ff0000;\"><strong>คำถาม :</strong></span> <span style=\"font-weight: 400;\">แล้วนักเรียนที่สอบผ่าน IGCSE มาบ้างแล้วแต่ยังไม่ครบ 5 วิชา โดยวิชานั้นๆได้เกรด C จะมีสิทธิ์ใช้ </span></p>\r\n<p><span style=\"font-weight: 400;\">         </span> <span style=\"font-weight: 400;\">ระเบียบการเทียบวุฒิแบบเก่าไหม</span></p>\r\n<p><span style=\"color: #339966;\"><strong>คำตอบ :</strong></span> <span style=\"font-weight: 400;\">ทางสำนักงานคณะกรรมการการศึกษาขั้นพื้นฐาน (สพฐ) ได้ยืนยันมาว่า ผู้ที่เคยสอบผ่าน IGCSE มา</span></p>\r\n<p><span style=\"font-weight: 400;\">บ้างอย่างน้อย 1 วิชา ก่อนปี พ.ศ. 2560  ถ้าในปี พ.ศ. 2560 สอบให้ผ่านอีกให้ครบอย่างน้อย 5 วิชา</span></p>\r\n<p><span style=\"font-weight: 400;\">โดยแต่ละวิชาเกรดต้องไม่ต่ำกว่า C ก็ยังใช้ระเบียบการเทียบวุฒิการศึกษาขั้นพื้นฐานเดิมได้  แต่ถ้า</span></p>\r\n<p><span style=\"font-weight: 400;\">ภายในปีพ.ศ. 2560  นี้ไม่สามารถสอบผ่านครบ 5 วิชา ก็จักต้องปฎิบัติตามประกาศกระทรวง</span></p>\r\n<p><span style=\"font-weight: 400;\">ศึกษาธิการ เรื่องการเทียบวุฒิต่างประเทศฉบับประกาศ ณ วันที่ 5 มิถุนายน พ.ศ. 2558 ทันที</span></p>\r\n<p> </p>\r\n<p style=\"text-align: right;\"><span style=\"font-weight: 400;\">จึงประกาศมาเพื่อรับทราบ</span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-weight: 400;\"> อ.วิบูลย์  ชัยนันท์</span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-weight: 400;\">  </span><span style=\"font-weight: 400;\">ผู้อำนวยการสถาบัน SPC</span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-weight: 400;\">  </span><span style=\"font-weight: 400;\">ทร.  02 735 4803-4</span></p>\r\n<p><span style=\"font-weight: 400;\">สอบถามรายละเอียดเพิ่มเติมได้ที่.</span></p>\r\n<p><span style=\"font-weight: 400;\">สำนักคณะกรรมการการศึกษาขั้นพื้นฐาน</span></p>\r\n<p><span style=\"font-weight: 400;\">กระทรวงศึกษาธิการ</span></p>\r\n<p><span style=\"font-weight: 400;\">โทร. 02 288 5789, 02 288 5790</span></p>', '<h1 style=\"text-align: center;\"><strong><span style=\"color: #800000;\">อ้างถึงประกาศระเบียบกระทรวงศึกษาธิการว่าด้วยการปรับปรุงการเทียบวุฒิการศึกษาในประเทศและต่างประเทศระดับการศึกษาขั้นพื้นฐาน &nbsp;</span></strong></h1>\r\n<h1 style=\"text-align: center;\"><strong><span style=\"color: #800000;\">ประกาศ ณ วันที่ี 15 กุมภาพันธ์ พ.ศ. 2560</span></strong></h1>\r\n<h1>&nbsp;</h1>\r\n<p><span style=\"font-weight: 400;\">เมื่อประกาศฉบับนี้ได้ออกมาทำให้ผู้ประครองและนักเรียนที่กำลังศึกษาอยู่ในหลักสูตรนานาชาติทั้งในและต่างประเทศที่กำลังเตรียมสอบ IGCSE &nbsp;หรือ GCSE อยู่นั้นเกิดสับสนว่าจะได้รับการเทียบวุฒิการศึกษาขั้นพื้นฐาน (มัธยม 6) ได้หรือไม่ &nbsp;และจะสามารถศึกษาต่อในระดับอุดมศึกษา (มหาวิทยาลัย) ต่อไปได้หรือไม่ &nbsp;&nbsp;กระผม อ.วิบูลย์ &nbsp;ชัยนันท์ &nbsp;ผู้อำนวยการสถาบัน Study Plus Center (SPC) ได้รับการยืนยันจากสำนักงานคณะกรรมการการศึกษาขั้นพื้นฐาน (สพฐ) กระทรวงศึกษาธิการ &nbsp;โดยจะขยายความข้อสงสัยในข้อ 4 ของประกาศกระทรวง ลงวันที่ 15 กุมภาพันธ์ พ.ศ. 2560 ดังนี้</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #ff0000;\"><strong>คำถาม</strong><strong> :</strong></span> <span style=\"font-weight: 400;\">การได้รับการเทียบวุฒิการศึกษาระดับขั้นพื้นฐานของผู้สอบ IGCSE และ GED ยังได้รับการเทียบวุฒิ </span><span style=\"font-weight: 400;\">โดยศักดิ์ และสิทธิ์เหมือนเดิม หรือไม่</span></p>\r\n<p><span style=\"color: #339966;\"><strong>คำตอบ</strong><strong> :</strong></span> <span style=\"font-weight: 400;\">ยังได้รับการเทียบวุฒิการศึกษาระดับขั้นพื้นฐาน (มัธยม 6) &nbsp;และสามารถเข้าศึกษาต่อในระดับ</span></p>\r\n<p><span style=\"font-weight: 400;\">อุดมศึกษา (มหาวิทยาลัย) ได้เหมือนเดิมโดยให้สถาบันอุดมศึกษา (มหาวิทยาลัย ) แต่ละแห่ง</span><span style=\"font-weight: 400;\">&nbsp;กำหนดหลักเกณฑ์ &nbsp;เงื่อนไขและคุณสมบัติของผู้ที่จะเข้าศึกษาต่อในระดับอุดมศึกษา (มหาวิทยาลัย) </span></p>\r\n<p><span style=\"font-weight: 400;\">ตามความเหมาะสมโดยไม่ต้องขอทำการเทียบวุฒิการศึกษาเป็นรายบุคคล &nbsp;ซึ่งทางกระทรวง</span></p>\r\n<p><span style=\"font-weight: 400;\">ศึกษาธิการจะมีประกาศแจ้งไปยังสำนักงานอุดมศึกษา (สนอ) ต่อไป</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #ff0000;\"><strong>คำถาม :</strong></span> <span style=\"font-weight: 400;\">แล้วนักเรียนที่สอบผ่าน IGCSE มาบ้างแล้วแต่ยังไม่ครบ 5 วิชา โดยวิชานั้นๆได้เกรด C จะมีสิทธิ์ใช้ </span></p>\r\n<p><span style=\"font-weight: 400;\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> <span style=\"font-weight: 400;\">ระเบียบการเทียบวุฒิแบบเก่าไหม</span></p>\r\n<p><span style=\"color: #339966;\"><strong>คำตอบ :</strong></span> <span style=\"font-weight: 400;\">ทางสำนักงานคณะกรรมการการศึกษาขั้นพื้นฐาน (สพฐ) ได้ยืนยันมาว่า ผู้ที่เคยสอบผ่าน IGCSE มา</span></p>\r\n<p><span style=\"font-weight: 400;\">บ้างอย่างน้อย 1 วิชา ก่อนปี พ.ศ. 2560 &nbsp;ถ้าในปี พ.ศ. 2560 สอบให้ผ่านอีกให้ครบอย่างน้อย 5 วิชา</span></p>\r\n<p><span style=\"font-weight: 400;\">โดยแต่ละวิชาเกรดต้องไม่ต่ำกว่า C ก็ยังใช้ระเบียบการเทียบวุฒิการศึกษาขั้นพื้นฐานเดิมได้ &nbsp;แต่ถ้า</span></p>\r\n<p><span style=\"font-weight: 400;\">ภายในปีพ.ศ. 2560 &nbsp;นี้ไม่สามารถสอบผ่านครบ 5 วิชา ก็จักต้องปฎิบัติตามประกาศกระทรวง</span></p>\r\n<p><span style=\"font-weight: 400;\">ศึกษาธิการ เรื่องการเทียบวุฒิต่างประเทศฉบับประกาศ ณ วันที่ 5 มิถุนายน พ.ศ. 2558 ทันที</span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right;\"><span style=\"font-weight: 400;\">จึงประกาศมาเพื่อรับทราบ</span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-weight: 400;\">&nbsp;อ.วิบูลย์ &nbsp;ชัยนันท์</span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-weight: 400;\"> &nbsp;</span><span style=\"font-weight: 400;\">ผู้อำนวยการสถาบัน SPC</span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-weight: 400;\"> &nbsp;</span><span style=\"font-weight: 400;\">ทร. &nbsp;02 735 4803-4</span></p>\r\n<p><span style=\"font-weight: 400;\">สอบถามรายละเอียดเพิ่มเติมได้ที่.</span></p>\r\n<p><span style=\"font-weight: 400;\">สำนักคณะกรรมการการศึกษาขั้นพื้นฐาน</span></p>\r\n<p><span style=\"font-weight: 400;\">กระทรวงศึกษาธิการ</span></p>\r\n<p><span style=\"font-weight: 400;\">โทร. 02 288 5789, 02 288 5790</span></p>', '2017-03-01 00:00:00', '', '126fa728-4251-4980-b103-4fbcd11e8d70.jpg', null, '2017-03-01 13:09:54', '2017-03-02 23:55:35', '0', 'กระทรวงศึกษาธิการออกมาประกาศวันที่ 15 ก.พ.2560 สอบเทียบและได้รับการเทียบวุฒิการศึกษาขั้นพื้นฐาน', '');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title_th` varchar(100) NOT NULL,
  `title_en` varchar(100) NOT NULL,
  `body_th` text,
  `body_en` text,
  `parent_id` int(11) DEFAULT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `is_show_gallery` bit(1) NOT NULL,
  `published` bit(1) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'home', 'หน้าแรก', 'Home', '', '', '0', null, null, '\0', '', '2016-05-22 13:59:29', '2016-06-17 22:11:14', '0');
INSERT INTO `pages` VALUES ('2', 'about_us', 'เกี่ยวกับเรา', 'About Us', '', '', '0', null, null, '\0', '', '2016-05-22 14:25:01', '2017-08-05 12:18:17', '0');
INSERT INTO `pages` VALUES ('3', 'service', 'บริการ', 'Service', '', '', '0', null, null, '\0', '', '2016-05-22 19:20:45', '2017-08-05 12:18:28', '0');
INSERT INTO `pages` VALUES ('4', 'portfolio', 'รูปผลงาน', 'Picture Portfolio', '', '', '0', null, null, '\0', '', '2016-05-22 14:37:47', '2017-08-05 12:27:49', '0');
INSERT INTO `pages` VALUES ('6', 'contact_us', 'ติดต่อเรา', 'Contact Us', '', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3875.1538662523453!2d100.65925881531588!3d13.769593100589628!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x311d61817a47ddbf%3A0xa66443fe01f75fe1!2sStudy+Plus+Center!5e0!3m2!1sth!2sth!4v1464097235273\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>', '0', null, null, '\0', '', '2016-05-22 19:21:16', '2017-08-05 12:29:15', '0');
INSERT INTO `pages` VALUES ('7', 'founder', 'ผู้ก่อตั้ง', 'Founder', '', '<h2><span style=\"color: #42a33c;\">ผู้ก่อตั้งและผู้จัดการหลักสูตรการเรียนการสอน</span></h2>\r\n<div class=\"row\">\r\n<div class=\"col-md-6\"><img class=\"img-thumbnail img-responsive center-block\" src=\"http://modernsofttech.com/spc/assets/uploads-files/founder3.jpg?1466603001672\" alt=\"\" />\r\n<p class=\"text-center\">นายแพทย์สุชาติ วงศ์เกียรติขจร แพทย์ศาสตร์บัณฑิต (เกียรตินิยม) มหาวิทยาลัยเชียงใหม่</p>\r\n</div>\r\n<div class=\"col-md-6\"><img class=\"img-thumbnail img-responsive center-block\" src=\"http://modernsofttech.com/spc/assets/uploads-files/founder1.jpg?1466603046472\" alt=\"\" />\r\n<p class=\"text-center\">นางสาว พนิดา วงศ์เกียรติขจร วิทยาศาสตร์มหาบัณฑิต มหาวิทยาลัยเกษตรศาสตร์</p>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-md-6\"><img class=\"img-thumbnail img-responsive center-block\" src=\"http://modernsofttech.com/spc/assets/uploads-files/founder4.jpg?1466603081864\" alt=\"\" />\r\n<p class=\"text-center\">นายวิบูลย์ ชัยนันท์ ครุศาสตร์บัณฑิต จุฬาลงกรณ์มหาวิทยาลัย</p>\r\n</div>\r\n<div class=\"col-md-6\"><img class=\"img-thumbnail img-responsive center-block\" src=\"http://modernsofttech.com/spc/assets/uploads-files/founder2.jpg?1466603107064\" alt=\"\" />\r\n<p class=\"text-center\">นายฉัตรบดินทร์ ชัยนันท์ วิทยาศาสตร์บัณฑิต (เกียรตินิยม) หลักสูตรนานาชาติ จุฬาลงกรณ์มหาวิทยาลัย</p>\r\n</div>\r\n</div>', '0', null, null, '\0', '', '2016-05-24 16:54:59', '2017-08-05 12:29:21', '0');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `role_id` int(10) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Super Admin', '2016-01-10 04:47:48', null, '\0');
INSERT INTO `roles` VALUES ('2', 'Admin', '2016-01-10 04:48:16', null, '\0');
INSERT INTO `roles` VALUES ('3', 'User', '2016-05-16 01:02:28', null, '\0');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `setting_id` int(10) NOT NULL AUTO_INCREMENT,
  `website_name` varchar(100) DEFAULT NULL,
  `website_short_name` varchar(10) DEFAULT NULL,
  `default_language` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address_th` varchar(500) DEFAULT NULL,
  `address_en` varchar(500) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `facebook_link` varchar(500) DEFAULT NULL,
  `twitter_link` varchar(500) DEFAULT NULL,
  `instagram_link` varchar(500) DEFAULT NULL,
  `line_id` varchar(20) DEFAULT NULL,
  `vision_th` text,
  `vision_en` text,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('2', 'RMS FAMELIA', 'RMSF', 'thai', 'studypluscenter.spc@gmail.com', '322/1  รามคำแหง 74 (เยื้องโฮมโปร รามคำแหง) \r\nหัวหมาก  บางกะปิ  กทม. 10240\r\n', '322/1 Ramkhamhang 74 Huamark Bangkapi Bangkok 10240', '02 735 4803-4', '0813187593', 'https://www.facebook.com/StudyPlusCenter/', '', '', '@StudyPlusCenter', '<h2>“Fast track learning”</h2>\r\n<p class=\"text-center\">“ความสำเร็จของคุณคือเป้าหมายของเรา ถ้ามีศักยภาพแต่ยังไม่รู้หนทาง หรือ อาจจะยังไม่รู้ว่าตัวเองมีศักยภาพ ทีมอาจารย์ที่เข้มแข็งของเรา SPC พร้อมโค้ชให้คุณผ่านเส้นทางที่มืดมนนี้ได้สำร็จ ความสำเร็จอาจไม่ได้มาอย่างง่ายดาย ความตั้งใจของคุณบวกกับความชำนาญของเรา SPC จะช่วยพาคุณสู่ความสำเร็จได้”</p>', '<h2>“Fast track learing”</h2>\r\n<p class=\"text-center\">“ Your success is our goal. I do not know if there are potential avenues or may not know that their potential . With our strong team of professors SPC coach you through this dark path for Finished . Success may not come easily . Your intentions , combined with the expertise of our SPC will help lead you to success .”</p>', '2016-04-21 14:52:13', '2017-08-04 21:38:51');

-- ----------------------------
-- Table structure for slideshow
-- ----------------------------
DROP TABLE IF EXISTS `slideshow`;
CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `description_en` text,
  `description_th` text,
  `published` bit(1) NOT NULL,
  `order_seq` tinyint(3) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slideshow
-- ----------------------------
INSERT INTO `slideshow` VALUES ('10', '2124bd4c-72e9-49e3-84b3-d5264ee3d54b.png', 'eng', 'thai', '', '2', '2017-08-06 22:57:37', '2017-08-06 23:03:00', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(2) NOT NULL,
  `facebook_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logged_in_date` datetime DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Super', 'Admin', 'superadmin', '81dc9bdb52d04dc20036dbd8313ed055', 'bsongkran@hotmail.com', '55555', '1', null, '2017-08-05 11:41:05', '2016-05-20 19:04:09', '2016-06-25 11:47:52');
INSERT INTO `users` VALUES ('2', 'Operation', 'User', 'user', '81dc9bdb52d04dc20036dbd8313ed055', 'pv58@yahoo.com', '0866039101', '3', null, '2016-12-27 15:25:01', '2016-06-02 13:57:50', '2016-08-15 18:19:42');
INSERT INTO `users` VALUES ('3', 'General', 'Admin', 'admin1', '8a76ac6736781bf729cac1e1339e1a98', 'pv58@yahoo.com', '0866039101', '1', null, '2017-01-18 13:20:11', '2016-06-26 04:09:23', '2017-01-18 13:25:35');
