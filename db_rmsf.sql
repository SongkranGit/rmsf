/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50505
Source Host           : 127.1.1.1:3306
Source Database       : db_rmsf

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-15 08:56:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app_users
-- ----------------------------
DROP TABLE IF EXISTS `app_users`;
CREATE TABLE `app_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `platform` varchar(10) DEFAULT NULL,
  `token` varchar(500) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
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
  `file_name` varchar(200) DEFAULT NULL,
  `menu_icon` varchar(200) DEFAULT NULL,
  `order_seq` tinyint(3) DEFAULT NULL,
  `published` bit(1) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '1', 'โครงสร้าง', 'STRUCTURE', 'ในการก้าวไปสู่ความสำเร็จนั้นการกำหนดเป้าหมายเป็นสิ่งสำคัญ ก่อให้เกิดการวางแผนการดำเนินธุรกิจอย่างรัดกุมเสมือนการตระเตรียมความพร้อมอยู่เสมอ โครงสร้างในการดำเนินธุรกิจที่ดีรวมถึงการมีขอบเขตที่แน่นอนจะเป็นส่วนสำคัญที่จะช่วยกำหนดเป้าหมายของเราให้ชัดเจนจนก้าวสู่ความสำเร็จอย่างงดงาม', 'MOVING TOWARDS SUCCESS IS THE IMPORTANT TARGET THAT CREATES A CAREFUL BUSINESS PLAN. GOOD STRUCTURE FOR DOING BUSINESS INCLUDES A CERTAIN BOUNDARY WHICH IS THE IMPORTANT PART FOR OUR CLEAR TARGET. THIS LEADS US TO BEAUTIFUL SUCCESS. TO SPECIFY STRUCTURE AND TARGET IS THE IMPORTANT PART FOR THE BUSINESS SUCCESS', '<p>ในการก้าวไปสู่ความสำเร็จนั้นการกำหนดเป้าหมายเป็นสิ่งสำคัญ ก่อให้เกิดการวางแผนการดำเนินธุรกิจอย่างรัดกุมเสมือนการตระเตรียมความพร้อมอยู่เสมอ โครงสร้างในการดำเนินธุรกิจที่ดีรวมถึงการมีขอบเขตที่แน่นอนจะเป็นส่วนสำคัญที่จะช่วยกำหนดเป้าหมายของเราให้ชัดเจนจนก้าวสู่ความสำเร็จอย่างงดงาม<br />การกำหนดโครงสร้างและเป้าหมายถือเป็นสิ่งสำคัญในการนำมาซึ่งความสำเร็จของธุรกิจ อีกทั้งยังสามารถช่วยกำหนดความชัดเจนขอบเขตของการดำเนินงานซึ่งก่อให้เกิดประสิทธิภาพสูงสุด เราสามารถแบ่งโครงสร้างออกเป็น 2 ชนิดด้วยกันคือ โครงสร้างองค์กรและโครงสร้างแผนการดำเนินธุรกิจ<br />โครงสร้างองค์กรถือเป็นสิ่งสำคัญลำดับต้นๆในการดำเนินธุรกิจเพราะโครงสร้างชนิดนี้คือปัจจัยภายในองค์กรที่สามารถนำมาซึ่งความสำเร็จได้โดยง่ายหากมีระบบการจัดการที่ดีทีประสิทธิภาพ การจัดการที่ดีคือการคัดเลือกบุคลากรให้ตรงกับความสามารถในการทำงานแต่ละประเภท การให้คำแนะนำและแก้ไขปัญหาอย่างใกล้ชิดต่อบุคลากรภายในองค์กร ยิ่งไปกว่านั้นของการจัดการโครงสร้างองค์กรที่ดีสามารถควบคุมต้นทุนการดำเนินธุรกิจ อีกทั้งช่วยให้การดำเนินธุรกิจมีความรวดเร็วและถูกต้อง โดยสามารถควบคุมดูแลได้โดยง่ายหากมีปัญหาอะไรเกิดขึ้นก็สามารถบริหารจัดการได้อย่างรวดเร็วและทันท่วงที<br />โครงสร้างด้านแผนการดำเนินธุรกิจ เป็นอีกหนึ่งปัจจัยที่มีความสำคัญในการดำเนินธุรกิจไม่มีธุรกิจใดประสบความสำเร็จได้อย่างแท้จริงหากปราศจากการวางแผนที่ดี เริ่มตั้งแต่การกำหนดเป้าหมายในการดำเนินธุรกิจ การเตรียมพร้อมในด้านกลยุทธ์การดำเนินงาน งบประมาณ การกำหนดกลุ่มลูกค้าเป้าหมายและแผนการตลาด เป็นต้น ปัจจัยทั้งหมดนี้จะต้องมีการวางแผนกันตั้งแต่ในระยะเริ่มต้นเนื่องจาการวางแผนโครงสร้างที่ดีแล้วจะก่อให้เกิดการดำเนินงานที่ดีมีประสิทธิภาพ โอกาสในการผิดพลาดจะสามารถลดน้อยลงได้ในที่สุด<br />การกำหนดโครงสร้างของธุรกิจจำเป็นอย่างยิ่งที่จะต้องดำเนินการควบคู่ไปกับการตั้งเป้าหมาย เพราะเป้าหมายจะเป็นตัวกำหนดทิศทางในการดำเนินงานธุรกิจ หากธุรกิจไม่มีเป้าหมายที่ชัดเจนโอกาสที่จะประสบความสำเร็จก็จะลดน้อยลงไปด้วย เกี่ยวเนื่องโยงใยไปถึงการขาดแรงจูงใจในการดำเนินงานและไร้ทิศทางใน<br />การดำเนินธุรกิจได้ จึงจำเป็นอย่างยิ่งที่จะต้องกำหนดองค์ประกอบที่สำคัญ 2 องค์ประกอบอย่าง Mission และ Vision เพื่อเป็นขอบเขตของการดำเนินการให้เป็นไปในทิศทางตามที่ต้องการ<br />Mission หรือ พันธกิจ คือการกำหนดเป้าหมายพื้นฐานของการดำเนินธุรกิจ เป็นปัจจัยในการกำหนดทิศทางและขอบเขตของการดำเนินธุรกิจ อีกทั้งยังสามารถบ่งบอกภาพลักษณ์และการบริการของธุรกิจซึ่ง Mission ยังสามารถเป็นปัจจัยที่นำมาซึ่งความสำเร็จในระยะยาวของธุรกิจได้อีกด้วย<br />Vision หรือ วิสัยทัศน์ คือการกำหนดเป้าหมายในระยะยาว (5-10 ปี) ของธุรกิจซึ่งมีความจำเป็นอย่างยิ่งหากบริษัทต้องการประสบความสำเร็จ การตั้งเป้าหมายระยะยาวเพื่อกำหนดขอบข่ายและรองรับการลงทุนให้มีความมั่นเพราะเป็นปัจจัยที่สามารถทำให้ธุรกิจดำเนินการไปได้อย่างยั่งยืนและมีการเติบโตอย่างต่อเนื่อง อีกทั้งยังเป็นตัวบ่งชี้ความสำเร็จได้อีกด้วย<br />ความสำเร็จจึงเกิดขึ้นได้โดยง่ายเพียงแค่มีการวางโครงสร้างที่ถูกต้องเหมาะสมในการดำเนินการ รวมถึงเป้าหมายที่มีความชัดเจนส่งผลให้เกิดมีประสิทธิภาพในการดำเนินงานสูง ซึ่งต้องอาศัยผู้กำหนดโครงสร้างและเป้าหมายที่มีประสบการณ์จริงจะสามารถทำให้ธุรกิจประสบความสำเร็จได้รวดเร็วและยั่งยืน เพื่อให้ธุรกิจมีศักยภาพไม่น้อยหน้าใคร</p>', '<p>MOVING TOWARDS SUCCESS IS THE IMPORTANT TARGET THAT CREATES A CAREFUL BUSINESS PLAN. GOOD STRUCTURE FOR DOING BUSINESS INCLUDES A CERTAIN BOUNDARY WHICH IS THE IMPORTANT PART FOR OUR CLEAR TARGET. THIS LEADS US TO BEAUTIFUL SUCCESS. TO SPECIFY STRUCTURE AND TARGET IS THE IMPORTANT PART FOR THE BUSINESS SUCCESS</p>', '2017-08-12 00:00:00', null, null, '2', '', '2017-08-12 05:07:40', null, '0');
INSERT INTO `articles` VALUES ('2', '1', 'การลงมือทำ', 'DOING', 'การเริ่มต้นในทุกธุรกิจเริ่มจากความคิดและความฝัน การต่อยอดความฝันจึงตามมาด้วยการสร้างแรงบันดาลใจที่จะฟันฝ่าอุปสรรคนานับประการไปให้ได้ จากนั้นการต่อยอดความคิดหรือความฝันจำต้องอาศัยการลงมือทำเพื่อก่อร่างสร้างความคิดเหล่านั้นให้เป็นรูปร่างขึ้นมาในที่สุด ไม่มีความฝันใดสำเร็จได้หากปราศจากการลงมือทำ', 'THE BEGINNING OF EVERY BUSINESS STARTING FROM IDEA AND DREAM AND EXPANDING THE DREAM WITH INSPIRATION TO GO THROUGH DIFFICULTIES. IDEA OR DREAM EXPANSION NEED DOING TO TRANSFORM THE IDEA TO SOMETHING FINALLY. NO DREAM CAN BE DONE WITHOUT DOING', '<p>การเริ่มต้นในทุกธุรกิจเริ่มจากความคิดและความฝัน การต่อยอดความฝันจึงตามมาด้วยการสร้างแรงบันดาลใจที่จะฟันฝ่าอุปสรรคนานับประการไปให้ได้ จากนั้นการต่อยอดความคิดหรือความฝันจำต้องอาศัยการลงมือทำเพื่อก่อร่างสร้างความคิดเหล่านั้นให้เป็นรูปร่างขึ้นมาในที่สุด ไม่มีความฝันใดสำเร็จได้หากปราศจากการลงมือทำ<br />ในการที่จะประสบความสำเร็จในทุกธุรกิจหรือแม้กระทั่งความสำเร็จในชีวิตมักเริ่มต้นด้วยการคิดที่ผ่านการวางแผนอย่างเป็นระบบตลอดจนการกำหนดเป้าหมายที่ชัดเจนเพื่อเป็นแนวทางมุ่งไปสู่ความสำเร็จดังที่ตั้งใจ แต่ความสำเร็จที่กล่าวมานั้นจะไม่บรรลุได้ตามที่หวังหากปราศจากการลงมือทำ การลงมือทำที่ก่อให้เกิดความสำเร็จได้นั้นไม่เพียงแต่แค่การลงมือทำแต่จำเป็นต้องอาศัยการลงมือทำอย่างจริงจังด้วย มีผู้คนจำนวนไม่น้อยที่มีความฝันเป็นของตัวเองมีความคิดไอเดียบรรเจิดเป็นร้อยเป็นพันอยู่ในหัวแต่ท้ายที่สุดบุคคลเหล่านั้นก็ปล่อยให้ความฝันยังคงกลายเป็นความฝันที่ไม่มีวันเป็นจริงเพราะไม่ลงมือทำเสียที จึงมีจำนวนคนไม่น้อยเช่นกันที่จะประสบความสำเร็จอย่างที่ฝันไว้ เพราะในการที่จะเปลี่ยนจินตนาการความคิดหรือความฝันของคนเราให้เป็นรูปร่างขึ้นมานั้นฝันอย่างเดียวคงไม่พอ การลงมือทำจึงเปรียบเสมือนเป็นกุญแจสำคัญที่ก่อร่างสร้างความคิดของมนุษย์ให้เป็นรูปธรรมจับต้องได้จริง<br />องค์ประกอบของการลงมือทำที่ดีจึงประกอบไปด้วย<br />การทุ่มเทแรงใจแรงกาย คงไม่มีทางไหนจะดีไปกว่าการทุ่มเทเพื่อผลักดันให้เราไปก้าวสู่ความสำเร็จได้ การทุ่มเททั้งแรงกายแรงใจให้ถึงที่สุดจะเป็นกุญแจเบิกทางให้ก้าวไปสู่เป้าหมายได้ตามที่ตั้งเป้าไว้<br />อย่ากลัวที่จะล้มเหลว ในทุกก้าวย่างของการลงมือทำย่อมมีความล้มเหลวรออยู่เสมอ เมื่อไหร่ที่ล้มเหลวนั่นหมายถึงเรากำลังเข้าใกล้ความสำเร็จทีละขั้น หากไม่เคยล้มเหลวเราจะไม่มีวันเรียนรู้ความสำเร็จได้อย่างแท้จริง</p>\r\n<p>การศึกษาหาความรู้เพิ่มเติม การศึกษาหาความรู้และปฏิบัติตัวเป็นผู้กระหายเรียนรู้อยู่สม่ำเสมอรวมไปถึงเรียนรู้สิ่งใหม่ๆอยู่ตลอดเวลา จะทำให้เกิดการตื่นตัวต่อทุกสภาวะที่เกิดการผันเปลี่ยนก่อให้เกิดการตระเตรียมความพร้อมให้แก่ตัวเองในทุกสถานการณ์<br />กล้าลองในสิ่งใหม่ๆ การลงมือทำแต่สิ่งเดิมๆ ก็จะได้ผลลัพท์เดิมๆโอกาสที่จะเปลี่ยนแปลงเพื่อไปเจอสิ่งที่ดีกว่าและดีขึ้นคงเป็นได้ยาก ในธุรกิจการแข่งขันจะต้องมีการเปลี่ยนแปลงการริเริ่มทำอะไรใหม่ๆซึ่งจะเพิ่มโอกาสในการประสบความสำเร็จในสนามแข่งขันได้มากคนอื่นเช่นกัน เมื่อกล้าที่จะลองในสิ่งที่ไม่เคยทำก็จะได้ผลลัพท์ในสิ่งที่ไม่เคยได้<br />ดังนั้นก่อนที่จะประสบความสำเร็จได้ทุกคนจะต้องเผชิญอุปสรรคขวากหนามเสมอ การลงมือทำไม่ได้เป็นการการันตีว่าจะประสบความสำเร็จได้เสมอไป บ่อยครั้งที่ความท้อแท้สิ้นหวังจะทำให้ความฝันค่อยๆจางหายและสลายไปได้ในที่สุด สิ่งที่ดีที่สุดอย่าเพิ่งปล่อยให้ปัญหากลายเป็นเป็นอุปสรรค แต่จงเปลี่ยนให้มันเป็นแรงผลักดันไปสู่ผลลัพท์ตามที่มุ่งหวังและตั้งใจด้วยการลงมือทำอย่างต่อเนื่อง</p>', '', '2017-08-12 00:00:00', null, null, '4', '', '2017-08-12 10:32:32', '2017-08-13 05:48:37', '0');
INSERT INTO `articles` VALUES ('3', '1', 'วิเคราะห์', 'ANALYSIS', 'ธุรกิจจะเติบโตได้นอกจากมีเป้าหมายที่ชัดเจนแล้ว การวิเคราะห์เพื่อหาแนวโน้มทั้งความเป็นไปได้ในแง่ของผลกระทบทางบวกเพื่อเพิ่มโอกาสและความคุ้มค่าในการลงทุนให้เพิ่มมากยิ่งขึ้น และผลกระทบในทางลบเพื่อเตรียมความพร้อมรับมือกับสถานการณ์ที่อาจก่อให้เกิดความเสี่ยงในหลายๆด้าน การวิเคราะห์จึงเปรียบเสมือนอาวุธที่ถูกซุกซ่อนไว้ภายในที่ผ่านการหลอมด้วยการกลั่นกรองความคิดอย่างมีระบบมีขั้นตอนที่รอบคอบและรัดกุม', 'BUSINESS GROWTH IS NOT ONLY ABOUT THE CLEAR TARGET, IT ALSO REQUIRES THE ANALYSIS FOR POSSIBLE TREND IN THE ASPECT OF POSITIVE EFFECT TO INCREASE OPPORTUNITY AND WORTHINESS IN THE INVESTMENT AND NEGATIVE IMPACT TO PREPARE FOR RISK. THE ANALYSIS IS A HIDDEN WEAPON WHICH GOES THROUGH CAREFUL AND CONCISE THINKING SYSTEM', '', '', '2017-08-12 00:00:00', null, null, '3', '', '2017-08-12 10:41:07', '2017-08-13 05:46:22', '0');
INSERT INTO `articles` VALUES ('4', '1', 'เป้าหมาย', 'TARGET', 'ในการดำเนินธุรกิจใดก็ตามที่ปราศจากเป้าหมายคงไม่ต่างจากการเดินเรือที่ปราศจากหางเสือ คงเป็นการเดินทางที่ไร้ทิศทางโดยสิ้นเชิงเพราะเป้าหมายคือการกำหนดขอบเขตของการดำเนินงานให้เป็นไปตามที่ต้องการและตั้งใจไว้ หากไม่มีเป้าหมายจะทราบได้อย่างไรว่าความสำเร็จที่ต้องการอยู่ตรงไหน หากต้องการความสำเร็จที่หอมหวานการกำหนดเป้าหมายดำเนินงานจึงเป็นสิ่งที่ขาดไม่ได้ด้วยประการทั้งปวง', 'TO DO BUSINESS WITHOUT TARGET IS NOT DIFFER FROM THE NAVIGATION WITHOUT THE TILLER. THIS COULD BE THE JOURNEY WITH NO DIRECTION SINCE TARGET IS THE OPERATION BOUNDARY SPECIFICATION IN ORDER TO WORK AS YOU WANT AND DESIRED. IF THERE IS NO TARGET, HOW COULD WE KNOW WHERE THE SUCCESS IS? IF WE NEED THE BEST SUCCESS, THE TARGET IS THE THING YOU CAN’T MISS', '', '<p>TO DO BUSINESS WITHOUT TARGET IS NOT DIFFER FROM THE NAVIGATION WITHOUT THE TILLER. THIS COULD BE THE JOURNEY WITH NO DIRECTION SINCE TARGET IS THE OPERATION BOUNDARY SPECIFICATION IN ORDER TO WORK AS YOU WANT AND DESIRED. IF THERE IS NO TARGET, HOW COULD WE KNOW WHERE THE SUCCESS IS? IF WE NEED THE BEST SUCCESS, THE TARGET IS THE THING YOU CAN’T MISS</p>', '2017-08-12 00:00:00', null, null, '5', '', '2017-08-12 10:43:02', '2017-08-13 05:45:43', '0');
INSERT INTO `articles` VALUES ('5', '1', 'การขยายธุรกิจ', 'BUSINESS EXPANSION', 'การขยายกิจการก็เหมือนการต่อยอดผลกำไรของธุรกิจเป็นการขยายสาขาทางธุรกิจให้เติบโตและยั่งยืน ซึ่งธุรกิจที่เลือกลงทุนจะต้องเป็นธุรกิจที่มีความมั่งคงอยู่ในระดับหนึ่ง โดยที่ผ่านการวิเคราะห์จากผู้ที่มีประสบการณ์โดยคำนึงถึงองค์ประกอบที่สำคัญต่างๆ ทั้งอดีตและปัจจุบันเพื่อกำหนดอนาคตให้พร้อมก้าวไปสู่ความสำเร็จให้ได้', 'To expand the market is like increasing the profit of the business by extending business branch for sustainable growth. The business invested in has to secure in some level. Through the analysis by the experience concerning past and future components, you can achieve the succession in the future. ', '<p>การขยายกิจการก็เหมือนการต่อยอดผลกำไรของธุรกิจเป็นการขยายสาขาทางธุรกิจให้เติบโตและยั่งยืน ซึ่งธุรกิจที่เลือกลงทุนจะต้องเป็นธุรกิจที่มีความมั่งคงอยู่ในระดับหนึ่ง โดยที่ผ่านการวิเคราะห์จากผู้ที่มีประสบการณ์โดยคำนึงถึงองค์ประกอบที่สำคัญต่างๆ ทั้งอดีตและปัจจุบันเพื่อกำหนดอนาคตให้พร้อมก้าวไปสู่ความสำเร็จให้ได้<br />การขยายธุรกิจเป็นความต้องการของนักธุรกิจทุกคน เพราะนั่นหมายถึงความเติบโตของธุรกิจที่กำลังดำเนินไปอย่างถูกทางตรงตามเป้าหมาย เป็นการต่อยอดผลกำไรต่อไปเรื่อยๆแต่มันก็ไม่ได้หมายความว่าทุกธุรกิจจะสามารถขยายกิจการหรือเพิ่มฐานการลงทุนต่อไปได้ง่ายเสมอไปขึ้นอยู่กับหลายปัจจัยในการลงทุน ไม่ว่าจะเป็น ปัจจัยภายใน ปัจจัยภายนอก รูปแบบกลยุทธ์ในการลงทุน และความเชื่อมั่นในการเลือกลงทุน เป็นต้น<br />ก่อนที่จะเริ่มการขยายธุรกิจ จะต้องมีการคิดวิเคราะห์ธุรกิจที่เราต้องการเลือกลงทุนก่อนว่าผลประกอบการตลอดเวลาที่ผ่านมา เช่น งบการเงิน รายรับรายจ่ายหรือผลกำไรขาดทุนเป็นอย่างไร เพื่อประกอบการตัดสินใจ ทั้งนี้ยังคงต้องมีการทำการศึกษาต่อว่าธุรกิจที่เลือกลงทุนจะมีแผนการดำเนินการในอนาคตต่อไปได้อย่างไร มีนโยบายที่ชัดเจนหรือทิศทางในการดำเนินการแก้ไขปรับปรุงอย่างไรบ้าง หากไม่ใช่ผู้เชี่ยวชาญและมีประสบการณ์คงจะไม่ใช่เรื่องง่ายที่จะทราบอย่างทะลุปรุโปร่งหรือครอบคลุมหมดทุกด้าน ความเป็นไปได้ที่จะเกิดโอกาสพลาดอย่างปฏิเสธไม่ได้เช่นกัน การปรึกษาผู้เชี่ยวชาญหรือผู้ที่มีประสบการณ์โดยตรงจะช่วยลดความเสี่ยงและยังได้รับผลวิเคราะห์ออกมาได้แม่นยำมากยิ่งขึ้น<br />เมื่อผ่านการวิเคราะห์อย่างละเอียดถี่ถ้วนครอบคลุมทุกด้าน ก็จะสามารถรู้ได้ถึงกระบวนการและรูปแบบในการดำเนินธุรกิจต่อไปในอนาคต หากรูปแบบในการดำเนินงานมีแนวโน้มความเป็นไปได้ในการลงทุน คงไม่ใช่เรื่องยากที่จะตัดสินใจลงทุนในการขยายธุรกิจ แต่อย่างไรก็ตามปฏิเสธไม่ได้ว่าทุกการลงทุนมีความเสี่ยงเสมอโดยเฉพาะหากเราลงทุนในธุรกิจที่เราไม่มีประสบการณ์หรือความเชี่ยวชาญก็จะมีความเสี่ยงมากยิ่งขึ้นเป็นเงาตามตัว<br />การขยายธุรกิจโดยที่มีโอกาสประสบความสำเร็จนั้นจำเป็นต้องคำนึงถึงองค์ประกอบหลายอย่างหนึ่งในนั้นคือจะต้องขยายกิจการในช่วงเวลาที่เหมาะสม ไม่ช้าไม่เร็วจนเกินไป ซึ่งระยะเวลาที่แหมาะสมในการ</p>', '', '2017-08-12 00:00:00', null, null, '6', '', '2017-08-12 10:44:36', '2017-08-13 05:44:37', '0');
INSERT INTO `articles` VALUES ('6', '1', 'พัฒนาแบบไดนามิก', 'DYNAMIC DEVELOPMENT', 'การพัฒนาที่มีการคิดค้นและศึกษาอย่างต่อเนื่องไม่หยุดนิ่งโดยอาศัยเทคโนโลยีที่ล้ำสมัยเป็นตัวขับเคลื่อนเพื่อให้มีความถูกต้องแม่นยำของข้อมูลครอบคลุมทุกความต้องการเพื่อตอบสนองตอบต่อความต้องการที่หลากหลายที่ครบทุกด้านอย่างมีความคิดสร้างสรรค์ การพัฒนาแบบไดนามิกจึงเป็นคำตอบของทุกคำถามได้เป็นอย่างดี', 'Development of innovation and continuous study by using modern technology as the driver is the way to get the correct data in order to serve various demands with creation. Dynamic development is the right answer to every question.', '', '', '2017-08-12 00:00:00', null, null, '7', '', '2017-08-12 10:46:12', '2017-08-13 05:46:53', '0');
INSERT INTO `articles` VALUES ('7', '1', 'ยินดีต้อนรับ', 'WELCOME', 'บริษัท อาร์เอ็มเอส แฟมิเลี่ย จำกัด (“RMS FAMELIA CO.LTD”) ให้บริการด้านที่ปรึกษาธุรกิจ การเงินและการลงทุน ทั้งในประเทศและต่างประเทศ อาทิ น้ำมัน หุ้น ทองคำ ค่าเงิน และอสังหาริมทรัพย์ ที่สามารถให้นักลงทุนเกิดกำไรจากการดำเนินการ \r\nจัดตั้งขึ้นเพื่อตอบโจทย์ให้กับนักลงทุนทั้งเจ้าของกิจการนักลงทุนหลากหลาย เราพร้อมให้คำปรึกษาทางด้านการลงทุน ธุรกิจการเงิน โดยมีทีมงานที่มีประสบการณ์และเก่งด้วยด้านบริหารจัดการ ทั้งเทคโนโลยีที่ทันสมัยขึ้น เราขอตอบโจทย์ให้คุณในการค้นหาความสำเร็จของธุรกิจด้านการลงทุนตลอดระยะการดำเนินงานเป็นที่ปรึกษาด้านการลงทุนเราเริ่มทุกอย่างจากขั้นตอนพื้นฐานมาก่อน โดยวางแผนและดำเนินการอย่างละเอียดถี่ถ้วน และค่อยๆสร้างผลงานให้กับนักลงทุนมาตลอดโดยเรื่อยมา จนเราเป็นทางเลือกที่นักลงทุนมั่นใจที่จะเชือมั่นในผลงานการดำเนินการ\r\nเราไม่เคยเสียเครดิตใดๆในการประกอบการเรื่อยมา ทางเราได้รับการสนับสนุนจากองค์กรธุรกิจในประเทศและต่างประเทศ อีกทั้งกลุ่มนักลงทุนที่เราสร้างผลงานที่เป็นที่พอใจกับการดำเนินการ \r\nติดต่อสอบถามข้อมูลเพิ่มเติม หรือ ขอคำปรึกษาเบื้องต้น ฟรี', 'RMS FAMELIA CO.LTD (“RMS FAMELIA CO.LTD”) provides service of business, financial and investment consultation both in domestic and in foreign country such as oil, stock, gold, currency and asset that can make profit. \r\nEstablished to provide solution to the businessperson and the investor – we ready to give a investment and financial business consultation by experience and well-managed team work. Together with modern technology, we can provide you the solution for business success in investment.During the period as investment consultant, we start every process from basic by planning and operating thoroughly and gently create achievement to the investor continuously and become the trustworthy choice for the investor\r\nWe never lose any credit in our operation. We receive support from business organization both domestic and in foreign country and the investor satisfied with our performance. \r\n\r\nFor more information or basic consultation – FREE!', '', '', '2017-08-12 00:00:00', null, '3cddd8e4-6214-4de8-9e24-a0e28d6da813.jpg', null, '', '2017-08-12 10:51:27', '2017-08-14 14:46:29', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of article_images
-- ----------------------------
INSERT INTO `article_images` VALUES ('2', '5', '33235469-1055-4c7b-b65a-214299fe1557', 'page-1_img11.jpg', '33235469-1055-4c7b-b65a-214299fe1557.jpg', '1', '50', '2017-08-13 02:22:35', null);
INSERT INTO `article_images` VALUES ('3', '6', '5b3a7fe4-043d-401d-beb9-4b74082165c3', 'page-1_img12.jpg', '5b3a7fe4-043d-401d-beb9-4b74082165c3.jpg', '1', '148', '2017-08-13 03:19:12', null);

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('1', 'berm', 'bsongkran@hotmail.com', '0256522', 'subject ', 'message message message message message message ', '2017-08-13 07:07:56', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of galleries
-- ----------------------------
INSERT INTO `galleries` VALUES ('1', '1', 'โครงการของเรา', 'OUR PROJECT', '', '', '', null, '2017-08-13 04:50:32', '2017-08-13 05:22:36', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of galleries_images
-- ----------------------------
INSERT INTO `galleries_images` VALUES ('1', '1', '<p>RMS FAMLELIA</p>', '<p>RMS FAMLELIA</p>', 'cd3c692e-24a5-4c15-90a8-04c685152ed8.jpg', '1', 'cd3c692e-24a5-4c15-90a8-04c685152ed8', 'page-1_img02.jpg', '33', '', '2017-08-13 05:20:02', '2017-08-13 10:45:48');
INSERT INTO `galleries_images` VALUES ('2', '1', '<p>RMS FAMLELIA</p>', '<p>RMS FAMLELIA</p>', 'bc73fe3c-2d44-4552-bc39-eeeece251e29.jpg', '2', 'bc73fe3c-2d44-4552-bc39-eeeece251e29', 'page-1_img01.jpg', '79', '', '2017-08-13 05:20:02', '2017-08-13 10:46:01');
INSERT INTO `galleries_images` VALUES ('3', '1', '<p>RMS FAMLELIA</p>', '<p>RMS FAMLELIA</p>', '584771d5-2652-4f32-bb73-f57708c2fdb1.jpg', '3', '584771d5-2652-4f32-bb73-f57708c2fdb1', 'page-1_img03.jpg', '90', '', '2017-08-13 05:20:02', '2017-08-13 10:46:08');
INSERT INTO `galleries_images` VALUES ('4', '1', '<p>RMS FAMELIA</p>', '<p>RMS FAMELIA</p>', '8da2db6e-063a-481a-b7cb-4fdb5dcd0a33.jpg', '4', '8da2db6e-063a-481a-b7cb-4fdb5dcd0a33', 'page-1_img04.jpg', '91', '', '2017-08-13 05:20:02', '2017-08-13 10:53:12');
INSERT INTO `galleries_images` VALUES ('5', '1', '<p>RMS FAMELIA</p>', '<p>RMS FAMELIA</p>', 'da087059-3dcd-42f9-8cd4-ed469dca7cc7.jpg', '5', 'da087059-3dcd-42f9-8cd4-ed469dca7cc7', 'page-1_img05.jpg', '142', '', '2017-08-13 05:20:02', '2017-08-13 10:53:18');
INSERT INTO `galleries_images` VALUES ('6', '1', '<p>RMS FAMELIA</p>', '<p>RMS FAMELIA</p>', 'ecde9906-5b72-403f-8a24-612be3f21c4c.jpg', '6', 'ecde9906-5b72-403f-8a24-612be3f21c4c', 'page-1_img06.jpg', '58', '', '2017-08-13 05:20:02', '2017-08-13 10:53:25');
INSERT INTO `galleries_images` VALUES ('7', '1', '<p>RMS FAMELIA</p>', '<p>RMS FAMELIA</p>', '58e6c305-1feb-485d-a98c-bfc6e587dbe9.jpg', '7', '58e6c305-1feb-485d-a98c-bfc6e587dbe9', 'page-1_img07.jpg', '136', '', '2017-08-13 05:20:02', '2017-08-13 10:53:33');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(20) NOT NULL,
  `name_th` varchar(100) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `detail_th` text,
  `detail_en` text,
  `menu_icon` varchar(200) DEFAULT NULL,
  `published` bit(1) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'home', 'หน้าแรก', 'Home', '', '', null, '', '2016-05-22 13:59:29', '2017-08-12 07:25:11', '0');
INSERT INTO `pages` VALUES ('2', 'about_us', 'เกี่ยวกับเรา', 'About us', '<p>บริษัท อาร์เอ็มเอส แฟมิเลี่ย จำกัด (RMS FAMELIA CO.,LTD.) หนึ่งในผู้นำและเชี่ยวชาญที่คร่ำหวอดอยู่ในวงการธุรกิจมาอย่างยาวนาน เราเป็นผู้ให้บริการด้านที่ปรึกษาทางธุรกิจเกี่ยวกับการเงิน การลงทุนในธุรกิจด้านต่างๆ อาทิเช่น น้ำมัน หุ้น ทองคำ ค่าเงิน อสังหาริมทรัพย์และอื่นๆ ทั้งภายในประเทศและต่างประเทศอย่างมืออาชีพ เพื่อตอบสนองต่อความต้องการของนักธุรกิจรุ่นใหม่ไฟแรงที่แสวงหาและมุ่งเน้นผลตอบแทนทั้งในแง่ของการบริหารการจัดการ การดำเนินการ และผลกำไรที่คุ้มค่าแก่การลงทุน</p>\r\n<p>ตลอดระยะการดำเนินงานเป็นที่ปรึกษาด้านการลงทุนเราเริ่มทุกอย่างจากขั้นตอนพื้นฐานมาก่อน โดยวางแผนและดำเนินการอย่างละเอียดถี่ถ้วน และค่อยๆสร้างผลงานให้กับนักลงทุนมาตลอดโดยเรื่อยมา จนเราเป็นทางเลือกที่นักลงทุนมั่นใจที่จะเชือมั่นในผลงานการดำเนินการ<br />เราไม่เคยเสียเครดิตใดๆในการประกอบการเรื่อยมา ทางเราได้รับการสนับสนุนจากองค์กรธุรกิจในประเทศและต่างประเทศ อีกทั้งกลุ่มนักลงทุนที่เราสร้างผลงานที่เป็นที่พอใจกับการดำเนินการ </p>\r\n<p>บริษัทเราพร้อมจะเป็นที่ปรึกษาด้านการลงทุนที่มั่นคงและมีประสิทธิภาพ ตึก AIA ชั้น 20 พื้นที่ 20/208 ถนนรัชดา 3 เขตแขวงดินแดง กรุงเทพมหานคร 10400 <br />โทร +662-018-1346 แฟกส์ +662-018-1346 อีเมลล์ <a href=\"mailto:SERVICE@RMSF.CO.TH\">SERVICE@RMSF.CO.TH</a></p>\r\n<p>ติดต่อสอบถามข้อมูลเพิ่มเติม หรือ ขอคำปรึกษาเบื้องต้น ฟรี</p>', '<p>RMS FAMELIA CO.,LTD. (RMS FAMELIA CO.,LTD.) is one of the expert in this field of business for long time. We provides service of business, financial and investment consultation both in domestic and in foreign country such as oil, stock, gold, currency and asset to serve the needs of young generation of the investor and focus in management, operation and worth profit in the investment.</p>\r\n<p>During the period as investment consultant, we start every process from basic by planning and operating thoroughly and gently create achievement to the investor continuously and become the trustworthy choice for the investor.<br />We never lose any credit in our operation. We receive support from business organization both domestic and in foreign country and the investor satisfied with our performance.&nbsp;</p>\r\n<p>Our company ready to be the consultant for firm and efficiency investment. AIA Building. 20th floor 20/208 Ratchada Road, Din Daeng Sub-districr, Din Daeng District, Bangkok 10400&nbsp;<br />Tel. : +662-018-1346 fax. : +662-018-1346 e-mail: <a href=\"mailto:SERVICE@RMSF.CO.TH\">SERVICE@RMSF.CO.TH</a></p>\r\n<p>For more information or basic consultation &ndash; FREE!</p>', null, '', '2016-05-22 14:25:01', '2017-08-13 07:45:51', '0');
INSERT INTO `pages` VALUES ('3', 'service', 'บริการ', 'Service', '<p>บริษัท อาร์เอ็มเอส แฟมิเลี่ย จำกัด (“RMS Famelia”) ให้บริการด้านที่ปรึกษาธุรกิจ การเงินและการลงทุน โดยมีรายละเอียด ดังนี้<br />บริการจัดการลงทุนในตลาดอัตราแลกเปลี่ยนสกุลเงินต่างประเทศ<br />จัดหาแหล่งลงทุนในตลาดอัตราแลกเปลี่ยน การเก็งค่าเงิน น้ำมัน ทองคำ แลก CFD สร้างกำไรในการลงทุนอย่างมีความมั่นคงและปลอดภัยในระยะสั้นและระยะยาว<br /> <br />บริการจัดหาแหล่งเงินทุน และผู้ร่วมทุน จัดหาผู้ร่วมทุนทั้งในรูปแบบของเงินทุน (Equity) และเงินกู้ (Debt) ที่เหมาะสมกับธุรกิจ รวมทั้งช่วยจัดเตรียมข้อมูลสนับสนุน และเจรจาเงื่อนไขการร่วมทุน</p>\r\n<p>บริการจัดทำแผนธุรกิจ ให้คำแนะนำ และช่วยเหลือในการจัดทำแผนธุรกิจ และจัดประชุมเชิงปฏิบัติการเพื่อระดมความคิดเห็น โดยบริษัทสามารถนำแผนไปปฏิบัติให้เกิดผลสำเร็จ และ/หรือ เสนอผู้ร่วมทุน หรือสถาบันการเงินที่เกี่ยวข้อง<br /> <br />บริการจัดหาพันธมิตรทางธุรกิจ จัดหาพันธมิตร ที่เหมาะสมกับธุรกิจ และเกื้อหนุนกัน เพื่อช่วยสร้างโอกาสทางธุรกิจเพิ่มขึ้น และทำให้ผลประกอบการดีขึ้น (เพิ่มรายได้ / ลดต้นทุน / ลดค่าใช้จ่าย) หรือเพิ่มประสิทธิภาพ<br /> <br />บริการศึกษาความเป็นไปได้ของโครงการ ให้คำแนะนำ และช่วยเหลือในการจัดทำรายงานศึกษาความเป็นไปได้ ของโครงการลงทุน เพื่อรองรับการเติบโตของธุรกิจ บริการจัดหาผู้ซื้อ/ผู้ขายทรัพย์สิน หรือกิจการ จัดหาผู้ซื้อ/ผู้ขายทรัพย์สิน หรือกิจการ รวมทั้งช่วยจัดเตรียมข้อมูลสนับสนุน และเจรจาเงื่อนไขการซื้อ/ขายที่เกี่ยวข้อง</p>', '<p>RMS Famelia company (“RMS Famelia”) limited provides service for business, financial and investment consultation as follows:<br />Foreign exchange rate market investment service<br />Find investment opportunity in currency exchange rate market, currency market, oil, gold, CFD – create profit from firm and safe investment in short term and long term<br /> <br />Find source of investment funds partner both in form of (Equity) and debt suitable (Debt) to the business including support the information and negotiate for investment terms<br />Make business plan give a consult and help in business plan and conduct the operation meeting to gather comments – the company can use such plan to operate and/or propose to the partner or related financial institute<br /> <br />Provide suitable business partner to increase business opportunity (increase profit/ decrease cost/ decrease expenditure) or increase efficiency<br /> <br />Study the possibility of the project suggest and help in the feasibility study of invested project to support business growth, provide buyer/ seller of the asset or business including provide support data and negotiate related buying and selling terms</p>', null, '', '2016-05-22 19:20:45', '2017-08-13 08:52:50', '0');
INSERT INTO `pages` VALUES ('4', 'portfolio', 'รูปภาพผลงาน', 'Portfolio', '', '', null, '', '2016-05-22 14:37:47', '2017-08-05 12:27:49', '0');
INSERT INTO `pages` VALUES ('6', 'founder', 'ผู้ก่อตั้ง', 'Founder', '<h3>นาย อภิรักษ์  โกฎธิ</h3>\r\n<p>(CEO )กรรมการผู้จัด</p>\r\n<ul>\r\n<li>- ประสบการณ์ทำงานด้านการตลาดออนไลน์และบริหารองค์กรต่างๆ กว่า 7 ปี โดยมีประสบการณ์และความชำนาญด้านด้านการตลาดธุรกิจ การบริหารจัดการระบบองค์กรการเงิน ภาคเอกชน</li>\r\n<li>- ประสบการณ์ด้านการวางแผนการลงทุนและการเทรดกว่า 5 ปีในตลาด อัตราแลกเปลี่ยน ต่างประเทศ</li>\r\n<li>- ประสบการณ์และความชำนาญในการเป็นที่ปรึกษาสำหรับธุรกิจครอบครัว (Family Business) หรือ ธุรกิจที่บริหารโดยเจ้าของ (Owner Managed Business) โดยให้คำปรึกษาในการจัดหาแหล่งเงินทุนสำหรับขยายกิจการ หรือเพื่อเป็นเงินทุนหมุนเวียนในการดำเนินงาน จัดหาผู้ร่วมทุน (ทั้งในประเทศและต่างประเทศ) และจัดหาผู้ซื้อ/ผู้ขาย ทรัพย์สิน หรือกิจการ รวมทั้งการบริหารความเสี่ยงด้านการเงิน และการบริหารความเสี่ยงขององค์กร</li>\r\n</ul>', '<h3>MR. APIRUK &nbsp;KOTHI</h3>\r\n<p>(CEO)Managing Director</p>\r\n<ul>\r\n<li>- experience in online marketing of each organiztion for 7 years With experience and expertise in business market, the management of private financial institute</li>\r\n<li>- experience in business plan for investment and trade for more than 5 years in foreign currency exchange rate market</li>\r\n<li>- experience and expert as family business or owner managed business consultant by giving the consultation for source of investment funds to expand the business or as the cash flow for the operation, providing partner (domestic and in foreign country) and providing buyer/ seller for the asset and business including risk management for financial and risk of the organization</li>\r\n</ul>', null, '', '2016-05-24 16:54:59', '2017-08-13 08:54:34', '0');
INSERT INTO `pages` VALUES ('7', 'contact_us', 'ติดต่อเรา', 'Contact us', '<p>บริษัทเราพร้อมจะเป็นที่ปรึกษาด้านการลงทุนที่มั่นคงและมีประสิทธิภาพ ตึก AIA ชั้น 20 พื้นที่ 20/208 ถนนรัชดา 3 เขตแขวงดินแดง กรุงเทพมหานคร 10400&nbsp;<br />โทร +662-018-1346 แฟกส์ +662-018-1346 อีเมลล์ SERVICE@RMSF.CO.TH</p>', '<p>Our company ready to be the consultant for firm and efficiency investment. AIA Building. 20th floor 20/208 Ratchada Road, Din Daeng Sub-districr, Din Daeng District, Bangkok 10400 <br />Tel. : +662-018-1346 fax. : +662-018-1346 e-mail: SERVICE@RMSF.CO.TH</p>', null, '', '2016-05-22 19:21:16', '2017-08-13 08:55:41', '0');
INSERT INTO `pages` VALUES ('8', '', 'sddsdf', 'sdfsdf', '<p>sfsdf</p>', '<p>sfsdf</p>', 'e5b69f32-25d7-4d2a-a804-3045b3018aa9.jpg', '', '2017-08-14 17:14:56', '2017-08-14 17:17:41', '0');
INSERT INTO `pages` VALUES ('9', 'test', 'sfasdf', 'sdfsdf', '<p>sdfsdf</p>', '<p>ผปอผปแอผปอแผปอแผปอแผปอแปอปอ</p>', '962d7ba0-b815-4dfb-8c4a-82c8582552a2.jpg', '', '2017-08-14 17:36:11', '2017-08-14 17:40:27', '0');

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
  `fax` varchar(20) DEFAULT NULL,
  `facebook_link` varchar(500) DEFAULT NULL,
  `twitter_link` varchar(500) DEFAULT NULL,
  `instagram_link` varchar(500) DEFAULT NULL,
  `line_id` varchar(20) DEFAULT NULL,
  `vision_th` text,
  `vision_en` text,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', 'RMS FAMELIA', 'RMSF', 'thai', 'SERVICE@RMSF.CO.TH', 'ตึก AIA ชั้น 20 พื้นที่ 20/208 ถนนรัชดา 3 เขตแขวงดินแดง กรุงเทพมหานคร 10400 ', ' AIA Building. 20th floor 20/208 Ratchada Road, Din Daeng Sub-districr, Din Daeng District, Bangkok 10400 ', '662-018-1346', '0813187593', '6666', '', '', '', '', '', '<h2> </h2>', '2016-04-21 14:52:13', '2017-08-13 06:18:14');

-- ----------------------------
-- Table structure for slideshow
-- ----------------------------
DROP TABLE IF EXISTS `slideshow`;
CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `caption_en` text,
  `caption_th` text,
  `published` bit(1) NOT NULL,
  `order_seq` tinyint(3) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slideshow
-- ----------------------------
INSERT INTO `slideshow` VALUES ('1', '73ccb715-dbc5-49ff-a957-9d775c485eef.png', '<p>ทรัพยากร<br />ทรัพยากรเป็นส่วนสำคัญของการบ่งบอกปริมาณประกอบการดำเนินการ</p>', '<p>ทรัพยากร<br />ทรัพยากรเป็นส่วนสำคัญของการบ่งบอกปริมาณประกอบการดำเนินการ</p>', '', '1', '2017-08-13 10:09:41', '2017-08-13 11:28:28', '0');

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
INSERT INTO `users` VALUES ('1', 'Super', 'Admin', 'superadmin', '81dc9bdb52d04dc20036dbd8313ed055', 'bsongkran@hotmail.com', '55555', '1', null, '2017-08-14 17:05:14', '2016-05-20 19:04:09', '2016-06-25 11:47:52');
INSERT INTO `users` VALUES ('2', 'Operation', 'User', 'user', '81dc9bdb52d04dc20036dbd8313ed055', 'pv58@yahoo.com', '0866039101', '3', null, '2017-08-13 12:30:44', '2016-06-02 13:57:50', '2017-08-09 22:27:13');
INSERT INTO `users` VALUES ('3', 'General', 'Admin', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'pv58@yahoo.com', '0866039101', '2', null, '2017-08-14 17:03:41', '2016-06-26 04:09:23', '2017-08-09 22:45:50');
