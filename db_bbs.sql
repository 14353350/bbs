drop database if exists `14353171`;
create database `14353171`;
use `14353171`;

create table `bbs_user`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45),
  `pwd` varchar(45),
  `face` varchar(20) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

insert  into `bbs_user`(`id`,`username`,`pwd`,`sex`,`face`) values (1,'admin','111','boy','boy2.jpg'),(2,'aaa','111','girl','girl5.jpg'),(3,'test','111','girl','girl2.jpg');

create table `class`(
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

insert  into `class`(`class_id`,`class_name`) values (1,'课程交流'),(2,'开发技术'),(3,'分享与探讨');

create table `board`(
  `board_id` int(11) NOT NULL AUTO_INCREMENT,
  `board_classID` int(11) DEFAULT NULL,
  `board_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

insert  into `board`(`board_id`,`board_classID`,`board_name`) values (1,1,'WEB课程交流'),(2,1,'数据库课程交流'),(3,1,'Android课程交流'),(4,2,'html编程'),(5,2,'java编程'),(6,2,'c++编程'),(7,2,'sql编程'),(8,3,'实习招聘'),(9,3,'工作经验'),(10,3,'技术进阶');

create table `topic`(
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,  
  `topic_boardID` int(11) DEFAULT NULL, 
  `topic_title` varchar(70) DEFAULT NULL,
  `topic_content` varchar(2000) DEFAULT NULL,
  `topic_sender` varchar(45) DEFAULT NULL,
  `topic_sendTime` datetime DEFAULT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

insert into `topic`(`topic_id`,`topic_boardID`,`topic_title`,`topic_content`,`topic_sender`,`topic_sendTime`) values (85,1,'JSP程序开发中有那些设计模式？','请问各位，在JSP开发中有哪些开发模式？','test','2016-12-4 10:43:03');

create table `answer`(
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_topicID` int(11) DEFAULT NULL,
  `answer_content` varchar(2000) DEFAULT NULL,
  `answer_sender` varchar(45) DEFAULT NULL,
  `answer_sendTime` datetime DEFAULT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

insert into `topic`(`topic_boardID`,`topic_title`,`topic_content`,`topic_sender`,`topic_sendTime`) 
values(1,'JSP程序开发中有那些设计模式？','请问各位，在JSP开发中有哪些开发模式？','admin','2016-12-4 10:43:13')
,(2,'JSP程序开发中有那些设计模式？','请问各位，在JSP开发中有哪些开发模式？','test','2016-12-4 10:43:03')
,(3,'JSP程序开发中有那些设计模式？','请问各位，在JSP开发中有哪些开发模式？','admin','2016-12-4 10:43:03')
,(4,'JSP程序开发中有那些设计模式？','请问各位，在JSP开发中有哪些开发模式？','aaa','2016-12-4 10:43:03')
,(5,'JSP程序开发中有那些设计模式？','请问各位，在JSP开发中有哪些开发模式？','admin','2016-12-4 10:43:03')
,(6,'JSP程序开发中有那些设计模式？','请问各位，在JSP开发中有哪些开发模式？','test','2016-12-4 10:43:03')
,(7,'JSP程序开发中有那些设计模式？','请问各位，在JSP开发中有哪些开发模式？','admin','2016-12-4 10:43:03')
,(8,'JSP程序开发中有那些设计模式？','请问各位，在JSP开发中有哪些开发模式？','aaa','2016-12-4 10:43:03')
,(9,'JSP程序开发中有那些设计模式？','请问各位，在JSP开发中有哪些开发模式？','test','2016-12-4 10:43:03')
,(10,'JSP程序开发中有那些设计模式？','请问各位，在JSP开发中有哪些开发模式？','test','2016-12-4 10:43:03');

insert  into `answer`(`answer_id`,`answer_topicID`,`answer_content`,`answer_sender`,`answer_sendTime`) 
values (1,1,'测试回复 测试回复','test','2016-12-4 10:43:03'),(2,2,'测试回复 测试回复','test','2016-12-4 10:43:03')
,(3,3,'测试回复 测试回复','aaa','2016-12-4 10:43:03'),(4,4,'测试回复 测试回复','admin','2016-12-4 10:43:03')
,(5,5,'测试回复 测试回复','aaa','2016-12-4 10:43:03'),(6,6,'测试回复 测试回复','admin','2016-12-4 10:43:03')
,(7,7,'测试回复 测试回复','test','2016-12-4 10:43:03'),(8,8,'测试回复 测试回复','test','2016-12-4 10:43:03')
,(9,9,'测试回复 测试回复','aaa','2016-12-4 10:43:03'),(10,10,'测试回复 测试回复','aaa','2016-12-4 10:43:03');
