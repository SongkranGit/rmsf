/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_rmsf

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-11 18:47:25
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
INSERT INTO `articles` VALUES ('2', '6', 'ฟหกดฟห', 'sdfasdfa', 'ฟหกดฟหกด', 'sdfasdfa', '<p>ดฟหกดsfasdfasdfasdfasdfasdfasdfassf</p>', '<p>asdfasdfasdfasdfasdf</p>', '2017-08-07 00:00:00', null, null, '', '2017-08-06 22:40:37', '2017-08-09 21:07:38', '0');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of article_images
-- ----------------------------
INSERT INTO `article_images` VALUES ('80', '14', 'a5e3c655-665d-4090-899a-fa77626e20c2', 'article.jpg', 'a5e3c655-665d-4090-899a-fa77626e20c2.jpg', '2', '135', '2017-02-26 16:11:24', null);
INSERT INTO `article_images` VALUES ('82', null, 'f2bbc5d9-30f2-4c0b-a536-d6027ed4382a', 'switzerland_alps_mountains_night_beautiful_landsca', 'f2bbc5d9-30f2-4c0b-a536-d6027ed4382a.jpg', null, '820', '2017-08-05 22:28:02', null);
INSERT INTO `article_images` VALUES ('83', null, 'b35fc93e-5a4f-42f0-b279-d9ef3e62a415', 'river_trees_fog_reflection_100440_1920x1080.jpg', 'b35fc93e-5a4f-42f0-b279-d9ef3e62a415.jpg', null, '778', '2017-08-05 22:28:06', null);
INSERT INTO `article_images` VALUES ('84', null, '5b853f8a-a55f-4b7b-8de2-feead81f7b3e', 'switzerland_alps_mountains_night_beautiful_landsca', '5b853f8a-a55f-4b7b-8de2-feead81f7b3e.jpg', null, '820', '2017-08-05 23:34:02', null);
INSERT INTO `article_images` VALUES ('85', null, '70733488-f380-4a1a-836f-7496bf9936fe', 'switzerland_alps_mountains_night_beautiful_landsca', '70733488-f380-4a1a-836f-7496bf9936fe.jpg', null, '820', '2017-08-06 00:09:53', null);
INSERT INTO `article_images` VALUES ('86', null, 'c3f4f87e-9ae9-4ac4-98a0-6bc6d8c509eb', 'switzerland_alps_mountains_night_beautiful_landsca', 'c3f4f87e-9ae9-4ac4-98a0-6bc6d8c509eb.jpg', null, '820', '2017-08-06 05:51:48', null);
INSERT INTO `article_images` VALUES ('88', '2', 'feeb30f9-622a-4e16-889a-2676ce44cebe', 'river_trees_fog_reflection_100440_1920x1080.jpg', 'feeb30f9-622a-4e16-889a-2676ce44cebe.jpg', '2', '778', '2017-08-06 23:03:30', null);
INSERT INTO `article_images` VALUES ('89', '2', 'a314c053-e0ed-421a-a1a4-5bbff0ef1d4f', 'switzerland_alps_mountains_night_beautiful_landsca', 'a314c053-e0ed-421a-a1a4-5bbff0ef1d4f.jpg', '1', '820', '2017-08-06 23:04:11', null);
INSERT INTO `article_images` VALUES ('90', '3', '17dacdfe-c541-4310-88f6-99d714d4ec62', 'switzerland_alps_mountains_night_beautiful_landsca', '17dacdfe-c541-4310-88f6-99d714d4ec62.jpg', '1', '820', '2017-08-06 23:17:55', null);
INSERT INTO `article_images` VALUES ('92', null, 'd2268cc8-45d0-4cea-b7a0-e4a668266116', '1920x1200-wdf_1804851.jpg', 'd2268cc8-45d0-4cea-b7a0-e4a668266116.jpg', null, '562', '2017-08-09 21:14:07', null);
INSERT INTO `article_images` VALUES ('93', null, '87b00071-0388-4117-bf7c-cae1d0840753', 'hd-liverpool-wallpapers.jpg', '87b00071-0388-4117-bf7c-cae1d0840753.jpg', null, '1222', '2017-08-09 21:18:27', null);

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `message` text,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('1', 'asdasD', 'SDFAS', 'sdfdsf', 'sdfsdf', 'sfdsfsdfdsfds', '2017-08-11 03:28:20', null);
INSERT INTO `contacts` VALUES ('2', 'asdasD', 'SDFAS', 'sdfdsf', 'sdfsdf', 'sfdsfsdfdsfds', '2017-08-11 03:32:59', null);
INSERT INTO `contacts` VALUES ('3', 'asdasD', 'SDFAS', 'sdfdsf', 'sdfsdf', 'sfdsfsdfdsfds', '2017-08-11 03:38:26', null);
INSERT INTO `contacts` VALUES ('4', 'asdasD', 'SDFAS', 'sdfdsf', 'sdfsdf', 'sfdsfsdfdsfds', '2017-08-11 03:38:28', null);
INSERT INTO `contacts` VALUES ('5', 'asdasD', 'SDFAS', 'sdfdsf', 'sdfsdf', 'sfdsfsdfdsfds', '2017-08-11 03:38:39', null);
INSERT INTO `contacts` VALUES ('6', 'asdasD', 'SDFAS', 'sdfdsf', 'sdfsdf', 'sfdsfsdfdsfds', '2017-08-11 03:40:22', null);
INSERT INTO `contacts` VALUES ('16', '11', '22', '33', '44', '55', '2017-08-11 03:47:47', null);
INSERT INTO `contacts` VALUES ('17', '11', '22', '33', '44', '55', '2017-08-11 03:47:48', null);
INSERT INTO `contacts` VALUES ('18', '11', '22', '33', '44', '55', '2017-08-11 03:47:48', null);
INSERT INTO `contacts` VALUES ('23', 'sdfsd', 'sdfdsf', 'sfdsf', 'sdfdsf', 'sdf             s', '2017-08-11 03:53:35', null);
INSERT INTO `contacts` VALUES ('24', 'sdfdsf', 'sdfsd', 'asdfasd', 'asdf', 'asdfasdf', '2017-08-11 04:19:47', null);
INSERT INTO `contacts` VALUES ('25', 'sdfdsf', 'sdfsd', 'asdfasd', 'asdf', 'asdfasdf', '2017-08-11 04:19:48', null);

-- ----------------------------
-- Table structure for galleries
-- ----------------------------
DROP TABLE IF EXISTS `galleries`;
CREATE TABLE `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `name_th` varchar(500) NOT NULL,
  `name_en` varchar(500) DEFAULT NULL,
  `description_th` varchar(2000) DEFAULT NULL,
  `description_en` varchar(2000) DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `order_seq` tinyint(3) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of galleries
-- ----------------------------
INSERT INTO `galleries` VALUES ('1', '0', 'นักเรียนที่มาเรียน สอบเข้าจุฬาฯได้ ในปี 2013', null, 'เข้าศึกษาได้ทั้งสิ้น 43 คน  คิดเป็น 92% \r\nสำเร็จในทุกคณะโดยเฉพาะคณะพาณิชยศาสตร์และการบัญชี รุ่น Early Admission เข้าได้ 2 คน\r\nอายุเฉลี่ยของนักเรียน SPC ที่เข้าจุฬาฯได้ ในปีนี้ อายุ 15 ปี 7 เดือน\r\nและมีนักเรียนที่จบเพียงเกรด 8  เข้าจุฬาฯได้ถึง 9 คน', null, '', '1', '2016-06-12 17:01:57', '2016-08-15 18:54:14', '1');
INSERT INTO `galleries` VALUES ('2', '0', 'เด็กหงษ์ FC', 'The kopppp', 'เด็กหงษ์ FC เด็กหงษ์ FC เด็กหงษ์ FC', 'sdfasdfasdf', '', '2', '2016-06-22 20:28:59', '2017-08-08 00:35:51', '0');
INSERT INTO `galleries` VALUES ('3', '0', 'เลือกที่นี่เพราะ', null, 'รายละเอียด เลือกที่นี่เพราะ', null, '', '4', '2016-07-09 21:34:12', '2016-08-15 19:00:09', '1');
INSERT INTO `galleries` VALUES ('4', '0', 'ความเหมือนที่แตกต่าง', 'sfsdf', 'เพราะ SPC ไม่ใช่แค่สถาบันกวดวิชาที่ให้แค่ความรู้  แต่ที่ SPC สังคมของเราอบอุ่น เป็นเหมือนบ้าน  เหมือนครอบครัวที่คอยดูแลกันและกัน  เป็นสังคมที่เกื้อกูลกัน  พ่อแม่ดูแลลูก  พี่ดูแลน้องจากรุ่นสู่รุ่น  เพื่อนช่วยเพื่อน  เพื่อที่ทุกคนจะสำเร็จสู่รั้วมหาวิทยาลัยที่ตั้งใจ', 'asdfasdf', '', '3', '2016-07-09 21:34:36', '2017-08-08 01:01:54', '1');
INSERT INTO `galleries` VALUES ('5', '0', 'SPC พาชมมหาวิทยาลัย', null, 'SPC พาชมมหาวิทยาลัย', null, '', '5', '2017-01-21 00:47:35', '2017-01-21 00:47:35', '1');
INSERT INTO `galleries` VALUES ('6', '0', 'เด็กผี', '', 'หกดหกดฟหกดหด', '', '', null, '2017-08-08 19:33:44', '2017-08-08 19:33:44', '0');
INSERT INTO `galleries` VALUES ('7', '3', 'แกลเลอรี่', 'asdf', 'คำอธิบาย', 'sdfasdfsdf', '', null, '2017-08-08 21:30:36', '2017-08-08 22:47:29', '0');

-- ----------------------------
-- Table structure for galleries_images
-- ----------------------------
DROP TABLE IF EXISTS `galleries_images`;
CREATE TABLE `galleries_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `caption_en` varchar(2000) NOT NULL,
  `caption_th` varchar(2000) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `order_seq` tinyint(3) DEFAULT NULL,
  `image_uuid` varchar(50) NOT NULL,
  `image_old_name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `published` bit(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`gallery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of galleries_images
-- ----------------------------
INSERT INTO `galleries_images` VALUES ('83', '2', 'liverpool', 'ลิเวอร์พูล', '8231423a-cba2-4169-998b-08226424c281.jpg', '1', '', '', '0', '', '2017-08-08 00:33:21', null);
INSERT INTO `galleries_images` VALUES ('84', '2', 'Thekop', 'เด็กหงษ์', '01000561-fad2-4562-95ac-d29c701089f7.jpg', '1', '01000561-fad2-4562-95ac-d29c701089f7', '1920x1200-wdf_1804851.jpg', '562', '', '2017-08-08 00:33:56', '2017-08-08 00:34:34');
INSERT INTO `galleries_images` VALUES ('85', '2', 'sdfasfasdf', 'sfasdfasd', '88d706bc-b34e-4402-ab06-11e76e67c1b3.jpg', '1', '', '', '0', '', '2017-08-08 19:32:34', null);
INSERT INTO `galleries_images` VALUES ('86', '2', 'sfasdf', 'sdfasdf', '5b83d475-a884-4d6c-b329-5717bdbb4f25.jpg', '1', '', '', '0', '', '2017-08-08 19:32:54', null);
INSERT INTO `galleries_images` VALUES ('91', '6', 'etewtetwert', 'dtert', '1eac9122-a574-490c-8b1e-9b9279322aaf.jpg', '3', '05b42ca9-9afb-439c-beb8-36eeeff26d3e', '0003_1024.jpg', '69', '', '2017-08-08 21:10:48', '2017-08-08 21:10:59');
INSERT INTO `galleries_images` VALUES ('92', '7', '', '', 'fd72995e-f664-4b45-825a-b68145a8bab9.jpg', '1', 'fd72995e-f664-4b45-825a-b68145a8bab9', '0003_1024.jpg', '69', '', '2017-08-08 22:49:20', null);

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
  `name_th` varchar(100) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `detail_th` text,
  `detail_en` text,
  `published` bit(1) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'หน้าแรก', 'Home', '', '', '', '2016-05-22 13:59:29', '2017-08-09 16:01:04', '0');
INSERT INTO `pages` VALUES ('2', 'เกี่ยวกับเรา', 'About us', '', '', '', '2016-05-22 14:25:01', '2017-08-05 12:18:17', '0');
INSERT INTO `pages` VALUES ('3', 'บริการ', 'Service', '', '', '', '2016-05-22 19:20:45', '2017-08-05 12:18:28', '0');
INSERT INTO `pages` VALUES ('4', 'รูปภาพผลงาน', 'Portfolio', '', '', '', '2016-05-22 14:37:47', '2017-08-05 12:27:49', '0');
INSERT INTO `pages` VALUES ('6', 'ผู้ก่อตั้ง', 'Founder', '', '<h2><span style=\"color: #42a33c;\">ผู้ก่อตั้งและผู้จัดการหลักสูตรการเรียนการสอน</span></h2>\r\n<div class=\"row\">\r\n<div class=\"col-md-6\"><img class=\"img-thumbnail img-responsive center-block\" src=\"http://modernsofttech.com/spc/assets/uploads-files/founder3.jpg?1466603001672\" alt=\"\" />\r\n<p class=\"text-center\">นายแพทย์สุชาติ วงศ์เกียรติขจร แพทย์ศาสตร์บัณฑิต (เกียรตินิยม) มหาวิทยาลัยเชียงใหม่</p>\r\n</div>\r\n<div class=\"col-md-6\"><img class=\"img-thumbnail img-responsive center-block\" src=\"http://modernsofttech.com/spc/assets/uploads-files/founder1.jpg?1466603046472\" alt=\"\" />\r\n<p class=\"text-center\">นางสาว พนิดา วงศ์เกียรติขจร วิทยาศาสตร์มหาบัณฑิต มหาวิทยาลัยเกษตรศาสตร์</p>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-md-6\"><img class=\"img-thumbnail img-responsive center-block\" src=\"http://modernsofttech.com/spc/assets/uploads-files/founder4.jpg?1466603081864\" alt=\"\" />\r\n<p class=\"text-center\">นายวิบูลย์ ชัยนันท์ ครุศาสตร์บัณฑิต จุฬาลงกรณ์มหาวิทยาลัย</p>\r\n</div>\r\n<div class=\"col-md-6\"><img class=\"img-thumbnail img-responsive center-block\" src=\"http://modernsofttech.com/spc/assets/uploads-files/founder2.jpg?1466603107064\" alt=\"\" />\r\n<p class=\"text-center\">นายฉัตรบดินทร์ ชัยนันท์ วิทยาศาสตร์บัณฑิต (เกียรตินิยม) หลักสูตรนานาชาติ จุฬาลงกรณ์มหาวิทยาลัย</p>\r\n</div>\r\n</div>', '', '2016-05-24 16:54:59', '2017-08-05 12:29:21', '0');
INSERT INTO `pages` VALUES ('7', 'ติดต่อเรา', 'Contact us', '', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3875.1538662523453!2d100.65925881531588!3d13.769593100589628!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x311d61817a47ddbf%3A0xa66443fe01f75fe1!2sStudy+Plus+Center!5e0!3m2!1sth!2sth!4v1464097235273\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>', '', '2016-05-22 19:21:16', '2017-08-08 21:51:23', '0');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slideshow
-- ----------------------------

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
INSERT INTO `users` VALUES ('1', 'Super', 'Admin', 'superadmin', '81dc9bdb52d04dc20036dbd8313ed055', 'bsongkran@hotmail.com', '55555', '1', null, '2017-08-11 11:06:26', '2016-05-20 19:04:09', '2016-06-25 11:47:52');
INSERT INTO `users` VALUES ('2', 'Operation', 'User', 'user', '81dc9bdb52d04dc20036dbd8313ed055', 'pv58@yahoo.com', '0866039101', '3', null, '2017-08-10 17:37:47', '2016-06-02 13:57:50', '2017-08-09 22:27:13');
INSERT INTO `users` VALUES ('3', 'General', 'Admin', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'pv58@yahoo.com', '0866039101', '2', null, '2017-08-10 17:42:27', '2016-06-26 04:09:23', '2017-08-09 22:45:50');
