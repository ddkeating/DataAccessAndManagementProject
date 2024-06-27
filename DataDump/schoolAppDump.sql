-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: schoolappdatabase
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (4,'Admin'),(5,'Student'),(6,'Tutor');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add article',7,'add_article'),(26,'Can change article',7,'change_article'),(27,'Can delete article',7,'delete_article'),(28,'Can view article',7,'view_article'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$wl7819AvW43ceLdJzHakLN$meH7/CZHnlO1aVAr6uINzZUaSfdp30llzWZSzC26sxc=','2024-06-27 05:45:31.579772',1,'admin','','','admin@teamwellingtonq2.com',1,1,'2024-06-25 05:24:34.490172'),(2,'pbkdf2_sha256$720000$YFBK1BcrOxjkLRZsmaTH8k$lE6zJR5q+12ZnOVn8wrYdgdjg2gfCzamkiWLTnCm+8k=',NULL,0,'Rani','Rani','Lal','rani@gmail.com',1,1,'2024-06-27 05:46:33.000000'),(3,'pbkdf2_sha256$720000$Pq2lBR6MUQ8zOc9gruRKkm$HYwBXgYY46VHgnfSCbz3a+fR9oELkvlw3gXzxf95YIU=',NULL,0,'John','John','Mueller','johnm@gmail.com',1,1,'2024-06-27 05:55:29.000000'),(4,'pbkdf2_sha256$720000$Xf5D4FmuDe6CTSIAnfi6iN$I5Sr/WN4YhaO+IyA+T5GQ+tvFHmeKd3UBO8Ne9Y6oSw=',NULL,0,'Martha','Martha','Seigal','marthas@gmail.com',1,1,'2024-06-27 06:00:01.000000'),(5,'pbkdf2_sha256$720000$co3bDeUPnEqItVt2rVcFht$NiBmAMhbbJMKF2YXmhtXNv6V/EJfvs77nqtWwGid0Ns=',NULL,0,'jack','Jack','Morgan','jackm@gmail.com',1,1,'2024-06-27 06:05:25.000000'),(6,'pbkdf2_sha256$720000$ahR8ZVdi0u7XLbYZCeyQCV$/TY7FWTnISL7gO0CvMjvKuLlDGsMPbT6ZfEtAgf5o38=',NULL,0,'Daniel','Daniel','Bush','danielb@gmail.com',1,1,'2024-06-27 06:07:09.000000'),(7,'pbkdf2_sha256$720000$rKFu8zy2y9HrKMgVQyt2T4$m8JnuZ+d76OijkoCnM30bgkSiC7n/YHOlO54ZlBgRHA=',NULL,0,'Mike','Mike','Tailwind','miket@gmail.com',1,1,'2024-06-27 08:06:37.000000'),(8,'pbkdf2_sha256$720000$Psv9ElDWiCnHumv312jdDC$i/9344qIj6lL9oGfHIl9j1RMfOlMu6btvMQvYanMoQw=',NULL,0,'Sheena','Sheena','Stiller','sheenas@gmail.com',1,1,'2024-06-27 08:08:34.000000'),(9,'pbkdf2_sha256$720000$QSzLMUiCGL9WsAKYYtKyPZ$dpXcuqEmnF26rGipdtG3clnW9jXw+iJH5slz2IEbGM4=',NULL,0,'Hamish','Hamish','Leyland','hamishl@gmail.com',1,1,'2024-06-27 08:10:30.000000'),(10,'pbkdf2_sha256$720000$dIY1jWvZF5wfJvQ3Ju8IL5$v6+NpG4l+2Co8oMk0K6ffT3IriI9ImPmH+BonHiUPJU=',NULL,0,'Leena','Leena','Thomas','leena@gmail.com',1,1,'2024-06-27 08:12:21.000000'),(11,'pbkdf2_sha256$720000$lkuMhV1jkoLbccSvifwQao$Tfrm4JVl0tvUXsfcDg65Hle+6KNugMCp/ONrji3JxNE=',NULL,0,'George','George','Passingham','georgep@gmail.com',1,1,'2024-06-27 08:13:55.000000'),(12,'pbkdf2_sha256$720000$vltM3nHeBzxEff2wPfc7Bi$GagIfvufq/iofhD+HIyRI748HQ0bvJXiF6pF90+Ws9A=',NULL,0,'Jackson','Jackson','Little','jacksonl@gmail.com',1,1,'2024-06-27 08:16:47.000000'),(13,'pbkdf2_sha256$720000$i1PHbMXN7vOvvsFESrUpmX$qL5Ut0QIcWe4aEwLJtXKOu044uboYUDdnzV+ppYmdoE=',NULL,0,'Corin','Corin','Davis','corind@gmail.com',1,1,'2024-06-27 08:20:14.000000'),(14,'pbkdf2_sha256$720000$c6izsvPvZeJ3FlDoJo1R1B$Q4mu6Q7HuCIl/5uyleoT7l/UWAQtaxfGpxrlJgE+BQY=',NULL,0,'Sarah','Sarah','Jacob','sarahj@gmail.com',1,1,'2024-06-27 08:22:22.000000'),(15,'pbkdf2_sha256$720000$Wh6NthDon0gfE8PxsSeKgM$MFQpTWDnRX9qsFGl3ZotX7ajYZbpkbrkCvKPIt8TnYg=',NULL,0,'Sara','Sara','David','sarahda@gmail.com',1,1,'2024-06-27 08:24:37.000000'),(16,'pbkdf2_sha256$720000$K0jKTqM8DZfITAQfvBVsMd$v0tqGCqlhUjvqCs144J0ZMvlt4D6VHIMMLVHwfsifW4=',NULL,0,'Alexander','Alexander','Gomez','alexanderg@gmail.com',1,1,'2024-06-27 08:26:38.000000'),(17,'pbkdf2_sha256$720000$ifkpfH991tM9UrrLfBex3f$MFoqbkwg920nN1JgMuy5ZE5EsChW2MjlcfY9Q8Ja+3Y=',NULL,0,'Kiara','Kiara','Roberts','kiara@gmail.com',1,1,'2024-06-27 08:28:21.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (3,2,4),(1,3,4),(2,4,4),(4,5,4),(5,6,4),(6,7,6),(7,8,6),(8,9,6),(9,10,6),(10,11,6),(11,12,5),(12,13,5),(16,14,5),(13,15,5),(14,16,5),(15,17,5);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (9,2,25),(10,2,26),(11,2,27),(12,2,28),(1,3,25),(2,3,26),(3,3,27),(5,4,25),(6,4,26),(7,4,27),(8,4,28),(13,5,25),(14,5,26),(15,5,27),(16,5,28),(17,6,25),(18,6,26),(19,6,27),(20,7,25),(21,7,26),(22,8,25),(23,8,26),(24,9,25),(25,9,26),(26,10,25),(27,10,26),(28,11,25),(29,11,26),(30,12,20),(31,12,28),(32,13,20),(33,13,28),(40,14,20),(41,14,28),(34,15,20),(35,15,28),(36,16,20),(37,16,28),(38,17,20),(39,17,28);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-06-27 05:46:33.791363','2','Rani',1,'[{\"added\": {}}]',4,1),(2,'2024-06-27 05:52:04.578787','2','Administrators',3,'',3,1),(3,'2024-06-27 05:52:04.607440','1','Students',3,'',3,1),(4,'2024-06-27 05:52:04.613474','3','Tutors',3,'',3,1),(5,'2024-06-27 05:53:45.731483','4','Admin',1,'[{\"added\": {}}]',3,1),(6,'2024-06-27 05:54:09.382126','5','Student',1,'[{\"added\": {}}]',3,1),(7,'2024-06-27 05:54:24.559777','6','Tutor',1,'[{\"added\": {}}]',3,1),(8,'2024-06-27 05:55:29.772417','3','John',1,'[{\"added\": {}}]',4,1),(9,'2024-06-27 05:59:31.067616','3','John',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1),(10,'2024-06-27 06:00:02.600585','4','Martha',1,'[{\"added\": {}}]',4,1),(11,'2024-06-27 06:01:20.771052','4','Martha',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1),(12,'2024-06-27 06:02:31.712310','2','Rani',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1),(13,'2024-06-27 06:05:26.100441','5','jack',1,'[{\"added\": {}}]',4,1),(14,'2024-06-27 06:06:38.128989','5','jack',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1),(15,'2024-06-27 06:07:10.529054','6','Daniel',1,'[{\"added\": {}}]',4,1),(16,'2024-06-27 06:08:41.260321','6','Daniel',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1),(17,'2024-06-27 08:05:52.933579','3','John',2,'[{\"changed\": {\"fields\": [\"Last name\", \"Email address\", \"User permissions\"]}}]',4,1),(18,'2024-06-27 08:06:38.168243','7','Mike',1,'[{\"added\": {}}]',4,1),(19,'2024-06-27 08:07:58.574129','7','Mike',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1),(20,'2024-06-27 08:08:34.604498','8','Sheena',1,'[{\"added\": {}}]',4,1),(21,'2024-06-27 08:09:57.285272','8','Sheena',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1),(22,'2024-06-27 08:10:30.366259','9','Hamish',1,'[{\"added\": {}}]',4,1),(23,'2024-06-27 08:11:43.441487','9','Hamish',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1),(24,'2024-06-27 08:12:21.367136','10','Leena',1,'[{\"added\": {}}]',4,1),(25,'2024-06-27 08:13:23.657602','10','Leena',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1),(26,'2024-06-27 08:13:55.612298','11','George',1,'[{\"added\": {}}]',4,1),(27,'2024-06-27 08:14:57.260590','11','George',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1),(28,'2024-06-27 08:16:47.640612','12','Jackson',1,'[{\"added\": {}}]',4,1),(29,'2024-06-27 08:19:21.233998','12','Jackson',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1),(30,'2024-06-27 08:20:14.625425','13','Corin',1,'[{\"added\": {}}]',4,1),(31,'2024-06-27 08:21:49.369692','13','Corin',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1),(32,'2024-06-27 08:22:22.962377','14','Sarah',1,'[{\"added\": {}}]',4,1),(33,'2024-06-27 08:22:54.927563','14','Sarah',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',4,1),(34,'2024-06-27 08:24:37.383363','15','Sara',1,'[{\"added\": {}}]',4,1),(35,'2024-06-27 08:25:55.052799','15','Sara',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1),(36,'2024-06-27 08:26:39.299578','16','Alexander',1,'[{\"added\": {}}]',4,1),(37,'2024-06-27 08:27:43.433209','16','Alexander',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1),(38,'2024-06-27 08:28:22.034270','17','Kiara',1,'[{\"added\": {}}]',4,1),(39,'2024-06-27 08:29:44.616015','17','Kiara',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1),(40,'2024-06-27 08:30:53.407967','14','Sarah',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\", \"User permissions\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'school','article'),(8,'school','user'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-06-27 03:13:09.639345'),(2,'auth','0001_initial','2024-06-27 03:13:10.667788'),(3,'admin','0001_initial','2024-06-27 03:13:10.867169'),(4,'admin','0002_logentry_remove_auto_add','2024-06-27 03:13:10.874473'),(5,'admin','0003_logentry_add_action_flag_choices','2024-06-27 03:13:10.883858'),(6,'contenttypes','0002_remove_content_type_name','2024-06-27 03:13:10.992946'),(7,'auth','0002_alter_permission_name_max_length','2024-06-27 03:13:11.062869'),(8,'auth','0003_alter_user_email_max_length','2024-06-27 03:13:11.084176'),(9,'auth','0004_alter_user_username_opts','2024-06-27 03:13:11.091866'),(10,'auth','0005_alter_user_last_login_null','2024-06-27 03:13:11.167272'),(11,'auth','0006_require_contenttypes_0002','2024-06-27 03:13:11.170844'),(12,'auth','0007_alter_validators_add_error_messages','2024-06-27 03:13:11.178450'),(13,'auth','0008_alter_user_username_max_length','2024-06-27 03:13:11.264661'),(14,'auth','0009_alter_user_last_name_max_length','2024-06-27 03:13:11.374267'),(15,'auth','0010_alter_group_name_max_length','2024-06-27 03:13:11.395109'),(16,'auth','0011_update_proxy_permissions','2024-06-27 03:13:11.404900'),(17,'auth','0012_alter_user_first_name_max_length','2024-06-27 03:13:11.489364'),(18,'school','0001_initial','2024-06-27 03:13:11.534554'),(19,'sessions','0001_initial','2024-06-27 03:13:11.575743');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5gc3pbpb3sd2ishwvsj3cmb2o3s614ll','.eJxVjE0OwiAYBe_C2pACpQWX7j0D-f6QqqFJaVfGu2uTLnT7Zua9VIJtLWlrsqSJ1VkZdfrdEOghdQd8h3qbNc11XSbUu6IP2vR1ZnleDvfvoEAr3xqyySOyzREpUh-w9yFa5wS5gywm2DBEF8i6AQN0NCI5L1YYxXiwXr0_A3c4kw:1sMhwp:iPCW7NGKDvjHzUrWuZnzqx3Kqmj22wbmYDCoqTT7HnU','2024-07-11 05:45:31.585645');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_article`
--

DROP TABLE IF EXISTS `school_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_article` (
  `article_id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `born` varchar(15) DEFAULT NULL,
  `died` varchar(15) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `known_for` varchar(255) DEFAULT NULL,
  `notable_work` varchar(255) DEFAULT NULL,
  `about` longtext NOT NULL,
  `year` varchar(15) DEFAULT NULL,
  `medium` varchar(250) DEFAULT NULL,
  `dimensions` varchar(250) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `designed_by` varchar(250) DEFAULT NULL,
  `developer` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_article`
--

LOCK TABLES `school_article` WRITE;
/*!40000 ALTER TABLE `school_article` DISABLE KEYS */;
INSERT INTO `school_article` VALUES (1,'Arts','Biography','Claude Monet','1840','1926','French','Painter','Water lilies','Oscar-Claude Monet was a French painter, a founder of French Impressionist painting and the most consistent and prolific practitioner of the movement\'s philosophy of expressing one\'s perceptions before nature, especially as applied to plein air landscape painting. The term \'Impressionism\' is derived from the title of his painting Impression, soleil levant (Impression, Sunrise), which was exhibited in 1874 in the first of the independent exhibitions mounted by Monet and his associates as an alternative to the Salon de Paris. Monet\'s ambition of documenting the French countryside led him to adopt a method of painting the same scene many times in order to capture the changing of light and the passing of the seasons. From 1883, Monet lived in Giverny, where he purchased a house and property and began a vast landscaping project which included lily ponds that would become the subjects of his best-known works. In 1899, he began painting the water lilies, first in vertical views with a Japanese bridge as a central feature and later in the series of large-scale paintings that was to occupy him continuously for the next 20 years of his life.',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Arts','Biography','Leonardo da Vinci','1452','1519','Italian','Art and Science','Mona Lisa, The Last Supper','Leonardo di ser Piero da Vinci, more commonly Leonardo da Vinci, was an Italian polymath of the Renaissance, whose areas of interest included invention, painting, sculpting, architecture, science, music, mathematics, engineering, literature, anatomy, geology, astronomy, botany, writing, history, and cartography. He has been variously called the father of palaeontology, ichnology, and architecture, and is widely considered one of the greatest painters of all time. Sometimes credited with the inventions of the parachute, helicopter and tank, he epitomised the Renaissance humanist ideal.',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Arts','Painting','Mona Lisa',NULL,NULL,NULL,NULL,NULL,'The Mona Lisa is a half-length portrait painting by the Italian Renaissance artist Leonardo da Vinci that has been described as \'the best known, the most visited, the most written about, the most sung about, the most parodied work of art in the world\'. The Mona Lisa is also one of the most valuable paintings in the world. It holds the Guinness World Record for the highest known insurance valuation in history at $100 million in 1962, which is worth nearly $800 million in 2017.','1503-1506','Oil on poplar panel','77cm*53cm','Musee du Louvre, Paris',NULL,NULL),(4,'Mathematics','Theorem','Pythagorean theorem',NULL,NULL,NULL,NULL,NULL,'In mathematics, the Pythagorean theorem, also known as Pythagoras\' theorem, is a fundamental relation in Euclidean geometry among the three sides of a right triangle. It states that the square of the hypotenuse (the side opposite the right angle) is equal to the sum of the squares of the other two sides. The theorem can be written as an equation relating the lengths of the sides a, b and c, often called the \'Pythagorean equation\': {a^{2}+b^{2}=c^{2},} a^{2}+b^{2}=c^{2}, where c represents the length of the hypotenuse and a and b the lengths of the triangle\'s other two sides. Although it is often argued that knowledge of the theorem predates him, the theorem is named after the ancient Greek mathematician Pythagoras as it is he who, by tradition, is credited with its first proof, although no evidence of it exists.There is some evidence that Babylonian mathematicians understood the formula, although little of it indicates an application within a mathematical framework.Mesopotamian, Indian and Chinese mathematicians all discovered the theorem independently and, in some cases, provided proofs for special cases. The theorem has been given numerous proofs – possibly the most for any mathematical theorem. They are very diverse, including both geometric proofs and algebraic proofs, with some dating back thousands of years. The theorem can be generalized in various ways, including higher-dimensional spaces, to spaces that are not Euclidean, to objects that are not right triangles, and indeed, to objects that are not triangles at all, but n-dimensional solids. The Pythagorean theorem has attracted interest outside mathematics as a symbol of mathematical abstruseness, mystique, or intellectual power; popular references in literature, plays, musicals, songs, stamps and cartoons abound.',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Mathematics','Biography','Euclid','4th century BC','3rd century BC',NULL,'Euclidean geometry',NULL,'Euclid, sometimes given the name Euclid of Alexandria to distinguish him from Euclides of Megara, was a Greek mathematician, often referred to as the \'founder of geometry\' or the \'father of geometry\'. He was active in Alexandria during the reign of Ptolemy I (323–283 BC). His Elements is one of the most influential works in the history of mathematics, serving as the main textbook for teaching mathematics (especially geometry) from the time of its publication until the late 19th or early 20th century. In the Elements, Euclid deduced the theorems of what is now called Euclidean geometry from a small set of axioms. Euclid also wrote works on perspective, conic sections, spherical geometry, number theory, and rigor.',NULL,NULL,NULL,NULL,NULL,NULL),(6,'Mathematics','Alogorithm','Quicksort',NULL,NULL,NULL,NULL,NULL,'Quicksort (sometimes called partition-exchange sort) is an efficient sorting algorithm, serving as a systematic method for placing the elements of an array in order. Developed by Tony Hoare in 1959 and published in 1961, it is still a commonly used algorithm for sorting. Quicksort is a comparison sort, meaning that it can sort items of any type for which a \'less-than\' relation (formally, a total order) is defined. In efficient implementations it is not a stable sort, meaning that the relative order of equal sort items is not preserved. Quicksort can operate in-place on an array, requiring small additional amounts of memory to perform the sorting. It is very similar to selection sort, except that it does not always choose worst-case partition.',NULL,NULL,NULL,NULL,NULL,NULL),(7,'Technology','Biography','Bill Gates','1955',NULL,'USA','Founder of the Microsoft Corporation',NULL,'William Henry Gates III is an American business magnate, investor, author, philanthropist, humanitarian, and principal founder of Microsoft Corporation. During his career at Microsoft, Gates held the positions of chairman, CEO and chief software architect, while also being the largest individual shareholder until May 2014. In 1975, Gates and Paul Allen launched Microsoft, which became the world\'s largest PC software company. Gates led the company as chief executive officer until stepping down in January 2000, but he remained as chairman and created the position of chief software architect for himself.',NULL,NULL,NULL,NULL,NULL,NULL),(8,'Technology','Biography','Steve Jobs','1955','2011','USA','Co-creator of the Macintosh, iPod, iPhone, iPad, and first Apple Stores',NULL,'Steven Paul Jobs was an American entrepreneur and business magnate. He was the chairman, chief executive officer (CEO), and a co-founder of Apple Inc., chairman and majority shareholder of Pixar, a member of The Walt Disney Company\'s board of directors following its acquisition of Pixar, and the founder, chairman, and CEO of NeXT. Jobs is widely recognized as a pioneer of the microcomputer revolution of the 1970s and 1980s, along with Apple co-founder Steve Wozniak.',NULL,NULL,NULL,NULL,'James Gosling','Sun Microsystems'),(9,'Technology','Programming Language','Java',NULL,NULL,NULL,NULL,NULL,'Java is a general-purpose computer-programming language that is concurrent, class-based, object-oriented, and specifically designed to have as few implementation dependencies as possible. It is intended to let application developers \'write once, run anywhere\', meaning that compiled Java code can run on all platforms that support Java without the need for recompilation. Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless of computer architecture. As of 2016, Java is one of the most popular programming languages in use, particularly for client-server web applications, with a reported 9 million developers. Java was originally developed by James Gosling at Sun Microsystems (which has since been acquired by Oracle Corporation) and released in 1995 as a core component of Sun Microsystems\' Java platform. The language derives much of its syntax from C and C++, but it has fewer low-level facilities than either of them.',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `school_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_user`
--

DROP TABLE IF EXISTS `school_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_user`
--

LOCK TABLES `school_user` WRITE;
/*!40000 ALTER TABLE `school_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-27 20:55:51
