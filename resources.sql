/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.23 : Database - resources
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`resources` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `resources`;

/*Table structure for table `like` */

DROP TABLE IF EXISTS `like`;

CREATE TABLE `like` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `res` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK32AF974721DA59` (`username`),
  KEY `FK32AF977EFF51D4` (`res`),
  KEY `FK32AF9738CC7FF6` (`res`),
  KEY `FK32AF977DD6BE81` (`username`),
  KEY `FK32AF9767AC6B60` (`res`),
  KEY `id` (`id`),
  CONSTRAINT `FK32AF9738CC7FF6` FOREIGN KEY (`res`) REFERENCES `res` (`resname`),
  CONSTRAINT `FK32AF974721DA59` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  CONSTRAINT `FK32AF9767AC6B60` FOREIGN KEY (`res`) REFERENCES `res` (`resname`),
  CONSTRAINT `FK32AF977DD6BE81` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  CONSTRAINT `FK32AF977EFF51D4` FOREIGN KEY (`res`) REFERENCES `res` (`resname`),
  CONSTRAINT `like_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `like_ibfk_2` FOREIGN KEY (`res`) REFERENCES `res` (`resname`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `like` */

insert  into `like`(`id`,`username`,`res`) values (5,'zzy','hero '),(6,'zzy','c '),(8,'zzy','If You '),(9,'zzy','blue ');

/*Table structure for table `record` */

DROP TABLE IF EXISTS `record`;

CREATE TABLE `record` (
  `username` varchar(10) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  KEY `FKC8466C514721DA59` (`username`),
  KEY `FKC8466C517DD6BE81` (`username`),
  CONSTRAINT `FKC8466C514721DA59` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  CONSTRAINT `FKC8466C517DD6BE81` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  CONSTRAINT `record_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `record` */

insert  into `record`(`username`,`time`) values ('lm','18:18');

/*Table structure for table `res` */

DROP TABLE IF EXISTS `res`;

CREATE TABLE `res` (
  `resname` varchar(10) NOT NULL,
  `keyword` varchar(10) DEFAULT NULL,
  `description` varchar(10) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  `filepath` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`resname`),
  KEY `FKEBABC40E4721DA59` (`username`),
  KEY `FK1B8A04721DA59` (`username`),
  KEY `FK1B8A07DD6BE81` (`username`),
  CONSTRAINT `FK1B8A04721DA59` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  CONSTRAINT `FK1B8A07DD6BE81` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  CONSTRAINT `FKEBABC40E4721DA59` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  CONSTRAINT `res_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `res` */

insert  into `res`(`resname`,`keyword`,`description`,`username`,`filepath`) values ('',NULL,NULL,NULL,NULL),('angry bird','movie','funny','wy','./img/7.jpg'),('blue','song','bigbang','zzy','./img/10.jpg'),('c','book','c','lm','./img/1.jpg'),('hero','movie','america','tyq','./img/3.jpg'),('If You','song','bigbang','zzy','./img/11.jpg'),('java','book','java','zzy','./img/2.jpg'),('luncy','music','warm','zzy','./img/4.jpg'),('moon','music','warm','lm','./img/5.jpg'),('Now You Se','song','JayChou','zzy','./img/12.jpg'),('Rose','music','pop','lm','./img/6.jpg'),('ZOOTOPIA','MOVIE','funny','zzy','./img/8.jpg');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`username`,`password`) values ('lm','123'),('tyq','123'),('wy','123'),('zzy','123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
