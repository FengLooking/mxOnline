-- MySQL dump 10.17  Distrib 10.3.13-MariaDB, for osx10.14 (x86_64)
--
-- Host: localhost    Database: django_edu
-- ------------------------------------------------------
-- Server version	10.3.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user message',6,'add_usermessage'),(22,'Can change user message',6,'change_usermessage'),(23,'Can delete user message',6,'delete_usermessage'),(24,'Can view user message',6,'view_usermessage'),(25,'Can add 用户信息',7,'add_userprofile'),(26,'Can change 用户信息',7,'change_userprofile'),(27,'Can delete 用户信息',7,'delete_userprofile'),(28,'Can view 用户信息',7,'view_userprofile'),(29,'Can add 轮播图',8,'add_banner'),(30,'Can change 轮播图',8,'change_banner'),(31,'Can delete 轮播图',8,'delete_banner'),(32,'Can view 轮播图',8,'view_banner'),(33,'Can add 邮箱验证码',9,'add_emailverifyrecord'),(34,'Can change 邮箱验证码',9,'change_emailverifyrecord'),(35,'Can delete 邮箱验证码',9,'delete_emailverifyrecord'),(36,'Can view 邮箱验证码',9,'view_emailverifyrecord'),(37,'Can add 课程',10,'add_course'),(38,'Can change 课程',10,'change_course'),(39,'Can delete 课程',10,'delete_course'),(40,'Can view 课程',10,'view_course'),(41,'Can add 章节',11,'add_lesson'),(42,'Can change 章节',11,'change_lesson'),(43,'Can delete 章节',11,'delete_lesson'),(44,'Can view 章节',11,'view_lesson'),(45,'Can add 视频',12,'add_video'),(46,'Can change 视频',12,'change_video'),(47,'Can delete 视频',12,'delete_video'),(48,'Can view 视频',12,'view_video'),(49,'Can add 课程资源',13,'add_courseresource'),(50,'Can change 课程资源',13,'change_courseresource'),(51,'Can delete 课程资源',13,'delete_courseresource'),(52,'Can view 课程资源',13,'view_courseresource'),(53,'Can add 城市',14,'add_citydict'),(54,'Can change 城市',14,'change_citydict'),(55,'Can delete 城市',14,'delete_citydict'),(56,'Can view 城市',14,'view_citydict'),(57,'Can add 课程机构',15,'add_courseorg'),(58,'Can change 课程机构',15,'change_courseorg'),(59,'Can delete 课程机构',15,'delete_courseorg'),(60,'Can view 课程机构',15,'view_courseorg'),(61,'Can add 教师',16,'add_teacher'),(62,'Can change 教师',16,'change_teacher'),(63,'Can delete 教师',16,'delete_teacher'),(64,'Can view 教师',16,'view_teacher'),(65,'Can add 用户咨询',17,'add_userask'),(66,'Can change 用户咨询',17,'change_userask'),(67,'Can delete 用户咨询',17,'delete_userask'),(68,'Can view 用户咨询',17,'view_userask'),(69,'Can add 用户消息',18,'add_usermessage'),(70,'Can change 用户消息',18,'change_usermessage'),(71,'Can delete 用户消息',18,'delete_usermessage'),(72,'Can view 用户消息',18,'view_usermessage'),(73,'Can add 用户收藏',19,'add_userfavorite'),(74,'Can change 用户收藏',19,'change_userfavorite'),(75,'Can delete 用户收藏',19,'delete_userfavorite'),(76,'Can view 用户收藏',19,'view_userfavorite'),(77,'Can add 用户课程',20,'add_usercourse'),(78,'Can change 用户课程',20,'change_usercourse'),(79,'Can delete 用户课程',20,'delete_usercourse'),(80,'Can view 用户课程',20,'view_usercourse'),(81,'Can add 课程评论',21,'add_coursecomments'),(82,'Can change 课程评论',21,'change_coursecomments'),(83,'Can delete 课程评论',21,'delete_coursecomments'),(84,'Can view 课程评论',21,'view_coursecomments'),(85,'Can add Bookmark',22,'add_bookmark'),(86,'Can change Bookmark',22,'change_bookmark'),(87,'Can delete Bookmark',22,'delete_bookmark'),(88,'Can view Bookmark',22,'view_bookmark'),(89,'Can add User Setting',23,'add_usersettings'),(90,'Can change User Setting',23,'change_usersettings'),(91,'Can delete User Setting',23,'delete_usersettings'),(92,'Can view User Setting',23,'view_usersettings'),(93,'Can add User Widget',24,'add_userwidget'),(94,'Can change User Widget',24,'change_userwidget'),(95,'Can delete User Widget',24,'delete_userwidget'),(96,'Can view User Widget',24,'view_userwidget'),(97,'Can add log entry',25,'add_log'),(98,'Can change log entry',25,'change_log'),(99,'Can delete log entry',25,'delete_log'),(100,'Can view log entry',25,'view_log'),(101,'Can add captcha store',26,'add_captchastore'),(102,'Can change captcha store',26,'change_captchastore'),(103,'Can delete captcha store',26,'delete_captchastore'),(104,'Can view captcha store',26,'view_captchastore'),(105,'Can add 轮播课程',27,'add_bannercourse'),(106,'Can change 轮播课程',27,'change_bannercourse'),(107,'Can delete 轮播课程',27,'delete_bannercourse'),(108,'Can view 轮播课程',27,'view_bannercourse');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES (57,'UTII','utii','39bbb6d66d2d99f603a837776c6858a7917abba3','2019-08-19 21:38:57.150353'),(60,'IGGW','iggw','97b761419d210872a38ffe6062ff854f744a55b5','2019-08-29 23:23:45.626941'),(61,'GHVZ','ghvz','6f3c4ba89e6e95e4ffda163cd0b7b5f6ba064f69','2019-08-29 23:23:48.318908');
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_course`
--

DROP TABLE IF EXISTS `course_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `category` varchar(20) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `what_learn` varchar(300) NOT NULL,
  `youneed_know` varchar(300) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_course_course_org_id_6a10e205_fk_organizat` (`course_org_id`),
  KEY `course_course_teacher_id_f04a37b5_fk_organization_teacher_id` (`teacher_id`),
  CONSTRAINT `course_course_course_org_id_6a10e205_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `course_course_teacher_id_f04a37b5_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_course`
--

LOCK TABLES `course_course` WRITE;
/*!40000 ALTER TABLE `course_course` DISABLE KEYS */;
INSERT INTO `course_course` VALUES (1,'django入门','django入门','django入门','cj',0,2,0,'course/2019/08/aobama.png',33,'2019-08-15 22:23:00.000000',1,'后端开发','',NULL,'','',1),(2,'java入门','java入门','java入门java入门java入门java入门java入门java入门java入门java入门java入门java入门java入门java入门java入门java入门java入门java入门java入门java入门','cj',0,0,0,'course/2019/08/zwj.png',13,'2019-08-30 19:55:00.000000',1,'后端开发','',NULL,'','',0),(3,'androw','androw课程','androw课程','zj',0,0,0,'course/2019/08/mysql.jpg',35,'2019-08-30 19:57:00.000000',2,'后端开发','',NULL,'','',0),(4,'MySQL01','MySQL入门','MySQL01学习、入门','gj',0,1,0,'course/2019/08/mysql_C0h7n5Y.jpg',91,'2019-08-30 19:58:00.000000',5,'后端开发','',NULL,'','',1),(5,'java02','java入门','java入门','cj',0,0,0,'course/2019/09/57035ff200014b8a06000338-240-135_0nFiBSI_dFR2HCB_dZCmuJg.jpg',1234,'2019-08-30 19:59:00.000000',6,'后端开发','java',NULL,'学到java编程','爱学习',0),(6,'java03','java学习','java技能','gj',0,0,0,'course/2019/08/57035ff200014b8a06000338-240-135_dHfj8Nq.jpg',44,'2019-08-30 19:59:00.000000',7,'后端开发','',NULL,'','',0),(7,'java04','java','java学习java学习java学习java学习java学习','zj',0,0,0,'course/2019/08/57035ff200014b8a06000338-240-135_0nFiBSI.jpg',22,'2019-08-30 20:00:00.000000',8,'后端开发','',NULL,'','',0),(8,'python01','python入门','python入门python入门','cj',0,0,0,'course/2019/08/540e57300001d6d906000338-240-135.jpg',12,'2019-08-30 20:01:00.000000',11,'后端开发','',NULL,'','',0),(9,'python','python入门学习','python入门学习python入门学习','zj',0,1,0,'course/2019/08/540e57300001d6d906000338-240-135_Z3HIQ2t.jpg',4,'2019-08-30 20:01:00.000000',12,'后端开发','',NULL,'','',0),(10,'Python','python菜鸟入门','python菜鸟入门python菜鸟入门','gj',0,0,0,'course/2019/08/540e57300001d6d906000338-240-135_wH52IED.jpg',2,'2019-08-30 20:02:00.000000',13,'后端开发','',NULL,'','',1),(11,'python04','python learning','python learningpython learning','cj',0,0,0,'course/2019/08/540e57300001d6d906000338-240-135_n0L8vbw.jpg',3,'2019-08-30 20:02:00.000000',14,'后端开发','',NULL,'','',0),(12,'python','python基础','python基础python基础','cj',0,0,0,'course/2019/08/540e57300001d6d906000338-240-135_mvvGYHL.jpg',5,'2019-08-30 20:03:00.000000',16,'后端开发','',NULL,'','',0),(13,'python数据','python数据','python数据python数据','zj',0,0,0,'course/2019/08/540e57300001d6d906000338-240-135_mvvGYHL_dnI2aIp.jpg',8,'2019-08-30 20:03:00.000000',4,'后端开发','',NULL,'','',0),(14,'大数据','python数据分析','python数据分析','gj',0,0,0,'course/2019/08/540e57300001d6d906000338-240-135_MSIqfvw.jpg',6,'2019-08-30 20:04:00.000000',3,'后端开发','',NULL,'','',0),(15,'移动app','java移动端','java移动端','cj',0,0,0,'course/2019/08/57035ff200014b8a06000338-240-135_0nFiBSI_U1ZV58m.jpg',9,'2019-08-30 20:04:00.000000',17,'后端开发','',NULL,'','',0),(16,'Android入门','Android入门','Android入门','cj',0,58,0,'course/2019/09/57035ff200014b8a06000338-240-135_dHfj8Nq.jpg',67,'2019-08-30 20:05:00.000000',2,'后端开发','java',1,'android基础','页面开发',1),(17,'java','菜鸟java','菜鸟java菜鸟java','cj',0,1,0,'course/2019/08/57035ff200014b8a06000338-240-135_dHfj8Nq_3a2R9Z4.jpg',31,'2019-08-30 20:05:00.000000',10,'后端开发','java',NULL,'','',0),(18,'神的进阶','java高级','<p style=\"text-align: center; text-indent: 2em;\">&nbsp; &nbsp; java高级</p><p style=\"text-indent: 2em;\"><img src=\"/media/courses/ueditor/57035ff200014b8a06000338-240-135_0nFiBSI_dFR2HCB_20190914224253_813.jpg\" title=\"\" alt=\"57035ff200014b8a06000338-240-135_0nFiBSI_dFR2HCB.jpg\"/></p><p style=\"text-indent: 2em;\"><img src=\"http://img.baidu.com/hi/jx2/j_0013.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0015.gif\"/></p><h1 style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: left; margin: 0px 0px 10px;\">标题一</h1><table><tbody><tr class=\"firstRow\"><td width=\"95\" valign=\"top\" style=\"word-break: break-all;\">1</td><td width=\"95\" valign=\"top\" style=\"word-break: break-all;\">2</td><td width=\"95\" valign=\"top\" style=\"word-break: break-all;\">3</td><td width=\"95\" valign=\"top\" style=\"word-break: break-all;\">4</td><td width=\"95\" valign=\"top\" style=\"word-break: break-all;\">5</td></tr><tr><td width=\"95\" valign=\"top\" style=\"word-break: break-all;\"><p>2</p></td><td width=\"95\" valign=\"top\"><br/></td><td width=\"95\" valign=\"top\"><br/></td><td width=\"95\" valign=\"top\"><br/></td><td width=\"95\" valign=\"top\"><br/></td></tr><tr><td width=\"95\" valign=\"top\" style=\"word-break: break-all;\">3</td><td width=\"95\" valign=\"top\"><br/></td><td width=\"95\" valign=\"top\"><br/></td><td width=\"95\" valign=\"top\"><br/></td><td width=\"95\" valign=\"top\"><br/></td></tr><tr><td width=\"95\" valign=\"top\" style=\"word-break: break-all;\">4</td><td width=\"95\" valign=\"top\"><br/></td><td width=\"95\" valign=\"top\"><br/></td><td width=\"95\" valign=\"top\"><br/></td><td width=\"95\" valign=\"top\"><br/></td></tr><tr><td width=\"95\" valign=\"top\" style=\"word-break: break-all;\">5</td><td width=\"95\" valign=\"top\"><br/></td><td width=\"95\" valign=\"top\"><br/></td><td width=\"95\" valign=\"top\"><br/></td><td width=\"95\" valign=\"top\"><br/></td></tr></tbody></table><p><br/></p>','gj',0,2,0,'course/2019/09/57035ff200014b8a06000338-240-135_0nFiBSI_dFR2HCB_flaj6fd.jpg',24,'2019-08-30 20:06:00.000000',1,'后端开发','java',NULL,'可以学到java知识','课时多',0);
/*!40000 ALTER TABLE `course_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_courseresource`
--

DROP TABLE IF EXISTS `course_courseresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_courseresource_course_id_d5504211_fk_course_course_id` (`course_id`),
  CONSTRAINT `course_courseresource_course_id_d5504211_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_courseresource`
--

LOCK TABLES `course_courseresource` WRITE;
/*!40000 ALTER TABLE `course_courseresource` DISABLE KEYS */;
INSERT INTO `course_courseresource` VALUES (1,'java文件','course/resource/2019/09/scsg-image.jpg','2019-09-01 20:50:00.000000',16);
/*!40000 ALTER TABLE `course_courseresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_lesson`
--

DROP TABLE IF EXISTS `course_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_lesson_course_id_65df4a1c_fk_course_course_id` (`course_id`),
  CONSTRAINT `course_lesson_course_id_65df4a1c_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_lesson`
--

LOCK TABLES `course_lesson` WRITE;
/*!40000 ALTER TABLE `course_lesson` DISABLE KEYS */;
INSERT INTO `course_lesson` VALUES (1,'第一节','2019-08-15 22:29:00.000000',1),(2,'第一章 基础知识','2019-09-01 20:12:00.000000',18),(3,'第二章 进阶开发','2019-09-01 20:13:00.000000',18),(4,'第一章 基础知识','2019-09-01 20:27:00.000000',16),(5,'第二章 进阶开发','2019-09-01 20:27:00.000000',16);
/*!40000 ALTER TABLE `course_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_video`
--

DROP TABLE IF EXISTS `course_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_video_lesson_id_0731e8a9_fk_course_lesson_id` (`lesson_id`),
  CONSTRAINT `course_video_lesson_id_0731e8a9_fk_course_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `course_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_video`
--

LOCK TABLES `course_video` WRITE;
/*!40000 ALTER TABLE `course_video` DISABLE KEYS */;
INSERT INTO `course_video` VALUES (1,'1.1 helloworld','2019-09-01 20:13:00.000000',2,0,''),(2,'1.2 基本概念','2019-09-01 20:17:00.000000',2,0,''),(3,'2.1 test','2019-09-01 20:18:00.000000',3,0,''),(4,'2.2 test002','2019-09-01 20:18:00.000000',3,0,''),(5,'1.1 helloworld','2019-09-01 20:27:00.000000',4,3,'https://www.runoob.com/try/demo_source/movie.mp4'),(6,'1.2 基本概念','2019-09-01 20:27:00.000000',4,5,'http://www.imooc.com/video/1430'),(7,'1.3 课程训练','2019-09-01 20:27:00.000000',4,7,'http://www.imooc.com/video/1430'),(8,'2.1 test','2019-09-01 20:28:00.000000',5,8,'http://www.imooc.com/video/1430'),(9,'2.2 test002','2019-09-01 20:28:00.000000',5,9,'http://www.imooc.com/video/1430'),(10,'2.3 开始训练','2019-09-01 20:28:00.000000',5,76,'http://www.imooc.com/video/1430');
/*!40000 ALTER TABLE `course_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-08-13 21:09:41.155180','2','tim',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(26,'captcha','captchastore'),(4,'contenttypes','contenttype'),(27,'course','bannercourse'),(10,'course','course'),(13,'course','courseresource'),(11,'course','lesson'),(12,'course','video'),(21,'operation','coursecomments'),(17,'operation','userask'),(20,'operation','usercourse'),(19,'operation','userfavorite'),(18,'operation','usermessage'),(14,'organization','citydict'),(15,'organization','courseorg'),(16,'organization','teacher'),(5,'sessions','session'),(6,'stuedu','usermessage'),(8,'users','banner'),(9,'users','emailverifyrecord'),(7,'users','userprofile'),(22,'xadmin','bookmark'),(25,'xadmin','log'),(23,'xadmin','usersettings'),(24,'xadmin','userwidget');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-08-13 09:55:20.166913'),(2,'contenttypes','0002_remove_content_type_name','2019-08-13 09:55:20.194694'),(3,'auth','0001_initial','2019-08-13 09:55:20.254326'),(4,'auth','0002_alter_permission_name_max_length','2019-08-13 09:55:20.345138'),(5,'auth','0003_alter_user_email_max_length','2019-08-13 09:55:20.351476'),(6,'auth','0004_alter_user_username_opts','2019-08-13 09:55:20.356292'),(7,'auth','0005_alter_user_last_login_null','2019-08-13 09:55:20.361975'),(8,'auth','0006_require_contenttypes_0002','2019-08-13 09:55:20.363113'),(9,'auth','0007_alter_validators_add_error_messages','2019-08-13 09:55:20.367614'),(10,'auth','0008_alter_user_username_max_length','2019-08-13 09:55:20.372566'),(11,'auth','0009_alter_user_last_name_max_length','2019-08-13 09:55:20.377045'),(12,'auth','0010_alter_group_name_max_length','2019-08-13 09:55:20.381613'),(13,'auth','0011_update_proxy_permissions','2019-08-13 09:55:20.386590'),(14,'users','0001_initial','2019-08-13 09:55:20.448328'),(15,'admin','0001_initial','2019-08-13 09:55:20.558309'),(16,'admin','0002_logentry_remove_auto_add','2019-08-13 09:55:20.606371'),(17,'admin','0003_logentry_add_action_flag_choices','2019-08-13 09:55:20.613229'),(18,'course','0001_initial','2019-08-13 09:55:20.696842'),(19,'operation','0001_initial','2019-08-13 09:55:20.876276'),(20,'organization','0001_initial','2019-08-13 09:55:21.047189'),(21,'sessions','0001_initial','2019-08-13 09:55:21.105059'),(22,'stuedu','0001_initial','2019-08-13 09:55:21.130295'),(23,'users','0002_banner_emailverifyrecord','2019-08-13 09:55:21.171129'),(24,'users','0003_auto_20190813_1246','2019-08-13 12:46:27.978646'),(25,'xadmin','0001_initial','2019-08-13 23:10:03.780261'),(26,'xadmin','0002_log','2019-08-13 23:10:03.898653'),(27,'xadmin','0003_auto_20160715_0100','2019-08-13 23:10:03.972368'),(28,'captcha','0001_initial','2019-08-18 18:45:43.335966'),(29,'users','0004_auto_20190818_1845','2019-08-18 18:45:43.343105'),(30,'organization','0002_courseorg_category','2019-08-21 20:15:58.217223'),(31,'organization','0003_auto_20190826_2157','2019-08-26 21:57:46.571030'),(32,'course','0002_course_course_org','2019-08-28 19:49:36.398010'),(33,'organization','0004_teacher_image','2019-08-28 21:57:13.149858'),(34,'operation','0002_auto_20190829_2129','2019-08-29 21:29:47.490388'),(35,'course','0003_course_category','2019-08-31 19:42:09.976917'),(36,'course','0004_course_tag','2019-08-31 20:20:07.609296'),(37,'course','0005_lesson_url','2019-09-01 20:16:17.103987'),(38,'course','0006_auto_20190901_2044','2019-09-01 20:44:26.352262'),(39,'course','0007_course_teacher','2019-09-01 21:03:00.041924'),(40,'course','0008_auto_20190901_2114','2019-09-01 21:14:37.002978'),(41,'organization','0005_teacher_age','2019-09-04 19:32:11.333802'),(42,'users','0005_auto_20190908_1949','2019-09-08 19:50:00.301645'),(43,'users','0006_auto_20190908_1951','2019-09-08 19:51:41.717756'),(44,'course','0009_course_is_banner','2019-09-12 19:31:36.837918'),(45,'organization','0006_courseorg_tag','2019-09-12 20:06:39.455283'),(46,'course','0010_auto_20190914_2125','2019-09-14 21:25:37.812947');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('9aduqsotro23kspp0n9t9ueaggb38x0s','MDk3Njc5NzNhZDU5NzhmZjJlMjU0MTQwYTBlMGRlYTEwMzVjZmYyOTp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhbmNlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwODkzOTg3YzU3MDdmZjY5NWM2MzMwOWMwYmRkNGYxYThmZGJhZmVlIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTY3M2FcdTY3ODRcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTU3Y2VcdTVlMDJcIiwgXCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jaXR5ZGljdC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NjczYVx1Njc4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NvdXJzZW9yZy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTN9LCB7XCJ0aXRsZVwiOiBcIlx1NjU1OVx1NWUwOFwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL3RlYWNoZXIvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE0fV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY2l0eWRpY3QvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvdXNlcnByb2ZpbGUvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTkwYWVcdTdiYjFcdTlhOGNcdThiYzFcdTc4MDFcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2VtYWlsdmVyaWZ5cmVjb3JkL1wiLCBcImljb25cIjogXCJmYSBmYS1hZGRyZXNzLWJvb2stb1wiLCBcIm9yZGVyXCI6IDV9LCB7XCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1NTZmZVwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvYmFubmVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA2fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wifSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY0Y2RcdTRmNWNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTU0YThcdThiZTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNX0sIHtcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4YmM0XHU4YmJhXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vY291cnNlY29tbWVudHMvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE2fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE3fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTZkODhcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VybWVzc2FnZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTh9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJjb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE5fV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmFzay9cIn0sIHtcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCIsIFwidXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiAyMX1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1N2VjNFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlL2NvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogN30sIHtcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU4YmZlXHU3YTBiXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvYmFubmVyY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTdhZTBcdTgyODJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZS9sZXNzb24vXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDl9LCB7XCJ0aXRsZVwiOiBcIlx1ODljNlx1OTg5MVwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlL3ZpZGVvL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMH0sIHtcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4ZDQ0XHU2ZTkwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvY291cnNlcmVzb3VyY2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDExfV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvY291cnNlL1wifV0iLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2UiLCJjb3Vyc2UiXSwiIl19','2019-09-28 22:17:49.826331'),('lgcfjg36rt5q72ayyh1pad5qrjd2dvpb','NTBkYTNkMDgwMTgzZTZmMjBiNTA0OTNlNzY1ZjllMTk2MjBhM2U3Yjp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhbmNlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwODkzOTg3YzU3MDdmZjY5NWM2MzMwOWMwYmRkNGYxYThmZGJhZmVlIiwiTElTVF9RVUVSWSI6W1siY291cnNlIiwiY291cnNlIl0sIiJdLCJuYXZfbWVudSI6Ilt7XCJ0aXRsZVwiOiBcIlx1NjczYVx1Njc4NFx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NTdjZVx1NWUwMlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMn0sIHtcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU2NzNhXHU2Nzg0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY291cnNlb3JnL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxM30sIHtcInRpdGxlXCI6IFwiXHU2NTU5XHU1ZTA4XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vdGVhY2hlci9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jaXR5ZGljdC9cIn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcIm9yZGVyXCI6IDN9LCB7XCJ0aXRsZVwiOiBcIlx1OTBhZVx1N2JiMVx1OWE4Y1x1OGJjMVx1NzgwMVwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvZW1haWx2ZXJpZnlyZWNvcmQvXCIsIFwiaWNvblwiOiBcImZhIGZhLWFkZHJlc3MtYm9vay1vXCIsIFwib3JkZXJcIjogNX0sIHtcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU1NmZlXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2Vycy9iYW5uZXIvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vdXNlcnMvdXNlcnByb2ZpbGUvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NjRjZFx1NGY1Y1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NTRhOFx1OGJlMlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJhc2svXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE1fSwge1widGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThiYzRcdThiYmFcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi9jb3Vyc2Vjb21tZW50cy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTZ9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NjUzNlx1ODVjZlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJmYXZvcml0ZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTd9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NmQ4OFx1NjA2ZlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJtZXNzYWdlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxOH0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU4YmZlXHU3YTBiXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmNvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTl9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDIxfV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIn0sIHtcInRpdGxlXCI6IFwiXHU4YmE0XHU4YmMxXHU1NDhjXHU2Mzg4XHU2NzQzXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU3ZWM0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcIm9yZGVyXCI6IDJ9LCB7XCJ0aXRsZVwiOiBcIlx1Njc0M1x1OTY1MFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9wZXJtaXNzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1sb2NrXCIsIFwib3JkZXJcIjogNH1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIn0sIHtcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdThiZmVcdTdhMGJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZS9iYW5uZXJjb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDh9LCB7XCJ0aXRsZVwiOiBcIlx1N2FlMFx1ODI4MlwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlL2xlc3Nvbi9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU4OWM2XHU5ODkxXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvdmlkZW8vXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThkNDRcdTZlOTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZS9jb3Vyc2VyZXNvdXJjZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTF9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2NvdXJzZS9jb3Vyc2UvXCJ9XSJ9','2019-09-28 22:29:58.201203'),('puzqdl71vs6iiya04y0csgak6railj8w','NTY0NDM0M2ZjNDBkYTAxOTVkZWJjMjFjYzBmMjg1YjJlMjRlZTBlNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFuY2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImRlOWE3ODViMDk4MWZkNmE1NTI0Y2Y3M2NiOTExY2I3NzMzZDBjZjIiLCJuYXZfbWVudSI6Ilt7XCJ0aXRsZVwiOiBcIlx1NjczYVx1Njc4NFx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NTdjZVx1NWUwMlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU2NzNhXHU2Nzg0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY291cnNlb3JnL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMn0sIHtcInRpdGxlXCI6IFwiXHU2NTU5XHU1ZTA4XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vdGVhY2hlci9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jaXR5ZGljdC9cIn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcIm9yZGVyXCI6IDN9LCB7XCJ0aXRsZVwiOiBcIlx1OTBhZVx1N2JiMVx1OWE4Y1x1OGJjMVx1NzgwMVwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvZW1haWx2ZXJpZnlyZWNvcmQvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDV9LCB7XCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1NTZmZVwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvYmFubmVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA2fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wifSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY0Y2RcdTRmNWNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTU0YThcdThiZTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNH0sIHtcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4YmM0XHU4YmJhXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vY291cnNlY29tbWVudHMvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE1fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE2fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTZkODhcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VybWVzc2FnZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTd9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJjb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE4fV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmFzay9cIn0sIHtcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCIsIFwidXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiAyMH1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1N2VjNFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlL2NvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogN30sIHtcInRpdGxlXCI6IFwiXHU3YWUwXHU4MjgyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvbGVzc29uL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTg5YzZcdTk4OTFcIiwgXCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZS92aWRlby9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4ZDQ0XHU2ZTkwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvY291cnNlcmVzb3VyY2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEwfV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvY291cnNlL1wifV0iLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdfQ==','2019-09-28 09:29:34.244687'),('r17pwyw5jugqemvsv4r6409osq4b94zt','MDM3ZGIyNThiNmYxZmFiNjk1NDg2ODBlZWZkMGM1YWUwODg3ZTU4Mzp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhbmNlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwODkzOTg3YzU3MDdmZjY5NWM2MzMwOWMwYmRkNGYxYThmZGJhZmVlIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTY3M2FcdTY3ODRcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTU3Y2VcdTVlMDJcIiwgXCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jaXR5ZGljdC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTF9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NjczYVx1Njc4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NvdXJzZW9yZy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NjU1OVx1NWUwOFwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL3RlYWNoZXIvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEzfV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY2l0eWRpY3QvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvdXNlcnByb2ZpbGUvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTkwYWVcdTdiYjFcdTlhOGNcdThiYzFcdTc4MDFcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2VtYWlsdmVyaWZ5cmVjb3JkL1wiLCBcImljb25cIjogXCJmYSBmYS1hZGRyZXNzLWJvb2stb1wiLCBcIm9yZGVyXCI6IDV9LCB7XCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1NTZmZVwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvYmFubmVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA2fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wifSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY0Y2RcdTRmNWNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTU0YThcdThiZTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNH0sIHtcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4YmM0XHU4YmJhXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vY291cnNlY29tbWVudHMvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE1fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE2fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTZkODhcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VybWVzc2FnZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTd9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJjb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE4fV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmFzay9cIn0sIHtcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCIsIFwidXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiAyMH1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1N2VjNFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlL2NvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogN30sIHtcInRpdGxlXCI6IFwiXHU3YWUwXHU4MjgyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvbGVzc29uL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTg5YzZcdTk4OTFcIiwgXCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZS92aWRlby9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4ZDQ0XHU2ZTkwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvY291cnNlcmVzb3VyY2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEwfV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvY291cnNlL1wifV0iLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2UiLCJjb3Vyc2UiXSwiIl19','2019-09-28 22:05:40.959507'),('urnl1z7ys1kz88qkc7myasjgrwsqwaln','MDk3Njc5NzNhZDU5NzhmZjJlMjU0MTQwYTBlMGRlYTEwMzVjZmYyOTp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhbmNlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwODkzOTg3YzU3MDdmZjY5NWM2MzMwOWMwYmRkNGYxYThmZGJhZmVlIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTY3M2FcdTY3ODRcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTU3Y2VcdTVlMDJcIiwgXCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jaXR5ZGljdC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NjczYVx1Njc4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NvdXJzZW9yZy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTN9LCB7XCJ0aXRsZVwiOiBcIlx1NjU1OVx1NWUwOFwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL3RlYWNoZXIvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE0fV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY2l0eWRpY3QvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvdXNlcnByb2ZpbGUvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTkwYWVcdTdiYjFcdTlhOGNcdThiYzFcdTc4MDFcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2VtYWlsdmVyaWZ5cmVjb3JkL1wiLCBcImljb25cIjogXCJmYSBmYS1hZGRyZXNzLWJvb2stb1wiLCBcIm9yZGVyXCI6IDV9LCB7XCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1NTZmZVwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvYmFubmVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA2fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wifSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY0Y2RcdTRmNWNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTU0YThcdThiZTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNX0sIHtcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4YmM0XHU4YmJhXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vY291cnNlY29tbWVudHMvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE2fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE3fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTZkODhcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VybWVzc2FnZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTh9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJjb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE5fV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmFzay9cIn0sIHtcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCIsIFwidXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiAyMX1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1N2VjNFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlL2NvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogN30sIHtcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU4YmZlXHU3YTBiXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvYmFubmVyY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTdhZTBcdTgyODJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZS9sZXNzb24vXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDl9LCB7XCJ0aXRsZVwiOiBcIlx1ODljNlx1OTg5MVwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlL3ZpZGVvL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMH0sIHtcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4ZDQ0XHU2ZTkwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvY291cnNlcmVzb3VyY2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDExfV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvY291cnNlL1wifV0iLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2UiLCJjb3Vyc2UiXSwiIl19','2019-09-29 15:18:31.085050'),('wgkem0bhng56cj7o6ymciployci79due','MDk3Njc5NzNhZDU5NzhmZjJlMjU0MTQwYTBlMGRlYTEwMzVjZmYyOTp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhbmNlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwODkzOTg3YzU3MDdmZjY5NWM2MzMwOWMwYmRkNGYxYThmZGJhZmVlIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTY3M2FcdTY3ODRcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTU3Y2VcdTVlMDJcIiwgXCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jaXR5ZGljdC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NjczYVx1Njc4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NvdXJzZW9yZy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTN9LCB7XCJ0aXRsZVwiOiBcIlx1NjU1OVx1NWUwOFwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL3RlYWNoZXIvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE0fV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY2l0eWRpY3QvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvdXNlcnByb2ZpbGUvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTkwYWVcdTdiYjFcdTlhOGNcdThiYzFcdTc4MDFcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2VtYWlsdmVyaWZ5cmVjb3JkL1wiLCBcImljb25cIjogXCJmYSBmYS1hZGRyZXNzLWJvb2stb1wiLCBcIm9yZGVyXCI6IDV9LCB7XCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1NTZmZVwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvYmFubmVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA2fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wifSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY0Y2RcdTRmNWNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTU0YThcdThiZTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNX0sIHtcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4YmM0XHU4YmJhXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vY291cnNlY29tbWVudHMvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE2fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE3fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTZkODhcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VybWVzc2FnZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTh9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJjb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE5fV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmFzay9cIn0sIHtcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCIsIFwidXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiAyMX1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1N2VjNFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlL2NvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogN30sIHtcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU4YmZlXHU3YTBiXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvYmFubmVyY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTdhZTBcdTgyODJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZS9sZXNzb24vXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDl9LCB7XCJ0aXRsZVwiOiBcIlx1ODljNlx1OTg5MVwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlL3ZpZGVvL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMH0sIHtcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4ZDQ0XHU2ZTkwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvY291cnNlcmVzb3VyY2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDExfV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvY291cnNlL1wifV0iLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2UiLCJjb3Vyc2UiXSwiIl19','2019-09-28 21:31:50.050869');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_coursecomments`
--

DROP TABLE IF EXISTS `operation_coursecomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_course_course_id` (`course_id`),
  KEY `operation_coursecomm_user_id_f5ff70b3_fk_users_use` (`user_id`),
  CONSTRAINT `operation_coursecomm_user_id_f5ff70b3_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_coursecomments`
--

LOCK TABLES `operation_coursecomments` WRITE;
/*!40000 ALTER TABLE `operation_coursecomments` DISABLE KEYS */;
INSERT INTO `operation_coursecomments` VALUES (1,'不会啊','2019-09-02 19:22:25.449843',16,1),(2,'继续搬砖吧！','2019-09-02 19:28:40.675926',16,1);
/*!40000 ALTER TABLE `operation_coursecomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userask`
--

DROP TABLE IF EXISTS `operation_userask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userask`
--

LOCK TABLES `operation_userask` WRITE;
/*!40000 ALTER TABLE `operation_userask` DISABLE KEYS */;
/*!40000 ALTER TABLE `operation_userask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usercourse`
--

DROP TABLE IF EXISTS `operation_usercourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_course_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usercourse`
--

LOCK TABLES `operation_usercourse` WRITE;
/*!40000 ALTER TABLE `operation_usercourse` DISABLE KEYS */;
INSERT INTO `operation_usercourse` VALUES (1,'2019-08-31 19:57:00.000000',16,1),(2,'2019-08-31 20:00:00.000000',16,3),(3,'2019-09-03 19:27:00.000000',17,1),(4,'2019-09-03 19:27:00.000000',17,3),(5,'2019-09-03 19:27:00.000000',4,1),(6,'2019-09-03 19:27:00.000000',4,3),(7,'2019-09-03 19:51:45.576522',1,1),(8,'2019-09-03 19:52:09.647479',2,1),(9,'2019-09-09 19:01:55.633971',18,20),(10,'2019-09-09 19:02:04.375406',16,20),(11,'2019-09-09 19:02:28.871617',17,20),(12,'2019-09-09 19:02:59.899701',9,20),(13,'2019-09-09 19:03:17.149233',1,20),(14,'2019-09-13 09:46:48.032997',18,1);
/*!40000 ALTER TABLE `operation_usercourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userfavorite`
--

DROP TABLE IF EXISTS `operation_userfavorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userfavorite`
--

LOCK TABLES `operation_userfavorite` WRITE;
/*!40000 ALTER TABLE `operation_userfavorite` DISABLE KEYS */;
INSERT INTO `operation_userfavorite` VALUES (20,16,1,'2019-08-31 21:00:50.927117',1),(23,1,2,'2019-09-04 20:48:14.739312',1),(24,1,3,'2019-09-04 20:48:18.170191',1),(26,3,2,'2019-09-09 19:31:51.969527',20),(27,4,2,'2019-09-09 19:31:57.925393',20),(28,1,3,'2019-09-09 19:50:15.639332',20),(29,18,1,'2019-09-09 20:00:25.199562',20),(31,9,1,'2019-09-09 20:00:38.384794',20),(36,11,2,'2019-09-10 21:20:31.979127',1);
/*!40000 ALTER TABLE `operation_userfavorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usermessage`
--

DROP TABLE IF EXISTS `operation_usermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usermessage`
--

LOCK TABLES `operation_usermessage` WRITE;
/*!40000 ALTER TABLE `operation_usermessage` DISABLE KEYS */;
INSERT INTO `operation_usermessage` VALUES (1,1,'欢迎注册',1,'2019-09-10 20:41:00.000000'),(2,1,'今天学习了吗？',1,'2019-09-10 20:43:00.000000'),(3,1,'梦想从学习开始',1,'2019-09-10 20:43:00.000000'),(4,1,'光怪陆离',1,'2019-09-10 20:43:00.000000'),(5,1,'神秘莫测',1,'2019-09-10 20:43:00.000000'),(6,1,'登天路，踏歌行',1,'2019-09-10 20:44:00.000000'),(7,1,'顺成凡，逆则仙',1,'2019-09-10 20:44:00.000000');
/*!40000 ALTER TABLE `operation_usermessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_citydict`
--

DROP TABLE IF EXISTS `organization_citydict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_citydict`
--

LOCK TABLES `organization_citydict` WRITE;
/*!40000 ALTER TABLE `organization_citydict` DISABLE KEYS */;
INSERT INTO `organization_citydict` VALUES (1,'北京市','北京市','2019-08-21 19:38:00.000000'),(2,'上海市','上海市','2019-08-21 19:38:00.000000'),(3,'广州市','广州市','2019-08-21 19:39:00.000000'),(4,'深圳市','深圳市','2019-08-21 19:39:00.000000'),(5,'天津市','天津市','2019-08-21 19:39:00.000000'),(6,'杭州市','杭州市','2019-08-21 19:58:00.000000'),(7,'成都市','成都市','2019-08-21 19:59:00.000000'),(8,'贵阳市','贵阳市','2019-08-21 19:59:00.000000');
/*!40000 ALTER TABLE `organization_citydict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_courseorg`
--

DROP TABLE IF EXISTS `organization_courseorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `courses_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_courseo_city_id_4a842f85_fk_organizat` (`city_id`),
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_courseorg`
--

LOCK TABLES `organization_courseorg` WRITE;
/*!40000 ALTER TABLE `organization_courseorg` DISABLE KEYS */;
INSERT INTO `organization_courseorg` VALUES (1,'慕课网','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。',6,0,'org/2019/08/imooc.png','北京市','2019-08-21 19:40:00.000000',1,'pxjg',3,123,'全国知名'),(2,'A大学','论述儒家修身治国平天下思想的散文，原是《小戴礼记》第四十二篇，相传为曾子所作，实为秦汉时儒家作品，是一部中国古代讨论教育理论的重要著作。经北宋程颢、程颐竭力尊崇\r\n    论述儒家修身治国平天下思想的散文，原是《小戴礼记》第四十二篇，相传为曾子所作，实为秦汉时儒家作品，是一部中国古代讨论教育理论的重要著作。经北宋程颢、程颐竭力尊崇\r\n    论述儒家修身治国平天下思想的散文，原是《小戴礼记》第四十二篇，相传为曾子所作，实为秦汉时儒家作品，是一部中国古代讨论教育理论的重要著作。经北宋程颢、程颐竭力尊崇\r\n    论述儒家修身治国平天下思想的散文，原是《小戴礼记》第四十二篇，相传为曾子所作，实为秦汉时儒家作品，是一部中国古代讨论教育理论的重要著作。经北宋程颢、程颐竭力尊崇',3,0,'org/2019/08/njdx.jpg','杭州市','2019-08-21 19:49:00.000000',2,'gx',0,0,'全国知名'),(3,'北京大学','北京大学创立于1898年维新变法之际，初名京师大学堂，是中国近现代第一所国立综合性大学，创办之初也是国家最高教育行政机关。1912年改为国立北京大学。1937年南迁至长沙，与国立清华大学和私立南开大学组成国立长沙临时大学，1938年迁至昆明，更名为国立西南联合大学。1946年复员返回北平。1952年经全国高校院系调整，成为以文理基础学科为主的综合性大学，并自北京城内沙滩等地迁至现址。2000年与原北京医科大学合并，组建为新的北京大学。',1,0,'org/2019/08/bjdx.jpg','北京市','2019-08-21 19:51:00.000000',1,'gx',2,234,'世界名校'),(4,'清华大学','清华大学的前身清华学堂始建于1911年，校名“清华”源于校址“清华园”地名，是清政府设立的留美预备学校，其建校的资金源于1908年美国退还的部分庚子赔款。1912年更名为清华学校。1928年更名为国立清华大学。1937年抗日战争全面爆发后南迁长沙，与国立北京大学、私立南开大学组建国立长沙临时大学，1938年迁至昆明改名为国立西南联合大学。1946年迁回清华园。1949年中华人民共和国成立，清华大学进入新的发展阶段。1952年全国高等学校院系调整后成为多科性工业大学。1978年以来逐步恢复和发展为综合性的研究型大学。',3,0,'org/2019/08/qhdx-logo.png','北京市','2019-08-21 19:52:00.000000',1,'gx',0,44,'世界名校'),(5,'慕课网01','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。',0,0,'org/2019/08/imooc_Y2Tonsq.png','天津市','2019-08-21 19:52:00.000000',5,'pxjg',5,345,'全国知名'),(6,'慕课网02','慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。',0,0,'org/2019/08/imooc_V0TJOyb.png','深圳市','2019-08-21 19:53:00.000000',4,'pxjg',1,0,'全国知名'),(7,'慕课网03','国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。',0,0,'org/2019/08/imooc_qEaMov1.png','广州市','2019-08-21 19:54:00.000000',3,'pxjg',0,34,'全国知名'),(8,'慕课网04','课程内容注重实用性，不仅让学员通过学习能够做出产品，而且学习过程中掌握的方法技巧在实际工作中用得上，能够切实帮助学员提升工作技能。',1,0,'org/2019/08/imooc_OO2ykYP.png','上海市','2019-08-21 19:54:00.000000',2,'pxjg',0,0,'全国知名'),(9,'慕课网05','在线编程界面采用三分屏设计，包括讲课内容区、代码编写区、效果预览区。三大区域合理搭配，能够让学员高效完成学习内容、编写代码、查看效果这一学习流程。',0,0,'org/2019/08/imooc_klgAUn5.png','上海市','2019-08-21 19:55:00.000000',2,'pxjg',6,567,'全国知名'),(10,'慕课网06','慕课网的在线编程采用所见即所得模式。通过在线编辑器，学员能够在效果展示区实时看到自己所写代码最终产生的效果。即时反馈让学习更高效，提升学习成就感。',0,0,'org/2019/08/imooc_Gn1sRjp.png','深圳市','2019-08-21 19:55:00.000000',4,'pxjg',0,0,'全国知名'),(11,'网易云课堂','网易云课堂，是网易公司打造的在线实用技能学习平台，该平台于2012年12月底正式上线，主要为学习者提供海量、优质的课程，用户可以根据自身的学习程度，自主安排学习进度。',0,0,'org/2019/08/wangyiket.png','广州市','2019-08-21 19:56:00.000000',3,'pxjg',0,0,'全国知名'),(12,'千峰教育','千锋教育一直秉承“用良心做教育”的理念，中国移动互联网研发人才一体化服务的领导品牌，全力打造移动互联网高端研发人才服务平台。拥有全国权威的移动互联网教学就业保障团队，毕业学员占据了全国移动互联网培训人才一半以上的份额，做到了毕业学员业内高薪水，成为学员信赖的IT培训机构。拥有上百所合作高校，上千家移动互联网方向合作企业。',0,0,'org/2019/08/qianfeng.png','成都市','2019-08-21 19:59:00.000000',7,'pxjg',8,0,'全国知名'),(13,'汇文教育','全球加盟网官网为您提供最新汇文教育加盟信息,包括汇文教育加盟多少钱,汇文教育加盟热线,汇文教育加盟怎么样,帮您选择靠谱的品牌连锁加盟项目,助您创业成功!',2,0,'org/2019/08/huiwen.png','贵阳市','2019-08-21 20:02:00.000000',8,'pxjg',0,0,'全国知名'),(14,'机构1','嵌入式软件和WEB应用开发(已审核)... 汇文教育(www.huiwen.com)总部坐落在风景优美的天堂硅谷,是浙江省发展最快的高端教育机构。汇文致力于成为中国IT业的助推器',0,0,'org/2019/08/imooc_klgAUn5_cyI6ODM.png','杭州','2019-08-21 20:04:00.000000',6,'gr',0,0,'全国知名'),(15,'慕课6666','慕课网提供系统化学习路线,精心的教学服务,结合真实开发案例,打造html精品课程,让你快速入门,晋级前端工程师!',0,0,'org/2019/08/imooc_Gn1sRjp_2D6FctG.png','杭州市','2019-08-21 20:06:00.000000',6,'pxjg',11,12345,'全国知名'),(16,'北大01','科技创新在北大——创新科技管理机制,服务国家战略需求 More >北大生科院瞿礼嘉课题组在Science上发表论文揭示一种促进被子植物种间遗传隔离的分子.',0,0,'org/2019/08/bjdx_0HVT8T3.jpg','北京市','2019-08-21 20:06:00.000000',1,'gx',0,0,'全国知名'),(17,'北京大学02','科技创新在北大——创新科技管理机制,服务国家战略需求 More >北大生科院瞿礼嘉课题组在Science上发表论文揭示一种促进被子植物种间遗传隔离的分子.\r\n   科技创新在北大——创新科技管理机制,服务国家战略需求 More >北大生科院瞿礼嘉课题组在Science上发表论文揭示一种促进被子植物种间遗传隔离的分子.',0,0,'org/2019/08/bjdx_cCpdUw8.jpg','北京市','2019-08-21 20:07:00.000000',1,'gx',0,0,'全国知名'),(18,'北京大学03','科技创新在北大——创新科技管理机制,服务国家战略需求 More >北大生科院瞿礼嘉课题组在Science上发表论文揭示一种促进被子植物种间遗传隔离的分子.',0,0,'org/2019/08/bjdx_bcd0m07.jpg','北京市','2019-08-21 20:07:00.000000',1,'gx',0,0,'全国知名');
/*!40000 ALTER TABLE `organization_courseorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_teacher`
--

DROP TABLE IF EXISTS `organization_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `work_year` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teacher_org_id_cd000a1a_fk_organizat` (`org_id`),
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_teacher`
--

LOCK TABLES `organization_teacher` WRITE;
/*!40000 ALTER TABLE `organization_teacher` DISABLE KEYS */;
INSERT INTO `organization_teacher` VALUES (1,'张老师',5,'A公司','全栈工程师','普通',6,3,'2019-08-28 19:42:00.000000',1,'image/default.png',18),(2,'还是张老师',5,'B大学','国家教师','普通',8,7,'2019-08-28 19:43:00.000000',1,'image/default.png',18);
/*!40000 ALTER TABLE `organization_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_message`
--

DROP TABLE IF EXISTS `user_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_message`
--

LOCK TABLES `user_message` WRITE;
/*!40000 ALTER TABLE `user_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_banner`
--

DROP TABLE IF EXISTS `users_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_banner`
--

LOCK TABLES `users_banner` WRITE;
/*!40000 ALTER TABLE `users_banner` DISABLE KEYS */;
INSERT INTO `users_banner` VALUES (1,'01','banner/2019/09/57a801860001c34b12000460_z4Vb8zl_EuURX1t.jpg','http://www.imook.com',1,'2019-08-17 22:49:00.000000'),(2,'02','banner/2019/09/57a801860001c34b12000460.jpg','http://www.imook.com',2,'2019-09-12 19:38:00.000000'),(3,'03','banner/2019/09/57aa86a0000145c512000460_GXIBATC.jpg','http://www.imook.com',3,'2019-09-12 19:38:00.000000'),(4,'04','banner/2019/09/57aa86a0000145c512000460_nMwvoQD.jpg','http://www.imook.com',4,'2019-09-12 19:39:00.000000'),(5,'05','banner/2019/09/57aa86a0000145c512000460.jpg','http://www.imook.com',5,'2019-09-12 19:39:00.000000');
/*!40000 ALTER TABLE `users_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_emailverifyrecord`
--

DROP TABLE IF EXISTS `users_emailverifyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(20) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_emailverifyrecord`
--

LOCK TABLES `users_emailverifyrecord` WRITE;
/*!40000 ALTER TABLE `users_emailverifyrecord` DISABLE KEYS */;
INSERT INTO `users_emailverifyrecord` VALUES (1,'admin','xxx@qq.com','register','2019-08-14 22:47:00.000000'),(2,'tom','tom@qq.com','forget','2019-08-14 23:01:00.000000'),(18,'U1YZ','1092982458@qq.com','update_email','2019-09-08 19:52:02.759132'),(19,'UIdx','1092982458@qq.com','update_email','2019-09-08 19:53:54.959069'),(20,'Ea7h','1092982458@qq.com','update_email','2019-09-08 19:55:06.453341'),(21,'vixl','1092982458@qq.com','update_email','2019-09-08 19:58:37.565096'),(22,'Lcbn','1092982458@qq.com','update_email','2019-09-08 20:01:56.097107'),(23,'FRCk','1092982458@qq.com','update_email','2019-09-08 20:15:32.013242'),(24,'ABNA','1092982458@qq.com','update_email','2019-09-08 20:18:28.510251'),(25,'L0iK','1092982458@qq.com','update_email','2019-09-08 20:20:41.543008');
/*!40000 ALTER TABLE `users_emailverifyrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birday` date DEFAULT NULL,
  `gender` varchar(7) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES (1,'pbkdf2_sha256$150000$XGM6ahzXlwrh$29ykPkBIre17OaY8VkMBvqWqrdbaEYHAfAann8EYlhE=','2019-09-12 20:16:20.950968',1,'admin','','','',1,1,'2019-08-13 12:47:13.607467','',NULL,'female','',NULL,'image/default.png'),(3,'pbkdf2_sha256$150000$GRExHnAs3pfV$whdrO8QJD4kDg9lcrrKtlzCpj0MH+EH68yofOLWGPcU=','2019-08-18 16:32:02.751337',0,'tom','','','tom@qq.com',0,1,'2019-08-18 09:57:00.000000','tom',NULL,'female','hz',NULL,'image/2019/08/aobama.png'),(20,'pbkdf2_sha256$150000$gUImCHoK7Y8b$Fk+ILFQeBsHphKDNWBv2YDYSZSe7HxS0lUetJ8ilD+A=','2019-09-07 19:49:43.215746',0,'tony','','','1092982458@qq.com',0,1,'2019-09-07 17:05:00.000000','普通用户','2019-09-04','male','我来自火星','15958158301','image/2019/09/default_middile_7.png'),(21,'pbkdf2_sha256$150000$sZalCV5OT2tY$Vgj0Ut0XLeEbW7/zkT8htKAqMkHPLKxLQcpIvsIBZcc=','2019-09-14 22:38:14.431788',1,'gly','','','',1,1,'2019-09-14 09:27:00.000000','admin',NULL,'male','上海市',NULL,'image/2019/09/default_middile_7_RyjOTke.png');
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_groups`
--

DROP TABLE IF EXISTS `users_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_groups`
--

LOCK TABLES `users_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `users_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_user_permissions`
--

LOCK TABLES `users_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2019-08-14 22:47:50.130035','127.0.0.1','1','EmailVerifyRecord object (1)','create','已添加。',9,1),(2,'2019-08-14 23:01:35.411876','127.0.0.1','2','tom(tom@qq.com)','create','已添加。',9,1),(3,'2019-08-15 22:27:03.439987','127.0.0.1','1','Course object (1)','create','已添加。',10,1),(4,'2019-08-15 22:29:56.078410','127.0.0.1','1','第一节','create','已添加。',11,1),(5,'2019-08-17 22:52:36.400625','127.0.0.1','1','Banner object (1)','create','已添加。',8,1),(6,'2019-08-18 09:56:29.536007','127.0.0.1','2','tim','delete','',7,1),(7,'2019-08-18 09:57:58.643805','127.0.0.1','3','tom','create','已添加。',7,1),(8,'2019-08-18 09:58:47.697190','127.0.0.1','3','tom','change','修改 email，nick_name，address 和 image',7,1),(9,'2019-08-18 20:58:13.785453','127.0.0.1','6','1092982458','delete','',7,1),(10,'2019-08-18 20:58:23.340373','127.0.0.1','4','1092982458@qq.com','delete','',7,1),(11,'2019-08-18 20:59:56.656826','127.0.0.1','8','2512377502','delete','',7,1),(12,'2019-08-18 21:03:57.828076','127.0.0.1','9','1092982458','delete','',7,1),(13,'2019-08-18 21:09:01.499831','127.0.0.1','10','1092982458','delete','',7,1),(14,'2019-08-18 21:11:06.478362','127.0.0.1','11','1092982458','delete','',7,1),(15,'2019-08-18 21:36:18.056784','127.0.0.1','12','tina','delete','',7,1),(16,'2019-08-18 21:42:54.128644','127.0.0.1','13','1092982458','delete','',7,1),(17,'2019-08-18 21:47:40.699695','127.0.0.1','14','1092982458@qq.com','delete','',7,1),(18,'2019-08-18 21:51:11.418830','127.0.0.1','15','1092982458','delete','',7,1),(19,'2019-08-18 21:54:44.190971','127.0.0.1','16','1092982458','delete','',7,1),(20,'2019-08-18 21:56:30.964086','127.0.0.1','17','1092982458','delete','',7,1),(21,'2019-08-18 22:03:27.719387','127.0.0.1','18','1092982458','delete','',7,1),(22,'2019-08-18 22:42:25.232049','127.0.0.1','15','CySe36cd52TCh8xr(1092982458@qq.com)','delete','',9,1),(23,'2019-08-18 22:43:04.324339','127.0.0.1',NULL,'','delete','批量删除 12 个 邮箱验证码',NULL,1),(24,'2019-08-19 22:01:06.740427','127.0.0.1','19','1092982458','delete','',7,1),(25,'2019-08-19 22:01:13.983565','127.0.0.1',NULL,'','delete','批量删除 2 个 邮箱验证码',NULL,1),(26,'2019-08-21 19:38:55.996652','127.0.0.1','1','北京市','create','已添加。',14,1),(27,'2019-08-21 19:39:09.277234','127.0.0.1','2','上海市','create','已添加。',14,1),(28,'2019-08-21 19:39:18.499844','127.0.0.1','3','广州市','create','已添加。',14,1),(29,'2019-08-21 19:39:38.051630','127.0.0.1','4','深圳市','create','已添加。',14,1),(30,'2019-08-21 19:39:52.791437','127.0.0.1','5','天津市','create','已添加。',14,1),(31,'2019-08-21 19:45:18.671652','127.0.0.1','1','慕课网','create','已添加。',15,1),(32,'2019-08-21 19:51:11.406031','127.0.0.1','2','A大学','create','已添加。',15,1),(33,'2019-08-21 19:52:07.286994','127.0.0.1','3','北京大学','create','已添加。',15,1),(34,'2019-08-21 19:52:44.581650','127.0.0.1','4','清华大学','create','已添加。',15,1),(35,'2019-08-21 19:53:48.041311','127.0.0.1','5','慕课网01','create','已添加。',15,1),(36,'2019-08-21 19:54:24.607003','127.0.0.1','6','慕课网02','create','已添加。',15,1),(37,'2019-08-21 19:54:54.328728','127.0.0.1','7','慕课网03','create','已添加。',15,1),(38,'2019-08-21 19:55:22.678616','127.0.0.1','8','慕课网04','create','已添加。',15,1),(39,'2019-08-21 19:55:52.019772','127.0.0.1','9','慕课网05','create','已添加。',15,1),(40,'2019-08-21 19:56:20.663019','127.0.0.1','10','慕课网06','create','已添加。',15,1),(41,'2019-08-21 19:58:48.297913','127.0.0.1','11','网易云课堂','create','已添加。',15,1),(42,'2019-08-21 19:59:05.810417','127.0.0.1','6','杭州市','create','已添加。',14,1),(43,'2019-08-21 19:59:15.407673','127.0.0.1','7','成都市','create','已添加。',14,1),(44,'2019-08-21 19:59:27.740067','127.0.0.1','8','贵阳市','create','已添加。',14,1),(45,'2019-08-21 20:01:13.106138','127.0.0.1','12','千峰教育','create','已添加。',15,1),(46,'2019-08-21 20:04:18.436240','127.0.0.1','13','汇文教育','create','已添加。',15,1),(47,'2019-08-21 20:05:59.501025','127.0.0.1','14','机构1','create','已添加。',15,1),(48,'2019-08-21 20:06:36.714100','127.0.0.1','15','慕课6666','create','已添加。',15,1),(49,'2019-08-21 20:07:17.743814','127.0.0.1','16','北大01','create','已添加。',15,1),(50,'2019-08-21 20:07:45.068021','127.0.0.1','17','北京大学02','create','已添加。',15,1),(51,'2019-08-21 20:08:04.414134','127.0.0.1','18','北京大学03','create','已添加。',15,1),(52,'2019-08-27 21:20:42.874350','127.0.0.1',NULL,'','delete','批量删除 11 个 用户咨询',NULL,1),(53,'2019-08-27 21:44:55.864369','127.0.0.1',NULL,'','delete','批量删除 16 个 用户咨询',NULL,1),(54,'2019-08-27 22:09:16.350514','127.0.0.1',NULL,'','delete','批量删除 22 个 用户咨询',NULL,1),(55,'2019-08-27 23:08:20.843807','127.0.0.1',NULL,'','delete','批量删除 26 个 用户咨询',NULL,1),(56,'2019-08-27 23:15:27.834597','127.0.0.1',NULL,'','delete','批量删除 2 个 用户咨询',NULL,1),(57,'2019-08-27 23:25:22.381485','127.0.0.1',NULL,'','delete','批量删除 9 个 用户咨询',NULL,1),(58,'2019-08-28 19:43:03.623711','127.0.0.1','1','张老师','create','已添加。',16,1),(59,'2019-08-28 19:44:16.980395','127.0.0.1','2','张老师','create','已添加。',16,1),(60,'2019-08-28 19:44:41.381724','127.0.0.1','2','还是张老师','change','修改 name',16,1),(61,'2019-08-28 19:51:01.820156','127.0.0.1','1','django入门','change','修改 course_org 和 image',10,1),(62,'2019-08-29 21:46:53.225443','127.0.0.1',NULL,'','delete','批量删除 10 个 用户收藏',NULL,1),(63,'2019-08-30 19:57:10.925231','127.0.0.1','2','java入门','create','已添加。',10,1),(64,'2019-08-30 19:58:31.649719','127.0.0.1','3','androw','create','已添加。',10,1),(65,'2019-08-30 19:59:19.390146','127.0.0.1','4','MySQL01','create','已添加。',10,1),(66,'2019-08-30 19:59:54.691069','127.0.0.1','5','java02','create','已添加。',10,1),(67,'2019-08-30 20:00:31.853885','127.0.0.1','6','java03','create','已添加。',10,1),(68,'2019-08-30 20:01:04.191194','127.0.0.1','7','java04','create','已添加。',10,1),(69,'2019-08-30 20:01:36.511027','127.0.0.1','8','python01','create','已添加。',10,1),(70,'2019-08-30 20:02:09.799624','127.0.0.1','9','python','create','已添加。',10,1),(71,'2019-08-30 20:02:42.579264','127.0.0.1','10','Python','create','已添加。',10,1),(72,'2019-08-30 20:03:19.262501','127.0.0.1','11','python04','create','已添加。',10,1),(73,'2019-08-30 20:03:43.471133','127.0.0.1','12','python','create','已添加。',10,1),(74,'2019-08-30 20:04:10.408706','127.0.0.1','13','python数据','create','已添加。',10,1),(75,'2019-08-30 20:04:38.562568','127.0.0.1','14','大数据','create','已添加。',10,1),(76,'2019-08-30 20:05:10.418568','127.0.0.1','15','移动app','create','已添加。',10,1),(77,'2019-08-30 20:05:46.582726','127.0.0.1','16','Android入门','create','已添加。',10,1),(78,'2019-08-30 20:06:20.640841','127.0.0.1','17','java','create','已添加。',10,1),(79,'2019-08-30 20:06:51.821974','127.0.0.1','18','神的进阶','create','已添加。',10,1),(80,'2019-08-31 19:57:55.575238','127.0.0.1','1','UserCourse object (1)','create','已添加。',20,1),(81,'2019-08-31 20:00:24.741296','127.0.0.1','2','UserCourse object (2)','create','已添加。',20,1),(82,'2019-08-31 20:27:52.302317','127.0.0.1','16','Android入门','change','Changed image 和 tag.',10,1),(83,'2019-08-31 20:28:17.276502','127.0.0.1','17','java','change','Changed image 和 tag.',10,1),(84,'2019-09-01 20:13:10.394722','127.0.0.1','2','第一章 基础知识','create','已添加。',11,1),(85,'2019-09-01 20:13:22.849752','127.0.0.1','3','第二章 进阶开发','create','已添加。',11,1),(86,'2019-09-01 20:14:36.198781','127.0.0.1','1','1.1 helloworld','create','已添加。',12,1),(87,'2019-09-01 20:17:37.383215','127.0.0.1','2','第一章 基础知识','change','Changed url.',11,1),(88,'2019-09-01 20:17:45.197662','127.0.0.1','3','第二章 进阶开发','change','Changed url.',11,1),(89,'2019-09-01 20:18:13.816164','127.0.0.1','2','1.2 基本概念','create','已添加。',12,1),(90,'2019-09-01 20:18:48.730976','127.0.0.1','3','2.1 test','create','已添加。',12,1),(91,'2019-09-01 20:19:00.190310','127.0.0.1','4','2.2 test002','create','已添加。',12,1),(92,'2019-09-01 20:19:08.152310','127.0.0.1','1','第一节','change','Changed url.',11,1),(93,'2019-09-01 20:27:21.361121','127.0.0.1','4','第一章 基础知识','create','已添加。',11,1),(94,'2019-09-01 20:27:37.092597','127.0.0.1','5','第二章 进阶开发','create','已添加。',11,1),(95,'2019-09-01 20:27:47.076242','127.0.0.1','5','1.1 helloworld','create','已添加。',12,1),(96,'2019-09-01 20:27:53.988081','127.0.0.1','6','1.2 基本概念','create','已添加。',12,1),(97,'2019-09-01 20:28:14.067338','127.0.0.1','7','1.3 课程训练','create','已添加。',12,1),(98,'2019-09-01 20:28:29.800443','127.0.0.1','8','2.1 test','create','已添加。',12,1),(99,'2019-09-01 20:28:36.064162','127.0.0.1','9','2.2 test002','create','已添加。',12,1),(100,'2019-09-01 20:28:49.635250','127.0.0.1','10','2.3 开始训练','create','已添加。',12,1),(101,'2019-09-01 20:45:54.796585','127.0.0.1','5','1.1 helloworld','change','Changed url.',12,1),(102,'2019-09-01 20:45:59.768041','127.0.0.1','6','1.2 基本概念','change','Changed url.',12,1),(103,'2019-09-01 20:46:05.580802','127.0.0.1','7','1.3 课程训练','change','Changed url.',12,1),(104,'2019-09-01 20:46:10.847393','127.0.0.1','8','2.1 test','change','Changed url.',12,1),(105,'2019-09-01 20:46:16.399757','127.0.0.1','9','2.2 test002','change','Changed url.',12,1),(106,'2019-09-01 20:46:20.468839','127.0.0.1','10','2.3 开始训练','change','Changed url.',12,1),(107,'2019-09-01 20:51:45.813210','127.0.0.1','1','java文件','create','已添加。',13,1),(108,'2019-09-01 21:04:56.153539','127.0.0.1','16','Android入门','change','Changed teacher 和 image.',10,1),(109,'2019-09-03 19:27:20.602337','127.0.0.1','3','UserCourse object (3)','create','已添加。',20,1),(110,'2019-09-03 19:27:26.958830','127.0.0.1','4','UserCourse object (4)','create','已添加。',20,1),(111,'2019-09-03 19:27:56.349928','127.0.0.1','5','UserCourse object (5)','create','已添加。',20,1),(112,'2019-09-03 19:28:01.133044','127.0.0.1','6','UserCourse object (6)','create','已添加。',20,1),(113,'2019-09-03 20:34:46.995008','127.0.0.1','5','1.1 helloworld','change','Changed url.',12,1),(114,'2019-09-03 20:34:55.574735','127.0.0.1','6','1.2 基本概念','change','没有字段被修改。',12,1),(115,'2019-09-07 17:05:57.543047','127.0.0.1','20','tony','create','已添加。',7,1),(116,'2019-09-07 17:07:20.404916','127.0.0.1','20','tony','change','Changed email，nick_name，gender，address 和 image.',7,1),(117,'2019-09-10 20:42:58.695223','127.0.0.1','1','UserMessage object (1)','create','已添加。',18,1),(118,'2019-09-10 20:43:27.433366','127.0.0.1','2','UserMessage object (2)','create','已添加。',18,1),(119,'2019-09-10 20:43:39.622034','127.0.0.1','3','UserMessage object (3)','create','已添加。',18,1),(120,'2019-09-10 20:43:57.054258','127.0.0.1','4','UserMessage object (4)','create','已添加。',18,1),(121,'2019-09-10 20:44:07.378472','127.0.0.1','5','UserMessage object (5)','create','已添加。',18,1),(122,'2019-09-10 20:44:19.716165','127.0.0.1','6','UserMessage object (6)','create','已添加。',18,1),(123,'2019-09-10 20:44:50.084080','127.0.0.1','7','UserMessage object (7)','create','已添加。',18,1),(124,'2019-09-12 19:37:56.297893','127.0.0.1','1','Banner object (1)','change','Changed image 和 url.',8,1),(125,'2019-09-12 19:38:27.546804','127.0.0.1','1','Banner object (1)','change','Changed image，url 和 index.',8,1),(126,'2019-09-12 19:38:55.189289','127.0.0.1','2','Banner object (2)','create','已添加。',8,1),(127,'2019-09-12 19:39:15.322050','127.0.0.1','3','Banner object (3)','create','已添加。',8,1),(128,'2019-09-12 19:39:27.890884','127.0.0.1','4','Banner object (4)','create','已添加。',8,1),(129,'2019-09-12 19:39:41.347964','127.0.0.1','5','Banner object (5)','create','已添加。',8,1),(130,'2019-09-14 09:27:04.291903','127.0.0.1','21','gly','create','已添加。',7,1),(131,'2019-09-14 09:28:17.112196','127.0.0.1','21','gly','change','Changed is_superuser，is_staff，nick_name，gender，address 和 image.',7,1),(132,'2019-09-14 16:29:36.888965','127.0.0.1','5','java02','change','Changed image，tag，youneed_know 和 what_learn.',10,21),(133,'2019-09-14 16:33:03.961725','127.0.0.1','5','java02','change','Changed image.',10,21),(134,'2019-09-14 16:41:18.012242','127.0.0.1','5','java02','change','Changed image.',10,21);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',1),(2,'site-theme','/static/xadmin/css/themes/bootstrap-xadmin.css',1),(3,'dashboard:home:pos','',21);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-20 16:02:02
