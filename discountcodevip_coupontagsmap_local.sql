-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: discountcodevip
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add domain store name',7,'add_domainstorename'),(20,'Can change domain store name',7,'change_domainstorename'),(21,'Can delete domain store name',7,'delete_domainstorename'),(22,'Can add category',8,'add_category'),(23,'Can change category',8,'change_category'),(24,'Can delete category',8,'delete_category'),(25,'Can add store category',9,'add_storecategory'),(26,'Can change store category',9,'change_storecategory'),(27,'Can delete store category',9,'delete_storecategory'),(28,'Can add query store',10,'add_querystore'),(29,'Can change query store',10,'change_querystore'),(30,'Can delete query store',10,'delete_querystore'),(31,'Can add coupon in tag store',11,'add_couponintagstore'),(32,'Can change coupon in tag store',11,'change_couponintagstore'),(33,'Can delete coupon in tag store',11,'delete_couponintagstore'),(34,'Can add affilaite whitelist',12,'add_affilaitewhitelist'),(35,'Can change affilaite whitelist',12,'change_affilaitewhitelist'),(36,'Can delete affilaite whitelist',12,'delete_affilaitewhitelist'),(37,'Can add multi comment',13,'add_multicomment'),(38,'Can change multi comment',13,'change_multicomment'),(39,'Can delete multi comment',13,'delete_multicomment'),(40,'Can add store rating',14,'add_storerating'),(41,'Can change store rating',14,'change_storerating'),(42,'Can delete store rating',14,'delete_storerating'),(43,'Can add query rating',15,'add_queryrating'),(44,'Can change query rating',15,'change_queryrating'),(45,'Can delete query rating',15,'delete_queryrating'),(46,'Can add vote',16,'add_vote'),(47,'Can change vote',16,'change_vote'),(48,'Can delete vote',16,'delete_vote'),(49,'Can add manually maintained domain',17,'add_manuallymaintaineddomain'),(50,'Can change manually maintained domain',17,'change_manuallymaintaineddomain'),(51,'Can delete manually maintained domain',17,'delete_manuallymaintaineddomain'),(52,'Can add coupon in query store',18,'add_couponinquerystore'),(53,'Can change coupon in query store',18,'change_couponinquerystore'),(54,'Can delete coupon in query store',18,'delete_couponinquerystore'),(55,'Can add coupon in store social meta',19,'add_couponinstoresocialmeta'),(56,'Can change coupon in store social meta',19,'change_couponinstoresocialmeta'),(57,'Can delete coupon in store social meta',19,'delete_couponinstoresocialmeta'),(58,'Can add usage record',20,'add_usagerecord'),(59,'Can change usage record',20,'change_usagerecord'),(60,'Can delete usage record',20,'delete_usagerecord'),(61,'Can add coupon tags map',21,'add_coupontagsmap'),(62,'Can change coupon tags map',21,'change_coupontagsmap'),(63,'Can delete coupon tags map',21,'delete_coupontagsmap'),(64,'Can add statistic',22,'add_statistic'),(65,'Can change statistic',22,'change_statistic'),(66,'Can delete statistic',22,'delete_statistic'),(67,'Can add store with adsense',23,'add_storewithadsense'),(68,'Can change store with adsense',23,'change_storewithadsense'),(69,'Can delete store with adsense',23,'delete_storewithadsense');
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
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_affilaitewhitelist`
--

DROP TABLE IF EXISTS `coupon_base_affilaitewhitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_affilaitewhitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_affilaitewhitelist`
--

LOCK TABLES `coupon_base_affilaitewhitelist` WRITE;
/*!40000 ALTER TABLE `coupon_base_affilaitewhitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_affilaitewhitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_category`
--

DROP TABLE IF EXISTS `coupon_base_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `icon` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_category`
--

LOCK TABLES `coupon_base_category` WRITE;
/*!40000 ALTER TABLE `coupon_base_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_couponinquerystore`
--

DROP TABLE IF EXISTS `coupon_base_couponinquerystore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_couponinquerystore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` varchar(16) NOT NULL,
  `description` varchar(512) NOT NULL,
  `is_manual_description` tinyint(1) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupon_base_couponinquerystore_store_id_coupon_id_f74775c2_uniq` (`store_id`,`coupon_id`),
  CONSTRAINT `coupon_base_couponin_store_id_3b6847b1_fk_coupon_ba` FOREIGN KEY (`store_id`) REFERENCES `coupon_base_querystore` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_couponinquerystore`
--

LOCK TABLES `coupon_base_couponinquerystore` WRITE;
/*!40000 ALTER TABLE `coupon_base_couponinquerystore` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_couponinquerystore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_couponinstoresocialmeta`
--

DROP TABLE IF EXISTS `coupon_base_couponinstoresocialmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_couponinstoresocialmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` varchar(32) NOT NULL,
  `store_id` int(11) NOT NULL,
  `store_type` varchar(10) NOT NULL,
  `image` varchar(256) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_couponinstoresocialmeta`
--

LOCK TABLES `coupon_base_couponinstoresocialmeta` WRITE;
/*!40000 ALTER TABLE `coupon_base_couponinstoresocialmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_couponinstoresocialmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_couponintagstore`
--

DROP TABLE IF EXISTS `coupon_base_couponintagstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_couponintagstore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` varchar(16) NOT NULL,
  `description` varchar(512) NOT NULL,
  `is_manual_description` tinyint(1) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupon_base_couponintagstore_store_id_coupon_id_3adac9da_uniq` (`store_id`,`coupon_id`),
  CONSTRAINT `coupon_base_couponin_store_id_fc1f42ab_fk_coupon_ba` FOREIGN KEY (`store_id`) REFERENCES `coupon_base_coupontagsmap` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_couponintagstore`
--

LOCK TABLES `coupon_base_couponintagstore` WRITE;
/*!40000 ALTER TABLE `coupon_base_couponintagstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_couponintagstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_coupontagsmap`
--

DROP TABLE IF EXISTS `coupon_base_coupontagsmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_coupontagsmap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(128) NOT NULL,
  `store_name` varchar(128) NOT NULL,
  `tags` varchar(240) NOT NULL,
  `locale` varchar(10) NOT NULL DEFAULT 'us',
  `slug` varchar(128) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` longtext,
  `search_description` varchar(1024) DEFAULT NULL,
  `search_heading` varchar(1024) DEFAULT NULL,
  `blog` longtext,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `fake_rating_score` double DEFAULT NULL,
  `fake_rating_count` int(11) DEFAULT NULL,
  `display_tags` varchar(128) DEFAULT NULL,
  `restrict_domains` varchar(1024) NOT NULL DEFAULT '',
  `canonical` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupon_base_coupontagsmap_domain_slug_locale_5dd9c01e_uniq` (`domain`,`slug`,`locale`),
  KEY `coupon_base_coupontagsmap_domain_4bccd02c` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_coupontagsmap`
--

LOCK TABLES `coupon_base_coupontagsmap` WRITE;
/*!40000 ALTER TABLE `coupon_base_coupontagsmap` DISABLE KEYS */;
INSERT INTO `coupon_base_coupontagsmap` VALUES (1,'motostorm.it','motostorm','motostorm discount code','us','motostorm-discount-code','Motostorm.it discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Motostorm.it discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Motostorm.it Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(2,'whistle.com','whistle','whistle 3 discount code','us','whistle-3-discount-code','Whistle.com 3 Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Whistle.com 3 Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Whistle.com 3 Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(3,'tilley.com','tilley','tilley discount code 2018','us','tilley-discount-code-2018','Tilley.com discount codes & deals 2018',NULL,'Want to save extra money and become a wiser shopper? Tilley.com discount codes & deals 2018 are available and verified on Discountcode.vip, add one when checking out!','Tilley.com Discount Codes & Deals 2018 - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(4,'evisu.com','evisu','evisu discount code','us','evisu-discount-code','Evisu.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Evisu.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Evisu.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(5,'dl1961.com','dl1961','dl1961 discount code','us','dl1961-discount-code','Dl1961.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Dl1961.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Dl1961.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(6,'ezpzfun.com','ezpzfun','ezpz discount code','us','ezpz-discount-code','Ezpz Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Ezpz Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Ezpz Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(7,'goeuro.com','goeuro','goeuro discount code','us','goeuro-discount-code','Goeuro.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Goeuro.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Goeuro.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(8,'simplybeach.com','simplybeach','simply beach discount code','us','simply-beach-discount-code','Simplybeach.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Simplybeach.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Simplybeach.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(9,'lang.com','lang','lange discount code','us','lange-discount-code','Lange Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Lange Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Lange Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(10,'jpcycles.com','jpcycles','jp cycles discount code','us','jp-cycles-discount-code','Jpcycles.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Jpcycles.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Jpcycles.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(11,'miansai.com','miansai','miansai discount code','us','miansai-discount-code','Miansai.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Miansai.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Miansai.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(12,'lolewomen.com','lolewomen','lole discount code','us','lole-discount-code','Lole Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Lole Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Lole Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(13,'econolodge.com','econolodge','econo lodge discount codes 2018','us','econo-lodge-discount-codes-2018','Econolodge.com discount code & coupons 2018',NULL,'Want to save extra money and become a wiser shopper? Econolodge.com discount code & coupons 2018 are available and verified on Discountcode.vip, add one when checking out!','Econolodge.com Discount Code & Coupons 2018 - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(14,'frostnyc.com','frostnyc','frost nyc discount code','us','frost-nyc-discount-code','Frostnyc.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Frostnyc.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Frostnyc.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(15,'footpatrol.co.uk','footpatrol','footpatrol discount code','us','footpatrol-discount-code','Footpatrol.co.uk discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Footpatrol.co.uk discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Footpatrol.co.uk Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(16,'manscaped.com','manscaped','manscaped discount code','us','manscaped-discount-code','Manscaped.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Manscaped.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Manscaped.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(17,'hautelook.com','hautelook','hautelook discount code','us','hautelook-discount-code','Hautelook.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Hautelook.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Hautelook.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(18,'thechessstore.com','thechessstore','cool chess canada discount code','us','cool-chess-canada-discount-code','Cool Chess Canada Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Cool Chess Canada Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Cool Chess Canada Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(19,'europcar.com.au','europcar','europcar discount code','us','europcar-discount-code','Europcar.com.au discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Europcar.com.au discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Europcar.com.au Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(20,'misthub.com','misthub','misthub discount code','us','misthub-discount-code','Misthub.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Misthub.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Misthub.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(21,'cariloha.com','cariloha','cariloha discount code','us','cariloha-discount-code','Cariloha.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Cariloha.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Cariloha.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(22,'na-kd.com','na-kd','nakd discount code','us','nakd-discount-code','Nakd.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Nakd.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Nakd.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(23,'180smoke.com','180smoke','180 smoke discount codes','us','180-smoke-discount-codes','180smoke.com discount code & promo codes',NULL,'Want to save extra money and become a wiser shopper? 180smoke.com discount code & promo codes are available and verified on Discountcode.vip, add one when checking out!','180smoke.com Discount Code & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(24,'workwearhub.com.au','workwearhub','workwear hub discount codes','us','workwear-hub-discount-codes','Workwearhub.com.au discount code & deals',NULL,'Want to save extra money and become a wiser shopper? Workwearhub.com.au discount code & deals are available and verified on Discountcode.vip, add one when checking out!','Workwearhub.com.au Discount Code & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(25,'monticelloshop.org','monticelloshop','monticello discount code','us','monticello-discount-code','Monticello Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Monticello Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Monticello Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(26,'kuiu.com','kuiu','kuiu discount code','us','kuiu-discount-code','Kuiu.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Kuiu.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Kuiu.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(27,'wondershare.com','wondershare','filmora discount code','us','filmora-discount-code','Filmora Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Filmora Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Filmora Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(28,'everyman.co','everyman','everyman discount code','us','everyman-discount-code','Everyman.co discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Everyman.co discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Everyman.co Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(29,'craftstash.co.uk','craftstash','craft stash discount code','us','craft-stash-discount-code','Craftstash.co.uk discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Craftstash.co.uk discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Craftstash.co.uk Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(30,'ticketcity.com','ticketcity','ticketcity discount code','us','ticketcity-discount-code','Ticketcity.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Ticketcity.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Ticketcity.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(31,'rebeccaminkoff.com','rebeccaminkoff','rebecca minkoff discount code','us','rebecca-minkoff-discount-code','Rebeccaminkoff.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Rebeccaminkoff.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Rebeccaminkoff.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(32,'unchartedsupplyco.com','unchartedsupplyco','uncharted discount code','us','uncharted-discount-code','Uncharted Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Uncharted Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Uncharted Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(33,'qlinkproducts.com','qlinkproducts','qlink discount code','us','qlink-discount-code','Qlink Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Qlink Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Qlink Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(34,'luxurygaragesale.com','luxurygaragesale','luxury garage sale discount code','us','luxury-garage-sale-discount-code','Luxurygaragesale.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Luxurygaragesale.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Luxurygaragesale.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(35,'pumpkinpatch.com.au','pumpkinpatch','pumpkin patch discount code','us','pumpkin-patch-discount-code','Pumpkinpatch.com.au discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Pumpkinpatch.com.au discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Pumpkinpatch.com.au Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(36,'shopdeerhunting.com','shopdeerhunting','hunting and collecting discount code','us','hunting-and-collecting-discount-code','Hunting And Collecting Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Hunting And Collecting Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Hunting And Collecting Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(37,'effortlessskin.com','effortlessskin','effortless skin discount code','us','effortless-skin-discount-code','Effortlessskin.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Effortlessskin.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Effortlessskin.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(38,'thevetshed.com.au','thevetshed','the vet shed discount code','us','the-vet-shed-discount-code','Thevetshed.com.au discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Thevetshed.com.au discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Thevetshed.com.au Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(39,'buywake.com','buywake','buywake discount code','us','buywake-discount-code','Buywake.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Buywake.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Buywake.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(40,'austrian.com','austrian','austrian airlines discount code','us','austrian-airlines-discount-code','Austrian.com Airlines Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Austrian.com Airlines Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Austrian.com Airlines Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(41,'techsmith.com','techsmith','snagit discount code 2018','us','snagit-discount-code-2018','Snagit Top discount codes & coupons 2018',NULL,'Want to save extra money and become a wiser shopper? Snagit Top discount codes & coupons 2018 are available and verified on Discountcode.vip, add one when checking out!','Snagit Top Discount Codes & Coupons 2018 - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(42,'hemper.co','hemper','hemper discount code','us','hemper-discount-code','Hemper.co discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Hemper.co discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Hemper.co Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(43,'comfortsuites.com','comfortsuites','choice hotels discount code','us','choice-hotels-discount-code','Choice Hotels Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Choice Hotels Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Choice Hotels Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(44,'betabrand.com','betabrand','betabrand discount code','us','betabrand-discount-code','Betabrand.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Betabrand.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Betabrand.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(45,'nakd.com','nakd','nakd discount code','us','nakd-discount-code','Nakd.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Nakd.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Nakd.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(46,'pomelofashion.com','pomelofashion','pomelo discount code','us','pomelo-discount-code','Pomelo Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Pomelo Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Pomelo Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(47,'pariscityvision.com','pariscityvision','paris city vision discount code','us','paris-city-vision-discount-code','Pariscityvision.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Pariscityvision.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Pariscityvision.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(48,'vavavoom.ie','vavavoom','vavavoom discount code','us','vavavoom-discount-code','Vavavoom.ie discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Vavavoom.ie discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Vavavoom.ie Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(49,'tech21.com','tech21','tech21 discount code','us','tech21-discount-code','Tech21.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Tech21.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Tech21.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(50,'wearfigs.com','wearfigs','figs discount code','us','figs-discount-code','Figs Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Figs Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Figs Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(51,'simmishoes.com','simmishoes','simmi discount code','us','simmi-discount-code','Simmi Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Simmi Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Simmi Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(52,'getolympus.com','getolympus','olympus discount code','us','olympus-discount-code','Olympus Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Olympus Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Olympus Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(53,'marika.com','marika','marika discount code','us','marika-discount-code','Marika.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Marika.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Marika.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(54,'expressionscatalog.com','expressionscatalog','expressionscatalog com discount codes','us','expressionscatalog-com-discount-codes','Expressionscatalog.com discount code & coupons',NULL,'Want to save extra money and become a wiser shopper? Expressionscatalog.com discount code & coupons are available and verified on Discountcode.vip, add one when checking out!','Expressionscatalog.com Discount Code & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(55,'kinguin.net','kinguin','kinguin discount code','us','kinguin-discount-code','Kinguin.net discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Kinguin.net discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Kinguin.net Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(56,'nzxt.com','nzxt','bld discount code','us','bld-discount-code','Bld Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Bld Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Bld Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(57,'girlactik.com','girlactik','girlactik discount code','us','girlactik-discount-code','Girlactik.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Girlactik.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Girlactik.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(58,'thetruthspy.com','thetruthspy','the truth spy discount codes','us','the-truth-spy-discount-codes','Thetruthspy.com discount code & promo codes',NULL,'Want to save extra money and become a wiser shopper? Thetruthspy.com discount code & promo codes are available and verified on Discountcode.vip, add one when checking out!','Thetruthspy.com Discount Code & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(59,'stubhub.com','stubhub','stubhub discount code','us','stubhub-discount-code','Stubhub.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Stubhub.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Stubhub.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(60,'parkerny.com','parkerny','parker gwen discount code','us','parker-gwen-discount-code','Parker Gwen Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Parker Gwen Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Parker Gwen Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(61,'footasylum.com','footasylum','footasylum 20 discount code','us','footasylum-20-discount-code','Footasylum.com 20 Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Footasylum.com 20 Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Footasylum.com 20 Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(62,'worldwide-marijuana-seeds.com','worldwide-marijuana-seeds','worldwide-marijuana-seeds discount code','us','worldwide-marijuana-seeds-discount-code','Worldwide-marijuana-seeds.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Worldwide-marijuana-seeds.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Worldwide-marijuana-seeds.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(63,'theskinnycaffe.com','theskinnycaffe','skinny caffe discount code','us','skinny-caffe-discount-code','Skinny Caffe Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Skinny Caffe Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Skinny Caffe Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(64,'goairportshuttle.com','goairportshuttle','go shuttle discount code','us','go-shuttle-discount-code','Go Shuttle Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Go Shuttle Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Go Shuttle Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(65,'tailorstore.com','tailorstore','tailor store discount code','us','tailor-store-discount-code','Tailorstore.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Tailorstore.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Tailorstore.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(66,'jackerwin.com','jackerwin','jack erwin discount code','us','jack-erwin-discount-code','Jackerwin.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Jackerwin.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Jackerwin.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(67,'romeandvaticanpass.com','romeandvaticanpass','omnia card discount code','us','omnia-card-discount-code','Omnia Card Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Omnia Card Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Omnia Card Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(68,'vannabelt.com','vannabelt','vanna belt discount codes','us','vanna-belt-discount-codes','Vannabelt.com discount code & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Vannabelt.com discount code & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Vannabelt.com Discount Code & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(69,'trekkinn.com','trekkinn','trekkinn discount code','us','trekkinn-discount-code','Trekkinn.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Trekkinn.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Trekkinn.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(70,'hickies.com','hickies','hickies discount code','us','hickies-discount-code','Hickies.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Hickies.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Hickies.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(71,'singleprice.com','singleprice','singleprice.com discount code','us','singleprice-com-discount-code','Singleprice.com Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Singleprice.com Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Singleprice.com Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(72,'shirts.com','shirts','shirt app discount code','us','shirt-app-discount-code','Shirt App Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Shirt App Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Shirt App Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(73,'evawigs.com','evawigs','eva wigs discount code','us','eva-wigs-discount-code','Evawigs.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Evawigs.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Evawigs.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(74,'flamingolasvegas.com','flamingolasvegas','flamingo las vegas discount code','us','flamingo-las-vegas-discount-code','Flamingolasvegas.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Flamingolasvegas.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Flamingolasvegas.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(75,'luckyshotusa.com','luckyshotusa','lucky shot discount code','us','lucky-shot-discount-code','Lucky Shot Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Lucky Shot Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Lucky Shot Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(76,'thechivery.com','thechivery','chive discount code','us','chive-discount-code','Chive Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Chive Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Chive Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(77,'costumebox.com.au','costumebox','costume box discount code','us','costume-box-discount-code','Costumebox.com.au discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Costumebox.com.au discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Costumebox.com.au Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(78,'crane.com','crane','crane discount code','us','crane-discount-code','Crane.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Crane.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Crane.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(79,'kidrobot.com','kidrobot','kidrobot discount code','us','kidrobot-discount-code','Kidrobot.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Kidrobot.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Kidrobot.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(80,'picaboo.com','picaboo','pickaboo discount code','us','pickaboo-discount-code','Pickaboo Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Pickaboo Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Pickaboo Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(81,'511tactical.com','511tactical','511 discount code','us','511-discount-code','511 Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? 511 Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','511 Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(82,'homage.com','homage','homage discount code','us','homage-discount-code','Homage.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Homage.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Homage.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(83,'evilcontrollers.com','evilcontrollers','evil controllers discount code','us','evil-controllers-discount-code','Evilcontrollers.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Evilcontrollers.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Evilcontrollers.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(84,'mylola.com','mylola','lola discount code','us','lola-discount-code','Lola Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Lola Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Lola Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(85,'smiggle.co.uk','smiggle','smiggle discount code','us','smiggle-discount-code','Smiggle.co.uk discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Smiggle.co.uk discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Smiggle.co.uk Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(86,'teds.com.au','teds','teds cameras discount code','us','teds-cameras-discount-code','Teds.com.au Cameras Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Teds.com.au Cameras Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Teds.com.au Cameras Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(87,'ctshirts.com.au','ctshirts','charles tyrwhitt discount codes australia','us','charles-tyrwhitt-discount-codes-australia','Charles Tyrwhitt discount code & coupons Australia',NULL,'Want to save extra money and become a wiser shopper? Charles Tyrwhitt discount code & coupons Australia are available and verified on Discountcode.vip, add one when checking out!','Charles Tyrwhitt Discount Code & Coupons Australia - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(88,'prettylittercats.com','prettylittercats','pretty litter discount code','us','pretty-litter-discount-code','Pretty Litter Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Pretty Litter Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Pretty Litter Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(89,'shethinx.com','shethinx','thinx discount code','us','thinx-discount-code','Thinx Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Thinx Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Thinx Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(90,'gymshark.com','gymshark','gymshark discount code','us','gymshark-discount-code','Gymshark.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Gymshark.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Gymshark.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(91,'chicme.com','chicme','chic me discount code','us','chic-me-discount-code','Chicme.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Chicme.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Chicme.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(92,'carethy.co.uk','carethy','carethy discount codes','us','carethy-discount-codes','Carethy.co.uk discount code & deals',NULL,'Want to save extra money and become a wiser shopper? Carethy.co.uk discount code & deals are available and verified on Discountcode.vip, add one when checking out!','Carethy.co.uk Discount Code & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(93,'brasnthings.com','brasnthings','bras n things discount code','us','bras-n-things-discount-code','Brasnthings.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Brasnthings.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Brasnthings.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(94,'bombas.com','bombas','bombas discount code','us','bombas-discount-code','Bombas.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Bombas.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Bombas.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(95,'patmcgrath.com','patmcgrath','pat mcgrath discount code','us','pat-mcgrath-discount-code','Patmcgrath.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Patmcgrath.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Patmcgrath.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(96,'treatyourskin.com','treatyourskin','treat your skin discount code','us','treat-your-skin-discount-code','Treatyourskin.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Treatyourskin.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Treatyourskin.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(97,'native-instruments.com','native-instruments','native instruments discount code','us','native-instruments-discount-code','Native-instruments.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Native-instruments.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Native-instruments.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(98,'oysho.com','oysho','oysho discount code','us','oysho-discount-code','Oysho.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Oysho.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Oysho.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(99,'fromyouflowers.com','fromyouflowers','fromyouflowers discount code','us','fromyouflowers-discount-code','Fromyouflowers.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Fromyouflowers.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Fromyouflowers.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(100,'rentalcars.com','rentalcars','rental cars discount code','us','rental-cars-discount-code','Rentalcars.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Rentalcars.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Rentalcars.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(101,'zox.la','zox','zox discount code','us','zox-discount-code','Zox.la discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Zox.la discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Zox.la Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(102,'cloud10beauty.com','cloud10beauty','cloud 10 discount code 2018','us','cloud-10-discount-code-2018','Cloud 10 Top discount codes & promo codes 2018',NULL,'Want to save extra money and become a wiser shopper? Cloud 10 Top discount codes & promo codes 2018 are available and verified on Discountcode.vip, add one when checking out!','Cloud 10 Top Discount Codes & Promo Codes 2018 - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(103,'tiesplanet.com','tiesplanet','ties planet discount code','us','ties-planet-discount-code','Tiesplanet.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Tiesplanet.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Tiesplanet.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(104,'stackedskincare.com','stackedskincare','stacked skincare discount code','us','stacked-skincare-discount-code','Stackedskincare.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Stackedskincare.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Stackedskincare.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(105,'luminaid.com','luminaid','luminaid discount code','us','luminaid-discount-code','Luminaid.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Luminaid.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Luminaid.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(106,'aftershokz.com','aftershokz','aftershokz discount code','us','aftershokz-discount-code','Aftershokz.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Aftershokz.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Aftershokz.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(107,'meshki.com.au','meshki','meshki discount code','us','meshki-discount-code','Meshki.com.au discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Meshki.com.au discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Meshki.com.au Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(108,'lornajane.com.au','lornajane','lorna jane discount code','us','lorna-jane-discount-code','Lornajane.com.au discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Lornajane.com.au discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Lornajane.com.au Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(109,'uniqso.com','uniqso','uniqso discount code','us','uniqso-discount-code','Uniqso.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Uniqso.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Uniqso.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(110,'lelo.com','lelo','lelo discount code','us','lelo-discount-code','Lelo.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Lelo.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Lelo.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(111,'mindymaesmarket.com','mindymaesmarket','mindy mae\'s market discount code','us','mindy-mae-s-market-discount-code','Mindy Mae\'s Market Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Mindy Mae\'s Market Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Mindy Mae\'s Market Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(112,'pacificcoast.com','pacificcoast','pacific coast discount code','us','pacific-coast-discount-code','Pacificcoast.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Pacificcoast.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Pacificcoast.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(113,'kitandkaboodal.co.uk','kitandkaboodal','kit and kaboodal discount code','us','kit-and-kaboodal-discount-code','Kitandkaboodal.co.uk discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Kitandkaboodal.co.uk discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Kitandkaboodal.co.uk Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(114,'rockflowerpaper.com','rockflowerpaper','rock paper flower discount code','us','rock-paper-flower-discount-code','Rock Paper Flower Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Rock Paper Flower Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Rock Paper Flower Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(115,'luckytacklebox.com','luckytacklebox','ltb discount codes','us','ltb-discount-codes','Ltb Top discount code & promo codes',NULL,'Want to save extra money and become a wiser shopper? Ltb Top discount code & promo codes are available and verified on Discountcode.vip, add one when checking out!','Ltb Top Discount Code & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(116,'harrypottershop.com','harrypottershop','harry potter bloomsbury discount code','us','harry-potter-bloomsbury-discount-code','Harry Potter Bloomsbury Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Harry Potter Bloomsbury Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Harry Potter Bloomsbury Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(117,'mmorog.com','mmorog','mmorog discount code','us','mmorog-discount-code','Mmorog.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Mmorog.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Mmorog.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(118,'espemporium.com','espemporium','emporium pop discount code','us','emporium-pop-discount-code','Emporium Pop Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Emporium Pop Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Emporium Pop Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(119,'evolutionofsmooth.com','evolutionofsmooth','eos discount code','us','eos-discount-code','Eos Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Eos Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Eos Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(120,'nourishedlife.com.au','nourishedlife','nourished life discount code','us','nourished-life-discount-code','Nourishedlife.com.au discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Nourishedlife.com.au discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Nourishedlife.com.au Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(121,'discountramps.com','discountramps','ramp discount code','us','ramp-discount-code','Ramp Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Ramp Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Ramp Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(122,'bestbeebrothers.com','bestbeebrothers','best bee brothers discount code','us','best-bee-brothers-discount-code','Bestbeebrothers.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Bestbeebrothers.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Bestbeebrothers.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(123,'filofaxusa.com','filofaxusa','filofax discount code','us','filofax-discount-code','Filofax Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Filofax Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Filofax Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(124,'athleticgreens.com','athleticgreens','athletic greens discount code','us','athletic-greens-discount-code','Athleticgreens.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Athleticgreens.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Athleticgreens.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(125,'ttdeye.com','ttdeye','ttdeye discount code','us','ttdeye-discount-code','Ttdeye.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Ttdeye.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Ttdeye.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(126,'hatshopping.com','hatshopping','hatshopping.co.uk discount code','us','hatshopping-co-uk-discount-code','Hatshopping.co.uk Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Hatshopping.co.uk Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Hatshopping.co.uk Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(127,'beginningboutique.com.au','beginningboutique','beginning boutique discount code','us','beginning-boutique-discount-code','Beginningboutique.com.au discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Beginningboutique.com.au discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Beginningboutique.com.au Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(128,'fuselenses.com','fuselenses','fuse lenses discount code','us','fuse-lenses-discount-code','Fuselenses.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Fuselenses.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Fuselenses.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(129,'overtone.co','overtone','overtone discount code','us','overtone-discount-code','Overtone.co discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Overtone.co discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Overtone.co Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(130,'lonelyplanet.com','lonelyplanet','lonely planet discount code','us','lonely-planet-discount-code','Lonelyplanet.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Lonelyplanet.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Lonelyplanet.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(131,'hydratem8.co.uk','hydratem8','hydratem8 discount code','us','hydratem8-discount-code','Hydratem8.co.uk discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Hydratem8.co.uk discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Hydratem8.co.uk Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(132,'photos.com','photos','photos.com discount code','us','photos-com-discount-code','Photos.com Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Photos.com Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Photos.com Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(133,'musement.com','musement','musement discount code','us','musement-discount-code','Musement.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Musement.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Musement.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(134,'2game.com','2game','2game discount code','us','2game-discount-code','2game.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? 2game.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','2game.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(135,'klymit.com','klymit','canvas on the cheap promo code','us','canvas-on-the-cheap-promo-code','Canvas On The Cheap Top promo codes & deals',NULL,'Want to save extra money and become a wiser shopper? Canvas On The Cheap Top promo codes & deals are available and verified on Discountcode.vip, add one when checking out!','Canvas On The Cheap Top Promo Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(136,'mybkr.com','mybkr','mybkr discount code','us','mybkr-discount-code','Mybkr.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Mybkr.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Mybkr.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(137,'mobvoi.com','mobvoi','mobvoi discount code','us','mobvoi-discount-code','Mobvoi.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Mobvoi.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Mobvoi.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(138,'gocontigo.com','gocontigo','contigo discount code','us','contigo-discount-code','Contigo Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Contigo Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Contigo Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(139,'manomano.co.uk','manomano','mano mano discount code','us','mano-mano-discount-code','Manomano.co.uk discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Manomano.co.uk discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Manomano.co.uk Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(140,'unineed.com','unineed','unineed discount code','us','unineed-discount-code','Unineed.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Unineed.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Unineed.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(141,'wearyourbeer.com','wearyourbeer','beer gear discount code','us','beer-gear-discount-code','Beer Gear Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Beer Gear Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Beer Gear Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(142,'deramores.com','deramores','deramores discount code','us','deramores-discount-code','Deramores.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Deramores.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Deramores.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(143,'nationalgeographic.com','nationalgeographic','national geographic magazine discount code','us','national-geographic-magazine-discount-code','Nationalgeographic.com Magazine Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Nationalgeographic.com Magazine Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Nationalgeographic.com Magazine Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(144,'theidleman.com','theidleman','the idle man discount code','us','the-idle-man-discount-code','Theidleman.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Theidleman.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Theidleman.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(145,'clothingshoponline.com','clothingshoponline','clothing shop discount codes','us','clothing-shop-discount-codes','Clothing Shop Top discount code & promo codes',NULL,'Want to save extra money and become a wiser shopper? Clothing Shop Top discount code & promo codes are available and verified on Discountcode.vip, add one when checking out!','Clothing Shop Top Discount Code & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(146,'smartdestinations.com','smartdestinations','go boston card discount code','us','go-boston-card-discount-code','Go Boston Card Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Go Boston Card Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Go Boston Card Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(147,'sheraton.com','sheraton','sheraton discount codes','us','sheraton-discount-codes','Sheraton.com discount code & promo codes',NULL,'Want to save extra money and become a wiser shopper? Sheraton.com discount code & promo codes are available and verified on Discountcode.vip, add one when checking out!','Sheraton.com Discount Code & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(148,'alternativeapparel.com','alternativeapparel','achill3 apparel discount code','us','achill3-apparel-discount-code','Achill3 Apparel Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Achill3 Apparel Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Achill3 Apparel Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(149,'theprettydresscompany.com','theprettydresscompany','the pretty dress company discount code','us','the-pretty-dress-company-discount-code','Theprettydresscompany.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Theprettydresscompany.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Theprettydresscompany.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(150,'w3llpeople.com','w3llpeople','well people discount code','us','well-people-discount-code','Well People Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Well People Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Well People Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(151,'blnts.com','blnts','bluenotes discount codes 2018','us','bluenotes-discount-codes-2018','Bluenotes Top discount code & coupons 2018',NULL,'Want to save extra money and become a wiser shopper? Bluenotes Top discount code & coupons 2018 are available and verified on Discountcode.vip, add one when checking out!','Bluenotes Top Discount Code & Coupons 2018 - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(152,'popsockets.com','popsockets','popsocket discount code','us','popsocket-discount-code','Popsocket Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Popsocket Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Popsocket Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(153,'princesspolly.com','princesspolly','princess polly discount code','us','princess-polly-discount-code','Princesspolly.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Princesspolly.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Princesspolly.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(154,'kialoa.com','kialoa','kialoa discount code','us','kialoa-discount-code','Kialoa.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Kialoa.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Kialoa.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(155,'alldatadiy.com','alldatadiy','alldata discount codes','us','alldata-discount-codes','Alldata Top discount code & deals',NULL,'Want to save extra money and become a wiser shopper? Alldata Top discount code & deals are available and verified on Discountcode.vip, add one when checking out!','Alldata Top Discount Code & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(156,'airfrance.com','airfrance','air france discount code','us','air-france-discount-code','Airfrance.us discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Airfrance.us discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Airfrance.us Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(157,'vintagetub.com','vintagetub','vintage tub and bath discount code','us','vintage-tub-and-bath-discount-code','Vintage Tub & Bath Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Vintage Tub & Bath Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Vintage Tub & Bath Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(158,'londonpass.com','londonpass','london pass discount code','us','london-pass-discount-code','Londonpass.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Londonpass.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Londonpass.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(159,'storets.com','storets','storets discount code','us','storets-discount-code','Storets.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Storets.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Storets.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(160,'worldbox.pl','worldbox','worldbox discount code','us','worldbox-discount-code','Worldbox.pl discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Worldbox.pl discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Worldbox.pl Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(161,'speckproducts.com','speckproducts','speck discount code','us','speck-discount-code','Speck Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Speck Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Speck Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(162,'harimari.com','harimari','hari mari discount code','us','hari-mari-discount-code','Harimari.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Harimari.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Harimari.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(163,'exposuresonline.com','exposuresonline','ultimate exposures discount code','us','ultimate-exposures-discount-code','Ultimate Exposures Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Ultimate Exposures Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Ultimate Exposures Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(164,'pcgamingrace.com','pcgamingrace','glorious pc gaming race discount code','us','glorious-pc-gaming-race-discount-code','Glorious pcgamingrace.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Glorious pcgamingrace.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Glorious pcgamingrace.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(165,'parachutehome.com','parachutehome','parachute discount code','us','parachute-discount-code','Parachute Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Parachute Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Parachute Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(166,'ejuices.com','ejuices','ejuices.com discount code','us','ejuices-com-discount-code','Ejuices.com Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Ejuices.com Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Ejuices.com Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(167,'baggu.com','baggu','baggu discount code','us','baggu-discount-code','Baggu.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Baggu.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Baggu.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(168,'onpurple.com','onpurple','purple discount code','us','purple-discount-code','Purple Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Purple Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Purple Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(169,'pixibeauty.com','pixibeauty','pixi discount code','us','pixi-discount-code','Pixi Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Pixi Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Pixi Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(170,'supershuttle.com','supershuttle','super shuttle discount code','us','super-shuttle-discount-code','Supershuttle.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Supershuttle.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Supershuttle.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(171,'dearborndenim.us','dearborndenim','dearborn denim discount code','us','dearborn-denim-discount-code','Dearborndenim.us discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Dearborndenim.us discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Dearborndenim.us Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(172,'skinnytan.co.uk','skinnytan','skinny tan discount code 2018','us','skinny-tan-discount-code-2018','Skinnytan.co.uk discount codes & coupons 2018',NULL,'Want to save extra money and become a wiser shopper? Skinnytan.co.uk discount codes & coupons 2018 are available and verified on Discountcode.vip, add one when checking out!','Skinnytan.co.uk Discount Codes & Coupons 2018 - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(173,'ridgewallet.com','ridgewallet','ridge wallet discount code','us','ridge-wallet-discount-code','Ridgewallet.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Ridgewallet.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Ridgewallet.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(174,'westcoastshaving.com','westcoastshaving','west coast shaving discount code','us','west-coast-shaving-discount-code','Westcoastshaving.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Westcoastshaving.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Westcoastshaving.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(175,'peepsandcompany.com','peepsandcompany','peeps discount code','us','peeps-discount-code','Peeps Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Peeps Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Peeps Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(176,'dfranklincreation.com','dfranklincreation','d franklin discount code','us','d-franklin-discount-code','D Franklin Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? D Franklin Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','D Franklin Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(177,'thetileapp.com','thetileapp','tile discount code','us','tile-discount-code','Tile Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Tile Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Tile Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(178,'rhone.com','rhone','rhone discount code','us','rhone-discount-code','Rhone.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Rhone.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Rhone.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(179,'pony.com','pony','pony-o discount code','us','pony-o-discount-code','Pony-o Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Pony-o Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Pony-o Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(180,'mattandnat.com','mattandnat','matt and nat discount code','us','matt-and-nat-discount-code','Matt & Nat Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Matt & Nat Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Matt & Nat Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(181,'adamevetoys.com','adamevetoys','adam n eve discount codes','us','adam-n-eve-discount-codes','Adam N Eve Top discount code & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Adam N Eve Top discount code & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Adam N Eve Top Discount Code & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(182,'airfrance.us','airfrance','air france discount code','us','air-france-discount-code','Airfrance.us discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Airfrance.us discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Airfrance.us Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(183,'trendeo.com','trendeo','trendeo discount code','us','trendeo-discount-code','Trendeo.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Trendeo.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Trendeo.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(184,'walabot.com','walabot','walabot discount code','us','walabot-discount-code','Walabot.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Walabot.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Walabot.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(185,'firstaidbeauty.com','firstaidbeauty','first aid beauty discount code','us','first-aid-beauty-discount-code','Firstaidbeauty.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Firstaidbeauty.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Firstaidbeauty.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(186,'thestorknest.com.au','thestorknest','the stork nest discount code','us','the-stork-nest-discount-code','Thestorknest.com.au discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Thestorknest.com.au discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Thestorknest.com.au Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(187,'mytapscore.com','mytapscore','tap score discount code','us','tap-score-discount-code','Tap Score Top discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Tap Score Top discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Tap Score Top Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(188,'usamilitarymedals.com','usamilitarymedals','usamm discount code','us','usamm-discount-code','Usamm Top discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Usamm Top discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Usamm Top Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(189,'vprocity.com','vprocity','vprocity discount code','us','vprocity-discount-code','Vprocity.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Vprocity.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Vprocity.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(190,'onceuponatee.net','onceuponatee','onceuponatee discount code','us','onceuponatee-discount-code','Onceuponatee.net discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Onceuponatee.net discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Onceuponatee.net Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(191,'fila.com','fila','fila discount code','us','fila-discount-code','Fila.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Fila.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Fila.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(192,'mmoga.com','mmoga','mmoga discount code','us','mmoga-discount-code','Mmoga.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Mmoga.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Mmoga.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(193,'taxi2airport.com','taxi2airport','taxi2airport discount code','us','taxi2airport-discount-code','Taxi2airport.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Taxi2airport.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Taxi2airport.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(194,'boody.com.au','boody','boody discount code','us','boody-discount-code','Boody.com.au discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Boody.com.au discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Boody.com.au Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(195,'foreo.com','foreo','foreo discount code','us','foreo-discount-code','Foreo.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Foreo.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Foreo.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(196,'flawlessvapeshop.com','flawlessvapeshop','flawless vape shop discount code','us','flawless-vape-shop-discount-code','Flawlessvapeshop.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Flawlessvapeshop.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Flawlessvapeshop.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(197,'voyages-sncf.com','voyages-sncf','sncf discount code 2018','us','sncf-discount-code-2018','Sncf Top discount codes & coupons 2018',NULL,'Want to save extra money and become a wiser shopper? Sncf Top discount codes & coupons 2018 are available and verified on Discountcode.vip, add one when checking out!','Sncf Top Discount Codes & Coupons 2018 - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(198,'the-citizenry.com','the-citizenry','the citizenry discount code','us','the-citizenry-discount-code','The-citizenry.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? The-citizenry.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','The-citizenry.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(199,'18montrose.com','18montrose','18montrose discount code','us','18montrose-discount-code','18montrose.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? 18montrose.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','18montrose.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(200,'tyresonthedrive.com','tyresonthedrive','tyres on the drive discount code','us','tyres-on-the-drive-discount-code','Tyresonthedrive.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Tyresonthedrive.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Tyresonthedrive.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(201,'alamy.com','alamy','alamy discount code','us','alamy-discount-code','Alamy.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Alamy.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Alamy.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(202,'outdoorsy.com','outdoorsy','outdoorsy discount code','us','outdoorsy-discount-code','Outdoorsy.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Outdoorsy.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Outdoorsy.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(203,'urban-planet.com','urban-planet','urban planet discount code','us','urban-planet-discount-code','Urban-planet.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Urban-planet.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Urban-planet.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(204,'suzyshier.com','suzyshier','suzy shier discount code','us','suzy-shier-discount-code','Suzyshier.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Suzyshier.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Suzyshier.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(205,'miir.com','miir','miir discount code','us','miir-discount-code','Miir.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Miir.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Miir.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(206,'funko.com','funko','funko shop discount code','us','funko-shop-discount-code','Funko.com Shop Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Funko.com Shop Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Funko.com Shop Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(207,'iolo.com','iolo','iolo discount code','us','iolo-discount-code','Iolo.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Iolo.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Iolo.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(208,'stellarinfo.com','stellarinfo','stellar phoenix discount code','us','stellar-phoenix-discount-code','Stellar Phoenix Top discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Stellar Phoenix Top discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Stellar Phoenix Top Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(209,'spylovebuy.com','spylovebuy','spy love buy discount code','us','spy-love-buy-discount-code','Spylovebuy.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Spylovebuy.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Spylovebuy.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(210,'quayaustralia.com','quayaustralia','quay discount code','us','quay-discount-code','Quay Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Quay Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Quay Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(211,'greats.com','greats','greats discount code','us','greats-discount-code','Greats.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Greats.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Greats.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(212,'futurelearn.com','futurelearn','future learn discount code','us','future-learn-discount-code','Futurelearn.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Futurelearn.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Futurelearn.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(213,'nokeys.com','nokeys','nokeys discount code','us','nokeys-discount-code','Nokeys.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Nokeys.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Nokeys.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(214,'saxxunderwear.com','saxxunderwear','saxx discount code 2018','us','saxx-discount-code-2018','Saxx Top discount codes & promo codes 2018',NULL,'Want to save extra money and become a wiser shopper? Saxx Top discount codes & promo codes 2018 are available and verified on Discountcode.vip, add one when checking out!','Saxx Top Discount Codes & Promo Codes 2018 - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(215,'taniusa.com','taniusa','tani discount code','us','tani-discount-code','Tani Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Tani Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Tani Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(216,'naturepedic.com','naturepedic','naturepedic discount code','us','naturepedic-discount-code','Naturepedic.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Naturepedic.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Naturepedic.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(217,'clarksusa.com','clarksusa','clarks discount code 2018','us','clarks-discount-code-2018','Clarks Top discount codes & promo codes 2018',NULL,'Want to save extra money and become a wiser shopper? Clarks Top discount codes & promo codes 2018 are available and verified on Discountcode.vip, add one when checking out!','Clarks Top Discount Codes & Promo Codes 2018 - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(218,'easeus.com','easeus','easeus discount code','us','easeus-discount-code','Easeus.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Easeus.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Easeus.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(219,'lufthansa.com','lufthansa','lufthansa discount code','us','lufthansa-discount-code','Lufthansa.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Lufthansa.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Lufthansa.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(220,'siroko.com','siroko','siroko discount code','us','siroko-discount-code','Siroko.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Siroko.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Siroko.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(221,'tarocash.com.au','tarocash','tarocash discount code','us','tarocash-discount-code','Tarocash.com.au discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Tarocash.com.au discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Tarocash.com.au Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(222,'skybell.com','skybell','skybell discount code','us','skybell-discount-code','Skybell.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Skybell.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Skybell.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(223,'jolynclothing.com','jolynclothing','jolyn discount code','us','jolyn-discount-code','Jolyn Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Jolyn Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Jolyn Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(224,'ry.com.au','ry','ry discount code','us','ry-discount-code','Ry.com.au discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Ry.com.au discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Ry.com.au Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(225,'taylorstitch.com','taylorstitch','taylor stitch discount code','us','taylor-stitch-discount-code','Taylorstitch.com discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Taylorstitch.com discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Taylorstitch.com Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(226,'bdgastore.com','bdgastore','loma vista discount code','us','loma-vista-discount-code','Loma Vista Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Loma Vista Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Loma Vista Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(227,'esigns.com','esigns','esigns discount code','us','esigns-discount-code','Esigns.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Esigns.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Esigns.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(228,'homedics.com','homedics','homedics discount code','us','homedics-discount-code','Homedics.com discount codes & coupon codes',NULL,'Want to save extra money and become a wiser shopper? Homedics.com discount codes & coupon codes are available and verified on Discountcode.vip, add one when checking out!','Homedics.com Discount Codes & Coupon Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(229,'etam.com','etam','etam discount code','us','etam-discount-code','Etam.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Etam.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Etam.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(230,'mavi.com','mavi','mavi discount code','us','mavi-discount-code','Mavi.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Mavi.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Mavi.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(231,'thejockeyclub.co.uk','thejockeyclub','haydock races tickets discount code','us','haydock-races-tickets-discount-code','Haydock Races Tickets Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Haydock Races Tickets Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Haydock Races Tickets Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(232,'ejuicevapor.com','ejuicevapor','ejuicevapor discount code','us','ejuicevapor-discount-code','Ejuicevapor.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Ejuicevapor.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Ejuicevapor.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(233,'ryderwear.com.au','ryderwear','ryderwear discount code','us','ryderwear-discount-code','Ryderwear.com.au discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Ryderwear.com.au discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Ryderwear.com.au Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(234,'iconundies.com','iconundies','icon undies discount code','us','icon-undies-discount-code','Iconundies.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Iconundies.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Iconundies.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(235,'smashinn.com','smashinn','smashinn discount code','us','smashinn-discount-code','Smashinn.com discount codes & promo codes',NULL,'Want to save extra money and become a wiser shopper? Smashinn.com discount codes & promo codes are available and verified on Discountcode.vip, add one when checking out!','Smashinn.com Discount Codes & Promo Codes - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(236,'snowjoe.com','snowjoe','sun joe discount code','us','sun-joe-discount-code','Sun Joe Top discount codes & deals',NULL,'Want to save extra money and become a wiser shopper? Sun Joe Top discount codes & deals are available and verified on Discountcode.vip, add one when checking out!','Sun Joe Top Discount Codes & Deals - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL),(237,'lifeandlooks.com','lifeandlooks','life and looks discount code','us','life-and-looks-discount-code','Lifeandlooks.com discount codes & coupons',NULL,'Want to save extra money and become a wiser shopper? Lifeandlooks.com discount codes & coupons are available and verified on Discountcode.vip, add one when checking out!','Lifeandlooks.com Discount Codes & Coupons - DiscountCodeVIP',NULL,0,NULL,NULL,NULL,'0',NULL);
/*!40000 ALTER TABLE `coupon_base_coupontagsmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_domainstorename`
--

DROP TABLE IF EXISTS `coupon_base_domainstorename`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_domainstorename` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(128) NOT NULL,
  `store_name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_domainstorename`
--

LOCK TABLES `coupon_base_domainstorename` WRITE;
/*!40000 ALTER TABLE `coupon_base_domainstorename` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_domainstorename` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_manuallymaintaineddomain`
--

DROP TABLE IF EXISTS `coupon_base_manuallymaintaineddomain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_manuallymaintaineddomain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_manuallymaintaineddomain`
--

LOCK TABLES `coupon_base_manuallymaintaineddomain` WRITE;
/*!40000 ALTER TABLE `coupon_base_manuallymaintaineddomain` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_manuallymaintaineddomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_multicomment`
--

DROP TABLE IF EXISTS `coupon_base_multicomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_multicomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `to_model` varchar(63) NOT NULL,
  `to` varchar(16) NOT NULL,
  `content` longtext NOT NULL,
  `anonymous` tinyint(1) NOT NULL,
  `extra` longtext,
  `owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupon_base_multicomment_to_model_to_83f1807f_idx` (`to_model`,`to`),
  KEY `coupon_base_multicomment_owner_id_affd67ff_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `coupon_base_multicomment_owner_id_affd67ff_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_multicomment`
--

LOCK TABLES `coupon_base_multicomment` WRITE;
/*!40000 ALTER TABLE `coupon_base_multicomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_multicomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_queryrating`
--

DROP TABLE IF EXISTS `coupon_base_queryrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_queryrating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(128) NOT NULL,
  `ip` char(39) DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `voter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `query` (`query`),
  KEY `coupon_base_queryrating_voter_id_21fafaf6_fk_auth_user_id` (`voter_id`),
  CONSTRAINT `coupon_base_queryrating_voter_id_21fafaf6_fk_auth_user_id` FOREIGN KEY (`voter_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_queryrating`
--

LOCK TABLES `coupon_base_queryrating` WRITE;
/*!40000 ALTER TABLE `coupon_base_queryrating` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_queryrating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_querystore`
--

DROP TABLE IF EXISTS `coupon_base_querystore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_querystore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `query` varchar(240) NOT NULL,
  `locale` varchar(10) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `search_description` varchar(1024) DEFAULT NULL,
  `search_heading` varchar(1024) DEFAULT NULL,
  `description` longtext,
  `blog` longtext,
  `status` smallint(6) NOT NULL,
  `fake_rating_score` double DEFAULT NULL,
  `fake_rating_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupon_base_querystore_domain_slug_locale_bd20ee3b_uniq` (`domain`,`slug`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_querystore`
--

LOCK TABLES `coupon_base_querystore` WRITE;
/*!40000 ALTER TABLE `coupon_base_querystore` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_querystore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_statistic`
--

DROP TABLE IF EXISTS `coupon_base_statistic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_statistic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_model` varchar(63) NOT NULL,
  `to` varchar(16) NOT NULL,
  `total_voted_up` int(11) NOT NULL,
  `total_voted_down` int(11) NOT NULL,
  `total_comment` int(11) NOT NULL,
  `extra` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupon_base_statistic_to_to_model_d35ef9d4_uniq` (`to`,`to_model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_statistic`
--

LOCK TABLES `coupon_base_statistic` WRITE;
/*!40000 ALTER TABLE `coupon_base_statistic` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_statistic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_storecategory`
--

DROP TABLE IF EXISTS `coupon_base_storecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_storecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(128) NOT NULL,
  `first_category_id` int(11) NOT NULL,
  `second_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain` (`domain`),
  KEY `coupon_base_storecat_first_category_id_a09ba83a_fk_coupon_ba` (`first_category_id`),
  KEY `coupon_base_storecat_second_category_id_f0bbdff8_fk_coupon_ba` (`second_category_id`),
  CONSTRAINT `coupon_base_storecat_first_category_id_a09ba83a_fk_coupon_ba` FOREIGN KEY (`first_category_id`) REFERENCES `coupon_base_category` (`id`),
  CONSTRAINT `coupon_base_storecat_second_category_id_f0bbdff8_fk_coupon_ba` FOREIGN KEY (`second_category_id`) REFERENCES `coupon_base_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_storecategory`
--

LOCK TABLES `coupon_base_storecategory` WRITE;
/*!40000 ALTER TABLE `coupon_base_storecategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_storecategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_storerating`
--

DROP TABLE IF EXISTS `coupon_base_storerating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_storerating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(39) DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `store_id` int(11) NOT NULL,
  `voter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupon_base_storerat_store_id_3badefcd_fk_coupon_ba` (`store_id`),
  KEY `coupon_base_storerating_voter_id_ed11245a_fk_auth_user_id` (`voter_id`),
  CONSTRAINT `coupon_base_storerat_store_id_3badefcd_fk_coupon_ba` FOREIGN KEY (`store_id`) REFERENCES `coupon_base_coupontagsmap` (`id`),
  CONSTRAINT `coupon_base_storerating_voter_id_ed11245a_fk_auth_user_id` FOREIGN KEY (`voter_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_storerating`
--

LOCK TABLES `coupon_base_storerating` WRITE;
/*!40000 ALTER TABLE `coupon_base_storerating` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_storerating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_storewithadsense`
--

DROP TABLE IF EXISTS `coupon_base_storewithadsense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_storewithadsense` (
  `domain` varchar(255) NOT NULL,
  PRIMARY KEY (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_storewithadsense`
--

LOCK TABLES `coupon_base_storewithadsense` WRITE;
/*!40000 ALTER TABLE `coupon_base_storewithadsense` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_storewithadsense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_usagerecord`
--

DROP TABLE IF EXISTS `coupon_base_usagerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_usagerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `to_model` varchar(63) NOT NULL,
  `to` varchar(16) NOT NULL,
  `ip` char(39) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupon_base_usagerecord_to_model_to_72024c89_idx` (`to_model`,`to`),
  KEY `coupon_base_usagerecord_user_id_75add26f_fk_auth_user_id` (`user_id`),
  CONSTRAINT `coupon_base_usagerecord_user_id_75add26f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_usagerecord`
--

LOCK TABLES `coupon_base_usagerecord` WRITE;
/*!40000 ALTER TABLE `coupon_base_usagerecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_usagerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_base_vote`
--

DROP TABLE IF EXISTS `coupon_base_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_base_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `value` int(11) NOT NULL,
  `to_model` varchar(63) NOT NULL,
  `to` varchar(16) NOT NULL,
  `ip` char(39) DEFAULT NULL,
  `voter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupon_base_vote_to_model_to_29a55883_idx` (`to_model`,`to`),
  KEY `coupon_base_vote_voter_id_21d72658_fk_auth_user_id` (`voter_id`),
  CONSTRAINT `coupon_base_vote_voter_id_21d72658_fk_auth_user_id` FOREIGN KEY (`voter_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_vote`
--

LOCK TABLES `coupon_base_vote` WRITE;
/*!40000 ALTER TABLE `coupon_base_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_base_vote` ENABLE KEYS */;
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
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'coupon_base','affilaitewhitelist'),(8,'coupon_base','category'),(18,'coupon_base','couponinquerystore'),(19,'coupon_base','couponinstoresocialmeta'),(11,'coupon_base','couponintagstore'),(21,'coupon_base','coupontagsmap'),(7,'coupon_base','domainstorename'),(17,'coupon_base','manuallymaintaineddomain'),(13,'coupon_base','multicomment'),(15,'coupon_base','queryrating'),(10,'coupon_base','querystore'),(22,'coupon_base','statistic'),(9,'coupon_base','storecategory'),(14,'coupon_base','storerating'),(23,'coupon_base','storewithadsense'),(20,'coupon_base','usagerecord'),(16,'coupon_base','vote'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-07-13 11:22:10.163411'),(2,'auth','0001_initial','2018-07-13 11:22:10.307862'),(3,'admin','0001_initial','2018-07-13 11:22:10.338186'),(4,'admin','0002_logentry_remove_auto_add','2018-07-13 11:22:10.357778'),(5,'contenttypes','0002_remove_content_type_name','2018-07-13 11:22:10.409507'),(6,'auth','0002_alter_permission_name_max_length','2018-07-13 11:22:10.448811'),(7,'auth','0003_alter_user_email_max_length','2018-07-13 11:22:10.485061'),(8,'auth','0004_alter_user_username_opts','2018-07-13 11:22:10.497589'),(9,'auth','0005_alter_user_last_login_null','2018-07-13 11:22:10.526848'),(10,'auth','0006_require_contenttypes_0002','2018-07-13 11:22:10.528201'),(11,'auth','0007_alter_validators_add_error_messages','2018-07-13 11:22:10.537359'),(12,'auth','0008_alter_user_username_max_length','2018-07-13 11:22:10.575370'),(13,'coupon_base','0001_initial','2018-07-13 11:22:11.012791'),(14,'sessions','0001_initial','2018-07-13 11:22:11.023448');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-18 10:15:39
