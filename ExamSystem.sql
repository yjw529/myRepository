/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.39 : Database - examsystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`examsystem` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `examsystem`;

/*Table structure for table `adminlogin` */

DROP TABLE IF EXISTS `adminlogin`;

CREATE TABLE `adminlogin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `adminlogin` */

insert  into `adminlogin`(`username`,`password`) values ('admin','admin'),('王五','123');

/*Table structure for table `exam` */

DROP TABLE IF EXISTS `exam`;

CREATE TABLE `exam` (
  `name` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `founder` varchar(10) DEFAULT NULL,
  `isupload` varchar(11) DEFAULT NULL,
  `isautostart` varchar(11) DEFAULT NULL,
  `isbeen` varchar(11) DEFAULT NULL,
  `isend` varchar(11) DEFAULT NULL,
  `isstorage` varchar(11) DEFAULT NULL,
  `isclear` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `exam` */

insert  into `exam`(`name`,`time`,`founder`,`isupload`,`isautostart`,`isbeen`,`isend`,`isstorage`,`isclear`) values ('java','2019-12-10T12:00','1','1','0','0','0','0','1'),('php','2019-12-10T11:00','张三','1','0','1','0','0','0'),('java','2019-12-10T12:00','张三','1','0','0','0','0','0'),('计算机','2019-12-09T11:11','张三','0','0','0','0','0','1');

/*Table structure for table `notify` */

DROP TABLE IF EXISTS `notify`;

CREATE TABLE `notify` (
  `name` varchar(20) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `notify` */

insert  into `notify`(`name`,`content`,`time`) values ('李四','132','2019-12-10 12:21:54'),('张三','上机考试管理系统','2019-12-10 12:28:29'),('张三','七点考试','2019-12-15 14:25:56');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `islogin` varchar(20) DEFAULT NULL,
  `isuploadanswer` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`name`,`username`,`password`,`grade`,`islogin`,`isuploadanswer`) values ('1211','罗斯','罗斯','123','2','否','否'),('122','张三','张三','123','3','否','否'),('2','李四','李四','123','3','否','否');

/*Table structure for table `studentlogin` */

DROP TABLE IF EXISTS `studentlogin`;

CREATE TABLE `studentlogin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `studentlogin` */

insert  into `studentlogin`(`username`,`password`) values ('111','111'),('123','123'),('123123','123123'),('23','23'),('李四','123');

/*Table structure for table `systemset` */

DROP TABLE IF EXISTS `systemset`;

CREATE TABLE `systemset` (
  `recordCount` int(5) DEFAULT NULL,
  `timespan` int(3) DEFAULT NULL,
  `upper` bit(1) DEFAULT NULL,
  `lower` bit(1) DEFAULT NULL,
  `examTimeSpan` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `systemset` */

/*Table structure for table `teacherlogin` */

DROP TABLE IF EXISTS `teacherlogin`;

CREATE TABLE `teacherlogin` (
  `username` varchar(20) NOT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `password` varchar(10) NOT NULL,
  `isadmin` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacherlogin` */

insert  into `teacherlogin`(`username`,`realname`,`password`,`isadmin`) values ('张三','张','123','否'),('王五','啊啊啊','123','是');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
