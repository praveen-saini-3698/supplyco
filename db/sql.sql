-- --------------------------------------------------------
-- Host:                         151.106.54.89
-- Server version:               5.6.48 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for supplyco
DROP DATABASE IF EXISTS `supplyco`;
CREATE DATABASE IF NOT EXISTS `supplyco` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `supplyco`;

-- Dumping structure for table supplyco.accessories
DROP TABLE IF EXISTS `accessories`;
CREATE TABLE IF NOT EXISTS `accessories` (
  `Accessories_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AccessoriesCategory_ID` int(11) DEFAULT NULL,
  `AccessoriesName` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` datetime DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Accessories_ID`),
  KEY `AccessoriesCategory_ID` (`AccessoriesCategory_ID`),
  CONSTRAINT `accessories_ibfk_1` FOREIGN KEY (`AccessoriesCategory_ID`) REFERENCES `accessories_category` (`AccessoriesCategory_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.accessories: ~7 rows (approximately)
/*!40000 ALTER TABLE `accessories` DISABLE KEYS */;
INSERT INTO `accessories` (`Accessories_ID`, `AccessoriesCategory_ID`, `AccessoriesName`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 1, 'sunglasses', 'aaa', '2020-06-30 15:06:52', NULL, NULL, b'1'),
	(2, 2, 'necklace', 'bbb', '2020-06-30 15:06:53', NULL, NULL, b'1'),
	(3, 3, 'watch', 'ccc', '2020-06-30 15:06:54', NULL, NULL, b'1'),
	(4, 4, 'tie', 'ddd', '2020-06-30 15:06:55', NULL, NULL, b'1'),
	(5, 5, 'bowtie', 'ddd', '2020-06-30 15:06:55', NULL, NULL, b'1'),
	(6, 6, 'smalltoi', 'DFS', '2021-03-22 15:44:28', 'SHAMANT', '2021-04-04 00:00:00', b'1'),
	(7, 7, 'smalltoi', 'ABHI', '0000-00-00 00:00:00', 'SINDHU', '2021-04-01 00:00:00', b'1');
/*!40000 ALTER TABLE `accessories` ENABLE KEYS */;

-- Dumping structure for table supplyco.accessories_category
DROP TABLE IF EXISTS `accessories_category`;
CREATE TABLE IF NOT EXISTS `accessories_category` (
  `AccessoriesCategory_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Level` int(11) DEFAULT NULL,
  `Parent_ID` int(11) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` datetime DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`AccessoriesCategory_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.accessories_category: ~12 rows (approximately)
/*!40000 ALTER TABLE `accessories_category` DISABLE KEYS */;
INSERT INTO `accessories_category` (`AccessoriesCategory_ID`, `Level`, `Parent_ID`, `Name`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 0, NULL, 'plumber', 'abc', '2021-03-15 02:43:00', NULL, NULL, b'1'),
	(2, 0, NULL, 'tap', 'def', '2021-03-15 02:43:00', NULL, NULL, b'1'),
	(3, 0, NULL, 'pipe', 'ghi', '2021-03-15 02:43:00', NULL, NULL, b'1'),
	(4, 0, NULL, 'wire', 'jkl', '2021-03-15 02:43:00', NULL, NULL, b'1'),
	(5, 1, 1, 'mnb', 'abcde', '2021-03-23 10:48:57', 'null', '2021-03-23 10:48:57', b'1'),
	(6, 1, 1, 'cvd', 'adc', '2021-03-22 17:54:51', 'null', '2021-03-22 17:54:51', b'1'),
	(7, 1, 1, 'cvdBcfd', 'adcLvf', '0000-00-00 00:00:00', NULL, NULL, b'1'),
	(8, 1, 1, 'cvdBcfd', 'adcLvf', '0000-00-00 00:00:00', NULL, NULL, b'1'),
	(9, 1, 1, 'cvdBcfdv', 'adcLvfs', '0000-00-00 00:00:00', NULL, NULL, b'1'),
	(10, 1, 1, 'cvdBcfdv', 'adcLvfs', '0000-00-00 00:00:00', NULL, NULL, b'1'),
	(11, 1, 1, 'cfd', 'adcLvfs', '0000-00-00 00:00:00', 'vishwa', '2021-04-03 00:00:00', b'1'),
	(12, 1, 1, 'cvdBcfdv', 'adcLvfs', '0000-00-00 00:00:00', NULL, NULL, b'1');
/*!40000 ALTER TABLE `accessories_category` ENABLE KEYS */;

-- Dumping structure for table supplyco.admin_category
DROP TABLE IF EXISTS `admin_category`;
CREATE TABLE IF NOT EXISTS `admin_category` (
  `AdminCategory_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdminCategory_Name` varchar(100) DEFAULT NULL,
  `Display_Order` int(11) DEFAULT NULL,
  `AdminCategory_Icon` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` datetime DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`AdminCategory_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.admin_category: ~8 rows (approximately)
/*!40000 ALTER TABLE `admin_category` DISABLE KEYS */;
INSERT INTO `admin_category` (`AdminCategory_ID`, `AdminCategory_Name`, `Display_Order`, `AdminCategory_Icon`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 'vfgg', 1, 'bcv', 'sandya', '2021-04-05 15:53:42', NULL, NULL, b'1'),
	(2, 'drsf', 1, 'nhgdf', 'siddu', '2021-04-05 15:54:12', NULL, NULL, b'1'),
	(3, 'mhk', 1, 'bhgf', 'vinnu', '2021-04-05 15:55:26', NULL, NULL, b'1'),
	(4, 'dre', 1, 'mhgj', 'vishu', '2021-04-05 15:55:57', NULL, NULL, b'1'),
	(5, 'nhdk', 2, 'asdf', 'priya', '2021-04-05 15:56:36', NULL, NULL, b'1'),
	(6, 'sfgd', 2, 'dswe', 'pinky', '2021-04-05 15:57:26', NULL, NULL, b'1'),
	(7, 'efdh', 2, 'asde', 'vaishu', '2021-04-05 15:57:48', NULL, NULL, b'1'),
	(8, 'mkjhg', 3, 'mhgf', 'veda', '2021-04-06 12:32:25', NULL, NULL, b'1');
/*!40000 ALTER TABLE `admin_category` ENABLE KEYS */;

-- Dumping structure for table supplyco.admin_pages
DROP TABLE IF EXISTS `admin_pages`;
CREATE TABLE IF NOT EXISTS `admin_pages` (
  `Admin_Pages_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdminCategory_ID` int(11) DEFAULT NULL,
  `Admin_Pages_Name` varchar(100) DEFAULT NULL,
  `Admin_Pages_URL` varchar(500) DEFAULT NULL,
  `Display_Order` int(11) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` datetime DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Admin_Pages_ID`),
  KEY `AdminCategory_ID` (`AdminCategory_ID`),
  CONSTRAINT `admin_pages_ibfk_1` FOREIGN KEY (`AdminCategory_ID`) REFERENCES `admin_category` (`AdminCategory_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.admin_pages: ~7 rows (approximately)
/*!40000 ALTER TABLE `admin_pages` DISABLE KEYS */;
INSERT INTO `admin_pages` (`Admin_Pages_ID`, `AdminCategory_ID`, `Admin_Pages_Name`, `Admin_Pages_URL`, `Display_Order`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 1, 'sasdgf', NULL, 1, 'vidya', '2021-04-05 16:00:31', NULL, NULL, b'1'),
	(2, 2, 'adfgj', NULL, 1, 'vaibhav', '2021-04-05 16:01:00', NULL, NULL, b'1'),
	(3, 3, 'aresg', NULL, 1, 'vaishnavi', '2021-04-05 16:01:37', NULL, NULL, b'1'),
	(4, 4, 'awer', NULL, 1, 'vibha', '2021-04-05 16:02:01', NULL, NULL, b'1'),
	(5, 5, 'asdwr', NULL, 2, 'vishwa', '2021-04-05 16:02:39', NULL, NULL, b'1'),
	(6, 6, 'customer', 'njh', 2, 'kishore', '2021-04-05 16:03:05', 'neel', '2021-04-06 00:00:00', b'1'),
	(7, 7, 'role', 'kjhg', 2, 'neel', '2021-04-05 16:03:31', 'vish', '2021-04-06 00:00:00', b'1');
/*!40000 ALTER TABLE `admin_pages` ENABLE KEYS */;

-- Dumping structure for table supplyco.bannerimages
DROP TABLE IF EXISTS `bannerimages`;
CREATE TABLE IF NOT EXISTS `bannerimages` (
  `Banner_ID` int(11) NOT NULL AUTO_INCREMENT,
  `URL` varchar(50) DEFAULT NULL,
  `Priority` varchar(50) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` date DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` date DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Banner_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.bannerimages: ~0 rows (approximately)
/*!40000 ALTER TABLE `bannerimages` DISABLE KEYS */;
/*!40000 ALTER TABLE `bannerimages` ENABLE KEYS */;

-- Dumping structure for table supplyco.customer
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Customer_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustName` varchar(100) DEFAULT NULL,
  `CustType` varchar(100) DEFAULT NULL,
  `CustContactNumber` varchar(100) DEFAULT NULL,
  `CustEmail` varchar(100) DEFAULT NULL,
  `CustAddress` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` datetime DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.customer: ~11 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`Customer_ID`, `CustName`, `CustType`, `CustContactNumber`, `CustEmail`, `CustAddress`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 'vinu', 'abc', '125487', 'vinu@gmail.com', 'nagarbhavi', 'vinu', '2021-03-15 03:00:00', NULL, NULL, b'1'),
	(2, 'vinayak', 'ter', NULL, NULL, NULL, NULL, '2021-03-23 12:39:01', NULL, '2021-03-23 12:39:01', NULL),
	(3, 'vibha', 'fgh', '12548723', 'vibha@gmail.com', 'vijayanagar', 'vibha', '2021-03-15 03:00:00', NULL, NULL, b'1'),
	(4, 'vishu', 'ijk', '12548786', 'vishu@gmail.com', 'yalahanka', 'vishu', '2021-03-15 03:00:00', NULL, NULL, b'1'),
	(5, 'venki', 'lmn', '1254879', 'venki@gmail.com', 'kengeri', 'venki', '2021-03-15 03:00:00', NULL, NULL, b'1'),
	(6, 'divvi', 'vgfd', '145789', 'divvi@gmail.com', 'hebbal', 'divvi', '2021-03-29 02:00:00', NULL, NULL, b'1'),
	(7, 'shilpa', 'werf', '45789', 'shilli@gmail.com', 'hebbal', 'shilpa', '2021-03-29 01:00:00', NULL, NULL, b'1'),
	(8, 'santu', 'dfer', '123456', 'santu@gmail.com', 'hebbal', 'santu', '2021-03-29 01:00:00', NULL, NULL, b'1'),
	(9, 'aravind', 'vdrft', '245789', 'aravind@gmail.com', 'oldairport', 'aravind', '2021-03-30 00:00:00', NULL, NULL, b'1'),
	(12, 'vidya', 'vdf', '123456', 'vdf@gmail.com', 'vijayanagar', 'vaibhav', '0000-00-00 00:00:00', 'vidya', '2021-04-05 00:00:00', b'1'),
	(13, 'vidya', 'vdf', '123456', 'vdf@gmail.com', 'vijayanagar', 'vaibhav', '0000-00-00 00:00:00', 'vidya', '2021-04-05 00:00:00', b'1');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table supplyco.customer_request
DROP TABLE IF EXISTS `customer_request`;
CREATE TABLE IF NOT EXISTS `customer_request` (
  `CustRequest_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_ID` int(11) DEFAULT NULL,
  `Services_ID` int(11) DEFAULT NULL,
  `NoOfResourses` int(11) DEFAULT NULL,
  `Req_StartDate` date DEFAULT NULL,
  `Req_EndDate` date DEFAULT NULL,
  `WorkLocation` varchar(100) DEFAULT NULL,
  `CompanyName` varchar(100) DEFAULT NULL,
  `ContactPersonName` varchar(50) DEFAULT NULL,
  `ContactNumber` varchar(20) DEFAULT NULL,
  `Note` varchar(2000) DEFAULT NULL,
  `Closed_VendorQuotation_ID` int(11) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` date DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` date DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`CustRequest_ID`),
  KEY `Services_ID` (`Services_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `customer_request_ibfk_1` FOREIGN KEY (`Services_ID`) REFERENCES `services` (`Services_ID`),
  CONSTRAINT `customer_request_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.customer_request: ~10 rows (approximately)
/*!40000 ALTER TABLE `customer_request` DISABLE KEYS */;
INSERT INTO `customer_request` (`CustRequest_ID`, `Customer_ID`, `Services_ID`, `NoOfResourses`, `Req_StartDate`, `Req_EndDate`, `WorkLocation`, `CompanyName`, `ContactPersonName`, `ContactNumber`, `Note`, `Closed_VendorQuotation_ID`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 1, 1, 5, '2021-02-24', '2021-03-26', 'Bangalore', 'MMT', 'vishu', '87564255', NULL, 1, 'vishu', '2021-02-24', NULL, NULL, b'1'),
	(2, 2, 2, 10, '2021-03-26', '2021-04-30', 'Bangalore', 'MMT', 'pooja', '57481355', NULL, 2, 'pooja', '2021-03-26', NULL, NULL, b'1'),
	(3, 3, 3, 6, '2021-04-29', '2021-05-29', 'Bangalore', 'MMT', 'punit', '247896', NULL, 3, 'punit', '2021-04-29', NULL, NULL, b'1'),
	(4, 4, 4, 7, '2021-03-26', '2021-04-30', 'Bangalore', 'MMT', 'shiru', '248796314', NULL, 4, 'shiru', '2021-03-26', NULL, NULL, b'1'),
	(5, 5, 5, 13, '2021-03-26', '2021-07-30', 'Bangalore', 'MMT', 'mahesh', '354789', NULL, 5, 'mahesh', '2021-03-26', NULL, NULL, b'1'),
	(6, 6, 6, 20, '2021-03-26', '2021-05-29', 'Bangalore', 'MMT', 'shoyab', '24789632565', NULL, 6, 'shoyab', '2021-03-26', NULL, NULL, b'1'),
	(7, 7, 7, 125, '0000-00-00', '0000-00-00', 'bgm', 'MMT', 'niraj', '147895', 'null', 8, 'VISHNU', '2021-03-29', 'undefined', '2021-04-05', b'1'),
	(8, 8, 8, 165, '2021-03-29', '2021-03-29', 'Bangalore', 'MMT', 'veer', '568749', NULL, 8, 'veer', '2021-03-29', NULL, NULL, b'1'),
	(9, 9, 9, 12, '2021-03-29', '2021-03-29', 'Bangalore', 'MMT', 'veer', '568749', NULL, 9, 'veer', '2021-03-29', NULL, NULL, b'1'),
	(10, 9, 9, 1150, '2021-03-31', '0000-00-00', 'Bangalore', 'MMT', 'vinuta', '875648924', 'Null', 9, 'vinuta', '0000-00-00', NULL, NULL, b'1');
/*!40000 ALTER TABLE `customer_request` ENABLE KEYS */;

-- Dumping structure for table supplyco.custrequest_quotation
DROP TABLE IF EXISTS `custrequest_quotation`;
CREATE TABLE IF NOT EXISTS `custrequest_quotation` (
  `CustRequest_Quotation_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustRequest_ID` int(11) DEFAULT NULL,
  `VendorQuotation_ID` int(11) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` date DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` date DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`CustRequest_Quotation_ID`),
  KEY `CustRequest_ID` (`CustRequest_ID`),
  KEY `VendorQuotation_ID` (`VendorQuotation_ID`),
  CONSTRAINT `custrequest_quotation_ibfk_1` FOREIGN KEY (`CustRequest_ID`) REFERENCES `customer_request` (`CustRequest_ID`),
  CONSTRAINT `custrequest_quotation_ibfk_2` FOREIGN KEY (`VendorQuotation_ID`) REFERENCES `vendor_quotation` (`VendorQuatation_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.custrequest_quotation: ~9 rows (approximately)
/*!40000 ALTER TABLE `custrequest_quotation` DISABLE KEYS */;
INSERT INTO `custrequest_quotation` (`CustRequest_Quotation_ID`, `CustRequest_ID`, `VendorQuotation_ID`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 1, 1, 'vishu', '2021-03-26', NULL, NULL, b'1'),
	(2, 2, 2, 'pooja', '2021-03-26', NULL, NULL, b'1'),
	(3, 3, 3, 'priya', '2021-03-26', NULL, NULL, b'1'),
	(4, 4, 4, 'vinnu', '2021-03-26', NULL, NULL, b'1'),
	(5, 5, 5, 'vanni', '2021-03-26', NULL, NULL, b'1'),
	(6, 6, 6, 'divvi', '2021-03-26', NULL, NULL, b'1'),
	(7, 7, 7, 'raja', '2021-03-29', 'NULL', '2021-03-29', b'1'),
	(8, 8, 8, 'NEEL', '2021-03-29', 'basu', '2021-03-29', b'1'),
	(9, 9, 9, 'raja', '0000-00-00', 'basavaraj', '2021-04-05', b'1');
/*!40000 ALTER TABLE `custrequest_quotation` ENABLE KEYS */;

-- Dumping structure for procedure supplyco.Deleteaccessories
DROP PROCEDURE IF EXISTS `Deleteaccessories`;
DELIMITER //
CREATE PROCEDURE `Deleteaccessories`(IN id INT(11))
BEGIN
               DELETE FROM accessories WHERE Accessories_ID=id;  
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Deleteaccessories_category
DROP PROCEDURE IF EXISTS `Deleteaccessories_category`;
DELIMITER //
CREATE PROCEDURE `Deleteaccessories_category`(IN id INT(11))
BEGIN
             DELETE FROM accessories_category WHERE AccessoriesCategory_ID=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Deleteadmin_category
DROP PROCEDURE IF EXISTS `Deleteadmin_category`;
DELIMITER //
CREATE PROCEDURE `Deleteadmin_category`(IN id INT(11))
BEGIN
                  DELETE FROM admin_category WHERE `AdminCategory_ID`=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Deleteadmin_pages
DROP PROCEDURE IF EXISTS `Deleteadmin_pages`;
DELIMITER //
CREATE PROCEDURE `Deleteadmin_pages`(IN id INT(11))
BEGIN
              DELETE FROM admin_pages WHERE `Admin_Pages_ID`=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.DeleteCustomer
DROP PROCEDURE IF EXISTS `DeleteCustomer`;
DELIMITER //
CREATE PROCEDURE `DeleteCustomer`(IN id INT(11))
BEGIN
               DELETE FROM Customer WHERE Customer_ID=id;  
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Deletecustomer_request
DROP PROCEDURE IF EXISTS `Deletecustomer_request`;
DELIMITER //
CREATE PROCEDURE `Deletecustomer_request`(IN id INT(11))
BEGIN
                DELETE FROM customer_request WHERE `CustRequest_ID`=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Deletecustrequest_quotation
DROP PROCEDURE IF EXISTS `Deletecustrequest_quotation`;
DELIMITER //
CREATE PROCEDURE `Deletecustrequest_quotation`(IN id INT(11))
BEGIN
                   DELETE FROM custrequest_quotation WHERE `CustRequest_Quotation_ID`=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.DeleteEnquery
DROP PROCEDURE IF EXISTS `DeleteEnquery`;
DELIMITER //
CREATE PROCEDURE `DeleteEnquery`(IN id INT(11))
BEGIN
               DELETE FROM Enquery WHERE `Enquery_ID`=id;  
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.DeleteRole
DROP PROCEDURE IF EXISTS `DeleteRole`;
DELIMITER //
CREATE PROCEDURE `DeleteRole`(IN id INT(11))
BEGIN
               DELETE FROM role WHERE Role_ID=id;  
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Deleterole_privileges
DROP PROCEDURE IF EXISTS `Deleterole_privileges`;
DELIMITER //
CREATE PROCEDURE `Deleterole_privileges`(IN id INT(11))
BEGIN
                  DELETE FROM role_privileges WHERE Role_Privileges_ID=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.DeleteServices
DROP PROCEDURE IF EXISTS `DeleteServices`;
DELIMITER //
CREATE PROCEDURE `DeleteServices`(IN id INT(11))
BEGIN
DELETE FROM services WHERE Services_ID=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.DeleteUser
DROP PROCEDURE IF EXISTS `DeleteUser`;
DELIMITER //
CREATE PROCEDURE `DeleteUser`(IN id INT(11))
BEGIN
             DELETE FROM USER WHERE `User_ID`=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.DeleteVendor
DROP PROCEDURE IF EXISTS `DeleteVendor`;
DELIMITER //
CREATE PROCEDURE `DeleteVendor`(IN id INT(11))
BEGIN
                 DELETE FROM vendor WHERE Vendor_ID=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Deletevendor_category
DROP PROCEDURE IF EXISTS `Deletevendor_category`;
DELIMITER //
CREATE PROCEDURE `Deletevendor_category`(IN id INT(11))
BEGIN
             DELETE FROM vendor_category WHERE VendorCategory_ID=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.DeleteVendor_quotation
DROP PROCEDURE IF EXISTS `DeleteVendor_quotation`;
DELIMITER //
CREATE PROCEDURE `DeleteVendor_quotation`( IN id INT(11))
BEGIN
               DELETE FROM Vendor_quotation WHERE `VendorQuatation_ID`=id; 
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Deletevendor_services
DROP PROCEDURE IF EXISTS `Deletevendor_services`;
DELIMITER //
CREATE PROCEDURE `Deletevendor_services`(IN id INT(11))
BEGIN
                   DELETE FROM vendor_services WHERE `VendorServices_ID`=id;
	END//
DELIMITER ;

-- Dumping structure for table supplyco.enquery
DROP TABLE IF EXISTS `enquery`;
CREATE TABLE IF NOT EXISTS `enquery` (
  `Enquery_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EnqueryName` varchar(100) DEFAULT NULL,
  `ContactNumber` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Enquery` varchar(100) DEFAULT NULL,
  `Notes` varchar(1000) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` datetime DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Enquery_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.enquery: ~8 rows (approximately)
/*!40000 ALTER TABLE `enquery` DISABLE KEYS */;
INSERT INTO `enquery` (`Enquery_ID`, `EnqueryName`, `ContactNumber`, `Email`, `Enquery`, `Notes`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 'abcd', '258645', 'abcd@gmail.com', NULL, NULL, 'abcd', '2021-03-15 03:20:00', NULL, NULL, b'1'),
	(2, 'efgh', '25864523', 'efgh@gmail.com', NULL, NULL, 'efgh', '2021-03-15 03:20:00', NULL, NULL, b'1'),
	(3, 'ijkl', '25864545', 'ijkl@gmail.com', NULL, NULL, 'ijkl', '2021-03-15 03:20:00', NULL, NULL, b'1'),
	(4, 'ABGF', '124578', 'ABGF@GMAIL.COM', NULL, NULL, 'mnop', '2021-03-15 03:20:00', 'ABGF', '2021-03-30 00:00:00', b'1'),
	(5, 'qrst', '25864512', 'qrst@gmail.com', NULL, NULL, 'qrst', '2021-03-15 03:20:00', NULL, NULL, b'1'),
	(6, 'asrdt', '578964', 'asrdt@gmail.com', 'null', 'null', 'asrdt', '2021-03-23 14:31:03', 'null', '2021-03-23 14:31:03', b'1'),
	(8, 'BFG', '125478', 'BFG@gmail.com', NULL, NULL, 'bfg', '2021-03-30 00:00:00', NULL, NULL, b'1'),
	(9, 'vgbfg', '5789', 'vfg@gmail.com', 'NULL', 'NULL', 'asrdt', '0000-00-00 00:00:00', 'vbgf', '2021-04-05 00:00:00', b'1');
/*!40000 ALTER TABLE `enquery` ENABLE KEYS */;

-- Dumping structure for procedure supplyco.GetaccessoriesBYID
DROP PROCEDURE IF EXISTS `GetaccessoriesBYID`;
DELIMITER //
CREATE PROCEDURE `GetaccessoriesBYID`(IN Access_ID INT(11))
BEGIN
            SELECT `AccessoriesName`,`CreatedBy`,`Created_Date`,`ModifiedBy`,`Modified_Date`,`IsActive`
            from accessories
            WHERE`Accessories_ID`=Access_ID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Getaccessoriescategory_ByID
DROP PROCEDURE IF EXISTS `Getaccessoriescategory_ByID`;
DELIMITER //
CREATE PROCEDURE `Getaccessoriescategory_ByID`(IN AccessoriesC_ID INT(11))
BEGIN
                SELECT LEVEL,Parent_ID,NAME,CreatedBy,Created_Date,ModifiedBy,Modified_Date,IsActive
                FROM accessories_category WHERE `AccessoriesCategory_ID`=AccessoriesC_ID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAdmin_CategoryByID
DROP PROCEDURE IF EXISTS `GetAdmin_CategoryByID`;
DELIMITER //
CREATE PROCEDURE `GetAdmin_CategoryByID`(IN AdminCatego_ID INT(11))
BEGIN
           SELECT `AdminCategory_Name`,`Display_Order`,`AdminCategory_Icon`,`CreatedBy`,`Created_Date`,`ModifiedBy`,`Modified_Date`,`IsActive`
           FROM admin_category WHERE `AdminCategory_ID`=AdminCatego_ID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Getadmin_pagesByID
DROP PROCEDURE IF EXISTS `Getadmin_pagesByID`;
DELIMITER //
CREATE PROCEDURE `Getadmin_pagesByID`(IN Admin_PagesID INT(11))
BEGIN
             SELECT `AdminCategory_ID`,`Admin_Pages_Name`,`Admin_Pages_URL`,`Display_Order`,`CreatedBy`,`Created_Date`,`ModifiedBy`,`Modified_Date`,`IsActive`
             FROM admin_pages WHERE `Admin_Pages_ID`=Admin_PagesID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAllaccessories
DROP PROCEDURE IF EXISTS `GetAllaccessories`;
DELIMITER //
CREATE PROCEDURE `GetAllaccessories`()
BEGIN
                SELECT * FROM accessories;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAllaccessories_category
DROP PROCEDURE IF EXISTS `GetAllaccessories_category`;
DELIMITER //
CREATE PROCEDURE `GetAllaccessories_category`()
BEGIN
                 SELECT * FROM accessories_category;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAllAdmin_Category
DROP PROCEDURE IF EXISTS `GetAllAdmin_Category`;
DELIMITER //
CREATE PROCEDURE `GetAllAdmin_Category`()
BEGIN
             SELECT * FROM admin_category;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAlladmin_pages
DROP PROCEDURE IF EXISTS `GetAlladmin_pages`;
DELIMITER //
CREATE PROCEDURE `GetAlladmin_pages`()
BEGIN
                 SELECT * FROM admin_pages;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAllCustomer
DROP PROCEDURE IF EXISTS `GetAllCustomer`;
DELIMITER //
CREATE PROCEDURE `GetAllCustomer`()
BEGIN
                SELECT *  FROM customer;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAllcustomer_request
DROP PROCEDURE IF EXISTS `GetAllcustomer_request`;
DELIMITER //
CREATE PROCEDURE `GetAllcustomer_request`()
BEGIN
              SELECT  * FROM customer_request;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAllcustrequest_quotation
DROP PROCEDURE IF EXISTS `GetAllcustrequest_quotation`;
DELIMITER //
CREATE PROCEDURE `GetAllcustrequest_quotation`()
BEGIN
                   SELECT * FROM custrequest_quotation;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAllEnquery
DROP PROCEDURE IF EXISTS `GetAllEnquery`;
DELIMITER //
CREATE PROCEDURE `GetAllEnquery`()
BEGIN
	
	SELECT *  FROM Enquery;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAllRoles
DROP PROCEDURE IF EXISTS `GetAllRoles`;
DELIMITER //
CREATE PROCEDURE `GetAllRoles`()
BEGIN
	
	SELECT *  FROM Role;

	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAllrole_privileges
DROP PROCEDURE IF EXISTS `GetAllrole_privileges`;
DELIMITER //
CREATE PROCEDURE `GetAllrole_privileges`()
BEGIN
                SELECT * FROM role_privileges;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAllServices
DROP PROCEDURE IF EXISTS `GetAllServices`;
DELIMITER //
CREATE PROCEDURE `GetAllServices`()
BEGIN
           SELECT * FROM services;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAllUser
DROP PROCEDURE IF EXISTS `GetAllUser`;
DELIMITER //
CREATE PROCEDURE `GetAllUser`()
BEGIN
           SELECT * FROM USER;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAllVendor
DROP PROCEDURE IF EXISTS `GetAllVendor`;
DELIMITER //
CREATE PROCEDURE `GetAllVendor`()
BEGIN
               SELECT * FROM vendor;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAllvendor_category
DROP PROCEDURE IF EXISTS `GetAllvendor_category`;
DELIMITER //
CREATE PROCEDURE `GetAllvendor_category`()
BEGIN
               SELECT * FROM vendor_category;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAllvendor_quotation
DROP PROCEDURE IF EXISTS `GetAllvendor_quotation`;
DELIMITER //
CREATE PROCEDURE `GetAllvendor_quotation`()
BEGIN
             SELECT * FROM vendor_quotation;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetAllvendor_services
DROP PROCEDURE IF EXISTS `GetAllvendor_services`;
DELIMITER //
CREATE PROCEDURE `GetAllvendor_services`()
BEGIN
                SELECT * FROM vendor_services;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetCustomerByID
DROP PROCEDURE IF EXISTS `GetCustomerByID`;
DELIMITER //
CREATE PROCEDURE `GetCustomerByID`(IN id INT(11))
BEGIN
               SELECT `Customer_ID`,`CustName`,`CustType`,`CustContactNumber`,`CustEmail`,`CustAddress`,`CreatedBy`,`Created_Date`,
               `ModifiedBy`,`Modified_Date`,`IsActive` FROM customer WHERE `Customer_ID`=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetCustomer_requestBYID
DROP PROCEDURE IF EXISTS `GetCustomer_requestBYID`;
DELIMITER //
CREATE PROCEDURE `GetCustomer_requestBYID`(IN `CustReq_ID` INT(11))
BEGIN
                SELECT `Customer_ID`,`Services_ID`,`NoOfResourses`,`Req_StartDate`,`Req_EndDate`,`WorkLocation`,`CompanyName`,
                `ContactPersonName`,`ContactNumber`,`Note`,`Closed_VendorQuotation_ID`,`CreatedBy`,`Created_Date`,`ModifiedBy`,
                `Modified_Date`,`IsActive` from customer_request WHERE `CustRequest_ID`=CustReq_ID;
                
                SELECT LAST_INSERT_ID();
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Getcustrequest_quotationBYID
DROP PROCEDURE IF EXISTS `Getcustrequest_quotationBYID`;
DELIMITER //
CREATE PROCEDURE `Getcustrequest_quotationBYID`(IN `CustRequest_Quota_ID` INT(11))
BEGIN
           SELECT `CustRequest_ID`,`VendorQuotation_ID`,`CreatedBy`,`Created_Date`,`ModifiedBy`,`Modified_Date`,`IsActive`
           FROM custrequest_quotation WHERE `CustRequest_Quotation_ID`=CustRequest_Quota_ID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetEnqueryByEnqueryID
DROP PROCEDURE IF EXISTS `GetEnqueryByEnqueryID`;
DELIMITER //
CREATE PROCEDURE `GetEnqueryByEnqueryID`(IN id INT(11))
BEGIN
              SELECT `EnqueryName`,`ContactNumber`,`Email`,`Enquery`,`Notes`,`CreatedBy`,`Created_Date`,`ModifiedBy`,`Modified_Date`,`IsActive`
               from Enquery WHERE `Enquery_ID`=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetRoleByRoleID
DROP PROCEDURE IF EXISTS `GetRoleByRoleID`;
DELIMITER //
CREATE PROCEDURE `GetRoleByRoleID`(IN RoleID INT)
BEGIN
		SELECT `Role_ID`,`RoleName`,`CreatedBy`,`Created_Date`,`ModifiedBy`,`Modified_Date`,`IsActive`
		FROM  `role` WHERE `Role_ID`= RoleID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Getrole_privilegesByID
DROP PROCEDURE IF EXISTS `Getrole_privilegesByID`;
DELIMITER //
CREATE PROCEDURE `Getrole_privilegesByID`(IN `Role_Privilege_ID` INT(11))
BEGIN
                   SELECT `Role_ID`,`Admin_Page_ID`,`Is_View_Enabled`,`Is_Edit_Enabled`,`Is_Delete_Enabled`,`CreatedBy`,`Created_Date`,
                   `ModifiedBy`,`Modified_Date`,`IsActive` FROM role_privileges WHERE `Role_Privileges_ID`=`Role_Privilege_ID`;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetServicesByID
DROP PROCEDURE IF EXISTS `GetServicesByID`;
DELIMITER //
CREATE PROCEDURE `GetServicesByID`(IN id INT(11))
BEGIN
               SELECT `VendorCategory_ID`,`ServiceName`,`CreatedBy`,`Created_Date`,`ModifiedBy`,`Modified_Date`,`IsActive`
               FROM services WHERE `Services_ID`=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetUserByID
DROP PROCEDURE IF EXISTS `GetUserByID`;
DELIMITER //
CREATE PROCEDURE `GetUserByID`(IN ID INT(11))
BEGIN
           SELECT `UserName`,`ContactNumber`,`Email`,`Role_ID`,`CreatedBy`,`Created_Date`,`ModifiedBy`,`Modified_Date`,`IsActive`
           FROM USER WHERE `User_ID`=ID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.GetVendorByVendorID
DROP PROCEDURE IF EXISTS `GetVendorByVendorID`;
DELIMITER //
CREATE PROCEDURE `GetVendorByVendorID`(IN id INT(11))
BEGIN
             SELECT `VendBussName`,`VendName`,`VendBussNumber`,`PersonalNumber`,`BussEmail`,`PersonalEmail`,`CreatedBy`,
             `Created_Date`,`ModifiedBy`,`Modified_Date`,`IsActive` from vendor
             WHERE `Vendor_ID`=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Getvendor_categoryByID
DROP PROCEDURE IF EXISTS `Getvendor_categoryByID`;
DELIMITER //
CREATE PROCEDURE `Getvendor_categoryByID`(IN id INT(11))
BEGIN
                  SELECT `Level`,`Parent_ID`,`Name`,`CreatedBy`,`Created_Date`,`ModifiedBy`,`Modified_Date`,`IsActive`
                  FROM vendor_category WHERE`VendorCategory_ID`=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Getvendor_quotationBYID
DROP PROCEDURE IF EXISTS `Getvendor_quotationBYID`;
DELIMITER //
CREATE PROCEDURE `Getvendor_quotationBYID`(IN id INT(11))
BEGIN
                  SELECT `CustRequest_ID`,`ProposedAmount`,`Description`,`Terms`,`CreatedBy`,`Created_Date`,`ModifiedBy`,
                  `Modified_Date`,`IsActive`FROM vendor_quotation WHERE `VendorQuatation_ID`=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Getvendor_servicesByID
DROP PROCEDURE IF EXISTS `Getvendor_servicesByID`;
DELIMITER //
CREATE PROCEDURE `Getvendor_servicesByID`(IN id INT(11))
BEGIN
               SELECT `Vendor_ID`,`Services_ID`,`CreatedBy`,`Created_Date`,`ModifiedBy`,`Modified_Date`,`IsActive`
               FROM vendor_services WHERE `VendorServices_ID`=id;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Insertaccessories
DROP PROCEDURE IF EXISTS `Insertaccessories`;
DELIMITER //
CREATE PROCEDURE `Insertaccessories`(IN `AccessoriesCategory_ID` INT(11),IN `AccessoriesName` VARCHAR(100),IN `CreatedBy` VARCHAR(100),IN `Created_Date` DATETIME,
    IN `IsActive` BIT(1))
BEGIN
                 INSERT INTO accessories(`AccessoriesCategory_ID`,`AccessoriesName`,`CreatedBy`,`Created_Date`,`IsActive`)
                 VALUE(`AccessoriesCategory_ID`,`AccessoriesName`,`CreatedBy`,`Created_Date`,`IsActive`);
                     
         SELECT LAST_INSERT_ID();

	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Insertaccessories_category
DROP PROCEDURE IF EXISTS `Insertaccessories_category`;
DELIMITER //
CREATE PROCEDURE `Insertaccessories_category`(IN `Level` INT(11),IN `Parent_ID` INT(11),IN `Name` VARCHAR(100),IN `CreatedBy` VARCHAR(100),
    IN `Created_Date` DATE,IN `IsActive` BIT(1))
BEGIN
             INSERT INTO accessories_category(`Level`,`Parent_ID`,`Name`,`CreatedBy`,`Created_Date`,`IsActive`)
              VALUE(`Level`,`Parent_ID`,`Name`,`CreatedBy`,`Created_Date`,`IsActive`);
              
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Insertadmin_category
DROP PROCEDURE IF EXISTS `Insertadmin_category`;
DELIMITER //
CREATE PROCEDURE `Insertadmin_category`(IN AdminCategory_Name VARCHAR(100),IN Display_Order INT(11), IN AdminCategory_Icon VARCHAR(100),
    IN CreatedBy VARCHAR(100),IN Created_Date DATETIME,IN IsActive BIT(1))
BEGIN
                   INSERT INTO admin_category(AdminCategory_Name,Display_Order,AdminCategory_Icon,CreatedBy,Created_Date,IsActive)
                   VALUE(AdminCategory_Name,Display_Order,AdminCategory_Icon,CreatedBy,Created_Date,IsActive);
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Insertadmin_pages
DROP PROCEDURE IF EXISTS `Insertadmin_pages`;
DELIMITER //
CREATE PROCEDURE `Insertadmin_pages`(in `AdminCategory_ID` int(11),in `Admin_Pages_Name` varchar(100),in `Admin_Pages_URL` varchar(500),
    in `Display_Order` int(11),in `CreatedBy` varchar(100),in `Created_Date` datetime,in `IsActive` bit(1))
BEGIN
              INSERT INTO admin_pages(`AdminCategory_ID`,`Admin_Pages_Name`,`Admin_Pages_URL`,`Display_Order`,`CreatedBy`,`Created_Date`,`IsActive`)
               VALUE(`AdminCategory_ID`,`Admin_Pages_Name`,`Admin_Pages_URL`,`Display_Order`,`CreatedBy`,CURRENT_DATE(),`IsActive`);
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.InsertCustomer
DROP PROCEDURE IF EXISTS `InsertCustomer`;
DELIMITER //
CREATE PROCEDURE `InsertCustomer`(IN CustName VARCHAR(100),IN CustType VARCHAR(100),IN  CustContactNumber VARCHAR(100),
    IN CustEmail  VARCHAR(100),IN  CustAddress  VARCHAR(100),IN  CreatedBy  VARCHAR(100),IN Created_Date  DATE,IN IsActive BIT(1))
BEGIN
              INSERT INTO Customer(`CustName`,`CustType`,`CustContactNumber`,`CustEmail`,`CustAddress`,`CreatedBy`,`Created_Date`,`IsActive`)
              VALUE(CustName,CustType,CustContactNumber,CustEmail,CustAddress,CreatedBy,Created_Date,IsActive);
              
              SELECT LAST_INSERT_ID();
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Insertcustomer_request
DROP PROCEDURE IF EXISTS `Insertcustomer_request`;
DELIMITER //
CREATE PROCEDURE `Insertcustomer_request`(IN `Customer_ID` INT(11),IN `Services_ID` INT(11),IN `NoOfResourses` INT(11),
    IN`Req_StartDate` DATETIME,IN `Req_EndDate` DATETIME,IN `WorkLocation` VARCHAR(100),IN `CompanyName` VARCHAR(100),
    IN `ContactPersonName` VARCHAR(50),IN `ContactNumber` VARCHAR(20),IN `Note` VARCHAR(2000),
    IN `Closed_VendorQuotation_ID` INT(11),IN `CreatedBy` VARCHAR(100),IN `Created_Date` DATETIME,IN `IsActive` BIT(1))
BEGIN
                INSERT INTO customer_request(`Customer_ID`,`Services_ID`,`NoOfResourses`,`Req_StartDate`,`Req_EndDate`,`WorkLocation`,
                `CompanyName`,`ContactPersonName`,`ContactNumber`,`Note`,`Closed_VendorQuotation_ID`,`CreatedBy`,`Created_Date`,`IsActive`)
                VALUE(`Customer_ID`,`Services_ID`,`NoOfResourses`,`Req_StartDate`,`Req_EndDate`,`WorkLocation`,`CompanyName`,`ContactPersonName`,
                `ContactNumber`,`Note`,`Closed_VendorQuotation_ID`,`CreatedBy`,`Created_Date`,`IsActive`);
                   SELECT LAST_INSERT_ID();
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Insertcustrequest_quotation
DROP PROCEDURE IF EXISTS `Insertcustrequest_quotation`;
DELIMITER //
CREATE PROCEDURE `Insertcustrequest_quotation`( IN `CustRequest_ID`INT(11),IN `VendorQuotation_ID` INT(11),IN `CreatedBy` VARCHAR(100),
    IN`Created_Date` DATETIME, IN `IsActive` BIT(1))
BEGIN
               INSERT INTO custrequest_quotation(`CustRequest_ID`,`VendorQuotation_ID`,`CreatedBy`,`Created_Date`,`IsActive`)
               VALUE(`CustRequest_ID`,`VendorQuotation_ID`,`CreatedBy`,`Created_Date`,`IsActive`);
               
               SELECT LAST_INSERT_ID();
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.InsertEnquery
DROP PROCEDURE IF EXISTS `InsertEnquery`;
DELIMITER //
CREATE PROCEDURE `InsertEnquery`(IN `EnqueryName` VARCHAR(100),IN `ContactNumber` VARCHAR(100),IN `Email` VARCHAR(100), IN `Enquery` VARCHAR(100),
    IN `Notes` VARCHAR(100),IN  CreatedBy  VARCHAR(100),IN Created_Date  DATE,IN IsActive BIT(1))
BEGIN
             INSERT INTO Enquery(EnqueryName,ContactNumber,Email,Enquery,Notes,CreatedBy,Created_Date,IsActive)
                     VALUE(`EnqueryName`,`ContactNumber`,`Email`,`Enquery`,`Notes`,`CreatedBy`,`Created_Date`,`IsActive`);
       
               SELECT LAST_INSERT_ID();
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.InsertRole
DROP PROCEDURE IF EXISTS `InsertRole`;
DELIMITER //
CREATE PROCEDURE `InsertRole`(IN RoleName VARCHAR(50), IN CreatedBy  VARCHAR(100), IN Created_Date DATETIME  )
BEGIN
	
	INSERT INTO `role` (`RoleName`, `CreatedBy`, `Created_Date`)
         VALUES (RoleName, CreatedBy, Created_Date);
         
         SELECT LAST_INSERT_ID();

	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.InsertRole_Privileges
DROP PROCEDURE IF EXISTS `InsertRole_Privileges`;
DELIMITER //
CREATE PROCEDURE `InsertRole_Privileges`(IN `Role_ID` INT(11),IN `Admin_Page_ID` INT(11), IN `Is_View_Enabled` TINYINT(4),
    IN `Is_Edit_Enabled` TINYINT(4),IN `Is_Delete_Enabled` TINYINT(4),IN `CreatedBy` VARCHAR(100),IN `Created_Date` DATETIME,
    IN `IsActive` BIT(1))
BEGIN
               INSERT INTO role_privileges(`Role_ID`,`Admin_Page_ID`,`Is_View_Enabled`,`Is_Edit_Enabled`,`Is_Delete_Enabled`,`CreatedBy`,`Created_Date`,`IsActive`)
               VALUE(`Role_ID`,`Admin_Page_ID`,`Is_View_Enabled`,`Is_Edit_Enabled`,`Is_Delete_Enabled`,`CreatedBy`,`Created_Date`,`IsActive`);
                 SELECT LAST_INSERT_ID();
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.InsertServices
DROP PROCEDURE IF EXISTS `InsertServices`;
DELIMITER //
CREATE PROCEDURE `InsertServices`(IN `VendorCategory_ID` INT(11),IN `ServiceName` VARCHAR(100),IN `CreatedBy` VARCHAR(100),IN `Created_Date` DATETIME,IN `IsActive` BIT(1))
BEGIN
                    INSERT INTO services(`VendorCategory_ID`,`ServiceName`,`CreatedBy`,`Created_Date`,`IsActive`)
                    VALUE(`VendorCategory_ID`,`ServiceName`,`CreatedBy`,`Created_Date`,`IsActive`);
                    
                    SELECT LAST_INSERT_ID();
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.InsertUser
DROP PROCEDURE IF EXISTS `InsertUser`;
DELIMITER //
CREATE PROCEDURE `InsertUser`(IN `UserName` VARCHAR(100),IN `ContactNumber` VARCHAR(100),IN `Email` VARCHAR(100),
    IN `Role_ID` INT(11),IN `CreatedBy` VARCHAR(100),IN `Created_Date` DATETIME,IN `IsActive` BIT(1))
BEGIN
                   INSERT INTO USER(`UserName`,`ContactNumber`,`Email`,`Role_ID`,`CreatedBy`,`Created_Date`,`IsActive`)
                   VALUE(`UserName`,`ContactNumber`,`Email`,`Role_ID`,`CreatedBy`,`Created_Date`,`IsActive`);
                   
               SELECT LAST_INSERT_ID();
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.InsertVendor
DROP PROCEDURE IF EXISTS `InsertVendor`;
DELIMITER //
CREATE PROCEDURE `InsertVendor`(IN `VendBussName` VARCHAR(100),IN `VendName` VARCHAR(100),IN `VendBussNumber` VARCHAR(100),IN `PersonalNumber` VARCHAR(100),
    IN `BussEmail` VARCHAR(100),IN `PersonalEmail` VARCHAR(100),
    IN `CreatedBy` VARCHAR(100),IN`Created_Date` DATETIME,IN `IsActive` BIT(1))
BEGIN
            INSERT INTO vendor(`VendBussName`,`VendName`,`VendBussNumber`,`PersonalNumber`,`BussEmail`,`PersonalEmail`,
            `CreatedBy`,`Created_Date`,`IsActive`)
            VALUE(`VendBussName`,`VendName`,`VendBussNumber`,`PersonalNumber`,`BussEmail`,`PersonalEmail`,`CreatedBy`,`Created_Date`,`IsActive`);
                
               SELECT LAST_INSERT_ID();
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Insertvendor_category
DROP PROCEDURE IF EXISTS `Insertvendor_category`;
DELIMITER //
CREATE PROCEDURE `Insertvendor_category`(IN `Level` int(11),in `Parent_ID` int(11),in `Name` varchar(100),in `CreatedBy` varchar(100),in `Created_Date` datetime,
    in `IsActive` bit(1))
BEGIN
              INSERT INTO vendor_category(`Level`,`Parent_ID`,`Name`,`CreatedBy`,`Created_Date`,`IsActive`)
              VALUE(`Level`,`Parent_ID`,`Name`,`CreatedBy`,`Created_Date`,`IsActive`);
              
              SELECT LAST_INSERT_ID();
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Insertvendor_quotation
DROP PROCEDURE IF EXISTS `Insertvendor_quotation`;
DELIMITER //
CREATE PROCEDURE `Insertvendor_quotation`(IN `CustRequest_ID` INT(11),IN `ProposedAmount` DECIMAL(10.0),
    IN `Description` VARCHAR(2000),IN `Terms` VARCHAR(1000), IN `CreatedBy` VARCHAR(100),IN `Created_Date` DATETIME,
    IN `IsActive` BIT(1))
BEGIN
                 INSERT INTO vendor_quotation(`CustRequest_ID`,`ProposedAmount`,`Description`,`Terms`,`CreatedBy`,`Created_Date`,`IsActive`)
                 VALUE(`CustRequest_ID`,`ProposedAmount`,`Description`,`Terms`,`CreatedBy`,`Created_Date`,`IsActive`);
                 
                 
                 SELECT LAST_INSERT_ID();
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Insertvendor_services
DROP PROCEDURE IF EXISTS `Insertvendor_services`;
DELIMITER //
CREATE PROCEDURE `Insertvendor_services`( IN `Vendor_ID` INT(11),IN `Services_ID` INT(11),IN `CreatedBy` VARCHAR(100),
    IN `Created_Date` DATETIME,IN `IsActive` BIT(1))
BEGIN
                  INSERT INTO vendor_services(`Vendor_ID`,`Services_ID`,`CreatedBy`,`Created_Date`,`IsActive`)
                  VALUE(`Vendor_ID`,`Services_ID`,`CreatedBy`,`Created_Date`,`IsActive`);
	END//
DELIMITER ;

-- Dumping structure for table supplyco.role
DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `Role_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(50) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` datetime DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Role_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.role: ~15 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`Role_ID`, `RoleName`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 'supervisor', 'pinky', '2021-03-26 00:00:00', NULL, NULL, b'1'),
	(2, 'supervisor', 'pinky', '2021-03-26 00:00:00', NULL, NULL, b'1'),
	(3, 'supervisor', 'pinky', '2021-03-26 00:00:00', NULL, NULL, b'1'),
	(4, 'supervisor', 'pinky', '2021-03-26 00:00:00', NULL, NULL, b'1'),
	(5, 'test', 'vishal', '2021-03-26 00:00:00', NULL, NULL, b'1'),
	(6, 'admin156', 'pinky', '2021-03-26 00:00:00', NULL, '2021-04-04 00:00:00', NULL),
	(7, 'supervisor', 'pinky', '2021-03-26 00:00:00', NULL, '2021-03-22 11:28:20', NULL),
	(8, 'supervisor', 'pinky', '2021-03-26 00:00:00', NULL, NULL, NULL),
	(9, 'supervisor', 'pinky', '2021-03-26 00:00:00', NULL, NULL, NULL),
	(10, 'vanitha', 'pinky', '2021-03-26 00:00:00', NULL, '2021-03-27 00:00:00', NULL),
	(11, 'admin', 'pinky', '2021-03-25 03:25:00', NULL, '2021-03-29 00:00:00', NULL),
	(12, 'VanithaRole', 'pinky', '2021-03-25 03:25:00', NULL, NULL, NULL),
	(13, 'VanithaV2', 'pinky', '2021-03-25 03:25:00', NULL, NULL, NULL),
	(14, 'admin123', 'priyankaV4', '0000-00-00 00:00:00', NULL, '2021-04-03 00:00:00', NULL),
	(17, 'manager', 'suman', '2021-04-06 00:00:00', NULL, NULL, NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table supplyco.role_privileges
DROP TABLE IF EXISTS `role_privileges`;
CREATE TABLE IF NOT EXISTS `role_privileges` (
  `Role_Privileges_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Role_ID` int(11) DEFAULT NULL,
  `Admin_Page_ID` int(11) DEFAULT NULL,
  `Is_View_Enabled` tinyint(4) DEFAULT NULL,
  `Is_Edit_Enabled` tinyint(4) DEFAULT NULL,
  `Is_Delete_Enabled` tinyint(4) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` datetime DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Role_Privileges_ID`),
  KEY `Role_ID` (`Role_ID`),
  KEY `Admin_Page_ID` (`Admin_Page_ID`),
  CONSTRAINT `role_privileges_ibfk_1` FOREIGN KEY (`Role_ID`) REFERENCES `role` (`Role_ID`),
  CONSTRAINT `role_privileges_ibfk_2` FOREIGN KEY (`Admin_Page_ID`) REFERENCES `admin_pages` (`Admin_Pages_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.role_privileges: ~11 rows (approximately)
/*!40000 ALTER TABLE `role_privileges` DISABLE KEYS */;
INSERT INTO `role_privileges` (`Role_Privileges_ID`, `Role_ID`, `Admin_Page_ID`, `Is_View_Enabled`, `Is_Edit_Enabled`, `Is_Delete_Enabled`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 1, 1, NULL, NULL, 0, 'shiru', '2021-04-05 16:06:45', NULL, NULL, b'1'),
	(2, 2, 2, NULL, NULL, NULL, 'shruti', '2021-04-05 16:07:09', NULL, NULL, b'1'),
	(3, 3, 3, NULL, NULL, NULL, 'roopa', '2021-04-05 16:07:47', NULL, NULL, b'1'),
	(4, 4, 4, NULL, NULL, NULL, 'jaya', '2021-04-05 16:08:10', NULL, NULL, b'1'),
	(5, 5, 5, NULL, NULL, NULL, 'divya', '2021-04-05 16:08:39', NULL, NULL, b'1'),
	(6, 6, 6, NULL, NULL, NULL, 'shilpa', '2021-04-05 16:08:54', NULL, NULL, b'1'),
	(7, 7, 7, NULL, NULL, NULL, 'santu', '2021-04-05 16:09:33', NULL, NULL, b'1'),
	(8, 8, 7, NULL, NULL, NULL, 'VEER', '2021-04-06 11:07:35', NULL, NULL, b'1'),
	(9, 9, 7, NULL, NULL, NULL, 'VEER', '0000-00-00 00:00:00', 'SADHI', '2021-04-06 00:00:00', b'1'),
	(13, 9, 7, 0, 0, 0, 'VEER', '0000-00-00 00:00:00', NULL, NULL, b'1'),
	(14, 9, 7, 0, 0, 0, 'VEER', '0000-00-00 00:00:00', NULL, NULL, b'1');
/*!40000 ALTER TABLE `role_privileges` ENABLE KEYS */;

-- Dumping structure for table supplyco.services
DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `Services_ID` int(11) NOT NULL AUTO_INCREMENT,
  `VendorCategory_ID` int(11) DEFAULT NULL,
  `ServiceName` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` datetime DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Services_ID`),
  KEY `VendorCategory_ID` (`VendorCategory_ID`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`VendorCategory_ID`) REFERENCES `vendor_category` (`VendorCategory_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.services: ~10 rows (approximately)
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` (`Services_ID`, `VendorCategory_ID`, `ServiceName`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 1, 'xyx', 'priya', '2021-03-15 03:35:22', NULL, NULL, b'1'),
	(2, 2, 'abc', 'pooja', '2021-03-15 03:35:22', NULL, NULL, b'1'),
	(3, 3, 'sop', 'punit', '2021-03-15 03:35:22', NULL, NULL, b'1'),
	(4, 4, 'qrst', 'shiru', '2021-03-15 03:35:22', NULL, NULL, b'1'),
	(5, 5, 'xyxy', 'mahesh', '2021-03-15 03:35:22', NULL, NULL, b'1'),
	(6, 6, 'mnm', 'viru', '2021-03-15 03:35:22', NULL, NULL, b'1'),
	(7, 7, 'dfr', 'mahi', '2021-03-29 03:35:22', NULL, NULL, b'1'),
	(8, 8, 'weryt', 'veer', '2021-03-29 03:35:22', NULL, NULL, b'1'),
	(9, 9, 'BHGT', 'PINKU', '2021-03-30 05:34:00', NULL, NULL, b'1'),
	(10, 10, 'desgh', 'SUHAS', '0000-00-00 00:00:00', 'ravi', '2021-04-05 00:00:00', b'1');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

-- Dumping structure for procedure supplyco.Updateaccessories
DROP PROCEDURE IF EXISTS `Updateaccessories`;
DELIMITER //
CREATE PROCEDURE `Updateaccessories`(IN Access_ID INT(11),IN AccessoriesCat_ID INT(11),IN Accessories_Name VARCHAR(100),
    IN M_By VARCHAR(100),IN Modified_Date DATETIME)
BEGIN
                UPDATE accessories SET `AccessoriesCategory_ID`=Access_ID,
                `AccessoriesName`=Accessories_Name,
                `ModifiedBy`=M_By,
                `Modified_Date`=CURRENT_DATE()
                WHERE `Accessories_ID`=Access_ID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Updateaccessories_category
DROP PROCEDURE IF EXISTS `Updateaccessories_category`;
DELIMITER //
CREATE PROCEDURE `Updateaccessories_category`(IN accessoriesC_ID INT(11),IN L_level INT(11),IN P_ID INT(11),IN Name_m VARCHAR(100),
    IN M_By VARCHAR(100),IN Modified_Date DATETIME)
BEGIN
                   UPDATE accessories_category SET LEVEL=L_level,Parent_ID=P_ID,NAME=Name_m,
                  ModifiedBy=M_By,Modified_Date=CURRENT_DATE()
                  WHERE AccessoriesCategory_ID=accessoriesC_ID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Updateadmin_category
DROP PROCEDURE IF EXISTS `Updateadmin_category`;
DELIMITER //
CREATE PROCEDURE `Updateadmin_category`(IN AdminCatego_ID INT(11),IN AdminCatego_Name VARCHAR(100),IN Dis_Order INT(11),IN AdminCat_Icon VARCHAR(100),
    IN M_By VARCHAR(100),IN Modified_Date DATETIME)
BEGIN
UPDATE admin_category SET `AdminCategory_Name`=AdminCatego_Name,`Display_Order`=Dis_Order,`AdminCategory_Icon`=AdminCat_Icon,
         `ModifiedBy`=M_By,`Modified_Date`=CURRENT_DATE()
          WHERE `AdminCategory_ID`=AdminCatego_ID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Updateadmin_pages
DROP PROCEDURE IF EXISTS `Updateadmin_pages`;
DELIMITER //
CREATE PROCEDURE `Updateadmin_pages`(IN Admin_PagesID INT(11),IN AdminCategoryID INT(11),IN Admin_PagesName VARCHAR(100),IN Admin_PagesURL VARCHAR(500),
    IN DisplayOrder INT(11),IN M_By VARCHAR(100),IN Modified_Date DATETIME)
BEGIN
            UPDATE admin_pages SET
            AdminCategory_ID=AdminCategoryID,
            Admin_Pages_Name=Admin_PagesName,
            Admin_Pages_URL=Admin_PagesURL,
            Display_Order=DisplayOrder,
            ModifiedBy=M_By,
            Modified_Date=CURRENT_DATE()
            WHERE Admin_Pages_ID=Admin_PagesID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.UpdateCustomer
DROP PROCEDURE IF EXISTS `UpdateCustomer`;
DELIMITER //
CREATE PROCEDURE `UpdateCustomer`(IN C_ID INT(11),IN C_Name VARCHAR(100),IN C_Type VARCHAR(100),IN Cust_Number VARCHAR(100),IN Email VARCHAR(100),
IN C_Address VARCHAR(100),IN  M_By VARCHAR(100),IN MOdified_Date DATETIME)
BEGIN
                  UPDATE Customer SET CustName=C_Name,
                  CustType=C_Type,
                  CustContactNumber=Cust_Number,
                  CustEmail=Email,
                  CustAddress=C_Address,
                  ModifiedBy=M_By,
                  Modified_Date=CURRENT_DATE()
                  WHERE Customer_ID=C_ID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Updatecustomer_request
DROP PROCEDURE IF EXISTS `Updatecustomer_request`;
DELIMITER //
CREATE PROCEDURE `Updatecustomer_request`(IN CUSTRE_ID INT(11),IN Custom_ID INT(11),IN Servic_ID INT(11),IN NoOfResou INT(11),
    IN Req_StartDa DATETIME,IN Req_EndDa DATETIME,IN WorkLoca VARCHAR(100),IN CompanyNa VARCHAR(100),
    IN ContactPersonNa VARCHAR(50),IN ContactNum VARCHAR(20),IN Note_n VARCHAR(2000),
    IN Closed_VendorQuotation INT(11),IN M_By VARCHAR(100),IN Modified_Date DATETIME)
BEGIN
                   UPDATE customer_request SET Customer_ID=Custom_ID,Services_ID=Servic_ID,NoOfResourses=NoOfResou,
                   Req_StartDate=Req_StartDa,Req_EndDate=Req_EndDa,WorkLocation=WorkLoca,CompanyName=CompanyNa,
                   ContactPersonName=ContactPersonNa,ContactNumber=ContactNum,Note=Note_n,
                   Closed_VendorQuotation_ID=Closed_VendorQuotation,ModifiedBy=M_By,Modified_Date=CURRENT_DATE()
                   WHERE CustRequest_ID=CUSTRE_ID;
                   
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Updatecustrequest_quotation
DROP PROCEDURE IF EXISTS `Updatecustrequest_quotation`;
DELIMITER //
CREATE PROCEDURE `Updatecustrequest_quotation`(IN `CustRequest_Quot_ID` INT(11),IN `CustReque_ID`INT(11),IN `VendorQuota_ID` INT(11),
    IN `M_By` VARCHAR(100),IN `Modified_Date` DATE)
BEGIN
               UPDATE custrequest_quotation SET `CustRequest_ID`=`CustReque_ID`,`VendorQuotation_ID`=`VendorQuota_ID`,
               `ModifiedBy`=`M_By`,`Modified_Date`=CURRENT_DATE()
               WHERE `CustRequest_Quotation_ID`=`CustRequest_Quot_ID`;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.UpdateEnquery
DROP PROCEDURE IF EXISTS `UpdateEnquery`;
DELIMITER //
CREATE PROCEDURE `UpdateEnquery`(IN E_ID INT(11),IN E_Name VARCHAR(100),IN C_Number VARCHAR(100),IN mail VARCHAR(100),IN EN VARCHAR(100),IN Note VARCHAR(100),IN M_By VARCHAR(100),IN Modified_Date DATETIME)
BEGIN
                  UPDATE Enquery SET EnqueryName=E_Name,
                  ContactNumber=C_Number,
                  Email=mail,
                  Enquery=EN,
                  Notes=Note,
                  ModifiedBy=M_By,
                  Modified_Date=CURRENT_DATE()
                  WHERE Enquery_ID=E_ID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.UpdateR
DROP PROCEDURE IF EXISTS `UpdateR`;
DELIMITER //
CREATE PROCEDURE `UpdateR`(IN id INT(11),IN `RoleName` VARCHAR(100),IN `CreatedBy` VARCHAR(100),IN `Created_Date` DATETIME)
BEGIN
                DELETE FROM role WHERE Role_ID=id;
                INSERT INTO role(`RoleName`,`CreatedBy`,`Created_Date`)
                VALUE(`RoleName`,`CreatedBy`,`Created_Date`);
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.UpdateRole
DROP PROCEDURE IF EXISTS `UpdateRole`;
DELIMITER //
CREATE PROCEDURE `UpdateRole`(IN RoleId INT, IN p_RoleName VARCHAR(50),IN M_By VARCHAR(100),IN Modified_Date DATETIME)
BEGIN
		UPDATE Role
		SET
			`RoleName` = p_RoleName,
			Modified_Date=M_By,
			`Modified_Date`=CURRENT_DATE()
		WHERE `Role_ID` = RoleId;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.UpdateRole_privileges
DROP PROCEDURE IF EXISTS `UpdateRole_privileges`;
DELIMITER //
CREATE PROCEDURE `UpdateRole_privileges`(IN Role_PrivilegesID INT(11) ,IN RoleID INT(11),IN Admin_PageID INT(11),
    IN Is_ViewEnabled TINYINT(4),IN Is_EditEnabled TINYINT(4),
    IN Is_DeleteEnabled TINYINT(4),IN M_By VARCHAR(100),IN Modified_Date DATETIME)
BEGIN
                 UPDATE role_privileges SET Role_ID=RoleID,Admin_Page_ID=Admin_PageID,
                 Is_View_Enabled=Is_ViewEnabled,Is_Edit_Enabled=Is_EditEnabled,Is_Delete_Enabled=Is_DeleteEnabled,
                 ModifiedBy=M_By,Modified_Date=CURRENT_DATE()
                 WHERE  Role_Privileges_ID=Role_PrivilegesID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.UpdateServices
DROP PROCEDURE IF EXISTS `UpdateServices`;
DELIMITER //
CREATE PROCEDURE `UpdateServices`(IN S_ID INT(11),IN VendorC_ID INT(11),IN S_Name VARCHAR(100), IN M_By VARCHAR(100),IN Modified_Date DATETIME)
BEGIN
              UPDATE services SET VendorCategory_ID=VendorC_ID,ServiceName=S_Name,ModifiedBy=M_By,
              Modified_Date=CURRENT_DATE()
              WHERE Services_ID=S_ID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.UpdateUser
DROP PROCEDURE IF EXISTS `UpdateUser`;
DELIMITER //
CREATE PROCEDURE `UpdateUser`(IN U_ID INT(11),IN U_Name VARCHAR(100),IN  C_Number  VARCHAR(100),IN mail VARCHAR(100),
                                                       IN R_ID INT(11),IN M_By VARCHAR(100),IN Modified_Date DATETIME)
BEGIN
                 UPDATE USER SET  UserName=U_Name,
                ContactNumber=C_Number,
                Email=mail,
                Role_ID=R_ID,
                ModifiedBy=M_By,
                Modified_Date=CURRENT_DATE()
                WHERE User_ID=U_ID;
               
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.UpdateVendor
DROP PROCEDURE IF EXISTS `UpdateVendor`;
DELIMITER //
CREATE PROCEDURE `UpdateVendor`(IN V_ID INT(11),IN VendB_Name VARCHAR(100),IN Vend_Name VARCHAR(100),IN VendBuss_Number VARCHAR(100),IN P_Number VARCHAR(100),
    IN Bus_Email VARCHAR(100),IN P_Email VARCHAR(100),
    IN M_By VARCHAR(100),IN Modified_Date DATETIME)
BEGIN
              UPDATE Vendor SET VendBussName=VendB_Name,VendName=Vend_Name,VendBussNumber=VendBuss_Number,PersonalNumber=P_Number,
              BussEmail=Bus_Email,PersonalEmail=P_Email,ModifiedBy=M_By,Modified_Date=CURRENT_DATE()
              WHERE Vendor_ID=V_ID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Updatevendor_category
DROP PROCEDURE IF EXISTS `Updatevendor_category`;
DELIMITER //
CREATE PROCEDURE `Updatevendor_category`(IN VendorC_ID INT(11),IN L_level INT(11),IN P_ID INT(11),IN Name_m VARCHAR(100),
    IN M_By VARCHAR(100),IN Modified_Date DATETIME)
BEGIN
                  UPDATE  vendor_category SET LEVEL=L_level,Parent_ID=P_ID,NAME=Name_m,
                  ModifiedBy=M_By,Modified_Date=CURRENT_DATE()
                  WHERE VendorCategory_ID=VendorC_ID;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.Updatevendor_quotation
DROP PROCEDURE IF EXISTS `Updatevendor_quotation`;
DELIMITER //
CREATE PROCEDURE `Updatevendor_quotation`( IN `VendorQuata_ID` INT(11),IN `CustReq_ID` INT(11),IN `ProposeAmount` DECIMAL(10.0),
    IN `Descrip` VARCHAR(2000),IN `Term` VARCHAR(1000),IN `M_By` VARCHAR(100),IN `Modified_Date` DATETIME)
BEGIN
                    UPDATE vendor_quotation SET `CustRequest_ID`=`CustReq_ID`,
                    `ProposedAmount`=`ProposeAmount`,`Description`=Descrip,`Terms`=`Term`,
                    `ModifiedBy`= `M_By`,`Modified_Date`=CURRENT_DATE()
                    WHERE `VendorQuatation_ID`=`VendorQuata_ID`;
	END//
DELIMITER ;

-- Dumping structure for procedure supplyco.UpdateVendor_services
DROP PROCEDURE IF EXISTS `UpdateVendor_services`;
DELIMITER //
CREATE PROCEDURE `UpdateVendor_services`(IN `VendorServic_ID` INT(11),IN `Vend_ID` INT(11),IN `Service_ID`INT(11),
    IN `M_By` VARCHAR(100),IN `Modified_Date` DATETIME)
BEGIN
                 UPDATE vendor_services SET `Vendor_ID`=`Vend_ID`,`Services_ID`=`Service_ID`,`ModifiedBy`= `M_By`,
                 `Modified_Date`=CURRENT_DATE()
                 WHERE `VendorServices_ID`=`VendorServic_ID`;
	END//
DELIMITER ;

-- Dumping structure for table supplyco.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `ContactNumber` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Role_ID` int(11) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` date DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` date DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`User_ID`),
  KEY `Role_ID` (`Role_ID`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`Role_ID`) REFERENCES `role` (`Role_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.user: ~10 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`User_ID`, `UserName`, `ContactNumber`, `Email`, `Role_ID`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 'amruta', '25478965', 'ammu@gmail.com', 1, 'xyx', '2021-03-15', NULL, NULL, b'1'),
	(2, 'vanita', '25478965', 'vani@gmail.com', 2, 'xyx', '2021-03-15', NULL, NULL, b'1'),
	(3, 'sindhu', '25478965', 'sidhu@gmail.com', 3, 'xyx', '2021-03-15', NULL, NULL, b'1'),
	(4, 'prashant', '25478965', 'prashant@gmail.com', 4, 'xyx', '2021-03-15', NULL, NULL, b'1'),
	(5, 'pinky', '25478965', 'pinky@gmail.com', 5, 'xyx', '2021-03-15', NULL, NULL, b'1'),
	(6, 'sunil', '2147895', 'sunil@gmail.com', 6, 'sunil', '2021-03-30', NULL, NULL, b'1'),
	(7, 'swachet', '2147895', 'swachet@gmail.com', 7, 'swachet', '2021-03-30', NULL, NULL, b'1'),
	(8, 'vamshi', '578964', 'vamshi@gmail.com', 8, 'abd', '0000-00-00', NULL, NULL, b'1'),
	(18, 'venu', '2548765', 'venu@gmail.com', 5, 'venu', '2021-04-06', NULL, NULL, b'1'),
	(19, 'venu', '254789', 'venu@gmail.com', 6, 'venu', '2021-04-06', NULL, NULL, b'1');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table supplyco.vendor
DROP TABLE IF EXISTS `vendor`;
CREATE TABLE IF NOT EXISTS `vendor` (
  `Vendor_ID` int(11) NOT NULL AUTO_INCREMENT,
  `VendBussName` varchar(100) DEFAULT NULL,
  `VendName` varchar(100) DEFAULT NULL,
  `VendBussNumber` varchar(100) DEFAULT NULL,
  `PersonalNumber` varchar(100) DEFAULT NULL,
  `BussEmail` varchar(100) DEFAULT NULL,
  `PersonalEmail` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` datetime DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Vendor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.vendor: ~8 rows (approximately)
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` (`Vendor_ID`, `VendBussName`, `VendName`, `VendBussNumber`, `PersonalNumber`, `BussEmail`, `PersonalEmail`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 'mnbv', 'mahi', '2354781', '9874562', 'mnbv@gmail.com', 'mahi@gmail.com', 'vishu', '2021-03-16 09:34:55', NULL, NULL, b'1'),
	(2, 'cxzl', 'neha', '2354784', '9874563', 'cxzl@gmail.com', 'neha@gmail.com', 'vishu', '2021-03-16 09:34:55', NULL, NULL, b'1'),
	(3, 'kjhg', 'divya', '2354785', '9874566', 'kjhg@gmail.com', 'divya@gmail.com', 'vishu', '2021-03-16 09:34:55', NULL, NULL, b'1'),
	(4, 'fdsa', 'paru', '2354785', '9874567', 'fdsa@gmail.com', 'paru@gmail.com', 'vishu', '2021-03-16 09:34:55', NULL, NULL, b'1'),
	(5, 'poiu', 'shoyab', '2354782', '98745622', 'poiu@gmail.com', 'shoyab@gmail.com', 'vishu', '2021-03-16 09:34:55', NULL, NULL, b'1'),
	(6, 'use', 'shivu', '2354782', '98745622', 'use@gmail.com', 'shivu@gmail.com', 'vishu', '2021-03-16 09:34:55', NULL, NULL, b'1'),
	(7, 'fgt', 'vishu', '25479', '2144785', 'fgt@gmail.com', 'cfg@gmail.com', 'vishu', '2021-03-30 03:45:00', NULL, NULL, b'1'),
	(8, 'vgft', 'abhi', '15487', '58647', 'mhg@gmail.com', 'abhi@gmail.com', 'hgf', '0000-00-00 00:00:00', NULL, NULL, b'1');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;

-- Dumping structure for table supplyco.vendor_category
DROP TABLE IF EXISTS `vendor_category`;
CREATE TABLE IF NOT EXISTS `vendor_category` (
  `VendorCategory_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Level` int(11) DEFAULT NULL,
  `Parent_ID` int(11) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` datetime DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`VendorCategory_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.vendor_category: ~11 rows (approximately)
/*!40000 ALTER TABLE `vendor_category` DISABLE KEYS */;
INSERT INTO `vendor_category` (`VendorCategory_ID`, `Level`, `Parent_ID`, `Name`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 0, NULL, 'sindhu', 'abc', '2021-03-15 02:43:00', NULL, '0000-00-00 00:00:00', NULL),
	(2, 0, NULL, 'sandy', 'def', '2021-03-15 02:43:00', NULL, '0000-00-00 00:00:00', NULL),
	(3, 0, NULL, 'mina', 'ghi', '2021-03-15 02:43:00', NULL, '0000-00-00 00:00:00', NULL),
	(4, 0, NULL, 'jony', 'jkl', '2021-03-15 02:43:00', NULL, '0000-00-00 00:00:00', NULL),
	(5, 0, NULL, 'james', 'jkl', '2021-03-15 02:43:00', NULL, '0000-00-00 00:00:00', NULL),
	(6, 1, NULL, 'ron', 'jkl', '2021-03-15 02:43:00', NULL, '0000-00-00 00:00:00', NULL),
	(7, 1, NULL, 'hero', 'gfd', '2021-03-24 02:38:00', NULL, NULL, NULL),
	(8, 1, NULL, 'harry', 'wert', '2021-03-24 02:38:00', NULL, '0000-00-00 00:00:00', NULL),
	(9, 1, NULL, 'VINNU', 'BGFFD', '2021-03-24 02:38:00', NULL, '0000-00-00 00:00:00', NULL),
	(10, 1, NULL, 'SUYA', 'FRTYHG', '2021-03-24 02:38:00', NULL, '0000-00-00 00:00:00', NULL),
	(11, 1, 0, 'viSHalu', 'SDF', '0000-00-00 00:00:00', 'fgd', '2021-04-05 00:00:00', b'1');
/*!40000 ALTER TABLE `vendor_category` ENABLE KEYS */;

-- Dumping structure for table supplyco.vendor_quotation
DROP TABLE IF EXISTS `vendor_quotation`;
CREATE TABLE IF NOT EXISTS `vendor_quotation` (
  `VendorQuatation_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustRequest_ID` int(11) DEFAULT NULL,
  `ProposedAmount` decimal(10,0) DEFAULT NULL,
  `Description` varchar(2000) DEFAULT NULL,
  `Terms` varchar(1000) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` date DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` date DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`VendorQuatation_ID`),
  KEY `CustRequest_ID` (`CustRequest_ID`),
  CONSTRAINT `vendor_quotation_ibfk_1` FOREIGN KEY (`CustRequest_ID`) REFERENCES `customer_request` (`CustRequest_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.vendor_quotation: ~10 rows (approximately)
/*!40000 ALTER TABLE `vendor_quotation` DISABLE KEYS */;
INSERT INTO `vendor_quotation` (`VendorQuatation_ID`, `CustRequest_ID`, `ProposedAmount`, `Description`, `Terms`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 1, 100, NULL, NULL, 'sunil', '2021-03-26', NULL, NULL, b'1'),
	(2, 2, 200, NULL, NULL, 'sunil', '2021-03-26', NULL, NULL, b'1'),
	(3, 3, 500, '', NULL, 'sunil', '2021-03-26', NULL, NULL, b'1'),
	(4, 4, 800, NULL, NULL, 'sunil', '2021-03-26', NULL, NULL, b'1'),
	(5, 5, 250, NULL, NULL, 'sunil', '2021-03-26', NULL, NULL, b'1'),
	(6, 6, 1000, NULL, NULL, 'sunil', '2021-03-26', NULL, NULL, b'1'),
	(7, 7, 2000, NULL, NULL, 'sunil', '2021-03-26', NULL, NULL, b'1'),
	(8, 8, 2510, 'NULL', 'NULL', 'sunil', '2021-03-26', 'siddu', '2021-04-05', b'1'),
	(9, 9, 2510, 'NULL', 'NULL', 'Abhilash', '0000-00-00', 'siddu', '2021-04-01', b'1'),
	(10, 9, 2100, 'NULL', 'NULL', 'Abhilash', '0000-00-00', NULL, NULL, b'1');
/*!40000 ALTER TABLE `vendor_quotation` ENABLE KEYS */;

-- Dumping structure for table supplyco.vendor_services
DROP TABLE IF EXISTS `vendor_services`;
CREATE TABLE IF NOT EXISTS `vendor_services` (
  `VendorServices_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Vendor_ID` int(11) DEFAULT NULL,
  `Services_ID` int(11) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `Created_Date` datetime DEFAULT NULL,
  `ModifiedBy` varchar(100) DEFAULT NULL,
  `Modified_Date` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`VendorServices_ID`),
  KEY `Vendor_ID` (`Vendor_ID`),
  KEY `Services_ID` (`Services_ID`),
  CONSTRAINT `vendor_services_ibfk_1` FOREIGN KEY (`Vendor_ID`) REFERENCES `vendor` (`Vendor_ID`),
  CONSTRAINT `vendor_services_ibfk_2` FOREIGN KEY (`Services_ID`) REFERENCES `services` (`Services_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table supplyco.vendor_services: ~7 rows (approximately)
/*!40000 ALTER TABLE `vendor_services` DISABLE KEYS */;
INSERT INTO `vendor_services` (`VendorServices_ID`, `Vendor_ID`, `Services_ID`, `CreatedBy`, `Created_Date`, `ModifiedBy`, `Modified_Date`, `IsActive`) VALUES
	(1, 1, 1, 'balu', '2021-03-16 10:00:55', NULL, NULL, b'1'),
	(2, 2, 2, 'balu', '2021-03-16 10:00:55', NULL, NULL, b'1'),
	(3, 3, 3, 'balu', '2021-03-16 10:00:55', NULL, NULL, b'1'),
	(4, 4, 4, 'balu', '2021-03-16 10:00:55', NULL, NULL, b'1'),
	(5, 5, 5, 'balu', '2021-03-16 10:00:55', NULL, NULL, b'1'),
	(6, 6, 6, 'SUMIT', '0000-00-00 00:00:00', NULL, NULL, b'1'),
	(7, 7, 7, 'SAKSHI', '0000-00-00 00:00:00', 'revati', '2021-04-05 00:00:00', b'1');
/*!40000 ALTER TABLE `vendor_services` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
