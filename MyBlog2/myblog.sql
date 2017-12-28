/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.9 : Database - myblog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`myblog` /*!40100 DEFAULT CHARACTER SET gbk */;

USE `myblog`;

/*Table structure for table `t_discuss` */

DROP TABLE IF EXISTS `t_discuss`;

CREATE TABLE `t_discuss` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `d_eid` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `d_uid` int(11) NOT NULL,
  `time` varchar(50) NOT NULL,
  PRIMARY KEY (`did`),
  KEY `foreigh1` (`d_eid`),
  KEY `foreign2` (`d_uid`),
  CONSTRAINT `foreigh1` FOREIGN KEY (`d_eid`) REFERENCES `t_essay` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `foreign2` FOREIGN KEY (`d_uid`) REFERENCES `t_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=gbk;

/*Data for the table `t_discuss` */

/*Table structure for table `t_essay` */

DROP TABLE IF EXISTS `t_essay`;

CREATE TABLE `t_essay` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext NOT NULL,
  `e_sid` int(11) NOT NULL,
  `watchNum` int(11) NOT NULL DEFAULT '0',
  `img` varchar(100) NOT NULL DEFAULT 'test/42.png',
  `name` varchar(100) NOT NULL DEFAULT 'Hello World',
  `txt` varchar(100) NOT NULL DEFAULT '分别使用命令行和eclipse运行第一个Hello World程序',
  `othervisiable` int(11) DEFAULT '0',
  PRIMARY KEY (`eid`),
  KEY `essay` (`e_sid`),
  CONSTRAINT `essay` FOREIGN KEY (`e_sid`) REFERENCES `t_stage` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

/*Data for the table `t_essay` */

insert  into `t_essay`(`eid`,`content`,`e_sid`,`watchNum`,`img`,`name`,`txt`,`othervisiable`) values (1,'',3,0,'/test/7df837ed5915faf1266aa442786d00c0.png','实时聊天系统','利用java的socket实现的模仿QQ实时聊天系统',1),(2,'',3,0,'/test/5825a5a6Nde8ecb75.jpg','测试用的','测试测试',0);

/*Table structure for table `t_reply` */

DROP TABLE IF EXISTS `t_reply`;

CREATE TABLE `t_reply` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext NOT NULL,
  `r_did` int(11) NOT NULL,
  `r_uid` int(11) NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `foreign3` (`r_did`),
  KEY `foreign4` (`r_uid`),
  CONSTRAINT `foreign3` FOREIGN KEY (`r_did`) REFERENCES `t_discuss` (`did`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `foreign4` FOREIGN KEY (`r_uid`) REFERENCES `t_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `t_reply` */

/*Table structure for table `t_stage` */

DROP TABLE IF EXISTS `t_stage`;

CREATE TABLE `t_stage` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `stageName` varchar(100) NOT NULL,
  `s_uid` int(11) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `stage_foreign_key` (`s_uid`),
  CONSTRAINT `stage_foreign_key` FOREIGN KEY (`s_uid`) REFERENCES `t_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

/*Data for the table `t_stage` */

insert  into `t_stage`(`sid`,`stageName`,`s_uid`) values (2,'Java基础',2),(3,'Java进阶',2),(5,'竞赛篇',2);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) NOT NULL,
  `account` varchar(50) NOT NULL,
  `passWord` varchar(50) NOT NULL,
  `jiesao` varchar(10000) DEFAULT NULL,
  `headImg` varchar(500) DEFAULT NULL,
  `fenshiNum` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

/*Data for the table `t_user` */

insert  into `t_user`(`uid`,`userName`,`account`,`passWord`,`jiesao`,`headImg`,`fenshiNum`) values (2,'管理员','0154025','474393','我最棒',NULL,0),(3,'无大明','0154024','zxc123',NULL,NULL,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
