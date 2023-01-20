DROP DATABASE IF EXISTS `DEPARTMENT`;
CREATE DATABASE `DEPARTMENT`;
USE `DEPARTMENT`;
--
-- Table structure for table `DEPARTMENT`
--
DROP TABLE IF EXISTS `DEPARTMENT`;
CREATE TABLE `DEPARTMENT` (
  `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEPT_NAME` varchar(50) NOT NULL,
  `DEPT_HEAD` varchar(50) NOT NULL,
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
--
-- Dumping data for table `DEPARTMENT`
--
INSERT INTO `DEPARTMENT` VALUES (1,'IT','Rajesh'),(2,'HR','Rajesh'),(3,'Finance','Rajesh');
--
-- Table structure for table `EMPLOYEE`
--
DROP TABLE IF EXISTS `EMPLOYEE`;
CREATE TABLE `EMPLOYEE` (
  `EMP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMP_NAME` varchar(50) NOT NULL,
  `EMP_SALARY` int(11) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  PRIMARY KEY (`EMP_ID`),
  KEY `DEPT_ID` (`DEPT_ID`),
  CONSTRAINT `EMPLOYEE_ibfk_1` FOREIGN KEY (`DEPT_ID`) REFERENCES `DEPARTMENT` (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
--
-- Dumping data for table `EMPLOYEE`
--
INSERT INTO `EMPLOYEE` VALUES (1,'Rajesh',10000,1),(2,'Rajesh',10000,2),(3,'Rajesh',10000,3);
--
-- Table structure for table `ROLES`

--
DROP TABLE IF EXISTS `ROLES`;
CREATE TABLE `ROLES` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
--
-- Dumping data for table `ROLES`
--
INSERT INTO `ROLES` VALUES (1,'ADMIN'),(2,'USER'),(3,'GUEST');
--
-- Table structure for table `USER_ROLES`
--
DROP TABLE IF EXISTS `USER_ROLES`;
CREATE TABLE `USER_ROLES` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int(11) NOT NULL,
  PRIMARY KEY (`USER_ID`),
  KEY `ROLE_ID` (`ROLE_ID`),
  CONSTRAINT `USER_ROLES_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `ROLES` (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
--
-- Dumping data for table `USER_ROLES`
--
INSERT INTO `USER_ROLES` VALUES (1,1),(2,2),(3,3);
--
-- Table structure for table `EMPLOYEE`
--
DROP TABLE IF EXISTS `EMPLOYEE`;
CREATE TABLE `EMPLOYEE` (
  `EMP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMP_NAME` varchar(50) NOT NULL,
  `EMP_SALARY` int(11) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  PRIMARY KEY (`EMP_ID`),
  KEY `DEPT_ID` (`DEPT_ID`),
  CONSTRAINT `EMPLOYEE_ibfk_1` FOREIGN KEY (`DEPT_ID`) REFERENCES `DEPARTMENT` (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
--
-- Dumping data for table `EMPLOYEE`
--
INSERT INTO `EMPLOYEE` VALUES (1,'Rajesh',10000,1),(2,'Rajesh',10000,2),(3,'Rajesh',10000,3);