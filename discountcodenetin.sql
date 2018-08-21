-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: discountcodenetin
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
  `locale` varchar(10) NOT NULL DEFAULT 'in',
  `slug` varchar(128) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` longtext,
  `search_description` varchar(1024) DEFAULT NULL,
  `search_heading` varchar(1024) DEFAULT NULL,
  `blog` longtext,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `fake_rating_score` double DEFAULT NULL,
  `fake_rating_count` int(11) DEFAULT NULL,
  `display_tags` varchar(128) DEFAULT NULL,
  `restrict_domains` varchar(1024) NOT NULL DEFAULT '',
  `canonical` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupon_base_coupontagsmap_domain_slug_locale_5dd9c01e_uniq` (`domain`,`slug`,`locale`),
  KEY `coupon_base_coupontagsmap_domain_4bccd02c` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_base_coupontagsmap`
--

LOCK TABLES `coupon_base_coupontagsmap` WRITE;
/*!40000 ALTER TABLE `coupon_base_coupontagsmap` DISABLE KEYS */;
INSERT INTO `coupon_base_coupontagsmap` VALUES (1,'flipkart.com','flipkart','flipkart coupons','in','flipkart-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(2,'croma.com','croma','croma coupon code','in','croma-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(3,'klook.com','klook','klook promo code','in','klook-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(4,'cleartrip.com','cleartrip','cleartrip coupon code','in','cleartrip-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(5,'ebay.in','ebay','ebay coupons','in','ebay-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(6,'swiggy.com','swiggy','swiggy coupon','in','swiggy-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(7,'ticketnew.com','ticketnew','ticketnew coupon','in','ticketnew-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(8,'1mg.com','1mg','1mg coupon code','in','1mg-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(9,'airtel.in','airtel','airtel cashback offer','in','airtel-cashback-offer',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(10,'ovenstory.in','ovenstory','ovenstory coupons','in','ovenstory-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(11,'hm.com','hm','h&m discount code india','in','h-m-discount-code-india',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(12,'etihad.com','etihad','etihad promo code','in','etihad-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(13,'zomato.com','zomato','zomato coupons','in','zomato-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(14,'biotique.com','biotique','biotique coupon code','in','biotique-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(15,'faasos.io','faasos','faasos coupons','in','faasos-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(16,'mobikwik.com','mobikwik','mobikwik promo code','in','mobikwik-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(17,'cashify.in','cashify','cashify coupon code','in','cashify-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(18,'paytm.com','paytm','paytm flight offers','in','paytm-flight-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(19,'ubereats.com','ubereats','uber eats coupon','in','uber-eats-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(20,'licious.in','licious','licious coupon','in','licious-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(21,'qatarairways.com','qatarairways','qatar airways promo code','in','qatar-airways-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(22,'dream11.com','dream11','dream11 free entry code','in','dream11-free-entry-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(23,'healthkart.com','healthkart','healthkart coupon','in','healthkart-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(24,'maxfashion.in','maxfashion','max offers','in','max-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(25,'adidas.co.in','adidas','adidas promo code','in','adidas-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(26,'coolwinks.com','coolwinks','coolwinks promo code','in','coolwinks-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(27,'uber.com','uber','uber coupons','in','uber-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(28,'paytmmall.com','paytmmall','paytm mall promo code','in','paytm-mall-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(29,'dominos.co.in','dominos','dominos coupon','in','dominos-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(30,'jetairways.com','jetairways','jet airways promo code','in','jet-airways-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(31,'tatacliq.com','tatacliq','tata cliq coupon','in','tata-cliq-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(32,'snapdeal.com','snapdeal','snapdeal promo code','in','snapdeal-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(33,'urbanladder.com','urbanladder','urban ladder coupon','in','urban-ladder-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(34,'jio.com','jio','jio recharge offers','in','jio-recharge-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(35,'chaipoint.com','chaipoint','chai point coupon','in','chai-point-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(36,'bigbasket.com','bigbasket','big basket coupons','in','big-basket-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(37,'zoomin.com','zoomin','zoomin coupons','in','zoomin-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(38,'bigrock.in','bigrock','bigrock coupon','in','bigrock-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(39,'limeroad.com','limeroad','limeroad coupons','in','limeroad-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(40,'treebo.com','treebo','treebo coupons','in','treebo-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(41,'housejoy.in','housejoy','housejoy coupon','in','housejoy-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(42,'pepperfry.com','pepperfry','pepperfry coupons','in','pepperfry-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(43,'pokerbaazi.com','pokerbaazi','pokerbaazi promo code','in','pokerbaazi-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(44,'wildcraft.in','wildcraft','wildcraft coupon','in','wildcraft-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(45,'nykaa.com','nykaa','nykaa coupon','in','nykaa-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(46,'droom.in','droom','droom coupon code','in','droom-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(47,'lenskart.com','lenskart','lenskart coupons','in','lenskart-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(48,'kfc.co.in','kfc','kfc coupons','in','kfc-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(49,'zingoy.com','zingoy','zingoy promo code','in','zingoy-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(50,'nnnow.com','nnnow','nnnow coupons','in','nnnow-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(51,'myramed.in','myramed','myra promo code','in','myra-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(52,'printvenue.com','printvenue','printvenue coupons','in','printvenue-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(53,'koovs.com','koovs','koovs promo code','in','koovs-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(54,'jabong.com','jabong','jabong coupons','in','jabong-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(55,'moddelivery.in','moddelivery','mod coupons','in','mod-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(56,'beardo.in','beardo','beardo coupon code','in','beardo-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(57,'medlife.com','medlife','medlife coupon','in','medlife-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(58,'shoppersstop.com','shoppersstop','shoppers stop coupon code','in','shoppers-stop-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(59,'paypal.com','paypal','paypal offers','in','paypal-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(60,'floweraura.com','floweraura','floweraura coupon code','in','floweraura-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(61,'behrouzbiryani.com','behrouzbiryani','behrouz biryani coupon','in','behrouz-biryani-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(62,'clovia.com','clovia','clovia offers','in','clovia-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(63,'fabindia.com','fabindia','fabindia coupons','in','fabindia-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(64,'hicare.in','hicare','hicare voucher','in','hicare-voucher',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(65,'hpshopping.in','hpshopping','hp discount code','in','hp-discount-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(66,'myntra.com','myntra','myntra coupons','in','myntra-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(67,'travelkhana.com','travelkhana','travel khana promo code','in','travel-khana-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(68,'fabhotels.com','fabhotels','fab hotel coupons','in','fab-hotel-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(69,'primevideo.com','primevideo','amazon prime membership offer 2018','in','amazon-prime-membership-offer-2018',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(70,'purplle.com','purplle','purplle coupon code','in','purplle-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(71,'booking.com','booking','booking.com coupons','in','booking-com-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(72,'shein.com','shein','shein coupon code','in','shein-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(73,'zivame.com','zivame','zivame coupon','in','zivame-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(74,'lifestylestores.com','lifestylestores','lifestyle promo code','in','lifestyle-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(75,'fnp.com','fnp','fnp coupon code','in','fnp-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(76,'nike.com','nike','nike offers','in','nike-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(77,'netmeds.com','netmeds','netmeds coupons','in','netmeds-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(78,'firstcry.com','firstcry','firstcry coupons','in','firstcry-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(79,'pharmeasy.in','pharmeasy','pharmeasy coupon','in','pharmeasy-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(80,'pizzahut.co.in','pizzahut','pizza hut offer','in','pizza-hut-offer',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(81,'udemy.com','udemy','udemy coupon','in','udemy-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(82,'foodpanda.in','foodpanda','foodpanda coupon','in','foodpanda-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(83,'biba.in','biba','biba voucher code','in','biba-voucher-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(84,'agoda.com','agoda','agoda promo code','in','agoda-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(85,'musafir.com','musafir','musafir flight coupons','in','musafir-flight-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(86,'themeforest.net','themeforest','themeforest coupon','in','themeforest-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(87,'mcdelivery.co.in','mcdelivery','free mcdonalds vouchers','in','free-mcdonalds-vouchers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(88,'ixigo.com','ixigo','ixigo coupons','in','ixigo-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(89,'winni.in','winni','winni coupons','in','winni-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(90,'mivi.in','mivi','mivi coupon code','in','mivi-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(91,'industrybuying.com','industrybuying','industry buying coupons','in','industry-buying-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(92,'zoomcar.com','zoomcar','zoomcar coupons','in','zoomcar-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(93,'reliancetrends.com','reliancetrends','reliance trends offer today','in','reliance-trends-offer-today',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(94,'shop4reebok.com','shop4reebok','reebok promo code','in','reebok-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(95,'decathlon.in','decathlon','decathlon voucher code','in','decathlon-voucher-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(96,'aliexpress.com','aliexpress','aliexpress coupons code india','in','aliexpress-coupons-code-india',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(97,'stayclassy.in','stayclassy','stayclassy coupons','in','stayclassy-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(98,'eventshigh.com','eventshigh','eventshigh coupon code','in','eventshigh-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(99,'ajio.com','ajio','ajio coupons','in','ajio-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(100,'makemytrip.com','makemytrip','makemytrip coupons','in','makemytrip-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(101,'vlccpersonalcare.com','vlccpersonalcare','vlcc offers','in','vlcc-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(102,'igp.com','igp','igp coupon code','in','igp-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(103,'shopclues.com','shopclues','shopclues coupon','in','shopclues-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(104,'nearbuy.com','nearbuy','nearbuy coupons','in','nearbuy-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(105,'via.com','via','via coupon code','in','via-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(106,'godaddy.com','godaddy','godaddy promo code','in','godaddy-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(107,'testbook.com','testbook','testbook referral code','in','testbook-referral-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(108,'oneplus.in','oneplus','oneplus promo code','in','oneplus-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(109,'flipkart.com','flipkart','flipkart coupon code','in','flipkart-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(110,'croma.com','croma','croma coupon','in','croma-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(111,'cleartrip.com','cleartrip','cleartrip coupons','in','cleartrip-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(112,'ebay.in','ebay','ebay coupon','in','ebay-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(113,'swiggy.com','swiggy','swiggy coupon code','in','swiggy-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(114,'ticketnew.com','ticketnew','ticket new offers','in','ticket-new-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(115,'1mg.com','1mg','1mg coupons','in','1mg-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(116,'airtel.in','airtel','airtel recharge cashback','in','airtel-recharge-cashback',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(117,'zomato.com','zomato','zomato coupon','in','zomato-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(118,'faasos.io','faasos','faasos coupon code','in','faasos-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(119,'mobikwik.com','mobikwik','mobikwik coupon','in','mobikwik-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(120,'cashify.in','cashify','cashify coupon','in','cashify-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(121,'paytm.com','paytm','paytm promo code','in','paytm-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(122,'ubereats.com','ubereats','uber eats promo','in','uber-eats-promo',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(123,'licious.in','licious','licious coupons','in','licious-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(124,'healthkart.com','healthkart','healthkart coupons','in','healthkart-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(125,'maxfashion.in','maxfashion','max sale upto 50 off 2018 last date','in','max-sale-upto-50-off-2018-last-date',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(126,'adidas.co.in','adidas','adidas promo code india','in','adidas-promo-code-india',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(127,'coolwinks.com','coolwinks','coolwinks coupon','in','coolwinks-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(128,'uber.com','uber','uber coupons for new users','in','uber-coupons-for-new-users',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(129,'paytmmall.com','paytmmall','paytm mall offers','in','paytm-mall-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(130,'dominos.co.in','dominos','dominos coupon codes','in','dominos-coupon-codes',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(131,'jetairways.com','jetairways','jetairways promo code','in','jetairways-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(132,'tatacliq.com','tatacliq','tata cliq coupons','in','tata-cliq-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(133,'snapdeal.com','snapdeal','snapdeal coupon code','in','snapdeal-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(134,'urbanladder.com','urbanladder','urbanladder coupon','in','urbanladder-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(135,'jio.com','jio','jio recharge offers today','in','jio-recharge-offers-today',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(136,'bigbasket.com','bigbasket','big basket offer','in','big-basket-offer',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(137,'zoomin.com','zoomin','zoomin offers','in','zoomin-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(138,'bigrock.in','bigrock','bigrock coupon code','in','bigrock-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(139,'housejoy.in','housejoy','housejoy promo code','in','housejoy-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(140,'pepperfry.com','pepperfry','pepperfry coupon','in','pepperfry-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(141,'nykaa.com','nykaa','nykaa coupon code','in','nykaa-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(142,'lenskart.com','lenskart','lenskart coupon','in','lenskart-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(143,'kfc.co.in','kfc','kfc coupon code','in','kfc-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(144,'nnnow.com','nnnow','nnnow promo code','in','nnnow-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(145,'myramed.in','myramed','myra coupon','in','myra-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(146,'koovs.com','koovs','koovs coupon code','in','koovs-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(147,'jabong.com','jabong','jabong coupon code','in','jabong-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(148,'moddelivery.in','moddelivery','mod offers','in','mod-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(149,'medlife.com','medlife','medlife coupon code','in','medlife-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(150,'shoppersstop.com','shoppersstop','shoppers stop promo code','in','shoppers-stop-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(151,'paypal.com','paypal','paypal offers for new users india','in','paypal-offers-for-new-users-india',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(152,'floweraura.com','floweraura','floweraura coupons','in','floweraura-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(153,'behrouzbiryani.com','behrouzbiryani','behrouz biryani coupons','in','behrouz-biryani-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(154,'clovia.com','clovia','clovia coupons','in','clovia-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(155,'myntra.com','myntra','myntra coupon','in','myntra-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(156,'travelkhana.com','travelkhana','travelkhana promo code','in','travelkhana-promo-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(157,'primevideo.com','primevideo','amazon prime subscription offer','in','amazon-prime-subscription-offer',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(158,'purplle.com','purplle','purple coupon code','in','purple-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(159,'booking.com','booking','booking.com offers','in','booking-com-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(160,'zivame.com','zivame','zivame coupons','in','zivame-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(161,'lifestylestores.com','lifestylestores','lifestyle coupons','in','lifestyle-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(162,'fnp.com','fnp','fnp coupons','in','fnp-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(163,'netmeds.com','netmeds','netmeds coupon code','in','netmeds-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(164,'firstcry.com','firstcry','firstcry offers','in','firstcry-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(165,'pharmeasy.in','pharmeasy','pharmeasy coupons','in','pharmeasy-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(166,'pizzahut.co.in','pizzahut','pizza hut offers','in','pizza-hut-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(167,'udemy.com','udemy','udemy coupon india','in','udemy-coupon-india',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(168,'foodpanda.in','foodpanda','food panda coupons','in','food-panda-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(169,'agoda.com','agoda','agoda coupons','in','agoda-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(170,'mcdelivery.co.in','mcdelivery','mcdonalds coupon','in','mcdonalds-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(171,'ixigo.com','ixigo','ixigo coupon code','in','ixigo-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(172,'winni.in','winni','winni coupon','in','winni-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(173,'industrybuying.com','industrybuying','industrybuying coupon','in','industrybuying-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(174,'zoomcar.com','zoomcar','zoomcar offers','in','zoomcar-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(175,'reliancetrends.com','reliancetrends','reliance trends refer and earn','in','reliance-trends-refer-and-earn',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(176,'decathlon.in','decathlon','decathlon coupons','in','decathlon-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(177,'aliexpress.com','aliexpress','aliexpress coupons','in','aliexpress-coupons',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(178,'ajio.com','ajio','ajio coupon','in','ajio-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(179,'makemytrip.com','makemytrip','makemytrip coupon','in','makemytrip-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(180,'shopclues.com','shopclues','shopclues coupon code','in','shopclues-coupon-code',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(181,'nearbuy.com','nearbuy','nearbuy offers','in','nearbuy-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(182,'via.com','via','via offers','in','via-offers',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(183,'godaddy.com','godaddy','godaddy coupon','in','godaddy-coupon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL),(184,'testbook.com','testbook','testbook test series','in','testbook-test-series',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL);
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
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-08-20 06:08:38.225723'),(2,'auth','0001_initial','2018-08-20 06:08:38.916998'),(3,'admin','0001_initial','2018-08-20 06:08:39.132082'),(4,'admin','0002_logentry_remove_auto_add','2018-08-20 06:08:39.154496'),(5,'contenttypes','0002_remove_content_type_name','2018-08-20 06:08:39.319942'),(6,'auth','0002_alter_permission_name_max_length','2018-08-20 06:08:39.354142'),(7,'auth','0003_alter_user_email_max_length','2018-08-20 06:08:39.399658'),(8,'auth','0004_alter_user_username_opts','2018-08-20 06:08:39.411429'),(9,'auth','0005_alter_user_last_login_null','2018-08-20 06:08:39.448543'),(10,'auth','0006_require_contenttypes_0002','2018-08-20 06:08:39.451084'),(11,'auth','0007_alter_validators_add_error_messages','2018-08-20 06:08:39.473959'),(12,'auth','0008_alter_user_username_max_length','2018-08-20 06:08:39.531068'),(13,'coupon_base','0001_initial','2018-08-20 06:08:40.997924'),(14,'sessions','0001_initial','2018-08-20 06:08:41.076787');
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

-- Dump completed on 2018-08-21 11:32:45
