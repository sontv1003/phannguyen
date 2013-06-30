-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.16 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2013-06-30 12:30:34
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping structure for table zara.address
DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.address: 2 rows
DELETE FROM `address`;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `company_id`, `tax_id`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`) VALUES
	(1, 1, 'Khiem', 'Pham', 'fsdf', '', '', '423423', '', '4234242', '', 230, 3776),
	(2, 1, 'Khiem', 'Pham', 'cya', '3333', '', 'fdsfs', 'fsdfs', 'fsdfsdfs', 'fsdfsds', 230, 3776);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;


-- Dumping structure for table zara.affiliate
DROP TABLE IF EXISTS `affiliate`;
CREATE TABLE IF NOT EXISTS `affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.affiliate: 0 rows
DELETE FROM `affiliate`;
/*!40000 ALTER TABLE `affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `affiliate` ENABLE KEYS */;


-- Dumping structure for table zara.affiliate_transaction
DROP TABLE IF EXISTS `affiliate_transaction`;
CREATE TABLE IF NOT EXISTS `affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.affiliate_transaction: 0 rows
DELETE FROM `affiliate_transaction`;
/*!40000 ALTER TABLE `affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `affiliate_transaction` ENABLE KEYS */;


-- Dumping structure for table zara.attribute
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE IF NOT EXISTS `attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.attribute: 11 rows
DELETE FROM `attribute`;
/*!40000 ALTER TABLE `attribute` DISABLE KEYS */;
INSERT INTO `attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
	(1, 6, 1),
	(2, 6, 5),
	(3, 6, 3),
	(4, 3, 1),
	(5, 3, 2),
	(6, 3, 3),
	(7, 3, 4),
	(8, 3, 5),
	(9, 3, 6),
	(10, 3, 7),
	(11, 3, 8);
/*!40000 ALTER TABLE `attribute` ENABLE KEYS */;


-- Dumping structure for table zara.attribute_description
DROP TABLE IF EXISTS `attribute_description`;
CREATE TABLE IF NOT EXISTS `attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.attribute_description: 22 rows
DELETE FROM `attribute_description`;
/*!40000 ALTER TABLE `attribute_description` DISABLE KEYS */;
INSERT INTO `attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
	(1, 2, 'Description'),
	(2, 2, 'No. of Cores'),
	(4, 2, 'test 1'),
	(5, 2, 'test 2'),
	(6, 2, 'test 3'),
	(7, 2, 'test 4'),
	(8, 2, 'test 5'),
	(9, 2, 'test 6'),
	(10, 2, 'test 7'),
	(11, 2, 'test 8'),
	(3, 2, 'Clockspeed'),
	(1, 3, 'Description'),
	(2, 3, 'No. of Cores'),
	(4, 3, 'test 1'),
	(5, 3, 'test 2'),
	(6, 3, 'test 3'),
	(7, 3, 'test 4'),
	(8, 3, 'test 5'),
	(9, 3, 'test 6'),
	(10, 3, 'test 7'),
	(11, 3, 'test 8'),
	(3, 3, 'Clockspeed');
/*!40000 ALTER TABLE `attribute_description` ENABLE KEYS */;


-- Dumping structure for table zara.attribute_group
DROP TABLE IF EXISTS `attribute_group`;
CREATE TABLE IF NOT EXISTS `attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.attribute_group: 4 rows
DELETE FROM `attribute_group`;
/*!40000 ALTER TABLE `attribute_group` DISABLE KEYS */;
INSERT INTO `attribute_group` (`attribute_group_id`, `sort_order`) VALUES
	(3, 2),
	(4, 1),
	(5, 3),
	(6, 4);
/*!40000 ALTER TABLE `attribute_group` ENABLE KEYS */;


-- Dumping structure for table zara.attribute_group_description
DROP TABLE IF EXISTS `attribute_group_description`;
CREATE TABLE IF NOT EXISTS `attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.attribute_group_description: 8 rows
DELETE FROM `attribute_group_description`;
/*!40000 ALTER TABLE `attribute_group_description` DISABLE KEYS */;
INSERT INTO `attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
	(3, 2, 'Memory'),
	(4, 2, 'Technical'),
	(5, 2, 'Motherboard'),
	(6, 2, 'Processor'),
	(3, 3, 'Memory'),
	(4, 3, 'Technical'),
	(5, 3, 'Motherboard'),
	(6, 3, 'Processor');
/*!40000 ALTER TABLE `attribute_group_description` ENABLE KEYS */;


-- Dumping structure for table zara.banner
DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.banner: 3 rows
DELETE FROM `banner`;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` (`banner_id`, `name`, `status`) VALUES
	(7, 'Slideshow trang chủ', 1),
	(8, 'Tin nóng hàng ngày', 1),
	(9, 'Slideshow Danh mục', 1);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;


-- Dumping structure for table zara.banner_image
DROP TABLE IF EXISTS `banner_image`;
CREATE TABLE IF NOT EXISTS `banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.banner_image: 5 rows
DELETE FROM `banner_image`;
/*!40000 ALTER TABLE `banner_image` DISABLE KEYS */;
INSERT INTO `banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
	(87, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'data/anh1.jpg'),
	(93, 7, '', 'data/slide_02.jpg'),
	(92, 7, '', 'data/slide_01.jpg'),
	(91, 7, '', 'data/slide_00.jpg'),
	(94, 9, '', 'data/1.jpg');
/*!40000 ALTER TABLE `banner_image` ENABLE KEYS */;


-- Dumping structure for table zara.banner_image_description
DROP TABLE IF EXISTS `banner_image_description`;
CREATE TABLE IF NOT EXISTS `banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.banner_image_description: 10 rows
DELETE FROM `banner_image_description`;
/*!40000 ALTER TABLE `banner_image_description` DISABLE KEYS */;
INSERT INTO `banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
	(93, 2, 7, 'ssssssss'),
	(87, 2, 8, 'TIN SIÊU HOT'),
	(92, 2, 7, 'ssssssssssssssssss'),
	(91, 2, 7, 'sssssss'),
	(94, 2, 9, 'hdfhdfhd'),
	(93, 3, 7, 'ssssssss'),
	(87, 3, 8, 'TIN SIÊU HOT'),
	(92, 3, 7, 'ssssssssssssssssss'),
	(91, 3, 7, 'sssssss'),
	(94, 3, 9, 'hdfhdfhd');
/*!40000 ALTER TABLE `banner_image_description` ENABLE KEYS */;


-- Dumping structure for table zara.category
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `top2` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.category: 9 rows
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`category_id`, `image`, `parent_id`, `top`, `top2`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
	(25, '', 0, 1, 0, 1, 1, 1, '2009-01-31 01:04:25', '2013-05-20 23:43:45'),
	(33, '', 0, 1, 0, 1, 0, 1, '2009-02-03 14:17:55', '2013-05-20 23:43:37'),
	(59, '', 0, 1, 0, 1, 2, 1, '2013-05-20 23:43:15', '2013-05-20 23:44:07'),
	(60, '', 33, 0, 0, 1, 1, 1, '2013-05-23 22:38:45', '2013-05-23 22:41:27'),
	(61, '', 33, 0, 0, 1, 0, 1, '2013-05-23 22:39:28', '2013-05-29 00:21:22'),
	(62, '', 33, 0, 0, 1, 2, 1, '2013-05-23 22:39:49', '2013-05-29 00:21:27'),
	(63, '', 25, 0, 0, 1, 0, 1, '2013-05-23 22:40:41', '2013-05-23 22:40:41'),
	(64, '', 25, 0, 0, 1, 0, 1, '2013-05-23 22:40:55', '2013-05-23 22:41:49'),
	(65, '', 25, 0, 0, 1, 3, 1, '2013-05-23 22:42:16', '2013-05-23 22:42:22');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


-- Dumping structure for table zara.category_description
DROP TABLE IF EXISTS `category_description`;
CREATE TABLE IF NOT EXISTS `category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.category_description: 18 rows
DELETE FROM `category_description`;
/*!40000 ALTER TABLE `category_description` DISABLE KEYS */;
INSERT INTO `category_description` (`category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
	(33, 2, 'Nam', '', '', 'nam'),
	(59, 2, 'Trẻ em', '', '', ''),
	(25, 2, 'Nữ', '', '', ''),
	(60, 2, 'Quần', '', '', 'quan'),
	(61, 2, 'Áo', '', '', ''),
	(62, 2, 'Phụ kiện', '', '', ''),
	(63, 2, 'Quần', '', '', ''),
	(64, 2, 'Áo', '', '', ''),
	(65, 2, 'Phụ kiện', '', '', ''),
	(33, 3, 'Nam', '', '', 'nam'),
	(59, 3, 'Trẻ em', '', '', ''),
	(25, 3, 'Nữ', '', '', ''),
	(60, 3, 'Quần', '', '', 'quan'),
	(61, 3, 'Áo', '', '', ''),
	(62, 3, 'Phụ kiện', '', '', ''),
	(63, 3, 'Quần', '', '', ''),
	(64, 3, 'Áo', '', '', ''),
	(65, 3, 'Phụ kiện', '', '', '');
/*!40000 ALTER TABLE `category_description` ENABLE KEYS */;


-- Dumping structure for table zara.category_filter
DROP TABLE IF EXISTS `category_filter`;
CREATE TABLE IF NOT EXISTS `category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.category_filter: 0 rows
DELETE FROM `category_filter`;
/*!40000 ALTER TABLE `category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_filter` ENABLE KEYS */;


-- Dumping structure for table zara.category_path
DROP TABLE IF EXISTS `category_path`;
CREATE TABLE IF NOT EXISTS `category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.category_path: 15 rows
DELETE FROM `category_path`;
/*!40000 ALTER TABLE `category_path` DISABLE KEYS */;
INSERT INTO `category_path` (`category_id`, `path_id`, `level`) VALUES
	(25, 25, 0),
	(33, 33, 0),
	(59, 59, 0),
	(60, 60, 1),
	(60, 33, 0),
	(61, 33, 0),
	(61, 61, 1),
	(62, 33, 0),
	(62, 62, 1),
	(63, 25, 0),
	(63, 63, 1),
	(64, 25, 0),
	(64, 64, 1),
	(65, 25, 0),
	(65, 65, 1);
/*!40000 ALTER TABLE `category_path` ENABLE KEYS */;


-- Dumping structure for table zara.category_to_layout
DROP TABLE IF EXISTS `category_to_layout`;
CREATE TABLE IF NOT EXISTS `category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.category_to_layout: 6 rows
DELETE FROM `category_to_layout`;
/*!40000 ALTER TABLE `category_to_layout` DISABLE KEYS */;
INSERT INTO `category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
	(61, 0, 3),
	(62, 0, 3),
	(60, 0, 3),
	(63, 0, 3),
	(64, 0, 3),
	(65, 0, 3);
/*!40000 ALTER TABLE `category_to_layout` ENABLE KEYS */;


-- Dumping structure for table zara.category_to_store
DROP TABLE IF EXISTS `category_to_store`;
CREATE TABLE IF NOT EXISTS `category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.category_to_store: 9 rows
DELETE FROM `category_to_store`;
/*!40000 ALTER TABLE `category_to_store` DISABLE KEYS */;
INSERT INTO `category_to_store` (`category_id`, `store_id`) VALUES
	(25, 0),
	(33, 0),
	(59, 0),
	(60, 0),
	(61, 0),
	(62, 0),
	(63, 0),
	(64, 0),
	(65, 0);
/*!40000 ALTER TABLE `category_to_store` ENABLE KEYS */;


-- Dumping structure for table zara.country
DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.country: 249 rows
DELETE FROM `country`;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
	(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
	(2, 'Albania', 'AL', 'ALB', '', 0, 1),
	(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
	(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
	(5, 'Andorra', 'AD', 'AND', '', 0, 1),
	(6, 'Angola', 'AO', 'AGO', '', 0, 1),
	(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
	(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
	(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
	(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
	(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
	(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
	(13, 'Australia', 'AU', 'AUS', '', 0, 1),
	(14, 'Austria', 'AT', 'AUT', '', 0, 1),
	(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
	(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
	(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
	(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
	(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
	(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
	(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
	(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
	(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
	(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
	(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
	(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
	(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
	(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
	(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
	(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
	(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
	(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
	(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
	(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
	(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
	(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
	(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
	(38, 'Canada', 'CA', 'CAN', '', 0, 1),
	(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
	(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
	(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
	(42, 'Chad', 'TD', 'TCD', '', 0, 1),
	(43, 'Chile', 'CL', 'CHL', '', 0, 1),
	(44, 'China', 'CN', 'CHN', '', 0, 1),
	(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
	(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
	(47, 'Colombia', 'CO', 'COL', '', 0, 1),
	(48, 'Comoros', 'KM', 'COM', '', 0, 1),
	(49, 'Congo', 'CG', 'COG', '', 0, 1),
	(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
	(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
	(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
	(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
	(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
	(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
	(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
	(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
	(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
	(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
	(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
	(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
	(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
	(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
	(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
	(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
	(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
	(67, 'Estonia', 'EE', 'EST', '', 0, 1),
	(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
	(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
	(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
	(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
	(72, 'Finland', 'FI', 'FIN', '', 0, 1),
	(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
	(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
	(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
	(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
	(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
	(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
	(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
	(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
	(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
	(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
	(84, 'Greece', 'GR', 'GRC', '', 0, 1),
	(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
	(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
	(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
	(88, 'Guam', 'GU', 'GUM', '', 0, 1),
	(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
	(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
	(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
	(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
	(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
	(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
	(95, 'Honduras', 'HN', 'HND', '', 0, 1),
	(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
	(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
	(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
	(99, 'India', 'IN', 'IND', '', 0, 1),
	(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
	(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
	(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
	(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
	(104, 'Israel', 'IL', 'ISR', '', 0, 1),
	(105, 'Italy', 'IT', 'ITA', '', 0, 1),
	(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
	(107, 'Japan', 'JP', 'JPN', '', 0, 1),
	(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
	(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
	(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
	(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
	(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
	(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
	(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
	(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
	(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
	(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
	(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
	(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
	(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
	(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
	(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
	(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
	(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
	(125, 'Macau', 'MO', 'MAC', '', 0, 1),
	(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
	(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
	(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
	(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
	(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
	(131, 'Mali', 'ML', 'MLI', '', 0, 1),
	(132, 'Malta', 'MT', 'MLT', '', 0, 1),
	(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
	(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
	(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
	(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
	(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
	(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
	(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
	(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
	(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
	(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
	(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
	(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
	(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
	(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
	(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
	(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
	(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
	(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
	(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
	(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
	(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
	(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
	(155, 'Niger', 'NE', 'NER', '', 0, 1),
	(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
	(157, 'Niue', 'NU', 'NIU', '', 0, 1),
	(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
	(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
	(160, 'Norway', 'NO', 'NOR', '', 0, 1),
	(161, 'Oman', 'OM', 'OMN', '', 0, 1),
	(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
	(163, 'Palau', 'PW', 'PLW', '', 0, 1),
	(164, 'Panama', 'PA', 'PAN', '', 0, 1),
	(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
	(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
	(167, 'Peru', 'PE', 'PER', '', 0, 1),
	(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
	(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
	(170, 'Poland', 'PL', 'POL', '', 0, 1),
	(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
	(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
	(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
	(174, 'Reunion', 'RE', 'REU', '', 0, 1),
	(175, 'Romania', 'RO', 'ROM', '', 0, 1),
	(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
	(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
	(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
	(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
	(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
	(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
	(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
	(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
	(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
	(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
	(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
	(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
	(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
	(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
	(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
	(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
	(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
	(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
	(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
	(195, 'Spain', 'ES', 'ESP', '', 0, 1),
	(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
	(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
	(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
	(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
	(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
	(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
	(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
	(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
	(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
	(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
	(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
	(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
	(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
	(209, 'Thailand', 'TH', 'THA', '', 0, 1),
	(210, 'Togo', 'TG', 'TGO', '', 0, 1),
	(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
	(212, 'Tonga', 'TO', 'TON', '', 0, 1),
	(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
	(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
	(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
	(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
	(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
	(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
	(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
	(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
	(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
	(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
	(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
	(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
	(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
	(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
	(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
	(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
	(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
	(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
	(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
	(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
	(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
	(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
	(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
	(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
	(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
	(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
	(240, 'Jersey', 'JE', 'JEY', '', 1, 1),
	(241, 'Guernsey', 'GG', 'GGY', '', 1, 1),
	(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
	(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
	(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
	(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
	(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
	(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
	(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
	(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
	(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
	(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;


-- Dumping structure for table zara.coupon
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE IF NOT EXISTS `coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.coupon: 3 rows
DELETE FROM `coupon`;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
	(4, '-10% Discount', '2222', 'P', 10.0000, 0, 0, 0.0000, '2011-01-01', '2012-01-01', 10, '10', 1, '2009-01-27 13:55:03'),
	(5, 'Free Shipping', '3333', 'P', 0.0000, 0, 1, 100.0000, '2009-03-01', '2009-08-31', 10, '10', 1, '2009-03-14 21:13:53'),
	(6, '-10.00 Discount', '1111', 'F', 10.0000, 0, 0, 10.0000, '1970-11-01', '2020-11-01', 100000, '10000', 1, '2009-03-14 21:15:18');
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;


-- Dumping structure for table zara.coupon_category
DROP TABLE IF EXISTS `coupon_category`;
CREATE TABLE IF NOT EXISTS `coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.coupon_category: 0 rows
DELETE FROM `coupon_category`;
/*!40000 ALTER TABLE `coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_category` ENABLE KEYS */;


-- Dumping structure for table zara.coupon_history
DROP TABLE IF EXISTS `coupon_history`;
CREATE TABLE IF NOT EXISTS `coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.coupon_history: 0 rows
DELETE FROM `coupon_history`;
/*!40000 ALTER TABLE `coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_history` ENABLE KEYS */;


-- Dumping structure for table zara.coupon_product
DROP TABLE IF EXISTS `coupon_product`;
CREATE TABLE IF NOT EXISTS `coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.coupon_product: 0 rows
DELETE FROM `coupon_product`;
/*!40000 ALTER TABLE `coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_product` ENABLE KEYS */;


-- Dumping structure for table zara.currency
DROP TABLE IF EXISTS `currency`;
CREATE TABLE IF NOT EXISTS `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.currency: 3 rows
DELETE FROM `currency`;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
	(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.65750003, 1, '2013-06-30 07:03:23'),
	(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2013-06-30 07:03:23'),
	(3, 'Euro', 'EUR', '', '€', '2', 0.76849997, 1, '2013-06-30 07:03:23');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;


-- Dumping structure for table zara.customer
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.customer: 1 rows
DELETE FROM `customer`;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`customer_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `customer_group_id`, `ip`, `status`, `approved`, `token`, `date_added`) VALUES
	(1, 0, 'Khiem', 'Pham', 'rongandat@gmail.com', '01694042658', '', '5fe6738845009e522adad162db07d18d5bc09c4f', 'af57f4933', 'a:3:{s:31:"30:YToxOntpOjIzMTtzOjI6IjM3Ijt9";i:2;i:28;i:2;s:31:"51:YToxOntpOjIzNTtzOjI6IjQyIjt9";i:4;}', 'a:0:{}', 1, 1, 1, '127.0.0.1', 1, 1, '', '2013-06-25 16:08:01');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


-- Dumping structure for table zara.customer_ban_ip
DROP TABLE IF EXISTS `customer_ban_ip`;
CREATE TABLE IF NOT EXISTS `customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.customer_ban_ip: 0 rows
DELETE FROM `customer_ban_ip`;
/*!40000 ALTER TABLE `customer_ban_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_ban_ip` ENABLE KEYS */;


-- Dumping structure for table zara.customer_field
DROP TABLE IF EXISTS `customer_field`;
CREATE TABLE IF NOT EXISTS `customer_field` (
  `customer_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.customer_field: 0 rows
DELETE FROM `customer_field`;
/*!40000 ALTER TABLE `customer_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_field` ENABLE KEYS */;


-- Dumping structure for table zara.customer_group
DROP TABLE IF EXISTS `customer_group`;
CREATE TABLE IF NOT EXISTS `customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.customer_group: 1 rows
DELETE FROM `customer_group`;
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;
INSERT INTO `customer_group` (`customer_group_id`, `approval`, `company_id_display`, `company_id_required`, `tax_id_display`, `tax_id_required`, `sort_order`) VALUES
	(1, 0, 1, 0, 0, 1, 1);
/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;


-- Dumping structure for table zara.customer_group_description
DROP TABLE IF EXISTS `customer_group_description`;
CREATE TABLE IF NOT EXISTS `customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.customer_group_description: 2 rows
DELETE FROM `customer_group_description`;
/*!40000 ALTER TABLE `customer_group_description` DISABLE KEYS */;
INSERT INTO `customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
	(1, 2, 'Default', 'test'),
	(1, 3, 'Default', 'test');
/*!40000 ALTER TABLE `customer_group_description` ENABLE KEYS */;


-- Dumping structure for table zara.customer_history
DROP TABLE IF EXISTS `customer_history`;
CREATE TABLE IF NOT EXISTS `customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.customer_history: 0 rows
DELETE FROM `customer_history`;
/*!40000 ALTER TABLE `customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_history` ENABLE KEYS */;


-- Dumping structure for table zara.customer_ip
DROP TABLE IF EXISTS `customer_ip`;
CREATE TABLE IF NOT EXISTS `customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.customer_ip: 1 rows
DELETE FROM `customer_ip`;
/*!40000 ALTER TABLE `customer_ip` DISABLE KEYS */;
INSERT INTO `customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
	(1, 1, '127.0.0.1', '2013-06-25 16:08:34');
/*!40000 ALTER TABLE `customer_ip` ENABLE KEYS */;


-- Dumping structure for table zara.customer_online
DROP TABLE IF EXISTS `customer_online`;
CREATE TABLE IF NOT EXISTS `customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.customer_online: 0 rows
DELETE FROM `customer_online`;
/*!40000 ALTER TABLE `customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_online` ENABLE KEYS */;


-- Dumping structure for table zara.customer_reward
DROP TABLE IF EXISTS `customer_reward`;
CREATE TABLE IF NOT EXISTS `customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.customer_reward: 0 rows
DELETE FROM `customer_reward`;
/*!40000 ALTER TABLE `customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_reward` ENABLE KEYS */;


-- Dumping structure for table zara.customer_transaction
DROP TABLE IF EXISTS `customer_transaction`;
CREATE TABLE IF NOT EXISTS `customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.customer_transaction: 0 rows
DELETE FROM `customer_transaction`;
/*!40000 ALTER TABLE `customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_transaction` ENABLE KEYS */;


-- Dumping structure for table zara.custom_field
DROP TABLE IF EXISTS `custom_field`;
CREATE TABLE IF NOT EXISTS `custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `location` varchar(32) NOT NULL,
  `position` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.custom_field: 0 rows
DELETE FROM `custom_field`;
/*!40000 ALTER TABLE `custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field` ENABLE KEYS */;


-- Dumping structure for table zara.custom_field_description
DROP TABLE IF EXISTS `custom_field_description`;
CREATE TABLE IF NOT EXISTS `custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.custom_field_description: 0 rows
DELETE FROM `custom_field_description`;
/*!40000 ALTER TABLE `custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_description` ENABLE KEYS */;


-- Dumping structure for table zara.custom_field_to_customer_group
DROP TABLE IF EXISTS `custom_field_to_customer_group`;
CREATE TABLE IF NOT EXISTS `custom_field_to_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.custom_field_to_customer_group: 0 rows
DELETE FROM `custom_field_to_customer_group`;
/*!40000 ALTER TABLE `custom_field_to_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_to_customer_group` ENABLE KEYS */;


-- Dumping structure for table zara.custom_field_value
DROP TABLE IF EXISTS `custom_field_value`;
CREATE TABLE IF NOT EXISTS `custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.custom_field_value: 0 rows
DELETE FROM `custom_field_value`;
/*!40000 ALTER TABLE `custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_value` ENABLE KEYS */;


-- Dumping structure for table zara.custom_field_value_description
DROP TABLE IF EXISTS `custom_field_value_description`;
CREATE TABLE IF NOT EXISTS `custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.custom_field_value_description: 0 rows
DELETE FROM `custom_field_value_description`;
/*!40000 ALTER TABLE `custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_value_description` ENABLE KEYS */;


-- Dumping structure for table zara.download
DROP TABLE IF EXISTS `download`;
CREATE TABLE IF NOT EXISTS `download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.download: 0 rows
DELETE FROM `download`;
/*!40000 ALTER TABLE `download` DISABLE KEYS */;
/*!40000 ALTER TABLE `download` ENABLE KEYS */;


-- Dumping structure for table zara.download_description
DROP TABLE IF EXISTS `download_description`;
CREATE TABLE IF NOT EXISTS `download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.download_description: 0 rows
DELETE FROM `download_description`;
/*!40000 ALTER TABLE `download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_description` ENABLE KEYS */;


-- Dumping structure for table zara.extension
DROP TABLE IF EXISTS `extension`;
CREATE TABLE IF NOT EXISTS `extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=434 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.extension: 15 rows
DELETE FROM `extension`;
/*!40000 ALTER TABLE `extension` DISABLE KEYS */;
INSERT INTO `extension` (`extension_id`, `type`, `code`) VALUES
	(23, 'payment', 'cod'),
	(22, 'total', 'shipping'),
	(57, 'total', 'sub_total'),
	(58, 'total', 'tax'),
	(59, 'total', 'total'),
	(390, 'total', 'credit'),
	(387, 'shipping', 'flat'),
	(349, 'total', 'handling'),
	(350, 'total', 'low_order_fee'),
	(389, 'total', 'coupon'),
	(393, 'total', 'reward'),
	(398, 'total', 'voucher'),
	(407, 'payment', 'free_checkout'),
	(428, 'module', 'vqmod_manager'),
	(433, 'shipping', 'free');
/*!40000 ALTER TABLE `extension` ENABLE KEYS */;


-- Dumping structure for table zara.filter
DROP TABLE IF EXISTS `filter`;
CREATE TABLE IF NOT EXISTS `filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.filter: 0 rows
DELETE FROM `filter`;
/*!40000 ALTER TABLE `filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter` ENABLE KEYS */;


-- Dumping structure for table zara.filter_description
DROP TABLE IF EXISTS `filter_description`;
CREATE TABLE IF NOT EXISTS `filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.filter_description: 0 rows
DELETE FROM `filter_description`;
/*!40000 ALTER TABLE `filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter_description` ENABLE KEYS */;


-- Dumping structure for table zara.filter_group
DROP TABLE IF EXISTS `filter_group`;
CREATE TABLE IF NOT EXISTS `filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.filter_group: 0 rows
DELETE FROM `filter_group`;
/*!40000 ALTER TABLE `filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter_group` ENABLE KEYS */;


-- Dumping structure for table zara.filter_group_description
DROP TABLE IF EXISTS `filter_group_description`;
CREATE TABLE IF NOT EXISTS `filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.filter_group_description: 0 rows
DELETE FROM `filter_group_description`;
/*!40000 ALTER TABLE `filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter_group_description` ENABLE KEYS */;


-- Dumping structure for table zara.geo_zone
DROP TABLE IF EXISTS `geo_zone`;
CREATE TABLE IF NOT EXISTS `geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.geo_zone: 2 rows
DELETE FROM `geo_zone`;
/*!40000 ALTER TABLE `geo_zone` DISABLE KEYS */;
INSERT INTO `geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
	(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
	(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');
/*!40000 ALTER TABLE `geo_zone` ENABLE KEYS */;


-- Dumping structure for table zara.information
DROP TABLE IF EXISTS `information`;
CREATE TABLE IF NOT EXISTS `information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `top` int(1) NOT NULL DEFAULT '0',
  `top_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.information: 7 rows
DELETE FROM `information`;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` (`information_id`, `bottom`, `sort_order`, `top`, `top_order`, `status`) VALUES
	(3, 0, 3, 0, 0, 1),
	(4, 1, 1, 0, 0, 1),
	(5, 1, 4, 0, 0, 1),
	(6, 1, 2, 0, 0, 1),
	(7, 0, 0, 1, 0, 1),
	(8, 0, 0, 1, 0, 1),
	(9, 0, 0, 1, 0, 1);
/*!40000 ALTER TABLE `information` ENABLE KEYS */;


-- Dumping structure for table zara.information_description
DROP TABLE IF EXISTS `information_description`;
CREATE TABLE IF NOT EXISTS `information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.information_description: 14 rows
DELETE FROM `information_description`;
/*!40000 ALTER TABLE `information_description` DISABLE KEYS */;
INSERT INTO `information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
	(7, 2, 'Dịch vụ', '&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.32 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Một đoạn dịch của H. Rackham năm 1914&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.33 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;&lt;/p&gt;\r\n'),
	(8, 2, 'Hướng dẫn đặt hàng', '&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.32 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Một đoạn dịch của H. Rackham năm 1914&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.33 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;&lt;/p&gt;\r\n'),
	(6, 2, 'Thông tin vận chuyển', '&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.32 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Một đoạn dịch của H. Rackham năm 1914&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.33 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;&lt;/p&gt;\r\n'),
	(4, 2, 'Về chúng tôi', '&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.32 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Một đoạn dịch của H. Rackham năm 1914&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.33 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;&lt;/p&gt;\r\n'),
	(5, 2, 'Các yêu cầu', '&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.32 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Một đoạn dịch của H. Rackham năm 1914&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.33 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;&lt;/p&gt;\r\n'),
	(9, 2, 'Chính sách ưu đãi', '&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.32 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Một đoạn dịch của H. Rackham năm 1914&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.33 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;&lt;/p&gt;\r\n'),
	(3, 2, 'Điều khoản và bảo mật', '&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;font-weight: bold; line-height: normal; margin: 0px 0px 14px; padding: 0px; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;Đoạn 1.10.32 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;font-weight: bold; line-height: normal; margin: 0px 0px 14px; padding: 0px; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;Một đoạn dịch của H. Rackham năm 1914&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;font-weight: bold; line-height: normal; margin: 0px 0px 14px; padding: 0px; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;Đoạn 1.10.33 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;&lt;/p&gt;\r\n'),
	(7, 3, 'Dịch vụ', '&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.32 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Một đoạn dịch của H. Rackham năm 1914&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.33 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;&lt;/p&gt;\r\n'),
	(8, 3, 'Hướng dẫn đặt hàng', '&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.32 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Một đoạn dịch của H. Rackham năm 1914&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.33 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;&lt;/p&gt;\r\n'),
	(6, 3, 'Thông tin vận chuyển', '&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.32 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Một đoạn dịch của H. Rackham năm 1914&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.33 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;&lt;/p&gt;\r\n'),
	(4, 3, 'Về chúng tôi', '&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.32 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Một đoạn dịch của H. Rackham năm 1914&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.33 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;&lt;/p&gt;\r\n'),
	(5, 3, 'Các yêu cầu', '&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.32 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Một đoạn dịch của H. Rackham năm 1914&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.33 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;&lt;/p&gt;\r\n'),
	(9, 3, 'Chính sách ưu đãi', '&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.32 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Một đoạn dịch của H. Rackham năm 1914&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 14px; padding: 0px; font-weight: bold; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; line-height: normal;&quot;&gt;Đoạn 1.10.33 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;&lt;/p&gt;\r\n'),
	(3, 3, 'Điều khoản và bảo mật', '&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;font-weight: bold; line-height: normal; margin: 0px 0px 14px; padding: 0px; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;Đoạn 1.10.32 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;font-weight: bold; line-height: normal; margin: 0px 0px 14px; padding: 0px; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;Một đoạn dịch của H. Rackham năm 1914&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;font-weight: bold; line-height: normal; margin: 0px 0px 14px; padding: 0px; font-size: 11px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;Đoạn 1.10.33 trong &quot;De Finibus Bonorum et Malorum&quot; viết bởi Cicero năm 45 trước Công Nguyên&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;&lt;/p&gt;\r\n');
/*!40000 ALTER TABLE `information_description` ENABLE KEYS */;


-- Dumping structure for table zara.information_to_layout
DROP TABLE IF EXISTS `information_to_layout`;
CREATE TABLE IF NOT EXISTS `information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.information_to_layout: 0 rows
DELETE FROM `information_to_layout`;
/*!40000 ALTER TABLE `information_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `information_to_layout` ENABLE KEYS */;


-- Dumping structure for table zara.information_to_store
DROP TABLE IF EXISTS `information_to_store`;
CREATE TABLE IF NOT EXISTS `information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.information_to_store: 7 rows
DELETE FROM `information_to_store`;
/*!40000 ALTER TABLE `information_to_store` DISABLE KEYS */;
INSERT INTO `information_to_store` (`information_id`, `store_id`) VALUES
	(3, 0),
	(4, 0),
	(5, 0),
	(6, 0),
	(7, 0),
	(8, 0),
	(9, 0);
/*!40000 ALTER TABLE `information_to_store` ENABLE KEYS */;


-- Dumping structure for table zara.language
DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.language: 2 rows
DELETE FROM `language`;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `filename`, `sort_order`, `status`) VALUES
	(2, 'Vietnamese', 'vi', 'vi_VN.UTF-8,vi_VN,vi-vn,vietnamese', 'vn.png', 'vietnamese', 'vietnamese', 0, 1),
	(3, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 'english', 2, 1);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;


-- Dumping structure for table zara.layout
DROP TABLE IF EXISTS `layout`;
CREATE TABLE IF NOT EXISTS `layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.layout: 13 rows
DELETE FROM `layout`;
/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` (`layout_id`, `name`) VALUES
	(1, 'Home'),
	(2, 'Product'),
	(3, 'Category'),
	(4, 'Default'),
	(5, 'Manufacturer'),
	(6, 'Account'),
	(7, 'Checkout'),
	(8, 'Contact'),
	(9, 'Sitemap'),
	(10, 'Affiliate'),
	(11, 'Information'),
	(12, 'Danh mục tin tức'),
	(13, 'Tin chi tiết');
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;


-- Dumping structure for table zara.layout_route
DROP TABLE IF EXISTS `layout_route`;
CREATE TABLE IF NOT EXISTS `layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.layout_route: 13 rows
DELETE FROM `layout_route`;
/*!40000 ALTER TABLE `layout_route` DISABLE KEYS */;
INSERT INTO `layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
	(30, 6, 0, 'account'),
	(17, 10, 0, 'affiliate/'),
	(29, 3, 0, 'product/category'),
	(26, 1, 0, 'common/home'),
	(20, 2, 0, 'product/product'),
	(24, 11, 0, 'information/information'),
	(22, 5, 0, 'product/manufacturer'),
	(23, 7, 0, 'checkout/'),
	(38, 8, 0, 'information/contact'),
	(32, 9, 0, 'information/sitemap'),
	(35, 12, 0, 'news/news_category'),
	(36, 13, 0, 'news/news'),
	(37, 13, 0, '');
/*!40000 ALTER TABLE `layout_route` ENABLE KEYS */;


-- Dumping structure for table zara.length_class
DROP TABLE IF EXISTS `length_class`;
CREATE TABLE IF NOT EXISTS `length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.length_class: 3 rows
DELETE FROM `length_class`;
/*!40000 ALTER TABLE `length_class` DISABLE KEYS */;
INSERT INTO `length_class` (`length_class_id`, `value`) VALUES
	(1, 1.00000000),
	(2, 10.00000000),
	(3, 0.39370000);
/*!40000 ALTER TABLE `length_class` ENABLE KEYS */;


-- Dumping structure for table zara.length_class_description
DROP TABLE IF EXISTS `length_class_description`;
CREATE TABLE IF NOT EXISTS `length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.length_class_description: 6 rows
DELETE FROM `length_class_description`;
/*!40000 ALTER TABLE `length_class_description` DISABLE KEYS */;
INSERT INTO `length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
	(1, 2, 'Centimeter', 'cm'),
	(2, 2, 'Millimeter', 'mm'),
	(3, 2, 'Inch', 'in'),
	(1, 3, 'Centimeter', 'cm'),
	(2, 3, 'Millimeter', 'mm'),
	(3, 3, 'Inch', 'in');
/*!40000 ALTER TABLE `length_class_description` ENABLE KEYS */;


-- Dumping structure for table zara.manufacturer
DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE IF NOT EXISTS `manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.manufacturer: 2 rows
DELETE FROM `manufacturer`;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` (`manufacturer_id`, `name`, `description`, `image`, `sort_order`) VALUES
	(5, 'Phan-nguyen2', '', 'data/logo_Zara.png', 0),
	(9, 'Phan-nguyen', '&lt;p&gt;&lt;strong&gt;Phan Nguyễn&lt;/strong&gt; nổi tiếng với những sản phẩm túi xách rất được giới trẻ ưa chuộng. Màu sắc đẹp, kiểu dáng đa dạng, hợp thời trang giúp &lt;strong&gt;túi xách Lee &amp;amp; Tee&lt;/strong&gt; luôn chinh phục được các khách hàng trẻ và sành điệu. Các sản phẩm của Lee &amp;amp; Tee đều được sản xuất dưới chất liệu simili giả da vô cùng bền chắc và đẹp mắt. Điểm đặc biệt chính của &lt;strong&gt;Lee and Tee&lt;/strong&gt; chính là những thiết kế luôn cập nhập nhanh nhạy xu hướng thời trang trên thế giới. Với phong cách trẻ trung, hiện đại, &lt;strong&gt;Lee &amp;amp; Tee&lt;/strong&gt; sẽ là sự lựa chọn hoàn hảo cho bộ sưu tập túi xách của bạn. Hiện các sản phẩm của thương hiệu &lt;strong&gt;túi du lịch Lee &amp;amp; Tee&lt;/strong&gt; đã có mặt tại trang web mua sắm thời trang hàng đầu ZALORA Việt Nam.&lt;/p&gt;\r\n', 'data/logo_Zara.png', 0);
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;


-- Dumping structure for table zara.manufacturer_to_store
DROP TABLE IF EXISTS `manufacturer_to_store`;
CREATE TABLE IF NOT EXISTS `manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.manufacturer_to_store: 2 rows
DELETE FROM `manufacturer_to_store`;
/*!40000 ALTER TABLE `manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
	(5, 0),
	(9, 0);
/*!40000 ALTER TABLE `manufacturer_to_store` ENABLE KEYS */;


-- Dumping structure for table zara.news
DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `date_available` date NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `comment` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table zara.news: 12 rows
DELETE FROM `news`;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` (`news_id`, `manufacturer_id`, `image`, `date_available`, `sort_order`, `comment`, `approved`, `status`, `date_added`, `date_modified`, `viewed`) VALUES
	(1, 0, 'data/sanpham1.jpg', '2013-05-19', 1, 1, 1, 1, '2013-05-21 00:20:55', '2013-05-22 09:07:12', 6),
	(2, 9, 'data/sanpham1.jpg', '2013-05-20', 1, 1, 1, 1, '2013-05-21 23:32:51', '2013-05-27 23:41:54', 8),
	(3, 0, 'data/anh1.jpg', '2013-05-22', 1, 1, 1, 1, '2013-05-23 23:58:22', '2013-05-29 00:57:57', 4),
	(4, 9, '', '2013-05-27', 1, 1, 1, 1, '2013-05-28 18:18:55', '0000-00-00 00:00:00', 2),
	(5, 0, '', '2013-05-27', 1, 1, 1, 1, '2013-05-28 18:21:51', '0000-00-00 00:00:00', 1),
	(6, 0, '', '2013-05-27', 1, 1, 1, 1, '2013-05-28 18:22:41', '0000-00-00 00:00:00', 0),
	(7, 0, '', '2013-05-27', 1, 1, 1, 1, '2013-05-28 18:23:20', '0000-00-00 00:00:00', 1),
	(8, 0, '', '2013-05-27', 1, 1, 1, 1, '2013-05-28 18:24:04', '0000-00-00 00:00:00', 3),
	(9, 0, '', '2013-05-27', 1, 1, 1, 1, '2013-05-28 18:24:35', '0000-00-00 00:00:00', 3),
	(10, 0, '', '2013-05-27', 1, 1, 1, 1, '2013-05-28 18:25:16', '0000-00-00 00:00:00', 4),
	(11, 0, '', '2013-05-27', 1, 1, 1, 1, '2013-05-28 18:26:11', '0000-00-00 00:00:00', 19),
	(12, 0, '', '2013-05-27', 1, 1, 1, 1, '2013-05-28 18:26:46', '0000-00-00 00:00:00', 30);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;


-- Dumping structure for table zara.news_category
DROP TABLE IF EXISTS `news_category`;
CREATE TABLE IF NOT EXISTS `news_category` (
  `news_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_id` int(11) DEFAULT '0',
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(4) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`news_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table zara.news_category: 2 rows
DELETE FROM `news_category`;
/*!40000 ALTER TABLE `news_category` DISABLE KEYS */;
INSERT INTO `news_category` (`news_category_id`, `theme_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
	(1, 0, '', 0, 1, 1, 4, 1, '2013-05-20 23:56:00', '2013-05-23 23:57:18'),
	(2, 1, '', 0, 0, 1, 5, 1, '2013-05-23 23:20:14', '2013-05-29 00:17:44');
/*!40000 ALTER TABLE `news_category` ENABLE KEYS */;


-- Dumping structure for table zara.news_category_description
DROP TABLE IF EXISTS `news_category_description`;
CREATE TABLE IF NOT EXISTS `news_category_description` (
  `news_category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` text COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`news_category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table zara.news_category_description: 2 rows
DELETE FROM `news_category_description`;
/*!40000 ALTER TABLE `news_category_description` DISABLE KEYS */;
INSERT INTO `news_category_description` (`news_category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
	(1, 2, 'Tin nóng hàng ngày', '', '', ''),
	(2, 2, 'Báo chí / Truyền thông', '', '', '');
/*!40000 ALTER TABLE `news_category_description` ENABLE KEYS */;


-- Dumping structure for table zara.news_category_to_layout
DROP TABLE IF EXISTS `news_category_to_layout`;
CREATE TABLE IF NOT EXISTS `news_category_to_layout` (
  `news_category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`news_category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table zara.news_category_to_layout: 0 rows
DELETE FROM `news_category_to_layout`;
/*!40000 ALTER TABLE `news_category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_category_to_layout` ENABLE KEYS */;


-- Dumping structure for table zara.news_category_to_store
DROP TABLE IF EXISTS `news_category_to_store`;
CREATE TABLE IF NOT EXISTS `news_category_to_store` (
  `news_category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`news_category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table zara.news_category_to_store: 2 rows
DELETE FROM `news_category_to_store`;
/*!40000 ALTER TABLE `news_category_to_store` DISABLE KEYS */;
INSERT INTO `news_category_to_store` (`news_category_id`, `store_id`) VALUES
	(1, 0),
	(2, 0);
/*!40000 ALTER TABLE `news_category_to_store` ENABLE KEYS */;


-- Dumping structure for table zara.news_comment
DROP TABLE IF EXISTS `news_comment`;
CREATE TABLE IF NOT EXISTS `news_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(96) COLLATE utf8_bin NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`comment_id`),
  KEY `product_id` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table zara.news_comment: 0 rows
DELETE FROM `news_comment`;
/*!40000 ALTER TABLE `news_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_comment` ENABLE KEYS */;


-- Dumping structure for table zara.news_description
DROP TABLE IF EXISTS `news_description`;
CREATE TABLE IF NOT EXISTS `news_description` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `short_description` text COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`news_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table zara.news_description: 12 rows
DELETE FROM `news_description`;
/*!40000 ALTER TABLE `news_description` DISABLE KEYS */;
INSERT INTO `news_description` (`news_id`, `language_id`, `name`, `short_description`, `description`, `meta_description`, `meta_keyword`) VALUES
	(1, 2, 'Sale off 50% hàng Lascote', 'ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;&quot;&gt;ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…&lt;/span&gt;&lt;/p&gt;\r\n', '', ''),
	(2, 2, 'Zara đại hạ giá', 'ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;&quot;&gt;ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…ZALORA tổ chức 2 tiếng Flash Sale: giảm 20% tất cả sản phẩm từ 1h - 3h trưa ngày 26/02/13. Kỷ niệm ngày sinh nhật tròn 1 tuổi, ZALORA.VN tổ chức 2 giờ Flash Sale duy nhất, giảm 20% tất cả các sản phẩm trên website, bao gồm các sản phẩm đang giảm giá từ 1h – 3h. Đánh dấu chặng đường phát triển 1 năm, ZALORA Việt Nam gửi đến quý khách hàng “Tuần lễ siêu giảm giá” với sự tham gia của các thương hiệu thời trang nổi tiếng trong và ngoài nước như: Gosto, Sidewalk, Zilandi, Yves Saint Laurent, Something Borrowed, Christion Breton…&lt;/span&gt;&lt;/p&gt;\r\n', '', ''),
	(3, 2, 'Testing', 'sdgsdgsdgds sdgsdg sdg', '&lt;p&gt;sdgsdgsđsgsdgsdsdgsd&lt;span style=&quot;font-size: 13px;&quot;&gt;sdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsdsdgsdgsđsgsdgsdsdgsd&lt;/span&gt;&lt;/p&gt;\r\n', '', ''),
	(4, 2, 'Bí quyết \'tôn dáng\' cùng kẻ sọc', 'Họa tiết  kẻ sọc là một trong những biện pháp hiệu quả nhất để khắc phục nhược điểm cơ thể hơi tròn hoặc thiếu cân. Ra đời từ rất lâu,  kẻ sọc luôn có chỗ đứng riêng trong làng thời trang, chưa bao giờ lỗi mốt  nhờ sự đơn giản, cổ điển và trẻ trung, phù hợp hầu hết với tất cả mọi người. Hè này những sọc kẻ trở lại tiếp tục ngự trị bảng xu hướng họa tiết.', '&lt;div class=&quot;news-itemscope&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; padding: 0px 10px; position: relative; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n&lt;div style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot;&gt;&lt;span class=&quot;txt_sapo_news_details&quot; itemprop=&quot;description&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(0, 0, 0); text-align: justify; line-height: 20px; font-weight: 700; margin-right: 10px; padding-top: 5px; display: block;&quot;&gt;&lt;strong style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: 700;&quot;&gt;Họa tiết sọc là một trong những biện pháp hiệu quả nhất để khắc phục nhược điểm cơ thể hơi tròn hoặc thiếu cân.&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;baiviet-note-absolute&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; float: right; margin: 5px 5px 0px 0px; width: 335px; background-color: rgb(249, 225, 233); background-position: initial initial; background-repeat: initial initial;&quot;&gt;\r\n&lt;div class=&quot;bl&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-image: url(http://hn.eva.vn/images/bl.gif); background-color: rgb(249, 225, 233); background-position: 0px 100%; background-repeat: no-repeat no-repeat;&quot;&gt;\r\n&lt;div class=&quot;br&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-image: url(http://hn.eva.vn/images/br.gif); background-position: 100% 100%; background-repeat: no-repeat no-repeat;&quot;&gt;\r\n&lt;div class=&quot;tl&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-image: url(http://hn.eva.vn/images/tl.gif); background-position: 0px 0px; background-repeat: no-repeat no-repeat;&quot;&gt;\r\n&lt;div class=&quot;tr&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-image: url(http://hn.eva.vn/images/tr.gif); text-align: justify; padding: 5px 10px; background-position: 100% 0px; background-repeat: no-repeat no-repeat;&quot;&gt;\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px;&quot;&gt;&lt;a href=&quot;http://eva.vn/thoi-trang-c36.html&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(0, 0, 204); text-decoration: none;&quot;&gt;Thời trang&lt;/a&gt; Eva cập nhật những mẫu &lt;a href=&quot;http://eva.vn/thoi-trang-cong-so-c36e994.html&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(0, 0, 204); text-decoration: none;&quot; title=&quot;thoi trang cong so&quot;&gt;thời trang công sở&lt;/a&gt;mới nhất, là nơi bạn thể hiện phong cách của chính mình, đồng thời cập nhật những xu hướng &lt;a href=&quot;http://eva.vn/xu-huong-thoi-trang-xuan-he-2013-c36e1435.html&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(0, 0, 204); text-decoration: none;&quot; title=&quot;thoi trang he&quot;&gt;thời trang hè&lt;/a&gt;&lt;strong style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot;&gt;, &lt;a href=&quot;http://eva.vn/ao-so-mi-nu-c36e878.html&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(0, 0, 204); text-decoration: none;&quot; title=&quot;ao so mi nu&quot;&gt;áo sơ mi nữ&lt;/a&gt;, &lt;a href=&quot;http://eva.vn/chan-vay-dep-c36e970.html&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(0, 0, 204); text-decoration: none;&quot; title=&quot;vay dep&quot;&gt;váy đẹp&lt;/a&gt;&lt;/strong&gt; đang cực hot, &lt;a href=&quot;http://eva.vn/tu-van-thoi-trang-c36e947.html&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(0, 0, 204); text-decoration: none;&quot;&gt;tư vấn mặc đẹp&lt;/a&gt; cho chị em&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;clear&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; clear: both; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;content_details&quot; id=&quot;baiviet-container&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; font-weight: normal; line-height: 18px; padding-left: 12px; display: block; float: left; width: 551px; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px;&quot;&gt;Họa tiết&amp;nbsp; kẻ sọc là một trong những biện pháp hiệu quả nhất để khắc phục nhược điểm cơ thể hơi tròn hoặc thiếu cân. Ra đời từ rất lâu,&amp;nbsp; kẻ sọc luôn có chỗ đứng riêng trong làng thời trang, chưa bao giờ lỗi mốt&amp;nbsp; nhờ sự đơn giản, cổ điển và trẻ trung, phù hợp hầu hết với tất cả mọi người. Hè này những sọc kẻ trở lại tiếp tục ngự trị bảng xu hướng họa tiết.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px;&quot;&gt;Sọc kẻ ngang, dọc hay sọc kẻ chéo, màu sắc cũng như bố cục, độ lớn của những sọc kẻ đem lại các hiệu quả khác nhau cho trang phục. Vì vậy hãy cùng tham khảo một vài mẹo nhỏ&amp;nbsp; Eva gợi ý để cùng tìm ra bí quyết mặc đẹp, tôn dáng cùng họa tiết cổ điển này.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px;&quot;&gt;&lt;strong style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot;&gt;&quot;Trên ngang, dưới dọc&quot; cho nàng tròn trịa&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px;&quot;&gt;Đừng để những định kiến về các đường ngang khiến những cô nàng tròn trịa tránh xa các sọc kẻ ngang. Vì thực tế với các sọc ngang có bố cục hợp lý lại có tác dụng tôn dáng chung cho cả nàng cò hương lẫn nàng tròn trịa. Các đường sọc ngang với lợi thế tạo hiệu ứng ảo giác&amp;nbsp;đường cong ảo giấu dáng cho nàng tròn trịa. Các bạn mũm mĩm dù có vòng 2 không được thon gọn mấy&amp;nbsp;thì một chiếc áo sọc ngang, nền tối sẽ&amp;nbsp;khiến người đối diện không thể nhận ra nhược điểm này với hiệu ứng ảo giác làm hoa mắt.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Bí quyết \'tôn dáng\' cùng kẻ sọc - 1&quot; class=&quot;news-image&quot; height=&quot;500&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369714961-_03.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; width=&quot;500&quot; /&gt;&lt;br style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot; /&gt;\r\nCác đường sọc ngang với lợi thế tạo hiệu ứng ảo giác&amp;nbsp;đường cong ảo giấu dáng cho nàng tròn trịa&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Bí quyết \'tôn dáng\' cùng kẻ sọc - 2&quot; class=&quot;news-image&quot; height=&quot;500&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369714961-_05.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; width=&quot;500&quot; /&gt;&lt;br style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot; /&gt;\r\nVòng 2 không được thon gọn mấy&amp;nbsp;thì một chiếc áo sọc ngang, nền tối sẽ&amp;nbsp;khiến người đối diện không thể nhận ra nhược điểm này với hiệu ứng ảo giác làm hoa mắt&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px;&quot;&gt;Và điều quang trọng là nguyên tắc bố cục sọc kẻ: &quot;trên NGANG, dưới DỌC&quot;. Những chiếc quần sọc kẻ ngang với phần hông ôm sát như vậy, sẽ tôn lên rõ ràng những đường cong của bạn. Chúng giúp cô nàng mảnh mai trở nên gợi cảm&amp;nbsp;hơn, nhưng sẽ tô đậm sự quá khổ với&amp;nbsp;những bạn gái có&amp;nbsp;dáng hình quả lê. Vì vậy hãy chọn những chiếc quần kẻ dọc.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; text-align: center;&quot;&gt;&lt;img alt=&quot;Bí quyết \'tôn dáng\' cùng kẻ sọc - 3&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369716410-_08.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Bí quyết \'tôn dáng\' cùng kẻ sọc - 4&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369716410-_07.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;br style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot; /&gt;\r\nNguyên tắc bố cục sọc kẻ: &quot;trên NGANG, dưới DỌC&quot;&lt;br style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot; /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px;&quot;&gt;Ngoài ra các đường kẻ chéo thân, hay các bố cục kẻ sắp đặt chéo, dọc, ngang pha trộn hợp lý giúp các nàng mập giấu dáng hoàn hảo. Các đường kẻ sọc vừa phải là lựa chọn hoàn hảo cho các nàng, các sọc kẻ quá to sẽ làm tăng bề ngang về mặt thị giác.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Bí quyết \'tôn dáng\' cùng kẻ sọc - 5&quot; class=&quot;news-image&quot; height=&quot;500&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369714961-_01.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; width=&quot;500&quot; /&gt;&lt;br style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot; /&gt;\r\nCác đường kẻ chéo thân tạo cảm giác thoát dáng cho nàng mập&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; text-align: center;&quot;&gt;&lt;img alt=&quot;Bí quyết \'tôn dáng\' cùng kẻ sọc - 6&quot; class=&quot;news-image&quot; height=&quot;500&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369714961-_02.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; width=&quot;500&quot; /&gt;&lt;br style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot; /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Bí quyết \'tôn dáng\' cùng kẻ sọc - 7&quot; class=&quot;news-image&quot; height=&quot;500&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369714961-_04.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; width=&quot;500&quot; /&gt;&lt;br style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot; /&gt;\r\nCác bố cục kẻ sắp đặt chéo, dọc, ngang pha trộn hợp lý giúp các nàng mập giấu dáng hoàn hảo&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px;&quot;&gt;Lựa chọn phom dáng trang phục kẻ sọc cũng ảnh hưởng đến hiệu quả giấu dáng của họa tiết này. Nếu bạn có phần bụng không săn chắc, hãy chọn kiểu áo váy rộng vừa phải, các đường sọc ngang không nên quá sát nhau, tạo hiệu quả che giấu rất tốt. Vòng 2 ngấn mỡ thì hãy tránh xa những kiểu váy áo ôm, dù ở bất cứ màu sắc hay họa tiết nào.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Bí quyết \'tôn dáng\' cùng kẻ sọc - 8&quot; class=&quot;news-image&quot; height=&quot;500&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369714961-_06.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; width=&quot;500&quot; /&gt;&lt;br style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot; /&gt;\r\nCác phom dáng trang phục thoải mái cho nàng tròn trịa&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px;&quot;&gt;&lt;strong style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot;&gt;Nàng có hương với sọc kẻ dọc&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px;&quot;&gt;Các đường sọc ngang tất nhiên luôn được nàng cò hướng ưu tiên nhưng cũng đừng bỏ qua các đường kẻ dọc. Nếu các đường sọc ngang với lợi thế tạo hiệu ứng ảo giác&amp;nbsp;đường cong ảo giúp nàng gầy gò trông tròn trịa hơn, thì các đường sọc dọc to ở thân trên cũng có tác dụng giúp gia tăng thể tích về mặt thị giác. Khi bạn sở hữu&amp;nbsp;vòng 1&amp;nbsp;hơi phẳng, nhưng tự tin với những đường cong phần dưới, hãy chọn kiểu&amp;nbsp;áo sọc dọc cùng các dạng&amp;nbsp;quần, chân váy màu sắc. Với người nhỏ bạn nên chọn&amp;nbsp; váy áo nền sáng màu, sọc đậm tạo hiệu quả đầy đặn hơn.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Bí quyết \'tôn dáng\' cùng kẻ sọc - 9&quot; class=&quot;news-image&quot; height=&quot;500&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369716961-_a3.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; width=&quot;500&quot; /&gt;&lt;br style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot; /&gt;\r\nCác đường sọc dọc to cũng có tác dụng giúp gia tăng thể tích về mặt thị giác&lt;br style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot; /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Bí quyết \'tôn dáng\' cùng kẻ sọc - 10&quot; class=&quot;news-image&quot; height=&quot;500&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369719195-_a5.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; width=&quot;500&quot; /&gt;&lt;br style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot; /&gt;\r\nVới người nhỏ bạn nên chọn váy áo nền sáng màu, sọc đậm tạo hiệu quả đầy đặn hơn.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px;&quot;&gt;Để tăng thêm hiệu ứng thị giác tạo đường cong ảo của các sọc kẻ, nàng cò hương nên ưu tiên chọn những trang phục thắt eo cao, xếp ly xòe hông: váy xòe chữ A, kiểu váy baby doll... hay xông xênh, đầy đặn hơn với những chiếc váy suông xòe kẻ ngang, kẻ dọc dập ly...&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Bí quyết \'tôn dáng\' cùng kẻ sọc - 11&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369716410-_a1.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Bí quyết \'tôn dáng\' cùng kẻ sọc - 12&quot; class=&quot;news-image&quot; height=&quot;500&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369718127-_a7.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; width=&quot;500&quot; /&gt;&lt;br style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot; /&gt;\r\nĐể tăng thêm hiệu ứng thị giác tạo đường cong ảo của các sọc kẻ, nàng cò hương nên ưu tiên chọn những trang phục thắt eo cao, xếp ly xòe hông&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Bí quyết \'tôn dáng\' cùng kẻ sọc - 13&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369719278-Street-Style-7.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Bí quyết \'tôn dáng\' cùng kẻ sọc - 14&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369718127-_a6.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', ''),
	(5, 2, 'Sơ mi mùa hè', 'Môi trường công sở ngày càng năng động, cởi mở giúp các quý cô thoải mái hơn trong việc lựa chọn quần áo. Công sở giờ đây không chỉ đóng thùng với sơ mi, quần âu mà có cơ hội tiếp cận hơn với nhiều kiểu trang phục,  phong cách khác nhau. Tuy nhiên dù làm việc trong môi trường nào thì yếu tố thanh lịch, chỉn chu cũng phải được đề cao. Với những ngày nắng nóng như thế này, các cô nàng chỉ ao ước được tung tăng với sooc, với váy áo tung xòe, áo áo ba lỗ, áo lửng phóng khoáng đến công sở thay vì chiếc sơ mi khô cứng, kín đáo. Nhiều người ái ngại mặc sơ mi vì chất liệu cứng cáp, kiểu dáng lại nghiêm túc tạo nên cảm giác bức ', '&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Môi trường công sở ngày càng năng động, cởi mở giúp các quý cô thoải mái hơn trong việc lựa chọn quần áo. Công sở giờ đây không chỉ đóng thùng với sơ mi, quần âu mà có cơ hội tiếp cận hơn với nhiều kiểu trang phục,&amp;nbsp; phong cách khác nhau. Tuy nhiên dù làm việc trong môi trường nào thì yếu tố thanh lịch, chỉn chu cũng phải được đề cao. Với những ngày nắng nóng như thế này, các cô nàng chỉ ao ước được tung tăng với sooc, với váy áo tung xòe, áo áo ba lỗ, áo lửng phóng khoáng đến công sở thay vì chiếc sơ mi khô cứng, kín đáo. Nhiều người ái ngại mặc sơ mi vì chất liệu cứng cáp, kiểu dáng lại nghiêm túc tạo nên cảm giác bức bí. Nhưng chưa hẳn đâu nhé. Chỉ cần khéo léo chọn chất liệu, kết hợp với màu sắc, kiểu dáng bạn sẽ có cơ hội bung tỏa mọi cảm xúc mát dịu ngày hè đấy.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Dưới đây Eva sẽ giới thiệu đến bạn những mẫu sơ mi vô cùng mát mẻ trong ngày hè nóng nực.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot;&gt;1. Sơ mi voan - ren&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Các chất liệu xuyên thấu rất thích hợp trong mùa hè, chúng sẽ đem đến cho bạn cảm giác mát mẻ tới tối đa. Khi chọn sơ mi voan hay ren bạn nên lưu ý không nên chọn áo quá mỏng, để lộ quá rõ nội y bên trong sẽ rất phản cảm. Cần tiết chế các khoảng hở mình trở nên thanh lịch và tinh tế hơn nhé.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 1&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-2.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 2&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-2a.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Sơ mi chất liệu xuyên thấu thổi bay cái nắng oi bức của mùa hè. Kiểu áo với hoa văn trang trí sẽ khéo léo che các đường cong nhạy cảm, giúp bạn trông thanh lịch hơn&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 3&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-3.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Chất liệu mỏng nhẹ nhàng tạo cảm giác \'mặc cũng như không\'&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 4&quot; class=&quot;news-image&quot; height=&quot;500&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-4.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; width=&quot;500&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Những chiếc áo sơ mi ren trắng như một luồng gió mát, giải phóng mồ hôi nhễ nhại&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 5&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-5.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 6&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-5a.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Áo voan với họa tiết hoa nhí bắt mắt cũng rất thoáng mắt và mát mẻ&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 7&quot; class=&quot;news-image&quot; height=&quot;500&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-5b.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; width=&quot;500&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot;&gt;2. Áo dáng thụng, oversize&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Vào mùa hè, bạn không nên mặc áo quá bó sát vì chúng sẽ không thể giúp bạn giải phóng mồ hôi trên cơ thể. Mồ hôi tích tụ trên da sẽ không tốt cho làn da của bạn, gây bí lỗ chân lông. Thay vì thế, một chiếc áo oversize sẽ là sự lựa chọn tự do và phóng khoáng nhất.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 8&quot; class=&quot;news-image&quot; height=&quot;500&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-6.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; width=&quot;500&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Kiểu áo dáng thụng chất liệu nhẹ nhàng giúp bạn giải phóng mồ hôi một cách dễ dàng&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 9&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-7.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Bên cạnh đó, nó còn thể hiện phong cách bụi bặm, cá tính, mang đến hơi thở mới cho thời trang công sở&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 10&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-8.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 11&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-9.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Ngoài quần jean thì chân váy juyp cũng rất thích hợp với kiểu áo phóng khoáng này nhé&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 12&quot; class=&quot;news-image&quot; height=&quot;500&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-10.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; width=&quot;500&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot;&gt;3. Áo tông màu mát lạnh&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Một chiếc áo tông màu nhã nhặn, dịu mát không chỉ giúp bản thân bạn cảm thấy mát mẻ mà những người xung quanh cũng rất dễ chịu. Những tông màu thích hợp nhất cho mùa hè bao gồm các tông màu xanh hay vàng chanh, màu pastel dịu ngọt.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 13&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-11.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 14&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-12.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Sơ mi vàng chanh tạo cảm giác khoan khoái những ngay hè cho không chỉ bạn mà cả với những người xung quanh&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 15&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-13.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 16&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-14.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Sơ mi với họa tiết mát mắt kết hợp với chân váy xanh dương tạo hiệu ứng mát mẻ&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;3 mẫu sơ mi \'thổi bay\' nắng nóng - 17&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369712242-15.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n', '', ''),
	(6, 2, '&quot;Đêm hội chân dài 7&quot; bị xử phạt 35 triệu đồng', 'Thanh tra Sở VH-TT-DL TPHCM đã ra Quyết định Xử phạt vi phạm hành chính về lĩnh vực văn hóa, thể thao và du lịch (áp dụng theo Nghị định số 75/2010/NĐ-CP), đối với Công ty TNHH Quốc tế Thời trang Vệ Nữ (Venus) do ông Nguyễn Khắc Tiệp làm Chủ tịch Hội đồng thành viên, với mức phạt tổng cộng 35 triệu đồng cho những hành vi vi phạm: Quảng cáo rượu có độ cồn từ 30 độ trở lên (20 triệu đồng); tự tiện thay đổi trang phục khác với trang phục đã được cơ quan có thẩm quyền duyệt và cho phép (5 triệu đồng); tự tiện thay đổi nội dung chương trình trình diễn thời trang sau khi đã được cấp giấy phép (10 triệu đồng). Thêm vào đó, sẽ tịch thu và tiêu hủy 10 ly quảng cáo cho rượu Mart', '&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Thanh tra Sở VH-TT-DL TPHCM đã ra Quyết định Xử phạt vi phạm hành chính về lĩnh vực văn hóa, thể thao và du lịch (áp dụng theo Nghị định số 75/2010/NĐ-CP), đối với Công ty TNHH Quốc tế Thời trang Vệ Nữ (Venus) do ông Nguyễn Khắc Tiệp làm Chủ tịch Hội đồng thành viên, với mức phạt tổng cộng 35 triệu đồng cho những hành vi vi phạm: Quảng cáo rượu có độ cồn từ 30 độ trở lên (20 triệu đồng); tự tiện thay đổi trang phục khác với trang phục đã được cơ quan có thẩm quyền duyệt và cho phép (5 triệu đồng); tự tiện thay đổi nội dung chương trình trình diễn thời trang sau khi đã được cấp giấy phép (10 triệu đồng). Thêm vào đó, sẽ tịch thu và tiêu hủy 10 ly quảng cáo cho rượu Martell.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;&amp;quot;Đêm hội chân dài 7&amp;quot; bị xử phạt 35 triệu đồng - 1&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369724123-muc-phat-dem-hoi-chan-dai-7-co-the-len-den-hang-tram-trieu-dong.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Ông Trần Minh Phương, Trưởng phòng Quản lý Nghệ thuật Sở VH-TT-DL TPHCM, cho biết thêm: “Thanh tra sở đề xuất UBND TPHCM - Hội đồng xử lý vi phạm hành chính trong lĩnh vực văn hóa xã hội, xử phạt tội vi phạm trong việc in thiệp mời có hình ảnh phản cảm và quảng cáo rượu. Hình thức phạt này sẽ cao hơn. Các hành vi vi phạm của những người mẫu tham gia chương trình vẫn đang tiếp tục được Thanh tra sở xử lý. Hiện nay, Sở VH-TT-DL TPHCM vẫn đang cân nhắc thêm hình thức phạt bổ sung (chế tài bằng việc rút giấy phép vĩnh viễn hay có thời hạn)”.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Chương trình Đêm hội chân dài 7 diễn ra tối 20-5 tại Trung tâm Triển lãm và Hội nghị Quốc tế (SECC), quận 7, với các bộ sưu tập của ba nhà thiết kế. Tuy nhiên, trong phần biểu diễn bộ sưu tập của nhà thiết kế Minh Tú, đã có nhiều trang phục được tự ý đưa lên sàn diễn mà chưa được Sở VH-TT-DL TPHCM duyệt. Trước đó, Sở VH-TT-DL TPHCM cũng đã nhắc nhở công ty tổ chức chương trình (Venus) về thiệp mời in hình các người mẫu phản cảm.&lt;/p&gt;\r\n', '', ''),
	(7, 2, ' Lãng mạn ở biển Hi Eva: Hành trình của \'thời trang đi\'', 'Ai đó đã nói nhỉ? &quot;Cuộc đời là những chuyến đi dài bất tận&quot;. Ta đang có một cuộc đời. Ta đi. Đi chứ. Đã đi nhiều. Đang đi. Và, sẽ còn đi nữa. Các bạn của ta, áo - váy - son môi - máy ảnh... có mệt không, khi rong ruổi cùng ta trên những cuộc hành trình? Ta là một cô gái. Một cô gái đơn thuần. Không nhiều bản lĩnh, cũng chẳng thừa thông minh. Ta không thể đi nếu không có các bạn, bên ta, ngày và đêm.', '&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Ai đó đã nói nhỉ? &quot;Cuộc đời là những chuyến đi dài bất tận&quot;. Ta đang có một cuộc đời. Ta đi. Đi chứ. Đã đi nhiều. Đang đi. Và, sẽ còn đi nữa. Các bạn của ta, áo - váy - son môi - máy ảnh... có mệt không, khi rong ruổi cùng ta trên những cuộc hành trình? Ta là một cô gái. Một cô gái đơn thuần. Không nhiều bản lĩnh, cũng chẳng thừa thông minh. Ta không thể đi nếu không có các bạn, bên ta, ngày và đêm.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Hà Giang mùa thu lạnh lắm, từng cái lùa tay vô tư của gió cũng đủ khiến thân hình mảnh dẻ co ro, cài vội chiếc cúc áo cardigan tuột khuyết trước ngực.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Mùa đông, Tam Đảo ủ ê trong sương giá, đôi chân &quot;cậy&quot; mình được ủ ấm trong giày oxford da nên nhẩn nha bước chậm.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Hè về, nắng Cát Bà nhuộm vàng những cung đường thơ mộng, lặng lẽ uốn mình theo dáng núi đá liêu diêu. Quần sooc, áo denim, giày toms nhắc cô gái &quot;chạy đi, bước đi, khám phá đi, đừng bỏ lỡ một giây một khắc nào được tung tẩy, tự do và ùa ã giữa đất trời&quot;.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Xuân về trên cao nguyên Mộc Châu, thanh lạnh và tinh khôi lắm. Váy xòe hoa lạc bước trong vườn mận bông nở trắng cành. Hoa mận vương trên tóc, vương trên dấu son hồng, vương cả vào tâm hồn đa sầu, đa cảm....&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Vâng. Ta đã đi. Đang đi. Áo ơi, váy ơi, túi xách Hermes, giày toms... Cám ơn vì đã ở bên ta, đồng hành cùng ta. Chúng ta chưa dừng lại. Cùng đi, cùng sống và cùng cảm nhận nhé!&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Hi Eva: Hành trình của \'thời trang đi\' - 1&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369640571-1c7eaa879f2c24c0b060f6638d7af084.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Lang thang trên con phố nhỏ...&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Hi Eva: Hành trình của \'thời trang đi\' - 2&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369640571-3e340d4f632130a3dd729782d1809e50.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Những chuyến đi sẽ chẳng bao giờ dừng lại...&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Hi Eva: Hành trình của \'thời trang đi\' - 3&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369640571-bd99940e3f7cc983283ffef8f945e094.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Một thoáng mơ màng nơi trời Âu.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Hi Eva: Hành trình của \'thời trang đi\' - 4&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369640571-f532ba703ab071b3a3f0466fb3684063.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n', '', ''),
	(8, 2, 'Mừng 1-6 cho cả nhà đều đẹp', 'Những ngày lễ lớn ngoài mang một ý một nghĩa riêng nhất định thì đó cũng là dịp bạn dành thời gian bên gia đình, thắt chặt tình cảm giữa các thành viên. Không gì thú vị bằng khi cả nhà cùng dạo phố trong những bộ trang phục thời trang và nhận được ánh nhìn ngưỡng mộ của nhiều người. ZALORA Việt Nam tự hào gửi đến bạn những gợi ý trang phục đã được tuyển chọn từ chính tay đội ngũ stylish giàu kinh nghiệm, chắc chắn sẽ giúp bạn thêm nét tươi mới và sinh động cho gia đình nhỏ của mình.', '&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Những ngày lễ lớn ngoài mang một ý một nghĩa riêng nhất định thì đó cũng là dịp bạn dành thời gian bên gia đình, thắt chặt tình cảm giữa các thành viên. Không gì thú vị bằng khi cả nhà cùng dạo phố trong những bộ trang phục thời trang và nhận được ánh nhìn ngưỡng mộ của nhiều người. &lt;a href=&quot;http://www.zalora.vn/?wt_tw=vn.Traffic%20Websites.Eva.220x900_Mix_Mix.220x900.220x900_Mix_Mix_Mix_2013052801_LP000000_NA%26utm_source=Eva%26utm_medium=Traffic%20Websites%26utm_campaign=220x900_Mix_Mix%26utm_content=220x900_Mix_Mix_Mix_2013052801_LP000000_NA&quot; rel=&quot;nofollow&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(0, 0, 255); text-decoration: none;&quot; target=&quot;_blank&quot;&gt;ZALORA Việt Nam&lt;/a&gt; tự hào gửi đến bạn những gợi ý trang phục đã được tuyển chọn từ chính tay đội ngũ stylish giàu kinh nghiệm, chắc chắn sẽ giúp bạn thêm nét tươi mới và sinh động cho gia đình nhỏ của mình.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot;&gt;Cho mẹ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Mừng 1/6 - Cho cả nhà đều đẹp! - 1&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369706991-1-6-cho-ca-nha-deu-dep--3-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Do tiết trời mùa hè khá oi bức, vì vậy thời trang tối giản sẽ là phong cách phù hợp cho bạn. Tiết chế tối đa những chi tiết rườm rà của bộ trang phục, bạn chỉ nên chọn một trong số những “item” để làm điểm nhấn tổng thể. Có thể là chiếc áo kiểu phối họa tiết chấm bi thời thượng hay &lt;a href=&quot;http://www.zalora.vn/women/trang-phuc/dam-dao-pho/?wt_tw=vn.Traffic%20Websites.Eva.220x900_W_Accessories.220x900.220x900_W_Apparel_Dresses_2013052802_LP010313_NA%26utm_source=Eva%26utm_medium=Traffic%20Websites%26utm_campaign=220x900_W_Accessories%26utm_content=220x900_W_Apparel_Dresses_2013052802_LP010313_NA&quot; rel=&quot;nofollow&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(0, 0, 255); text-decoration: none;&quot; target=&quot;_blank&quot;&gt;chiếc đầm voan cổ điển&lt;/a&gt; mang sắc cam dịu ngọt. Ngoài ra, một chiếc Clutch sáng màu hay đôi giày phối nhựa trong suốt cũng sẽ là những yếu tố thu hút giúp cho bộ trang phục tối giản thêm phần nổi bật.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot;&gt;Cho ba&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Mừng 1/6 - Cho cả nhà đều đẹp! - 2&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369706991-1-6-cho-ca-nha-deu-dep--1-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Áo sơ mi không hẳn chỉ dành cho môi trường công sở. Để tạo phong cách dạo phố thoải mái và tiện dụng cho anh ấy, bạn chỉ cần “mix” chúng cùng chiếc quần Jeans hay quần Kaki có phom suông vừa theo dáng người để tạo sự trẻ trung. Thêm Cardigan khoác ngoài hay áo Blazer tay lửng phủi bụi kết hợp cùng giày buộc dây phối da hiện đại chắc chắn sẽ đem lại vẻ ngoài nam tính và phong cách cho phái mạnh.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot;&gt;Cho bé&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Mừng 1/6 - Cho cả nhà đều đẹp! - 3&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369706991-1-6-cho-ca-nha-deu-dep--2-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Khi chọn đồ cho bé, chất vải co giãn tạo sự thoải mái và thấm hút mồ hôi luôn là điều ưu tiên hàng đầu. Bên cạnh đó, kiểu dáng và màu sắc tươi sáng của trang phục cũng không kém phần quan trọng. Thời trang cho bé ngày nay rất được các nhãn hiệu thiết kế quan tâm chăm chút và sành điệu không thua kém ba mẹ. Những chiếc váy, đầm, áo thun, áo sơ mi, quần Jeans với màu sắc bắt mắt cùng kiểu dáng đáng yêu chắc chắn sẽ là món quà hoàn hảo dành tặng cho thiên thần nhỏ của gia đình bạn.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Hãy cùng ZALORA Việt Nam dành tặng những niềm vui và điều tốt đẹp nhất cho gia đình của bạn trong ngày Quốc tế thiếu nhi đặc biệt này. Truy cập ngay ZALORA.VN, để đón nhận những ưu đãi mua sắm tuyệt vời, hàng ngàn sản phẩm thời trang với mức giá cực tốt đang chờ bạn!&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Mừng 1/6 - Cho cả nhà đều đẹp! - 4&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369706991-1-6-cho-ca-nha-deu-dep--4-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Để được hỗ trợ đặt hàng, giải đáp thắc mắc và đóng góp ý kiến, vui lòng gọi theo số Hotline chăm sóc khách hàng:&amp;nbsp;&lt;strong style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot;&gt;(08) 6288 5678&amp;nbsp;&lt;/strong&gt;hoặc Email:&amp;nbsp;&lt;a href=&quot;mailto:customer@zalora.vn&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(0, 0, 255); text-decoration: none;&quot;&gt;customer@zalora.vn&lt;/a&gt;.&lt;/p&gt;\r\n', '', ''),
	(9, 2, 'Mai Phương Thúy tươi tắn bên cạnh đàn em', 'Xuất hiện tại một sự kiện tối qua ở Hà Nội, Hoa hậu Việt Nam 2006 - Mai Phương Thúy cùng hai nàng Á hậu Hoa Hậu Việt Nam 2012 xuất hiện với tư cách là khách mời Vip. Cả ba cô nàng xinh đẹp như hai bông hoa, quấn quýt, thân thiết bên nhau như chị em ruột. ', '&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Xuất hiện tại một sự kiện tối qua ở Hà Nội,&amp;nbsp;Hoa hậu Việt Nam 2006 - Mai Phương Thúy cùng hai nàng Á hậu Hoa Hậu&amp;nbsp;Việt Nam 2012 xuất hiện với tư cách là khách mời Vip.&amp;nbsp;Cả ba cô nàng xinh đẹp như hai bông hoa, quấn quýt, thân thiết bên nhau như chị em ruột.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 1.6em;&quot;&gt;Mai Phương Thúy tham gia sự kiện với bộ&amp;nbsp;đầm dạ hội với&amp;nbsp;màu đen huyền bí, chiếc đầm ôm sát, m&lt;/span&gt;&lt;span style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 1.6em;&quot;&gt;ái tóc để dài sóng xõa dịu dàng. Bộ đầm xẻ đùi khoe thế mạnh chân dài miên man tuy nhiên &lt;/span&gt;cô vẫn kém rạng rỡ khi đứng bên cạnh 2 Á hậu Việt Nam 2012, Hoàng Anh và Tú Anh.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 1.6em;&quot;&gt;Á hậu Tú Anh thời gian gần đây có vẻ mảnh mai hơn, cô cũng diện một chiếc đầm bó, màu đỏ sẫm khoe vai trần trắng ngần. Cô nàng 19 tuổi Á hậu Hoàng Anh với bộ đầm bó sát&amp;nbsp;khoe khuôn ngực đầy đặn cùng làn da trắng hồng và khuôn mặt xinh tươi.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: left;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Mai Phương Thúy kém tươi tắn bên cạnh đàn em - 1&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369675420-h1--6-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Tối hôm qua Mai Phương Thúy và Tú Anh, Hoàng Anh đã cùng nhau xuất hiện tại một sự kiện tại Hà Nội.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Mai Phương Thúy kém tươi tắn bên cạnh đàn em - 2&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369678454-IMG_4104.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px; width: 480px; height: 318px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Mai Phương Thúy kém tươi tắn bên cạnh đàn em - 3&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369678454-IMG_4112.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Ba cô nàng xinh đẹp chuyện trò thân mật với một vị khách người nước ngoài.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Mai Phương Thúy kém tươi tắn bên cạnh đàn em - 4&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369675420-h1--8-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Trong khi 2 á hậu 9X xuất hiện với nét rạng rỡ, xinh tươi thì Mai Phương Thúy trông khá nhợt nhạt và mệt mỏi&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Mai Phương Thúy kém tươi tắn bên cạnh đàn em - 5&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369675420-h1--9-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Trang phục mà người đẹp lựa chọn lần này trông cũng kém tinh tế, không đẳng cấp như những lần xuất hiện trước đây&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Mai Phương Thúy kém tươi tắn bên cạnh đàn em - 6&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369675420-h1--12-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Mai Phương Thúy kém tươi tắn bên cạnh đàn em - 7&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369675420-h1--10-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Mai Phương Thúy ngày càng trở nên thon gọn và thanh mảnh hơn so với trước kia.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Mai Phương Thúy kém tươi tắn bên cạnh đàn em - 8&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369675420-h1--3-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Tối qua, á hậu Hoàng Anh&amp;nbsp;diện một váy đen chiếc váy đen cúp ngực, khoe vai trần yêu kiều đi dự tiệc.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Mai Phương Thúy kém tươi tắn bên cạnh đàn em - 9&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369675420-h1--4-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Á hậu Hoàng Anh&amp;nbsp;khéo léo khoe đường cong và&amp;nbsp;khuôn ngực đầy đặn cùng làn da trắng hồng và khuôn mặt xinh tươi.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Mai Phương Thúy kém tươi tắn bên cạnh đàn em - 10&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369675420-h1--21-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Người đẹp 19 tuổi ngày càng xinh đẹp và quyễn rũ hơn rất nhiều.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Mai Phương Thúy kém tươi tắn bên cạnh đàn em - 11&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-28/1369675420-h1--15-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n', '', ''),
	(10, 2, 'Scandal cho mùa đi biển', 'Hè về, chị em &quot;tám&quot; tứ tung chuyện đi biển. Sau &quot;chuyên án&quot; bikini, sandal là chủ đề thú vị tiếp theo được chị em quan tâm. Tất nhiên, những đôi giày bít mũi dù thanh lịch cũng không có cơ hội &quot;bám càng&quot; trong chuyến nghỉ ở biển, sandal là lựa chọn tối ưu.', '&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Hè về, chị em &quot;tám&quot; tứ tung chuyện đi biển. Sau &quot;chuyên án&quot; bikini, sandal là chủ đề thú vị tiếp theo được chị em quan tâm. Tất nhiên, những đôi giày bít mũi dù thanh lịch cũng không có cơ hội &quot;bám càng&quot; trong chuyến nghỉ ở biển, sandal là lựa chọn tối ưu.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot;&gt;Sandal đế xuồng&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Đừng nghĩ đi biển chỉ để tắm biển. Đến với biển, bạn có cơ hội tham gia các buổi&amp;nbsp; party, hội diễn văn nghệ hay các buổi khiêu vũ cùng đoàn thể. Vì vậy, một đôi sandal đế xuồng in hoa xinh xắn là lựa chọn tuyệt vời để mix cùng váy áo. Trông bạn sẽ thật duyên dáng và nổi bật.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Sandal đế xuồng không đòi hỏi những bước chân &quot;chuẩn người mẫu&quot; như khi bạn đi giày cao gót, lại thêm phần dây đan quanh cổ chân nên bạn có thể thoải mái di chuyển, vận động và trở thành &quot;Idol&quot; của kỳ nghỉ biển.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Sandal cho mùa đi biển - 1&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369625094-16146ef4dd67d17d815b544310f66dda.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Sandal đế xuồng họa tiết hoa cỏ nhiệt đới.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Sandal cho mùa đi biển - 2&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369638730-lady_high_heel_bridal_fancy_sandal_jelly.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Một đôi sandal đế xuồng hòa trộn nhiều gam màu tươi tắn sẽ giúp bạn &quot;tỏa sáng&quot;.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Sandal cho mùa đi biển - 3&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369638754-ok.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Sandal đế xuồng sắc xanh dịu mát lý tưởng để ứng phó với ánh nắng chói chang ngày hè.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot;&gt;Sandal buộc dây&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Với những cô nàng yểu điệu, chẳng còn gì tuyệt hơn một chiếc váy liền thân ôm sát đường cong cơ thể mix cùng sandal buộc dây. Ưu điểm của kiểu sandal này là tạo cảm giác duyên dáng, nữ tính cho người sử dụng. Ngay cả khi bạn diện bộ sooc denim, bạn vẫn có thể kết hợp cùng sandal buộc dây để tạo ấn tượng dễ thương và sành điệu.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Sandal buộc dây có nhiều kiểu: đế xuồng, đế cếp, đế thường... cho chị em thỏa sức lựa chọn theo sở thích và nhu cầu. Tuy nhiên, chắc chẳng cô nàng nào... dại dột &quot;chèo&quot; lên đôi sandal buộc dây và đi dạo trên bờ cát trắng.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Sandal cho mùa đi biển - 4&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369625094-1308472054-sandal-in-hoa-9.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Sandal buộc dây sắc màu, rất hợp để mix cùng váy hoa.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Sandal cho mùa đi biển - 5&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369625094-jimmy-choo-grey-dream-sandal-product-5-7054289-491888887_large_flex.jpeg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Sandal độc đáo với họa tiết da báo, đan cài dây buộc vặn thừng.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Sandal cho mùa đi biển - 6&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369625094-lam_ban_voi_nang_he_cung_sandal_de_coi_14.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Sandal buộc dây đế xuồng mang đến vẻ trẻ trung, năng động cho bạn gái. Kiểu sandal này mix cùng style quần sooc hoặc quần ngố đều hay.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Sandal cho mùa đi biển - 7&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369625094-mcqueen_clog_tie_sandal_1.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Kiểu sandal buộc dây tôn lên vẻ thanh lịch và phảng phất nét sang chảnh, phù hợp với bạn gái ngoài 30 tuổi.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Sandal cho mùa đi biển - 8&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369625094-ok-2.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Làm điệu với sandal buộc dây có tua rua đính kèm. Sẽ rất tuyệt nếu bạn kết hợp cùng áo, váy có thiết kế độc đáo, cá tính.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot;&gt;Sandal đế bệt&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Đây là mẫu sandal thông dụng nhất, được chị em ưu tiên số một trong danh sách giày, dép mang theo trong kỳ nghỉ biển.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Sandal đế bệt là &quot;cô nàng&quot; kém vẻ yểu điệu so với sandal đế xuồng in hoa hay sandal cao gót buộc dây, nhưng lại biến hóa đa-zi-năng trong nhiều hoàn cảnh. Bạn có thể thoải mái diện quần sooc - áo pull và xỏ chân trong đôi sandal đế bệt đi dạo dọc bờ biển, hay kết hợp sandal đế bệt với mini dress dự tiệc, bạn sẽ là quý cô tười trẻ, dễ thương trong mắt mọi người. Thậm chí, bạn cũng có thể tham gia hoạt động vui chơi ngoại khóa với sandal đế bệt.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Hiện nay trên thị trường có nhiều kiểu sandal đế bệt hình thức bắt mắt như: sandal cói, đính đá, tết mạng nhện, đính hoa... Bạn hãy chọn cho mình một đôi thật ưng ý nhé.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Sandal cho mùa đi biển - 9&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369625094-sandals-picnik.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Những mẫu sandal đế bệt đẹp mắt cho mùa đi biển của chị em.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Sandal cho mùa đi biển - 10&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369625094-ok-4.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Mẫu sandal độc đáo, bạn có thể mix cùng chân váy, quần sooc hay một chiếc áo sơ mi thùng thình dài chấm gối đều hợp.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Sandal cho mùa đi biển - 11&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369639041-ok-9.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Sandal đính hạt là gợi ý thú vị cho bạn gái có bàn chân nhỏ, trắng.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;&lt;img alt=&quot;Sandal cho mùa đi biển - 12&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369639225-1332313390144312376_574_5746.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Sandal màu sắc dành cho nàng có bàn chân mỏng và dài.&lt;/p&gt;\r\n', '', ''),
	(11, 2, 'Thời trang hè nổi bật cùng Mango', 'Mango – Thương hiệu thời trang nổi tiếng của Tây Ban Nha có mặt tại Việt Nam với đầy đủ ba nhãn hàng: Mango, Mango Touch và H.E.by Mango sẽ giúp các bạn nữ có thể thỏa thích phối hợp cho mình những bộ thời trang tinh tế, quyến rũ với nhãn hàng Mango kết hợp với phụ kiện độc đáo của Mango Touch; còn các bạn nam có thể chọn lựa sự lịch lãm, khỏe khoắn với những trang phục của H.E.by Mango.', '&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Mango – Thương hiệu thời trang nổi tiếng của Tây Ban Nha có mặt tại Việt Nam với đầy đủ ba nhãn hàng: Mango, Mango Touch và H.E.by Mango sẽ giúp các bạn nữ có thể thỏa thích phối hợp cho mình những bộ thời trang tinh tế, quyến rũ với nhãn hàng Mango kết hợp với phụ kiện độc đáo của Mango Touch; còn các bạn nam có thể chọn lựa sự lịch lãm, khỏe khoắn với những trang phục của H.E.by Mango.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Trong mùa hè này, dành riêng cho những bạn nữ yêu thích phong cách thời trang trẻ trung, độc đáo, khỏe khoắn, cá tính khi dạo phố và thanh lịch, tinh tế khi đi làm cũng như nổi bật, ngọt ngào, quyến rũ khi tham dự tiệc… BST dành cho nữ của Mango sẽ mang đến cho các bạn nữ phong cách thời trang hoàn hảo dù bất cứ nơi đâu với đầy đủ những trang phục như: đầm, áo, váy, quần… với nhiều màu sắc trang nhã như beige, kaki, hồng phấn được phối trộn hài hòa với các chất liệu đa dạng từ jean, thun, kaki cho đến taffeta, voan, lụa... kết hợp với những họa tiết sắc sảo tinh tế như họa tiết in hoa, thổ dân, mang đến cho người mặc phong cách thanh lịch.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Hãy làm mới hình ảnh của mình bằng cách kết hợp khéo léo trang phục và một số phụ kiện thời trang của Mango Touch như: vòng cổ, vòng tay, giày đế xuồng, mắt kính, túi xách… chắc chắn bạn sẽ ngạc nhiên với hình ảnh của chính mình. Mango Touch mang tới cả một thế giới phụ kiện phong phú với những chiếc túi xách hợp thời, những đôi giày năng động, hay những loại trang sức cầu kì và các phụ kiện khác như thắt lưng, ví, mắt kính, dù, nón, khăn choàng,…&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Cùng xem những gợi ý về trang phục mới nhất của Mango trong mùa hè này để cho bạn thỏa sức chọn lựa và sáng tạo nên những bộ trang phục dành riêng cho phong cách của bạn:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Thời trang hè nổi bật cùng Mango - 1&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369651074-thoi-trang-he-noi-bat-cung-Mango--1-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Thời trang hè nổi bật cùng Mango - 2&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369651074-thoi-trang-he-noi-bat-cung-Mango--2-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Thời trang hè nổi bật cùng Mango - 3&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369651074-thoi-trang-he-noi-bat-cung-Mango--3-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Thời trang hè nổi bật cùng Mango - 4&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369651074-thoi-trang-he-noi-bat-cung-Mango--4-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px; height: 352px; width: 500px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Thời trang hè nổi bật cùng Mango - 5&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369651074-thoi-trang-he-noi-bat-cung-Mango--5-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Thời trang hè nổi bật cùng Mango - 6&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369651074-thoi-trang-he-noi-bat-cung-Mango--6-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Lấy cảm hứng từ những chuyến du ngoạn và khám phá thiên nhiên, BST mùa hè này của H.E. by Mango khắc họa nên hình ảnh người đàn ông lý tưởng và vô cùng phong cách thông qua những thiết kế đậm tính cổ điển nhưng được nhấn bằng những chi tiết hiện đại được cập nhật từ những xu hướng mới nhất của phong cách sa mạc Châu Phi và cả phong cách Preppy của Mỹ giúp cho người mặc nổi bật, trẻ trung, phóng khoáng, nhưng không kém phần lịch lãm, sang trọng. Kết hợp thêm những phụ kiện cá tính như túi, giày, thắt lưng, mắt kính… sẽ làm cho bạn thêm cá tính.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Thời trang hè nổi bật cùng Mango - 7&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369651074-thoi-trang-he-noi-bat-cung-Mango--7-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Thời trang hè nổi bật cùng Mango - 8&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369651074-thoi-trang-he-noi-bat-cung-Mango--8-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Thời trang hè nổi bật cùng Mango - 9&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369651074-thoi-trang-he-noi-bat-cung-Mango--9-.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n', '', ''),
	(12, 2, ' Em gái Chung Thục Quyên Ngắm eo \'con kiến\' của em gái Chung Thục Quyên', 'Xuất hiện bên cạnh chị gái Chung Thục Quyên trong một buổi lễ ra mắt phim, Lana Huỳnh ngay lập tức thu hút sự chú ý của truyền thông bởi ngoại hình bắt mắt, đặc biệt là vóc dáng cao ráo không thua kém gì chị gái. Lana Huỳnh là em gái cũng mẹ khác cha với người mẫu Chung Thục Quyên, cô sinh năm 1991 và sở hữu chiều cao 1m70 nổi bật. Với nhan sắc và chiều cao ấn tượng có lẽ trong thời gian sắp tới Lana Huỳnh sẽ là một gương mặt \'hot\' trong làng giải trí như chị gái của mình.', '&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Xuất hiện bên cạnh chị gái Chung Thục Quyên trong một buổi lễ ra mắt phim, Lana Huỳnh ngay lập tức thu hút sự chú ý của truyền thông bởi ngoại hình bắt mắt, đặc biệt là vóc dáng cao ráo không thua kém gì chị gái. Lana Huỳnh là em gái cũng mẹ khác cha với người mẫu Chung Thục Quyên, cô sinh năm 1991 và sở hữu chiều cao 1m70 nổi bật. Với nhan sắc và chiều cao ấn tượng có lẽ trong thời gian sắp tới Lana Huỳnh sẽ là một gương mặt \'hot\' trong làng giải trí như chị gái của mình.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Lana Huỳnh đang là sinh viên trường văn hóa nghệ thuật. Thời gian gần đây cô thường xuất hiện bên cạnh chị gái Chung Thục Quyên tại các sự kiện giải trí. Bên cạnh cô chị gái Chung Thục Quyên luôn sexy một cách táo bạo thì Lana Huỳnh, ở độ tuổi 22, lại khoe vẻ năng động trong những trang phục trẻ trung, xì tin nhưng vẫn toát lên nét gợi cảm của cô gái mới lớn.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;em style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px;&quot;&gt;Cùng ngắm một góc hình ảnh trong phong cách của Lana Huỳnh trong những ngày hè nóng nực của Sài Gòn nhé. Cô nàng đặc biệt thích mốt áo lửng khoe eo vừa sexy lại rất khỏe khoắn.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Ngắm eo \'con kiến\' của em gái Chung Thục Quyên - 1&quot; class=&quot;news-image&quot; height=&quot;500&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369642328-IMG_8006.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; width=&quot;500&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Sở hữu vòng eo thon mảnh nên Lana Huỳnh rất tự tin diện kiểu áo lửng đang là xu hướng hot trong mùa hè năm nay&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Ngắm eo \'con kiến\' của em gái Chung Thục Quyên - 2&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369642328-IMG_8016.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Xì tai năng động của cô ban 9X khi kết hợp đôi ankle boot với bộ đôi quần sooc sequin, áo lửng.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Ngắm eo \'con kiến\' của em gái Chung Thục Quyên - 3&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369642328-IMG_8017.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Chiếc áo khoác denim tăng thêm phần cá tính&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Ngắm eo \'con kiến\' của em gái Chung Thục Quyên - 4&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369642328-IMG_8084.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Cô nàng rất thời trang khi khéo léo kết hợp áo lửng trắng với chân váy cạp cạo in họa tiết chấm bi nhí vô cùng xinh xắn&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Ngắm eo \'con kiến\' của em gái Chung Thục Quyên - 5&quot; class=&quot;news-image&quot; height=&quot;500&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369642328-IMG_8088.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; width=&quot;500&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Vòng eo con kiến thu hút bao ánh nhìn khi Lana Huỳnh bước đi trên phố&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Ngắm eo \'con kiến\' của em gái Chung Thục Quyên - 6&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369642328-IMG_8117.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Ngắm eo \'con kiến\' của em gái Chung Thục Quyên - 7&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369642328-IMG_8167.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Lana táo bạo chọn kiểu áo lửng hoa khoe trọn eo, khoe cả vòng 1 và tấm lưng trần&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Ngắm eo \'con kiến\' của em gái Chung Thục Quyên - 8&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369642328-IMG_8177.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Cô nàng nổi bật trên phố với vòng eo thon và làn da trắng đẹp&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Ngắm eo \'con kiến\' của em gái Chung Thục Quyên - 9&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369642328-IMG_8186.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Bạn nên học hỏi Lana kết hợp áo lửng với kiểu quần hoặc váy cạp cao như thế này nhé&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Ngắm eo \'con kiến\' của em gái Chung Thục Quyên - 10&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369642328-IMG_8205.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Năng động áo lửng ba lỗ kẻ sọc hồng vô cùng dễ thương.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Ngắm eo \'con kiến\' của em gái Chung Thục Quyên - 11&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369642328-IMG_8220.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Với chiếc áo chất liệu thun thoải mái này thì quần sooc cạp cao là sự lựa chọn hoàn hảo nhất&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img alt=&quot;Ngắm eo \'con kiến\' của em gái Chung Thục Quyên - 12&quot; class=&quot;news-image&quot; src=&quot;http://img-eva.24hstatic.com/upload/2-2013/images/2013-05-27/1369642328-IMG_8231.jpg&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; border: 0px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 16px; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-style: italic; text-align: center;&quot;&gt;Lana Huỳnh khoe đường cong nóng bỏng trong trang phục mát mẻ&lt;/p&gt;\r\n', '', '');
/*!40000 ALTER TABLE `news_description` ENABLE KEYS */;


-- Dumping structure for table zara.news_related
DROP TABLE IF EXISTS `news_related`;
CREATE TABLE IF NOT EXISTS `news_related` (
  `news_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`news_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table zara.news_related: 0 rows
DELETE FROM `news_related`;
/*!40000 ALTER TABLE `news_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_related` ENABLE KEYS */;


-- Dumping structure for table zara.news_tag
DROP TABLE IF EXISTS `news_tag`;
CREATE TABLE IF NOT EXISTS `news_tag` (
  `news_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `tag` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`news_tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table zara.news_tag: 2 rows
DELETE FROM `news_tag`;
/*!40000 ALTER TABLE `news_tag` DISABLE KEYS */;
INSERT INTO `news_tag` (`news_tag_id`, `news_id`, `language_id`, `tag`) VALUES
	(18, 1, 2, 'sale off'),
	(17, 1, 2, '50%');
/*!40000 ALTER TABLE `news_tag` ENABLE KEYS */;


-- Dumping structure for table zara.news_to_category
DROP TABLE IF EXISTS `news_to_category`;
CREATE TABLE IF NOT EXISTS `news_to_category` (
  `news_id` int(11) NOT NULL,
  `news_category_id` int(11) NOT NULL,
  PRIMARY KEY (`news_id`,`news_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table zara.news_to_category: 15 rows
DELETE FROM `news_to_category`;
/*!40000 ALTER TABLE `news_to_category` DISABLE KEYS */;
INSERT INTO `news_to_category` (`news_id`, `news_category_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 2),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(8, 2),
	(9, 1),
	(9, 2),
	(10, 1),
	(10, 2),
	(11, 1),
	(12, 1);
/*!40000 ALTER TABLE `news_to_category` ENABLE KEYS */;


-- Dumping structure for table zara.news_to_layout
DROP TABLE IF EXISTS `news_to_layout`;
CREATE TABLE IF NOT EXISTS `news_to_layout` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`news_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table zara.news_to_layout: 0 rows
DELETE FROM `news_to_layout`;
/*!40000 ALTER TABLE `news_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_to_layout` ENABLE KEYS */;


-- Dumping structure for table zara.news_to_store
DROP TABLE IF EXISTS `news_to_store`;
CREATE TABLE IF NOT EXISTS `news_to_store` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`news_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table zara.news_to_store: 12 rows
DELETE FROM `news_to_store`;
/*!40000 ALTER TABLE `news_to_store` DISABLE KEYS */;
INSERT INTO `news_to_store` (`news_id`, `store_id`) VALUES
	(1, 0),
	(2, 0),
	(3, 0),
	(4, 0),
	(5, 0),
	(6, 0),
	(7, 0),
	(8, 0),
	(9, 0),
	(10, 0),
	(11, 0),
	(12, 0);
/*!40000 ALTER TABLE `news_to_store` ENABLE KEYS */;


-- Dumping structure for table zara.option
DROP TABLE IF EXISTS `option`;
CREATE TABLE IF NOT EXISTS `option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.option: 4 rows
DELETE FROM `option`;
/*!40000 ALTER TABLE `option` DISABLE KEYS */;
INSERT INTO `option` (`option_id`, `type`, `sort_order`) VALUES
	(16, 'radio', 5),
	(14, 'radio', 2),
	(15, 'radio', 3),
	(13, 'image', 1);
/*!40000 ALTER TABLE `option` ENABLE KEYS */;


-- Dumping structure for table zara.option_description
DROP TABLE IF EXISTS `option_description`;
CREATE TABLE IF NOT EXISTS `option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.option_description: 8 rows
DELETE FROM `option_description`;
/*!40000 ALTER TABLE `option_description` DISABLE KEYS */;
INSERT INTO `option_description` (`option_id`, `language_id`, `name`) VALUES
	(16, 2, 'Kích cỡ khác:'),
	(14, 2, 'Kích cỡ theo chữ'),
	(15, 2, 'Kích cỡ theo số'),
	(13, 2, 'Màu Sắc'),
	(16, 3, 'Kích cỡ khác:'),
	(14, 3, 'Kích cỡ theo chữ'),
	(15, 3, 'Kích cỡ theo số'),
	(13, 3, 'Màu Sắc');
/*!40000 ALTER TABLE `option_description` ENABLE KEYS */;


-- Dumping structure for table zara.option_value
DROP TABLE IF EXISTS `option_value`;
CREATE TABLE IF NOT EXISTS `option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.option_value: 48 rows
DELETE FROM `option_value`;
/*!40000 ALTER TABLE `option_value` DISABLE KEYS */;
INSERT INTO `option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
	(52, 13, 'data/colors/xanh_muoc_bien.png', 4),
	(53, 13, 'data/colors/teal.png', 5),
	(51, 13, 'data/colors/xam.png', 3),
	(50, 13, 'data/colors/mau_nau.png', 2),
	(49, 13, 'data/colors/black.png', 1),
	(54, 13, 'data/colors/xanh_la_cay.png', 6),
	(55, 13, 'data/colors/da_cam.png', 7),
	(56, 13, 'data/colors/do.png', 8),
	(57, 13, 'data/colors/hong.png', 9),
	(58, 13, 'data/colors/tim.png', 10),
	(59, 14, '', 1),
	(60, 14, '', 2),
	(61, 14, '', 3),
	(62, 14, '', 4),
	(63, 14, '', 5),
	(64, 14, '', 6),
	(65, 14, '', 7),
	(66, 14, '', 8),
	(74, 15, 'no_image.jpg', 0),
	(73, 15, 'no_image.jpg', 0),
	(72, 15, 'no_image.jpg', 0),
	(71, 15, 'no_image.jpg', 0),
	(70, 15, 'no_image.jpg', 0),
	(69, 15, 'no_image.jpg', 0),
	(68, 15, 'no_image.jpg', 0),
	(67, 15, 'no_image.jpg', 0),
	(89, 16, 'no_image.jpg', 0),
	(88, 16, 'no_image.jpg', 0),
	(87, 16, 'no_image.jpg', 0),
	(86, 16, 'no_image.jpg', 0),
	(85, 16, 'no_image.jpg', 0),
	(84, 16, 'no_image.jpg', 0),
	(83, 16, 'no_image.jpg', 0),
	(82, 16, 'no_image.jpg', 0),
	(90, 16, 'no_image.jpg', 0),
	(91, 16, 'no_image.jpg', 0),
	(92, 16, 'no_image.jpg', 0),
	(93, 16, 'no_image.jpg', 0),
	(94, 16, 'no_image.jpg', 0),
	(95, 16, 'no_image.jpg', 0),
	(96, 16, 'no_image.jpg', 0),
	(75, 15, 'no_image.jpg', 0),
	(76, 15, 'no_image.jpg', 0),
	(77, 15, 'no_image.jpg', 0),
	(78, 15, 'no_image.jpg', 0),
	(79, 15, 'no_image.jpg', 0),
	(80, 15, 'no_image.jpg', 0),
	(81, 15, 'no_image.jpg', 0);
/*!40000 ALTER TABLE `option_value` ENABLE KEYS */;


-- Dumping structure for table zara.option_value_description
DROP TABLE IF EXISTS `option_value_description`;
CREATE TABLE IF NOT EXISTS `option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.option_value_description: 96 rows
DELETE FROM `option_value_description`;
/*!40000 ALTER TABLE `option_value_description` DISABLE KEYS */;
INSERT INTO `option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
	(54, 2, 13, 'Xanh lá cây'),
	(55, 2, 13, 'Da cam'),
	(53, 2, 13, 'Xanh dương'),
	(52, 2, 13, 'Xanh nước biển'),
	(51, 2, 13, 'Xám tro'),
	(50, 2, 13, 'Nâu'),
	(49, 2, 13, 'Đen'),
	(56, 2, 13, 'Đỏ'),
	(57, 2, 13, 'Hồng'),
	(58, 2, 13, 'Tím'),
	(59, 2, 14, 'XXXXL'),
	(60, 2, 14, 'XS'),
	(61, 2, 14, 'S'),
	(62, 2, 14, 'M'),
	(63, 2, 14, 'L'),
	(64, 2, 14, 'XL'),
	(65, 2, 14, 'XXL'),
	(66, 2, 14, 'XXXL'),
	(81, 2, 15, '40'),
	(80, 2, 15, '39'),
	(79, 2, 15, '38'),
	(78, 2, 15, '37'),
	(77, 2, 15, '36'),
	(76, 2, 15, '35'),
	(75, 2, 15, '34'),
	(74, 2, 15, '33'),
	(73, 2, 15, '32'),
	(72, 2, 15, '31'),
	(71, 2, 15, '30'),
	(70, 2, 15, '29'),
	(69, 2, 15, '28'),
	(68, 2, 15, '27'),
	(67, 2, 15, '26'),
	(94, 2, 16, 'M'),
	(93, 2, 16, 'L'),
	(92, 2, 16, 'B80'),
	(91, 2, 16, 'B75'),
	(90, 2, 16, 'B70'),
	(89, 2, 16, 'A85'),
	(88, 2, 16, 'A80'),
	(87, 2, 16, 'A75'),
	(86, 2, 16, '4-XL'),
	(85, 2, 16, '3-L'),
	(84, 2, 16, '2-M'),
	(83, 2, 16, '1-S'),
	(82, 2, 16, '0-XS'),
	(95, 2, 16, 'Onesize'),
	(96, 2, 16, 'S'),
	(54, 3, 13, 'Xanh lá cây'),
	(55, 3, 13, 'Da cam'),
	(53, 3, 13, 'Xanh dương'),
	(52, 3, 13, 'Xanh nước biển'),
	(51, 3, 13, 'Xám tro'),
	(50, 3, 13, 'Nâu'),
	(49, 3, 13, 'Đen'),
	(56, 3, 13, 'Đỏ'),
	(57, 3, 13, 'Hồng'),
	(58, 3, 13, 'Tím'),
	(59, 3, 14, 'XXXXL'),
	(60, 3, 14, 'XS'),
	(61, 3, 14, 'S'),
	(62, 3, 14, 'M'),
	(63, 3, 14, 'L'),
	(64, 3, 14, 'XL'),
	(65, 3, 14, 'XXL'),
	(66, 3, 14, 'XXXL'),
	(81, 3, 15, '40'),
	(80, 3, 15, '39'),
	(79, 3, 15, '38'),
	(78, 3, 15, '37'),
	(77, 3, 15, '36'),
	(76, 3, 15, '35'),
	(75, 3, 15, '34'),
	(74, 3, 15, '33'),
	(73, 3, 15, '32'),
	(72, 3, 15, '31'),
	(71, 3, 15, '30'),
	(70, 3, 15, '29'),
	(69, 3, 15, '28'),
	(68, 3, 15, '27'),
	(67, 3, 15, '26'),
	(94, 3, 16, 'M'),
	(93, 3, 16, 'L'),
	(92, 3, 16, 'B80'),
	(91, 3, 16, 'B75'),
	(90, 3, 16, 'B70'),
	(89, 3, 16, 'A85'),
	(88, 3, 16, 'A80'),
	(87, 3, 16, 'A75'),
	(86, 3, 16, '4-XL'),
	(85, 3, 16, '3-L'),
	(84, 3, 16, '2-M'),
	(83, 3, 16, '1-S'),
	(82, 3, 16, '0-XS'),
	(95, 3, 16, 'Onesize'),
	(96, 3, 16, 'S');
/*!40000 ALTER TABLE `option_value_description` ENABLE KEYS */;


-- Dumping structure for table zara.order
DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(32) NOT NULL,
  `payment_company_id` varchar(32) NOT NULL,
  `payment_tax_id` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.order: 9 rows
DELETE FROM `order`;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_company_id`, `payment_tax_id`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
	(1, 0, 'INV-2013-00', 0, 'Thời Trang Phan Nguyễn', 'http://zara.lc/', 1, 1, 'Khiem', 'Pham', 'rongandat@gmail.com', '01694042658', '', 'Khiem', 'Pham', 'fsdf', '', '', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Thu tiền khi giao hàng', 'cod', 'Khiem', 'Pham', 'fsdf', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Miễn phí vận chuyển', 'free.free', '', 1100.0000, 0, 0, 0.0000, 2, 2, 'USD', 1.00000000, '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0 FirePHP/0.7.2', 'en-US,en;q=0.5', '2013-06-26 10:37:43', '2013-06-26 10:37:43'),
	(2, 0, 'INV-2013-00', 0, 'Thời Trang Phan Nguyễn', 'http://zara.lc/', 1, 1, 'Khiem', 'Pham', 'rongandat@gmail.com', '01694042658', '', 'Khiem', 'Pham', 'fsdf', '', '', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Thu tiền khi giao hàng', 'cod', 'Khiem', 'Pham', 'fsdf', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Miễn phí vận chuyển', 'free.free', '', 1100.0000, 0, 0, 0.0000, 2, 2, 'USD', 1.00000000, '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0 FirePHP/0.7.2', 'en-US,en;q=0.5', '2013-06-26 10:42:31', '2013-06-26 10:42:31'),
	(3, 0, 'INV-2013-00', 0, 'Thời Trang Phan Nguyễn', 'http://zara.lc/', 1, 1, 'Khiem', 'Pham', 'rongandat@gmail.com', '01694042658', '', 'Khiem', 'Pham', 'fsdf', '', '', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Thu tiền khi giao hàng', 'cod', 'Khiem', 'Pham', 'fsdf', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Miễn phí vận chuyển', 'free.free', '', 1100.0000, 0, 0, 0.0000, 2, 2, 'USD', 1.00000000, '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0 FirePHP/0.7.2', 'en-US,en;q=0.5', '2013-06-26 10:43:16', '2013-06-26 10:43:16'),
	(4, 0, 'INV-2013-00', 0, 'Thời Trang Phan Nguyễn', 'http://zara.lc/', 1, 1, 'Khiem', 'Pham', 'rongandat@gmail.com', '01694042658', '', 'Khiem', 'Pham', 'fsdf', '', '', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Thu tiền khi giao hàng', 'cod', 'Khiem', 'Pham', 'fsdf', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Miễn phí vận chuyển', 'free.free', '', 1100.0000, 0, 0, 0.0000, 2, 2, 'USD', 1.00000000, '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0 FirePHP/0.7.2', 'en-US,en;q=0.5', '2013-06-26 10:43:36', '2013-06-26 10:43:36'),
	(5, 0, 'INV-2013-00', 0, 'Thời Trang Phan Nguyễn', 'http://zara.lc/', 1, 1, 'Khiem', 'Pham', 'rongandat@gmail.com', '01694042658', '', 'Khiem', 'Pham', 'fsdf', '', '', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Thu tiền khi giao hàng', 'cod', 'Khiem', 'Pham', 'fsdf', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Miễn phí vận chuyển', 'free.free', '', 1100.0000, 0, 0, 0.0000, 2, 2, 'USD', 1.00000000, '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0 FirePHP/0.7.2', 'en-US,en;q=0.5', '2013-06-26 10:44:02', '2013-06-26 10:44:02'),
	(6, 0, 'INV-2013-00', 0, 'Thời Trang Phan Nguyễn', 'http://zara.lc/', 1, 1, 'Khiem', 'Pham', 'rongandat@gmail.com', '01694042658', '', 'Khiem', 'Pham', 'fsdf', '', '', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Thu tiền khi giao hàng', 'cod', 'Khiem', 'Pham', 'fsdf', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Miễn phí vận chuyển', 'free.free', '', 1100.0000, 0, 0, 0.0000, 2, 2, 'USD', 1.00000000, '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0 FirePHP/0.7.2', 'en-US,en;q=0.5', '2013-06-26 10:50:27', '2013-06-26 10:50:27'),
	(7, 0, 'INV-2013-00', 0, 'Thời Trang Phan Nguyễn', 'http://zara.lc/', 1, 1, 'Khiem', 'Pham', 'rongandat@gmail.com', '01694042658', '', 'Khiem', 'Pham', 'fsdf', '', '', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Thu tiền khi giao hàng', 'cod', 'Khiem', 'Pham', 'fsdf', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Miễn phí vận chuyển', 'free.free', '', 1100.0000, 0, 0, 0.0000, 2, 2, 'USD', 1.00000000, '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0 FirePHP/0.7.2', 'en-US,en;q=0.5', '2013-06-26 10:50:58', '2013-06-26 10:50:58'),
	(8, 0, 'INV-2013-00', 0, 'Thời Trang Phan Nguyễn', 'http://zara.lc/', 1, 1, 'Khiem', 'Pham', 'rongandat@gmail.com', '01694042658', '', 'Khiem', 'Pham', 'fsdf', '', '', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Thu tiền khi giao hàng', 'cod', 'Khiem', 'Pham', 'fsdf', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Miễn phí vận chuyển', 'free.free', '', 1100.0000, 1, 0, 0.0000, 2, 2, 'USD', 1.00000000, '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0 FirePHP/0.7.2', 'en-US,en;q=0.5', '2013-06-26 10:52:30', '2013-06-26 10:52:35'),
	(9, 0, 'INV-2013-00', 0, 'Thời Trang Phan Nguyễn', 'http://zara.lc/', 1, 1, 'Khiem', 'Pham', 'rongandat@gmail.com', '01694042658', '', 'Khiem', 'Pham', 'fsdf', '', '', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Thu tiền khi giao hàng', 'cod', 'Khiem', 'Pham', 'fsdf', '423423', '', '4234242', '', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Miễn phí vận chuyển', 'free.free', '', 80.0000, 0, 0, 0.0000, 2, 2, 'USD', 1.00000000, '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0 FirePHP/0.7.2', 'en-US,en;q=0.5', '2013-06-26 11:41:16', '2013-06-26 11:41:16');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;


-- Dumping structure for table zara.order_download
DROP TABLE IF EXISTS `order_download`;
CREATE TABLE IF NOT EXISTS `order_download` (
  `order_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.order_download: 0 rows
DELETE FROM `order_download`;
/*!40000 ALTER TABLE `order_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_download` ENABLE KEYS */;


-- Dumping structure for table zara.order_field
DROP TABLE IF EXISTS `order_field`;
CREATE TABLE IF NOT EXISTS `order_field` (
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.order_field: 0 rows
DELETE FROM `order_field`;
/*!40000 ALTER TABLE `order_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_field` ENABLE KEYS */;


-- Dumping structure for table zara.order_fraud
DROP TABLE IF EXISTS `order_fraud`;
CREATE TABLE IF NOT EXISTS `order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.order_fraud: 0 rows
DELETE FROM `order_fraud`;
/*!40000 ALTER TABLE `order_fraud` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_fraud` ENABLE KEYS */;


-- Dumping structure for table zara.order_history
DROP TABLE IF EXISTS `order_history`;
CREATE TABLE IF NOT EXISTS `order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.order_history: 1 rows
DELETE FROM `order_history`;
/*!40000 ALTER TABLE `order_history` DISABLE KEYS */;
INSERT INTO `order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
	(1, 8, 1, 1, '', '2013-06-26 10:52:35');
/*!40000 ALTER TABLE `order_history` ENABLE KEYS */;


-- Dumping structure for table zara.order_option
DROP TABLE IF EXISTS `order_option`;
CREATE TABLE IF NOT EXISTS `order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.order_option: 25 rows
DELETE FROM `order_option`;
/*!40000 ALTER TABLE `order_option` DISABLE KEYS */;
INSERT INTO `order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
	(1, 1, 1, 231, 37, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(2, 1, 3, 231, 30, 'Kích cỡ theo chữ', 'M', 'radio'),
	(3, 1, 4, 235, 42, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(4, 2, 5, 231, 37, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(5, 2, 7, 231, 30, 'Kích cỡ theo chữ', 'M', 'radio'),
	(6, 2, 8, 235, 42, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(7, 3, 9, 231, 37, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(8, 3, 11, 231, 30, 'Kích cỡ theo chữ', 'M', 'radio'),
	(9, 3, 12, 235, 42, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(10, 4, 13, 231, 37, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(11, 4, 15, 231, 30, 'Kích cỡ theo chữ', 'M', 'radio'),
	(12, 4, 16, 235, 42, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(13, 5, 17, 231, 37, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(14, 5, 19, 231, 30, 'Kích cỡ theo chữ', 'M', 'radio'),
	(15, 5, 20, 235, 42, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(16, 6, 21, 231, 37, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(17, 6, 23, 231, 30, 'Kích cỡ theo chữ', 'M', 'radio'),
	(18, 6, 24, 235, 42, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(19, 7, 25, 231, 37, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(20, 7, 27, 231, 30, 'Kích cỡ theo chữ', 'M', 'radio'),
	(21, 7, 28, 235, 42, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(22, 8, 29, 231, 37, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(23, 8, 31, 231, 30, 'Kích cỡ theo chữ', 'M', 'radio'),
	(24, 8, 32, 235, 42, 'Kích cỡ theo chữ', 'XS', 'radio'),
	(25, 9, 33, 231, 37, 'Kích cỡ theo chữ', 'XS', 'radio');
/*!40000 ALTER TABLE `order_option` ENABLE KEYS */;


-- Dumping structure for table zara.order_product
DROP TABLE IF EXISTS `order_product`;
CREATE TABLE IF NOT EXISTS `order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.order_product: 33 rows
DELETE FROM `order_product`;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
	(1, 1, 30, 'Ao Sơ Mi 01', 'asm1', 2, 80.0000, 160.0000, 0.0000, 400),
	(2, 1, 28, 'Ao Phông 01', 'ap1', 7, 100.0000, 700.0000, 0.0000, 2800),
	(3, 1, 30, 'Ao Sơ Mi 01', 'asm1', 1, 80.0000, 80.0000, 0.0000, 200),
	(4, 1, 51, 'Ao Phông 02', 'ap2', 2, 80.0000, 160.0000, 0.0000, 400),
	(5, 2, 30, 'Ao Sơ Mi 01', 'asm1', 2, 80.0000, 160.0000, 0.0000, 400),
	(6, 2, 28, 'Ao Phông 01', 'ap1', 7, 100.0000, 700.0000, 0.0000, 2800),
	(7, 2, 30, 'Ao Sơ Mi 01', 'asm1', 1, 80.0000, 80.0000, 0.0000, 200),
	(8, 2, 51, 'Ao Phông 02', 'ap2', 2, 80.0000, 160.0000, 0.0000, 400),
	(9, 3, 30, 'Ao Sơ Mi 01', 'asm1', 2, 80.0000, 160.0000, 0.0000, 400),
	(10, 3, 28, 'Ao Phông 01', 'ap1', 7, 100.0000, 700.0000, 0.0000, 2800),
	(11, 3, 30, 'Ao Sơ Mi 01', 'asm1', 1, 80.0000, 80.0000, 0.0000, 200),
	(12, 3, 51, 'Ao Phông 02', 'ap2', 2, 80.0000, 160.0000, 0.0000, 400),
	(13, 4, 30, 'Ao Sơ Mi 01', 'asm1', 2, 80.0000, 160.0000, 0.0000, 400),
	(14, 4, 28, 'Ao Phông 01', 'ap1', 7, 100.0000, 700.0000, 0.0000, 2800),
	(15, 4, 30, 'Ao Sơ Mi 01', 'asm1', 1, 80.0000, 80.0000, 0.0000, 200),
	(16, 4, 51, 'Ao Phông 02', 'ap2', 2, 80.0000, 160.0000, 0.0000, 400),
	(17, 5, 30, 'Ao Sơ Mi 01', 'asm1', 2, 80.0000, 160.0000, 0.0000, 400),
	(18, 5, 28, 'Ao Phông 01', 'ap1', 7, 100.0000, 700.0000, 0.0000, 2800),
	(19, 5, 30, 'Ao Sơ Mi 01', 'asm1', 1, 80.0000, 80.0000, 0.0000, 200),
	(20, 5, 51, 'Ao Phông 02', 'ap2', 2, 80.0000, 160.0000, 0.0000, 400),
	(21, 6, 30, 'Ao Sơ Mi 01', 'asm1', 2, 80.0000, 160.0000, 0.0000, 400),
	(22, 6, 28, 'Ao Phông 01', 'ap1', 7, 100.0000, 700.0000, 0.0000, 2800),
	(23, 6, 30, 'Ao Sơ Mi 01', 'asm1', 1, 80.0000, 80.0000, 0.0000, 200),
	(24, 6, 51, 'Ao Phông 02', 'ap2', 2, 80.0000, 160.0000, 0.0000, 400),
	(25, 7, 30, 'Ao Sơ Mi 01', 'asm1', 2, 80.0000, 160.0000, 0.0000, 400),
	(26, 7, 28, 'Ao Phông 01', 'ap1', 7, 100.0000, 700.0000, 0.0000, 2800),
	(27, 7, 30, 'Ao Sơ Mi 01', 'asm1', 1, 80.0000, 80.0000, 0.0000, 200),
	(28, 7, 51, 'Ao Phông 02', 'ap2', 2, 80.0000, 160.0000, 0.0000, 400),
	(29, 8, 30, 'Ao Sơ Mi 01', 'asm1', 2, 80.0000, 160.0000, 0.0000, 400),
	(30, 8, 28, 'Ao Phông 01', 'ap1', 7, 100.0000, 700.0000, 0.0000, 2800),
	(31, 8, 30, 'Ao Sơ Mi 01', 'asm1', 1, 80.0000, 80.0000, 0.0000, 200),
	(32, 8, 51, 'Ao Phông 02', 'ap2', 2, 80.0000, 160.0000, 0.0000, 400),
	(33, 9, 30, 'Ao Sơ Mi 01', 'asm1', 1, 80.0000, 80.0000, 0.0000, 200);
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;


-- Dumping structure for table zara.order_status
DROP TABLE IF EXISTS `order_status`;
CREATE TABLE IF NOT EXISTS `order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.order_status: 28 rows
DELETE FROM `order_status`;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` (`order_status_id`, `language_id`, `name`) VALUES
	(2, 2, 'Processing'),
	(3, 2, 'Shipped'),
	(7, 2, 'Canceled'),
	(5, 2, 'Complete'),
	(8, 2, 'Denied'),
	(9, 2, 'Canceled Reversal'),
	(10, 2, 'Failed'),
	(11, 2, 'Refunded'),
	(12, 2, 'Reversed'),
	(13, 2, 'Chargeback'),
	(1, 2, 'Pending'),
	(16, 2, 'Voided'),
	(15, 2, 'Processed'),
	(14, 2, 'Expired'),
	(2, 3, 'Processing'),
	(3, 3, 'Shipped'),
	(7, 3, 'Canceled'),
	(5, 3, 'Complete'),
	(8, 3, 'Denied'),
	(9, 3, 'Canceled Reversal'),
	(10, 3, 'Failed'),
	(11, 3, 'Refunded'),
	(12, 3, 'Reversed'),
	(13, 3, 'Chargeback'),
	(1, 3, 'Pending'),
	(16, 3, 'Voided'),
	(15, 3, 'Processed'),
	(14, 3, 'Expired');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;


-- Dumping structure for table zara.order_total
DROP TABLE IF EXISTS `order_total`;
CREATE TABLE IF NOT EXISTS `order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.order_total: 27 rows
DELETE FROM `order_total`;
/*!40000 ALTER TABLE `order_total` DISABLE KEYS */;
INSERT INTO `order_total` (`order_total_id`, `order_id`, `code`, `title`, `text`, `value`, `sort_order`) VALUES
	(1, 1, 'sub_total', 'Thành tiền:', '$1,100.00', 1100.0000, 1),
	(2, 1, 'shipping', 'Miễn phí vận chuyển', '$0.00', 0.0000, 3),
	(3, 1, 'total', 'Tổng cộng :', '$1,100.00', 1100.0000, 9),
	(4, 2, 'sub_total', 'Thành tiền:', '$1,100.00', 1100.0000, 1),
	(5, 2, 'shipping', 'Miễn phí vận chuyển', '$0.00', 0.0000, 3),
	(6, 2, 'total', 'Tổng cộng :', '$1,100.00', 1100.0000, 9),
	(7, 3, 'sub_total', 'Thành tiền:', '$1,100.00', 1100.0000, 1),
	(8, 3, 'shipping', 'Miễn phí vận chuyển', '$0.00', 0.0000, 3),
	(9, 3, 'total', 'Tổng cộng :', '$1,100.00', 1100.0000, 9),
	(10, 4, 'sub_total', 'Thành tiền:', '$1,100.00', 1100.0000, 1),
	(11, 4, 'shipping', 'Miễn phí vận chuyển', '$0.00', 0.0000, 3),
	(12, 4, 'total', 'Tổng cộng :', '$1,100.00', 1100.0000, 9),
	(13, 5, 'sub_total', 'Thành tiền:', '$1,100.00', 1100.0000, 1),
	(14, 5, 'shipping', 'Miễn phí vận chuyển', '$0.00', 0.0000, 3),
	(15, 5, 'total', 'Tổng cộng :', '$1,100.00', 1100.0000, 9),
	(16, 6, 'sub_total', 'Thành tiền:', '$1,100.00', 1100.0000, 1),
	(17, 6, 'shipping', 'Miễn phí vận chuyển', '$0.00', 0.0000, 3),
	(18, 6, 'total', 'Tổng cộng :', '$1,100.00', 1100.0000, 9),
	(19, 7, 'sub_total', 'Thành tiền:', '$1,100.00', 1100.0000, 1),
	(20, 7, 'shipping', 'Miễn phí vận chuyển', '$0.00', 0.0000, 3),
	(21, 7, 'total', 'Tổng cộng :', '$1,100.00', 1100.0000, 9),
	(22, 8, 'sub_total', 'Thành tiền:', '$1,100.00', 1100.0000, 1),
	(23, 8, 'shipping', 'Miễn phí vận chuyển', '$0.00', 0.0000, 3),
	(24, 8, 'total', 'Tổng cộng :', '$1,100.00', 1100.0000, 9),
	(25, 9, 'sub_total', 'Thành tiền:', '$80.00', 80.0000, 1),
	(26, 9, 'shipping', 'Miễn phí vận chuyển', '$0.00', 0.0000, 3),
	(27, 9, 'total', 'Tổng cộng :', '$80.00', 80.0000, 9);
/*!40000 ALTER TABLE `order_total` ENABLE KEYS */;


-- Dumping structure for table zara.order_voucher
DROP TABLE IF EXISTS `order_voucher`;
CREATE TABLE IF NOT EXISTS `order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.order_voucher: 0 rows
DELETE FROM `order_voucher`;
/*!40000 ALTER TABLE `order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_voucher` ENABLE KEYS */;


-- Dumping structure for table zara.product
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.product: 8 rows
DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`) VALUES
	(28, 'ap1', '', '', '', '', '', '', '', 932, 5, 'data/IMG_3920.JPG', 5, 1, 100.0000, 200, 9, '2009-02-03', 0.00000000, 2, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, '2009-02-03 16:06:50', '2013-06-16 17:18:42', 119),
	(30, 'asm1', '', '', '', '', '', '', '', 97, 5, 'data/IMG_3917.JPG', 9, 1, 400.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, '2009-02-03 16:59:00', '2013-06-25 15:05:51', 200),
	(54, 'asm4', '', '', '', '', '', '', '', 100, 5, 'data/IMG_4131.JPG', 9, 1, 400.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, '2013-06-16 17:38:38', '2013-06-16 17:45:44', 2),
	(55, 'asm5', '', '', '', '', '', '', '', 100, 5, 'data/IMG_4125.JPG', 9, 1, 400.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, '2013-06-16 17:45:52', '2013-06-16 17:47:53', 2),
	(50, 'asm2', '', '', '', '', '', '', '', 100, 5, 'data/IMG_3909.JPG', 9, 1, 400.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, '2013-06-16 16:54:51', '2013-06-16 17:19:24', 18),
	(51, 'ap2', '', '', '', '', '', '', '', 98, 5, 'data/IMG_3963.JPG', 9, 1, 400.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, '2013-06-16 17:19:33', '2013-06-16 17:24:16', 40),
	(52, 'ap3', '', '', '', '', '', '', '', 100, 5, 'data/IMG_3969.JPG', 9, 1, 400.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, '2013-06-16 17:24:24', '2013-06-16 17:29:36', 7),
	(53, 'asm3', '', '', '', '', '', '', '', 100, 5, 'data/IMG_4105.JPG', 9, 1, 400.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, '2013-06-16 17:29:49', '2013-06-20 17:28:06', 57);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


-- Dumping structure for table zara.product_attribute
DROP TABLE IF EXISTS `product_attribute`;
CREATE TABLE IF NOT EXISTS `product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.product_attribute: 0 rows
DELETE FROM `product_attribute`;
/*!40000 ALTER TABLE `product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_attribute` ENABLE KEYS */;


-- Dumping structure for table zara.product_description
DROP TABLE IF EXISTS `product_description`;
CREATE TABLE IF NOT EXISTS `product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sort_description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.product_description: 16 rows
DELETE FROM `product_description`;
/*!40000 ALTER TABLE `product_description` DISABLE KEYS */;
INSERT INTO `product_description` (`product_id`, `language_id`, `name`, `description`, `sort_description`, `meta_description`, `meta_keyword`, `tag`) VALUES
	(28, 2, 'Ao Phông 01', '&lt;p&gt;Sản phẩm cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Sản phẩm cực đẹp&lt;/p&gt;\r\n', 'Ao Phông 01', 'Ao Phông 01', ''),
	(28, 3, 'Sản phẩm cực đẹp', '&lt;p&gt;Sản phẩm cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Sản phẩm cực đẹp&lt;/p&gt;\r\n', 'Sản phẩm cực đẹp', 'Sản phẩm cực đẹp', ''),
	(50, 2, 'Ao Sơ Mi 02', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', 'Ao Sơ Mi 02', 'Ao Sơ Mi 02', 'Ao Sơ Mi'),
	(50, 3, 'Ao-So-MI-2', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', 'Ao-So-MI-2', 'Ao-So-MI-2', ''),
	(51, 2, 'Ao Phông 02', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', 'Ao Phông 02', 'Ao Phông 02', 'Ao Sơ Mi'),
	(51, 3, 'Ao Phông 02', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', 'Ao Phông 02', 'Ao Phông 02', ''),
	(52, 2, 'Ao Phông 03', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', 'Ao Phông 03', 'Ao Phông 03', 'Ao Sơ Mi'),
	(52, 3, 'Ao Phông 03', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', 'Ao Phông 03', 'Ao Phông 03', ''),
	(53, 3, 'Ao-So-MI-3', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', 'Ao-So-MI-3', 'Ao-So-MI-3', ''),
	(53, 2, 'Ao Sơ Mi 03', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', 'Ao Sơ Mi 03', 'Ao Sơ Mi 03', 'Ao Sơ Mi'),
	(54, 2, 'Ao Sơ Mi 04', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', 'Ao Sơ Mi 04', 'Ao Sơ Mi 04', 'Ao Sơ Mi'),
	(54, 3, 'Ao Sơ Mi 04', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', 'Ao Sơ Mi 04', 'Ao Sơ Mi 04', ''),
	(55, 2, 'Ao Sơ Mi 05', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', 'Ao Sơ Mi 05', 'Ao Sơ Mi 05', 'Ao Sơ Mi'),
	(55, 3, 'Ao Sơ Mi 05', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', 'Ao Sơ Mi 05', 'Ao Sơ Mi 05', ''),
	(30, 3, 'Ao-So-MI', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', 'Ao-So-MI', 'Ao-So-MI', ''),
	(30, 2, 'Ao Sơ Mi 01', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', '&lt;p&gt;Áo Sơ Mi Cực đẹp&lt;/p&gt;\r\n', 'Ao Sơ Mi 01', 'Ao Sơ Mi 01', 'Ao Sơ Mi');
/*!40000 ALTER TABLE `product_description` ENABLE KEYS */;


-- Dumping structure for table zara.product_discount
DROP TABLE IF EXISTS `product_discount`;
CREATE TABLE IF NOT EXISTS `product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=456 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.product_discount: 0 rows
DELETE FROM `product_discount`;
/*!40000 ALTER TABLE `product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_discount` ENABLE KEYS */;


-- Dumping structure for table zara.product_filter
DROP TABLE IF EXISTS `product_filter`;
CREATE TABLE IF NOT EXISTS `product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.product_filter: 0 rows
DELETE FROM `product_filter`;
/*!40000 ALTER TABLE `product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_filter` ENABLE KEYS */;


-- Dumping structure for table zara.product_image
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE IF NOT EXISTS `product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2493 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.product_image: 30 rows
DELETE FROM `product_image`;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
	(2483, 55, 'data/IMG_4126.JPG', 1),
	(2484, 55, 'data/IMG_4128.JPG', 0),
	(2492, 30, 'data/IMG_3918.JPG', 1),
	(2427, 28, 'data/IMG_3924.JPG', 0),
	(2428, 28, 'data/IMG_3926.JPG', 0),
	(2429, 28, 'data/IMG_3920.JPG', 0),
	(2430, 28, 'data/IMG_3922.JPG', 0),
	(2482, 55, 'data/IMG_4125.JPG', 0),
	(2478, 54, 'data/IMG_4134.JPG', 0),
	(2453, 52, 'data/IMG_3969.JPG', 0),
	(2454, 52, 'data/IMG_3970.JPG', 2),
	(2455, 52, 'data/IMG_3971.JPG', 1),
	(2456, 52, 'data/IMG_3972.JPG', 0),
	(2477, 54, 'data/IMG_4132.JPG', 0),
	(2476, 54, 'data/IMG_4131.JPG', 1),
	(2489, 53, 'no_image.jpg', 1),
	(2488, 53, 'data/IMG_4105.JPG', 0),
	(2487, 53, 'data/IMG_4107.JPG', 0),
	(2486, 53, 'no_image.jpg', 2),
	(2485, 53, 'no_image.jpg', 0),
	(2448, 51, 'data/IMG_3967.JPG', 0),
	(2447, 51, 'data/IMG_3965.JPG', 2),
	(2446, 51, 'data/IMG_3964.JPG', 1),
	(2437, 50, 'data/IMG_3909.JPG', 0),
	(2438, 50, 'data/IMG_3910.JPG', 2),
	(2439, 50, 'data/IMG_3911.JPG', 1),
	(2440, 50, 'data/IMG_3913.JPG', 0),
	(2445, 51, 'data/IMG_3963.JPG', 0),
	(2491, 30, 'data/IMG_3917.JPG', 2),
	(2490, 30, 'no_image.jpg', 0);
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;


-- Dumping structure for table zara.product_option
DROP TABLE IF EXISTS `product_option`;
CREATE TABLE IF NOT EXISTS `product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=241 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.product_option: 8 rows
DELETE FROM `product_option`;
/*!40000 ALTER TABLE `product_option` DISABLE KEYS */;
INSERT INTO `product_option` (`product_option_id`, `product_id`, `option_id`, `option_value`, `required`) VALUES
	(237, 53, 14, '', 1),
	(234, 50, 14, '', 1),
	(231, 30, 14, '', 1),
	(235, 51, 14, '', 1),
	(236, 52, 14, '', 1),
	(238, 54, 14, '', 1),
	(239, 55, 14, '', 1),
	(240, 53, 13, '', 1);
/*!40000 ALTER TABLE `product_option` ENABLE KEYS */;


-- Dumping structure for table zara.product_option_value
DROP TABLE IF EXISTS `product_option_value`;
CREATE TABLE IF NOT EXISTS `product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.product_option_value: 24 rows
DELETE FROM `product_option_value`;
/*!40000 ALTER TABLE `product_option_value` DISABLE KEYS */;
INSERT INTO `product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
	(51, 238, 54, 14, 60, 80, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(52, 238, 54, 14, 62, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(47, 237, 53, 14, 62, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(48, 237, 53, 14, 60, 80, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(49, 237, 53, 14, 63, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(42, 235, 51, 14, 60, 78, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(43, 235, 51, 14, 63, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(41, 235, 51, 14, 62, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(46, 236, 52, 14, 62, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(45, 236, 52, 14, 63, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(40, 234, 50, 14, 62, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(38, 234, 50, 14, 60, 80, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(39, 234, 50, 14, 63, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(44, 236, 52, 14, 60, 80, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(29, 231, 30, 14, 63, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(37, 231, 30, 14, 60, 78, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(30, 231, 30, 14, 62, 9, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(50, 238, 54, 14, 63, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(55, 239, 55, 14, 63, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(54, 239, 55, 14, 62, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(53, 239, 55, 14, 60, 80, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(56, 240, 53, 13, 55, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(57, 240, 53, 13, 57, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(58, 240, 53, 13, 58, 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+');
/*!40000 ALTER TABLE `product_option_value` ENABLE KEYS */;


-- Dumping structure for table zara.product_related
DROP TABLE IF EXISTS `product_related`;
CREATE TABLE IF NOT EXISTS `product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.product_related: 18 rows
DELETE FROM `product_related`;
/*!40000 ALTER TABLE `product_related` DISABLE KEYS */;
INSERT INTO `product_related` (`product_id`, `related_id`) VALUES
	(28, 30),
	(28, 50),
	(28, 51),
	(28, 52),
	(28, 53),
	(28, 54),
	(28, 55),
	(30, 28),
	(30, 51),
	(30, 52),
	(50, 28),
	(51, 28),
	(51, 30),
	(52, 28),
	(52, 30),
	(53, 28),
	(54, 28),
	(55, 28);
/*!40000 ALTER TABLE `product_related` ENABLE KEYS */;


-- Dumping structure for table zara.product_reward
DROP TABLE IF EXISTS `product_reward`;
CREATE TABLE IF NOT EXISTS `product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=589 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.product_reward: 8 rows
DELETE FROM `product_reward`;
/*!40000 ALTER TABLE `product_reward` DISABLE KEYS */;
INSERT INTO `product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
	(572, 28, 1, 400),
	(584, 54, 1, 200),
	(588, 30, 1, 200),
	(586, 55, 1, 200),
	(587, 53, 1, 200),
	(577, 51, 1, 200),
	(575, 50, 1, 200),
	(579, 52, 1, 200);
/*!40000 ALTER TABLE `product_reward` ENABLE KEYS */;


-- Dumping structure for table zara.product_special
DROP TABLE IF EXISTS `product_special`;
CREATE TABLE IF NOT EXISTS `product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=495 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.product_special: 8 rows
DELETE FROM `product_special`;
/*!40000 ALTER TABLE `product_special` DISABLE KEYS */;
INSERT INTO `product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
	(482, 50, 1, 2, 90.0000, '0000-00-00', '0000-00-00'),
	(494, 30, 1, 2, 90.0000, '0000-00-00', '0000-00-00'),
	(493, 30, 1, 1, 80.0000, '0000-00-00', '0000-00-00'),
	(481, 50, 1, 1, 80.0000, '0000-00-00', '0000-00-00'),
	(486, 51, 1, 2, 90.0000, '0000-00-00', '0000-00-00'),
	(485, 51, 1, 1, 80.0000, '0000-00-00', '0000-00-00'),
	(490, 52, 1, 2, 90.0000, '0000-00-00', '0000-00-00'),
	(489, 52, 1, 1, 80.0000, '0000-00-00', '0000-00-00');
/*!40000 ALTER TABLE `product_special` ENABLE KEYS */;


-- Dumping structure for table zara.product_to_category
DROP TABLE IF EXISTS `product_to_category`;
CREATE TABLE IF NOT EXISTS `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.product_to_category: 16 rows
DELETE FROM `product_to_category`;
/*!40000 ALTER TABLE `product_to_category` DISABLE KEYS */;
INSERT INTO `product_to_category` (`product_id`, `category_id`) VALUES
	(28, 33),
	(28, 61),
	(30, 33),
	(30, 61),
	(50, 33),
	(50, 61),
	(51, 33),
	(51, 61),
	(52, 33),
	(52, 61),
	(53, 33),
	(53, 61),
	(54, 33),
	(54, 61),
	(55, 33),
	(55, 61);
/*!40000 ALTER TABLE `product_to_category` ENABLE KEYS */;


-- Dumping structure for table zara.product_to_download
DROP TABLE IF EXISTS `product_to_download`;
CREATE TABLE IF NOT EXISTS `product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.product_to_download: 0 rows
DELETE FROM `product_to_download`;
/*!40000 ALTER TABLE `product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_to_download` ENABLE KEYS */;


-- Dumping structure for table zara.product_to_layout
DROP TABLE IF EXISTS `product_to_layout`;
CREATE TABLE IF NOT EXISTS `product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.product_to_layout: 0 rows
DELETE FROM `product_to_layout`;
/*!40000 ALTER TABLE `product_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_to_layout` ENABLE KEYS */;


-- Dumping structure for table zara.product_to_store
DROP TABLE IF EXISTS `product_to_store`;
CREATE TABLE IF NOT EXISTS `product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.product_to_store: 8 rows
DELETE FROM `product_to_store`;
/*!40000 ALTER TABLE `product_to_store` DISABLE KEYS */;
INSERT INTO `product_to_store` (`product_id`, `store_id`) VALUES
	(28, 0),
	(30, 0),
	(50, 0),
	(51, 0),
	(52, 0),
	(53, 0),
	(54, 0),
	(55, 0);
/*!40000 ALTER TABLE `product_to_store` ENABLE KEYS */;


-- Dumping structure for table zara.return
DROP TABLE IF EXISTS `return`;
CREATE TABLE IF NOT EXISTS `return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.return: 0 rows
DELETE FROM `return`;
/*!40000 ALTER TABLE `return` DISABLE KEYS */;
/*!40000 ALTER TABLE `return` ENABLE KEYS */;


-- Dumping structure for table zara.return_action
DROP TABLE IF EXISTS `return_action`;
CREATE TABLE IF NOT EXISTS `return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.return_action: 6 rows
DELETE FROM `return_action`;
/*!40000 ALTER TABLE `return_action` DISABLE KEYS */;
INSERT INTO `return_action` (`return_action_id`, `language_id`, `name`) VALUES
	(1, 2, 'Refunded'),
	(2, 2, 'Credit Issued'),
	(3, 2, 'Replacement Sent'),
	(1, 3, 'Refunded'),
	(2, 3, 'Credit Issued'),
	(3, 3, 'Replacement Sent');
/*!40000 ALTER TABLE `return_action` ENABLE KEYS */;


-- Dumping structure for table zara.return_history
DROP TABLE IF EXISTS `return_history`;
CREATE TABLE IF NOT EXISTS `return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.return_history: 0 rows
DELETE FROM `return_history`;
/*!40000 ALTER TABLE `return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `return_history` ENABLE KEYS */;


-- Dumping structure for table zara.return_reason
DROP TABLE IF EXISTS `return_reason`;
CREATE TABLE IF NOT EXISTS `return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.return_reason: 10 rows
DELETE FROM `return_reason`;
/*!40000 ALTER TABLE `return_reason` DISABLE KEYS */;
INSERT INTO `return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
	(1, 2, 'Dead On Arrival'),
	(2, 2, 'Received Wrong Item'),
	(3, 2, 'Order Error'),
	(4, 2, 'Faulty, please supply details'),
	(5, 2, 'Other, please supply details'),
	(1, 3, 'Dead On Arrival'),
	(2, 3, 'Received Wrong Item'),
	(3, 3, 'Order Error'),
	(4, 3, 'Faulty, please supply details'),
	(5, 3, 'Other, please supply details');
/*!40000 ALTER TABLE `return_reason` ENABLE KEYS */;


-- Dumping structure for table zara.return_status
DROP TABLE IF EXISTS `return_status`;
CREATE TABLE IF NOT EXISTS `return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.return_status: 6 rows
DELETE FROM `return_status`;
/*!40000 ALTER TABLE `return_status` DISABLE KEYS */;
INSERT INTO `return_status` (`return_status_id`, `language_id`, `name`) VALUES
	(1, 2, 'Pending'),
	(3, 2, 'Complete'),
	(2, 2, 'Awaiting Products'),
	(1, 3, 'Pending'),
	(3, 3, 'Complete'),
	(2, 3, 'Awaiting Products');
/*!40000 ALTER TABLE `return_status` ENABLE KEYS */;


-- Dumping structure for table zara.review
DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.review: 1 rows
DELETE FROM `review`;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
	(1, 30, 0, 'fsd', 'fsdfsdfsdfsfsfsdfsf sdf sf sf sdf sdfsdf sd', 13, 0, '2013-06-04 14:52:37', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;


-- Dumping structure for table zara.setting
DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4756 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.setting: 139 rows
DELETE FROM `setting`;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
	(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
	(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
	(3, 0, 'sub_total', 'sub_total_status', '1', 0),
	(4, 0, 'tax', 'tax_status', '1', 0),
	(5, 0, 'total', 'total_sort_order', '9', 0),
	(6, 0, 'total', 'total_status', '1', 0),
	(7, 0, 'tax', 'tax_sort_order', '5', 0),
	(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
	(9, 0, 'cod', 'cod_sort_order', '5', 0),
	(10, 0, 'cod', 'cod_total', '0.01', 0),
	(11, 0, 'cod', 'cod_order_status_id', '1', 0),
	(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
	(13, 0, 'cod', 'cod_status', '1', 0),
	(14, 0, 'shipping', 'shipping_status', '1', 0),
	(15, 0, 'shipping', 'shipping_estimator', '1', 0),
	(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
	(28, 0, 'coupon', 'coupon_status', '1', 0),
	(34, 0, 'flat', 'flat_sort_order', '1', 0),
	(35, 0, 'flat', 'flat_status', '1', 0),
	(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
	(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
	(41, 0, 'flat', 'flat_cost', '5.00', 0),
	(42, 0, 'credit', 'credit_sort_order', '7', 0),
	(43, 0, 'credit', 'credit_status', '1', 0),
	(53, 0, 'reward', 'reward_sort_order', '2', 0),
	(54, 0, 'reward', 'reward_status', '1', 0),
	(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
	(95, 0, 'voucher', 'voucher_status', '1', 0),
	(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
	(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
	(4753, 0, 'free', 'free_geo_zone_id', '0', 0),
	(4752, 0, 'free', 'free_total', '', 0),
	(4751, 0, 'config', 'config_google_analytics', '', 0),
	(4750, 0, 'config', 'config_error_filename', 'error.txt', 0),
	(4749, 0, 'config', 'config_error_log', '1', 0),
	(4748, 0, 'config', 'config_error_display', '1', 0),
	(4747, 0, 'config', 'config_compression', '0', 0),
	(4746, 0, 'config', 'config_encryption', '7f339d82bc9ee711ed084c4a101fbb25', 0),
	(4745, 0, 'config', 'config_password', '0', 0),
	(4744, 0, 'config', 'config_maintenance', '0', 0),
	(4743, 0, 'config', 'config_file_mime_allowed', '', 0),
	(4742, 0, 'config', 'config_file_extension_allowed', '', 0),
	(4741, 0, 'config', 'config_seo_url', '1', 0),
	(4738, 0, 'config', 'config_secure', '0', 0),
	(4740, 0, 'config', 'config_robots', '', 0),
	(4739, 0, 'config', 'config_shared', '0', 0),
	(4737, 0, 'config', 'config_fraud_status_id', '7', 0),
	(4736, 0, 'config', 'config_fraud_score', '', 0),
	(4735, 0, 'config', 'config_fraud_key', '', 0),
	(4734, 0, 'config', 'config_fraud_detection', '0', 0),
	(4732, 0, 'config', 'config_account_mail', '0', 0),
	(4733, 0, 'config', 'config_alert_emails', '', 0),
	(4731, 0, 'config', 'config_alert_mail', '0', 0),
	(4730, 0, 'config', 'config_smtp_timeout', '5', 0),
	(4729, 0, 'config', 'config_smtp_port', '25', 0),
	(4728, 0, 'config', 'config_smtp_password', '', 0),
	(4727, 0, 'config', 'config_smtp_username', '', 0),
	(4726, 0, 'config', 'config_smtp_host', '', 0),
	(4725, 0, 'config', 'config_mail_parameter', '', 0),
	(4724, 0, 'config', 'config_mail_protocol', 'mail', 0),
	(4723, 0, 'config', 'config_ftp_status', '0', 0),
	(4722, 0, 'config', 'config_ftp_root', '', 0),
	(4721, 0, 'config', 'config_ftp_password', '', 0),
	(4720, 0, 'config', 'config_ftp_username', '', 0),
	(4717, 0, 'config', 'config_image_cart_height', '175', 0),
	(4718, 0, 'config', 'config_ftp_host', 'ishopts.com', 0),
	(4719, 0, 'config', 'config_ftp_port', '21', 0),
	(4716, 0, 'config', 'config_image_cart_width', '135', 0),
	(4714, 0, 'config', 'config_image_wishlist_width', '47', 0),
	(4715, 0, 'config', 'config_image_wishlist_height', '47', 0),
	(4711, 0, 'config', 'config_image_related_height', '35', 0),
	(4712, 0, 'config', 'config_image_compare_width', '90', 0),
	(4713, 0, 'config', 'config_image_compare_height', '90', 0),
	(4708, 0, 'config', 'config_image_additional_width', '150', 0),
	(4709, 0, 'config', 'config_image_additional_height', '150', 0),
	(4710, 0, 'config', 'config_image_related_width', '35', 0),
	(4707, 0, 'config', 'config_image_product_height', '640', 0),
	(4706, 0, 'config', 'config_image_product_width', '400', 0),
	(4705, 0, 'config', 'config_image_popup_height', '600', 0),
	(4704, 0, 'config', 'config_image_popup_width', '400', 0),
	(4702, 0, 'config', 'config_image_thumb_width', '228', 0),
	(4703, 0, 'config', 'config_image_thumb_height', '228', 0),
	(4700, 0, 'config', 'config_image_news_width', '', 0),
	(4701, 0, 'config', 'config_image_news_height', '', 0),
	(4699, 0, 'config', 'config_image_category_height', '80', 0),
	(4698, 0, 'config', 'config_image_category_width', '80', 0),
	(4697, 0, 'config', 'config_icon', 'data/cart.png', 0),
	(4696, 0, 'config', 'config_logo', 'data/logo_Zara.png', 0),
	(4695, 0, 'config', 'config_return_status_id', '2', 0),
	(4694, 0, 'config', 'config_return_id', '0', 0),
	(4690, 0, 'config', 'config_stock_checkout', '0', 0),
	(4691, 0, 'config', 'config_stock_status_id', '5', 0),
	(4692, 0, 'config', 'config_affiliate_id', '4', 0),
	(4693, 0, 'config', 'config_commission', '5', 0),
	(4689, 0, 'config', 'config_stock_warning', '0', 0),
	(4688, 0, 'config', 'config_stock_display', '0', 0),
	(4687, 0, 'config', 'config_complete_status_id', '5', 0),
	(4686, 0, 'config', 'config_order_status_id', '1', 0),
	(4685, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
	(4684, 0, 'config', 'config_order_edit', '100', 0),
	(4683, 0, 'config', 'config_checkout_id', '3', 0),
	(4681, 0, 'config', 'config_cart_weight', '1', 0),
	(4682, 0, 'config', 'config_guest_checkout', '1', 0),
	(4679, 0, 'config', 'config_customer_price', '0', 0),
	(4680, 0, 'config', 'config_account_id', '5', 0),
	(4678, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
	(4677, 0, 'config', 'config_customer_group_id', '1', 0),
	(4676, 0, 'config', 'config_customer_online', '0', 0),
	(4675, 0, 'config', 'config_tax_customer', 'shipping', 0),
	(4674, 0, 'config', 'config_tax_default', 'shipping', 0),
	(4673, 0, 'config', 'config_vat', '0', 0),
	(4672, 0, 'config', 'config_tax', '1', 0),
	(4671, 0, 'config', 'config_voucher_max', '1000', 0),
	(4670, 0, 'config', 'config_voucher_min', '1', 0),
	(4669, 0, 'config', 'config_download', '1', 0),
	(4668, 0, 'config', 'config_review_status', '1', 0),
	(4667, 0, 'config', 'config_product_count', '1', 0),
	(4666, 0, 'config', 'config_admin_limit', '20', 0),
	(4662, 0, 'config', 'config_currency_auto', '1', 0),
	(4663, 0, 'config', 'config_length_class_id', '1', 0),
	(4664, 0, 'config', 'config_weight_class_id', '1', 0),
	(4665, 0, 'config', 'config_catalog_limit', '15', 0),
	(4661, 0, 'config', 'config_currency', 'USD', 0),
	(4660, 0, 'config', 'config_admin_language', 'vi', 0),
	(4658, 0, 'config', 'config_zone_id', '3776', 0),
	(4659, 0, 'config', 'config_language', 'vi', 0),
	(4657, 0, 'config', 'config_country_id', '230', 0),
	(4656, 0, 'config', 'config_layout_id', '4', 0),
	(4655, 0, 'config', 'config_template', 'default', 0),
	(4654, 0, 'config', 'config_meta_description', 'Thơi trang công sở nam - thời trang phan nguyễn', 0),
	(4652, 0, 'config', 'config_fax', '', 0),
	(4653, 0, 'config', 'config_title', 'Thời Trang Phan Nguyễn', 0),
	(4650, 0, 'config', 'config_email', 'phannguyen@admin.com', 0),
	(4651, 0, 'config', 'config_telephone', '0936474346', 0),
	(4649, 0, 'config', 'config_address', '98 Đội Cấn - Ba Đình - Hà Nội', 0),
	(4648, 0, 'config', 'config_owner', 'Thời Trang Phan Nguyễn', 0),
	(4647, 0, 'config', 'config_name', 'Thời Trang Phan Nguyễn', 0),
	(4754, 0, 'free', 'free_status', '1', 0),
	(4755, 0, 'free', 'free_sort_order', '', 0);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;


-- Dumping structure for table zara.stock_status
DROP TABLE IF EXISTS `stock_status`;
CREATE TABLE IF NOT EXISTS `stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.stock_status: 8 rows
DELETE FROM `stock_status`;
/*!40000 ALTER TABLE `stock_status` DISABLE KEYS */;
INSERT INTO `stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
	(7, 2, 'In Stock'),
	(8, 2, 'Pre-Order'),
	(5, 2, 'Out Of Stock'),
	(6, 2, '2 - 3 Days'),
	(7, 3, 'In Stock'),
	(8, 3, 'Pre-Order'),
	(5, 3, 'Out Of Stock'),
	(6, 3, '2 - 3 Days');
/*!40000 ALTER TABLE `stock_status` ENABLE KEYS */;


-- Dumping structure for table zara.store
DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.store: 0 rows
DELETE FROM `store`;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
/*!40000 ALTER TABLE `store` ENABLE KEYS */;


-- Dumping structure for table zara.tax_class
DROP TABLE IF EXISTS `tax_class`;
CREATE TABLE IF NOT EXISTS `tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.tax_class: 2 rows
DELETE FROM `tax_class`;
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;
INSERT INTO `tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
	(9, 'Taxable Goods', 'Taxed Stuff', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
	(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');
/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;


-- Dumping structure for table zara.tax_rate
DROP TABLE IF EXISTS `tax_rate`;
CREATE TABLE IF NOT EXISTS `tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.tax_rate: 2 rows
DELETE FROM `tax_rate`;
/*!40000 ALTER TABLE `tax_rate` DISABLE KEYS */;
INSERT INTO `tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
	(86, 3, 'VAT (17.5%)', 17.5000, 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
	(87, 3, 'Eco Tax (-2.00)', 2.0000, 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');
/*!40000 ALTER TABLE `tax_rate` ENABLE KEYS */;


-- Dumping structure for table zara.tax_rate_to_customer_group
DROP TABLE IF EXISTS `tax_rate_to_customer_group`;
CREATE TABLE IF NOT EXISTS `tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.tax_rate_to_customer_group: 2 rows
DELETE FROM `tax_rate_to_customer_group`;
/*!40000 ALTER TABLE `tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
	(86, 1),
	(87, 1);
/*!40000 ALTER TABLE `tax_rate_to_customer_group` ENABLE KEYS */;


-- Dumping structure for table zara.tax_rule
DROP TABLE IF EXISTS `tax_rule`;
CREATE TABLE IF NOT EXISTS `tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.tax_rule: 4 rows
DELETE FROM `tax_rule`;
/*!40000 ALTER TABLE `tax_rule` DISABLE KEYS */;
INSERT INTO `tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
	(121, 10, 86, 'payment', 1),
	(120, 10, 87, 'store', 0),
	(128, 9, 86, 'shipping', 1),
	(127, 9, 87, 'shipping', 2);
/*!40000 ALTER TABLE `tax_rule` ENABLE KEYS */;


-- Dumping structure for table zara.url_alias
DROP TABLE IF EXISTS `url_alias`;
CREATE TABLE IF NOT EXISTS `url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`)
) ENGINE=MyISAM AUTO_INCREMENT=874 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.url_alias: 33 rows
DELETE FROM `url_alias`;
/*!40000 ALTER TABLE `url_alias` DISABLE KEYS */;
INSERT INTO `url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
	(873, 'product_id=30', 'ao-so-mi-nam-01'),
	(778, 'category_id=25', 'nu'),
	(777, 'category_id=33', 'nam'),
	(861, 'manufacturer_id=5', 'phan-nguyen2'),
	(848, 'information_id=4', 'about_us'),
	(780, 'category_id=59', 'tre-em'),
	(824, 'news_category_id=1', 'tin-tuc'),
	(794, 'news_id=1', 'sale-off-50-hang-lascote.html'),
	(860, 'manufacturer_id=9', 'phan-nguyen'),
	(826, 'news_id=2', 'zara-dai-ha-gia.html'),
	(804, 'category_id=60', 'quan'),
	(844, 'category_id=61', 'ao'),
	(845, 'category_id=62', 'phu-kien'),
	(802, 'category_id=63', 'quan'),
	(807, 'category_id=65', 'phu-kien'),
	(843, 'news_category_id=2', 'bao-chi-truyen-thong'),
	(849, 'news_id=3', 'testing.html'),
	(827, 'news_id=4', 'bi-quyet-ton-dang-cung-ke-soc.html'),
	(828, 'news_id=5', 'so-mi-mua-he.html'),
	(829, 'news_id=6', 'dem-hoi-chan-dai-7-bi-xu-phat-35-trieu-dong.html'),
	(830, 'news_id=7', 'lang-man-o-bien-hi-eva:-hanh-trinh-cua-thoi-trang-di.html'),
	(831, 'news_id=8', 'mung-1-6-cho-ca-nha-deu-dep.html'),
	(832, 'news_id=9', 'mai-phuong-thuy-tuoi-tan-ben-canh-dan-em.html'),
	(833, 'news_id=10', 'scandal-cho-mua-di-bien.html'),
	(834, 'news_id=11', 'thoi-trang-he-noi-bat-cung-mango.html'),
	(835, 'news_id=12', 'em-gai-chung-thuc-quyen-ngam-eo-con-kien-cua-em-gai-chung-thuc-quyen.html'),
	(862, 'product_id=28', 'ao-phong-phan-nguyen-01'),
	(865, 'product_id=50', 'ao-so-mi-nam-02'),
	(866, 'product_id=51', 'ao-phong-phan-nguyen-02'),
	(867, 'product_id=52', 'ao-phong-phan-nguyen-03'),
	(872, 'product_id=53', 'ao-so-mi-nam04'),
	(870, 'product_id=54', 'ao-so-mi-nam4'),
	(871, 'product_id=55', 'ao-so-mi-nu-05');
/*!40000 ALTER TABLE `url_alias` ENABLE KEYS */;


-- Dumping structure for table zara.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.user: 1 rows
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `code`, `ip`, `status`, `date_added`) VALUES
	(1, 1, 'admin', 'eb3b619f4e511cdecae9a01f958f9322a445eeb6', '16c32b3ef', '', '', 'admin@admin.com', '', '127.0.0.1', 1, '2013-05-16 23:52:20');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- Dumping structure for table zara.user_group
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE IF NOT EXISTS `user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.user_group: 2 rows
DELETE FROM `user_group`;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` (`user_group_id`, `name`, `permission`) VALUES
	(1, 'Top Administrator', 'a:2:{s:6:"access";a:138:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:12:"catalog/news";i:8;s:21:"catalog/news_category";i:9;s:20:"catalog/news_comment";i:10;s:14:"catalog/option";i:11;s:15:"catalog/product";i:12;s:14:"catalog/review";i:13;s:18:"common/filemanager";i:14;s:13:"design/banner";i:15;s:19:"design/custom_field";i:16;s:13:"design/layout";i:17;s:14:"extension/feed";i:18;s:17:"extension/manager";i:19;s:16:"extension/module";i:20;s:17:"extension/payment";i:21;s:18:"extension/shipping";i:22;s:15:"extension/total";i:23;s:16:"feed/google_base";i:24;s:19:"feed/google_sitemap";i:25;s:20:"localisation/country";i:26;s:21:"localisation/currency";i:27;s:21:"localisation/geo_zone";i:28;s:21:"localisation/language";i:29;s:25:"localisation/length_class";i:30;s:25:"localisation/order_status";i:31;s:26:"localisation/return_action";i:32;s:26:"localisation/return_reason";i:33;s:26:"localisation/return_status";i:34;s:25:"localisation/stock_status";i:35;s:22:"localisation/tax_class";i:36;s:21:"localisation/tax_rate";i:37;s:25:"localisation/weight_class";i:38;s:17:"localisation/zone";i:39;s:14:"module/account";i:40;s:16:"module/affiliate";i:41;s:13:"module/banner";i:42;s:17:"module/bestseller";i:43;s:15:"module/carousel";i:44;s:15:"module/category";i:45;s:15:"module/featured";i:46;s:13:"module/filter";i:47;s:18:"module/google_talk";i:48;s:18:"module/information";i:49;s:13:"module/latest";i:50;s:20:"module/news_category";i:51;s:19:"module/newsfeatured";i:52;s:17:"module/newslatest";i:53;s:16:"module/slideshow";i:54;s:14:"module/special";i:55;s:12:"module/store";i:56;s:18:"module/tnt_newscat";i:57;s:20:"module/vqmod_manager";i:58;s:14:"module/welcome";i:59;s:24:"payment/authorizenet_aim";i:60;s:21:"payment/bank_transfer";i:61;s:14:"payment/cheque";i:62;s:11:"payment/cod";i:63;s:21:"payment/free_checkout";i:64;s:22:"payment/klarna_account";i:65;s:22:"payment/klarna_invoice";i:66;s:14:"payment/liqpay";i:67;s:20:"payment/moneybookers";i:68;s:14:"payment/nochex";i:69;s:15:"payment/paymate";i:70;s:16:"payment/paypoint";i:71;s:13:"payment/payza";i:72;s:26:"payment/perpetual_payments";i:73;s:14:"payment/pp_pro";i:74;s:17:"payment/pp_pro_uk";i:75;s:19:"payment/pp_standard";i:76;s:15:"payment/sagepay";i:77;s:22:"payment/sagepay_direct";i:78;s:18:"payment/sagepay_us";i:79;s:19:"payment/twocheckout";i:80;s:28:"payment/web_payment_software";i:81;s:16:"payment/worldpay";i:82;s:27:"report/affiliate_commission";i:83;s:22:"report/customer_credit";i:84;s:22:"report/customer_online";i:85;s:21:"report/customer_order";i:86;s:22:"report/customer_reward";i:87;s:24:"report/product_purchased";i:88;s:21:"report/product_viewed";i:89;s:18:"report/sale_coupon";i:90;s:17:"report/sale_order";i:91;s:18:"report/sale_return";i:92;s:20:"report/sale_shipping";i:93;s:15:"report/sale_tax";i:94;s:14:"sale/affiliate";i:95;s:12:"sale/contact";i:96;s:11:"sale/coupon";i:97;s:13:"sale/customer";i:98;s:20:"sale/customer_ban_ip";i:99;s:19:"sale/customer_group";i:100;s:10:"sale/order";i:101;s:11:"sale/return";i:102;s:12:"sale/voucher";i:103;s:18:"sale/voucher_theme";i:104;s:15:"setting/setting";i:105;s:13:"setting/store";i:106;s:16:"shipping/auspost";i:107;s:17:"shipping/citylink";i:108;s:14:"shipping/fedex";i:109;s:13:"shipping/flat";i:110;s:13:"shipping/free";i:111;s:13:"shipping/item";i:112;s:23:"shipping/parcelforce_48";i:113;s:15:"shipping/pickup";i:114;s:19:"shipping/royal_mail";i:115;s:12:"shipping/ups";i:116;s:13:"shipping/usps";i:117;s:15:"shipping/weight";i:118;s:11:"tool/backup";i:119;s:14:"tool/error_log";i:120;s:12:"total/coupon";i:121;s:12:"total/credit";i:122;s:14:"total/handling";i:123;s:16:"total/klarna_fee";i:124;s:19:"total/low_order_fee";i:125;s:12:"total/reward";i:126;s:14:"total/shipping";i:127;s:15:"total/sub_total";i:128;s:9:"total/tax";i:129;s:11:"total/total";i:130;s:13:"total/voucher";i:131;s:9:"user/user";i:132;s:20:"user/user_permission";i:133;s:18:"module/tnt_newscat";i:134;s:13:"module/filter";i:135;s:28:"module/manufacturersdropdown";i:136;s:19:"module/filteroption";i:137;s:13:"shipping/free";}s:6:"modify";a:138:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:12:"catalog/news";i:8;s:21:"catalog/news_category";i:9;s:20:"catalog/news_comment";i:10;s:14:"catalog/option";i:11;s:15:"catalog/product";i:12;s:14:"catalog/review";i:13;s:18:"common/filemanager";i:14;s:13:"design/banner";i:15;s:19:"design/custom_field";i:16;s:13:"design/layout";i:17;s:14:"extension/feed";i:18;s:17:"extension/manager";i:19;s:16:"extension/module";i:20;s:17:"extension/payment";i:21;s:18:"extension/shipping";i:22;s:15:"extension/total";i:23;s:16:"feed/google_base";i:24;s:19:"feed/google_sitemap";i:25;s:20:"localisation/country";i:26;s:21:"localisation/currency";i:27;s:21:"localisation/geo_zone";i:28;s:21:"localisation/language";i:29;s:25:"localisation/length_class";i:30;s:25:"localisation/order_status";i:31;s:26:"localisation/return_action";i:32;s:26:"localisation/return_reason";i:33;s:26:"localisation/return_status";i:34;s:25:"localisation/stock_status";i:35;s:22:"localisation/tax_class";i:36;s:21:"localisation/tax_rate";i:37;s:25:"localisation/weight_class";i:38;s:17:"localisation/zone";i:39;s:14:"module/account";i:40;s:16:"module/affiliate";i:41;s:13:"module/banner";i:42;s:17:"module/bestseller";i:43;s:15:"module/carousel";i:44;s:15:"module/category";i:45;s:15:"module/featured";i:46;s:13:"module/filter";i:47;s:18:"module/google_talk";i:48;s:18:"module/information";i:49;s:13:"module/latest";i:50;s:20:"module/news_category";i:51;s:19:"module/newsfeatured";i:52;s:17:"module/newslatest";i:53;s:16:"module/slideshow";i:54;s:14:"module/special";i:55;s:12:"module/store";i:56;s:18:"module/tnt_newscat";i:57;s:20:"module/vqmod_manager";i:58;s:14:"module/welcome";i:59;s:24:"payment/authorizenet_aim";i:60;s:21:"payment/bank_transfer";i:61;s:14:"payment/cheque";i:62;s:11:"payment/cod";i:63;s:21:"payment/free_checkout";i:64;s:22:"payment/klarna_account";i:65;s:22:"payment/klarna_invoice";i:66;s:14:"payment/liqpay";i:67;s:20:"payment/moneybookers";i:68;s:14:"payment/nochex";i:69;s:15:"payment/paymate";i:70;s:16:"payment/paypoint";i:71;s:13:"payment/payza";i:72;s:26:"payment/perpetual_payments";i:73;s:14:"payment/pp_pro";i:74;s:17:"payment/pp_pro_uk";i:75;s:19:"payment/pp_standard";i:76;s:15:"payment/sagepay";i:77;s:22:"payment/sagepay_direct";i:78;s:18:"payment/sagepay_us";i:79;s:19:"payment/twocheckout";i:80;s:28:"payment/web_payment_software";i:81;s:16:"payment/worldpay";i:82;s:27:"report/affiliate_commission";i:83;s:22:"report/customer_credit";i:84;s:22:"report/customer_online";i:85;s:21:"report/customer_order";i:86;s:22:"report/customer_reward";i:87;s:24:"report/product_purchased";i:88;s:21:"report/product_viewed";i:89;s:18:"report/sale_coupon";i:90;s:17:"report/sale_order";i:91;s:18:"report/sale_return";i:92;s:20:"report/sale_shipping";i:93;s:15:"report/sale_tax";i:94;s:14:"sale/affiliate";i:95;s:12:"sale/contact";i:96;s:11:"sale/coupon";i:97;s:13:"sale/customer";i:98;s:20:"sale/customer_ban_ip";i:99;s:19:"sale/customer_group";i:100;s:10:"sale/order";i:101;s:11:"sale/return";i:102;s:12:"sale/voucher";i:103;s:18:"sale/voucher_theme";i:104;s:15:"setting/setting";i:105;s:13:"setting/store";i:106;s:16:"shipping/auspost";i:107;s:17:"shipping/citylink";i:108;s:14:"shipping/fedex";i:109;s:13:"shipping/flat";i:110;s:13:"shipping/free";i:111;s:13:"shipping/item";i:112;s:23:"shipping/parcelforce_48";i:113;s:15:"shipping/pickup";i:114;s:19:"shipping/royal_mail";i:115;s:12:"shipping/ups";i:116;s:13:"shipping/usps";i:117;s:15:"shipping/weight";i:118;s:11:"tool/backup";i:119;s:14:"tool/error_log";i:120;s:12:"total/coupon";i:121;s:12:"total/credit";i:122;s:14:"total/handling";i:123;s:16:"total/klarna_fee";i:124;s:19:"total/low_order_fee";i:125;s:12:"total/reward";i:126;s:14:"total/shipping";i:127;s:15:"total/sub_total";i:128;s:9:"total/tax";i:129;s:11:"total/total";i:130;s:13:"total/voucher";i:131;s:9:"user/user";i:132;s:20:"user/user_permission";i:133;s:18:"module/tnt_newscat";i:134;s:13:"module/filter";i:135;s:28:"module/manufacturersdropdown";i:136;s:19:"module/filteroption";i:137;s:13:"shipping/free";}}'),
	(10, 'Demonstration', '');
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;


-- Dumping structure for table zara.voucher
DROP TABLE IF EXISTS `voucher`;
CREATE TABLE IF NOT EXISTS `voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.voucher: 0 rows
DELETE FROM `voucher`;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;


-- Dumping structure for table zara.voucher_history
DROP TABLE IF EXISTS `voucher_history`;
CREATE TABLE IF NOT EXISTS `voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.voucher_history: 0 rows
DELETE FROM `voucher_history`;
/*!40000 ALTER TABLE `voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_history` ENABLE KEYS */;


-- Dumping structure for table zara.voucher_theme
DROP TABLE IF EXISTS `voucher_theme`;
CREATE TABLE IF NOT EXISTS `voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.voucher_theme: 3 rows
DELETE FROM `voucher_theme`;
/*!40000 ALTER TABLE `voucher_theme` DISABLE KEYS */;
INSERT INTO `voucher_theme` (`voucher_theme_id`, `image`) VALUES
	(8, 'data/demo/canon_eos_5d_2.jpg'),
	(7, 'data/demo/gift-voucher-birthday.jpg'),
	(6, 'data/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `voucher_theme` ENABLE KEYS */;


-- Dumping structure for table zara.voucher_theme_description
DROP TABLE IF EXISTS `voucher_theme_description`;
CREATE TABLE IF NOT EXISTS `voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table zara.voucher_theme_description: 6 rows
DELETE FROM `voucher_theme_description`;
/*!40000 ALTER TABLE `voucher_theme_description` DISABLE KEYS */;
INSERT INTO `voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
	(6, 2, 'Christmas'),
	(7, 2, 'Birthday'),
	(8, 2, 'General'),
	(6, 3, 'Christmas'),
	(7, 3, 'Birthday'),
	(8, 3, 'General');
/*!40000 ALTER TABLE `voucher_theme_description` ENABLE KEYS */;


-- Dumping structure for table zara.weight_class
DROP TABLE IF EXISTS `weight_class`;
CREATE TABLE IF NOT EXISTS `weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.weight_class: 4 rows
DELETE FROM `weight_class`;
/*!40000 ALTER TABLE `weight_class` DISABLE KEYS */;
INSERT INTO `weight_class` (`weight_class_id`, `value`) VALUES
	(1, 1.00000000),
	(2, 1000.00000000),
	(5, 2.20460000),
	(6, 35.27400000);
/*!40000 ALTER TABLE `weight_class` ENABLE KEYS */;


-- Dumping structure for table zara.weight_class_description
DROP TABLE IF EXISTS `weight_class_description`;
CREATE TABLE IF NOT EXISTS `weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.weight_class_description: 8 rows
DELETE FROM `weight_class_description`;
/*!40000 ALTER TABLE `weight_class_description` DISABLE KEYS */;
INSERT INTO `weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
	(1, 2, 'Kilogram', 'kg'),
	(2, 2, 'Gram', 'g'),
	(5, 2, 'Pound ', 'lb'),
	(6, 2, 'Ounce', 'oz'),
	(1, 3, 'Kilogram', 'kg'),
	(2, 3, 'Gram', 'g'),
	(5, 3, 'Pound ', 'lb'),
	(6, 3, 'Ounce', 'oz');
/*!40000 ALTER TABLE `weight_class_description` ENABLE KEYS */;


-- Dumping structure for table zara.zone
DROP TABLE IF EXISTS `zone`;
CREATE TABLE IF NOT EXISTS `zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4033 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.zone: 3,985 rows
DELETE FROM `zone`;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT INTO `zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
	(1, 1, 'Badakhshan', 'BDS', 1),
	(2, 1, 'Badghis', 'BDG', 1),
	(3, 1, 'Baghlan', 'BGL', 1),
	(4, 1, 'Balkh', 'BAL', 1),
	(5, 1, 'Bamian', 'BAM', 1),
	(6, 1, 'Farah', 'FRA', 1),
	(7, 1, 'Faryab', 'FYB', 1),
	(8, 1, 'Ghazni', 'GHA', 1),
	(9, 1, 'Ghowr', 'GHO', 1),
	(10, 1, 'Helmand', 'HEL', 1),
	(11, 1, 'Herat', 'HER', 1),
	(12, 1, 'Jowzjan', 'JOW', 1),
	(13, 1, 'Kabul', 'KAB', 1),
	(14, 1, 'Kandahar', 'KAN', 1),
	(15, 1, 'Kapisa', 'KAP', 1),
	(16, 1, 'Khost', 'KHO', 1),
	(17, 1, 'Konar', 'KNR', 1),
	(18, 1, 'Kondoz', 'KDZ', 1),
	(19, 1, 'Laghman', 'LAG', 1),
	(20, 1, 'Lowgar', 'LOW', 1),
	(21, 1, 'Nangrahar', 'NAN', 1),
	(22, 1, 'Nimruz', 'NIM', 1),
	(23, 1, 'Nurestan', 'NUR', 1),
	(24, 1, 'Oruzgan', 'ORU', 1),
	(25, 1, 'Paktia', 'PIA', 1),
	(26, 1, 'Paktika', 'PKA', 1),
	(27, 1, 'Parwan', 'PAR', 1),
	(28, 1, 'Samangan', 'SAM', 1),
	(29, 1, 'Sar-e Pol', 'SAR', 1),
	(30, 1, 'Takhar', 'TAK', 1),
	(31, 1, 'Wardak', 'WAR', 1),
	(32, 1, 'Zabol', 'ZAB', 1),
	(33, 2, 'Berat', 'BR', 1),
	(34, 2, 'Bulqize', 'BU', 1),
	(35, 2, 'Delvine', 'DL', 1),
	(36, 2, 'Devoll', 'DV', 1),
	(37, 2, 'Diber', 'DI', 1),
	(38, 2, 'Durres', 'DR', 1),
	(39, 2, 'Elbasan', 'EL', 1),
	(40, 2, 'Kolonje', 'ER', 1),
	(41, 2, 'Fier', 'FR', 1),
	(42, 2, 'Gjirokaster', 'GJ', 1),
	(43, 2, 'Gramsh', 'GR', 1),
	(44, 2, 'Has', 'HA', 1),
	(45, 2, 'Kavaje', 'KA', 1),
	(46, 2, 'Kurbin', 'KB', 1),
	(47, 2, 'Kucove', 'KC', 1),
	(48, 2, 'Korce', 'KO', 1),
	(49, 2, 'Kruje', 'KR', 1),
	(50, 2, 'Kukes', 'KU', 1),
	(51, 2, 'Librazhd', 'LB', 1),
	(52, 2, 'Lezhe', 'LE', 1),
	(53, 2, 'Lushnje', 'LU', 1),
	(54, 2, 'Malesi e Madhe', 'MM', 1),
	(55, 2, 'Mallakaster', 'MK', 1),
	(56, 2, 'Mat', 'MT', 1),
	(57, 2, 'Mirdite', 'MR', 1),
	(58, 2, 'Peqin', 'PQ', 1),
	(59, 2, 'Permet', 'PR', 1),
	(60, 2, 'Pogradec', 'PG', 1),
	(61, 2, 'Puke', 'PU', 1),
	(62, 2, 'Shkoder', 'SH', 1),
	(63, 2, 'Skrapar', 'SK', 1),
	(64, 2, 'Sarande', 'SR', 1),
	(65, 2, 'Tepelene', 'TE', 1),
	(66, 2, 'Tropoje', 'TP', 1),
	(67, 2, 'Tirane', 'TR', 1),
	(68, 2, 'Vlore', 'VL', 1),
	(69, 3, 'Adrar', 'ADR', 1),
	(70, 3, 'Ain Defla', 'ADE', 1),
	(71, 3, 'Ain Temouchent', 'ATE', 1),
	(72, 3, 'Alger', 'ALG', 1),
	(73, 3, 'Annaba', 'ANN', 1),
	(74, 3, 'Batna', 'BAT', 1),
	(75, 3, 'Bechar', 'BEC', 1),
	(76, 3, 'Bejaia', 'BEJ', 1),
	(77, 3, 'Biskra', 'BIS', 1),
	(78, 3, 'Blida', 'BLI', 1),
	(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
	(80, 3, 'Bouira', 'BOA', 1),
	(81, 3, 'Boumerdes', 'BMD', 1),
	(82, 3, 'Chlef', 'CHL', 1),
	(83, 3, 'Constantine', 'CON', 1),
	(84, 3, 'Djelfa', 'DJE', 1),
	(85, 3, 'El Bayadh', 'EBA', 1),
	(86, 3, 'El Oued', 'EOU', 1),
	(87, 3, 'El Tarf', 'ETA', 1),
	(88, 3, 'Ghardaia', 'GHA', 1),
	(89, 3, 'Guelma', 'GUE', 1),
	(90, 3, 'Illizi', 'ILL', 1),
	(91, 3, 'Jijel', 'JIJ', 1),
	(92, 3, 'Khenchela', 'KHE', 1),
	(93, 3, 'Laghouat', 'LAG', 1),
	(94, 3, 'Muaskar', 'MUA', 1),
	(95, 3, 'Medea', 'MED', 1),
	(96, 3, 'Mila', 'MIL', 1),
	(97, 3, 'Mostaganem', 'MOS', 1),
	(98, 3, 'M\'Sila', 'MSI', 1),
	(99, 3, 'Naama', 'NAA', 1),
	(100, 3, 'Oran', 'ORA', 1),
	(101, 3, 'Ouargla', 'OUA', 1),
	(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
	(103, 3, 'Relizane', 'REL', 1),
	(104, 3, 'Saida', 'SAI', 1),
	(105, 3, 'Setif', 'SET', 1),
	(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
	(107, 3, 'Skikda', 'SKI', 1),
	(108, 3, 'Souk Ahras', 'SAH', 1),
	(109, 3, 'Tamanghasset', 'TAM', 1),
	(110, 3, 'Tebessa', 'TEB', 1),
	(111, 3, 'Tiaret', 'TIA', 1),
	(112, 3, 'Tindouf', 'TIN', 1),
	(113, 3, 'Tipaza', 'TIP', 1),
	(114, 3, 'Tissemsilt', 'TIS', 1),
	(115, 3, 'Tizi Ouzou', 'TOU', 1),
	(116, 3, 'Tlemcen', 'TLE', 1),
	(117, 4, 'Eastern', 'E', 1),
	(118, 4, 'Manu\'a', 'M', 1),
	(119, 4, 'Rose Island', 'R', 1),
	(120, 4, 'Swains Island', 'S', 1),
	(121, 4, 'Western', 'W', 1),
	(122, 5, 'Andorra la Vella', 'ALV', 1),
	(123, 5, 'Canillo', 'CAN', 1),
	(124, 5, 'Encamp', 'ENC', 1),
	(125, 5, 'Escaldes-Engordany', 'ESE', 1),
	(126, 5, 'La Massana', 'LMA', 1),
	(127, 5, 'Ordino', 'ORD', 1),
	(128, 5, 'Sant Julia de Loria', 'SJL', 1),
	(129, 6, 'Bengo', 'BGO', 1),
	(130, 6, 'Benguela', 'BGU', 1),
	(131, 6, 'Bie', 'BIE', 1),
	(132, 6, 'Cabinda', 'CAB', 1),
	(133, 6, 'Cuando-Cubango', 'CCU', 1),
	(134, 6, 'Cuanza Norte', 'CNO', 1),
	(135, 6, 'Cuanza Sul', 'CUS', 1),
	(136, 6, 'Cunene', 'CNN', 1),
	(137, 6, 'Huambo', 'HUA', 1),
	(138, 6, 'Huila', 'HUI', 1),
	(139, 6, 'Luanda', 'LUA', 1),
	(140, 6, 'Lunda Norte', 'LNO', 1),
	(141, 6, 'Lunda Sul', 'LSU', 1),
	(142, 6, 'Malange', 'MAL', 1),
	(143, 6, 'Moxico', 'MOX', 1),
	(144, 6, 'Namibe', 'NAM', 1),
	(145, 6, 'Uige', 'UIG', 1),
	(146, 6, 'Zaire', 'ZAI', 1),
	(147, 9, 'Saint George', 'ASG', 1),
	(148, 9, 'Saint John', 'ASJ', 1),
	(149, 9, 'Saint Mary', 'ASM', 1),
	(150, 9, 'Saint Paul', 'ASL', 1),
	(151, 9, 'Saint Peter', 'ASR', 1),
	(152, 9, 'Saint Philip', 'ASH', 1),
	(153, 9, 'Barbuda', 'BAR', 1),
	(154, 9, 'Redonda', 'RED', 1),
	(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
	(156, 10, 'Buenos Aires', 'BA', 1),
	(157, 10, 'Catamarca', 'CA', 1),
	(158, 10, 'Chaco', 'CH', 1),
	(159, 10, 'Chubut', 'CU', 1),
	(160, 10, 'Cordoba', 'CO', 1),
	(161, 10, 'Corrientes', 'CR', 1),
	(162, 10, 'Distrito Federal', 'DF', 1),
	(163, 10, 'Entre Rios', 'ER', 1),
	(164, 10, 'Formosa', 'FO', 1),
	(165, 10, 'Jujuy', 'JU', 1),
	(166, 10, 'La Pampa', 'LP', 1),
	(167, 10, 'La Rioja', 'LR', 1),
	(168, 10, 'Mendoza', 'ME', 1),
	(169, 10, 'Misiones', 'MI', 1),
	(170, 10, 'Neuquen', 'NE', 1),
	(171, 10, 'Rio Negro', 'RN', 1),
	(172, 10, 'Salta', 'SA', 1),
	(173, 10, 'San Juan', 'SJ', 1),
	(174, 10, 'San Luis', 'SL', 1),
	(175, 10, 'Santa Cruz', 'SC', 1),
	(176, 10, 'Santa Fe', 'SF', 1),
	(177, 10, 'Santiago del Estero', 'SD', 1),
	(178, 10, 'Tierra del Fuego', 'TF', 1),
	(179, 10, 'Tucuman', 'TU', 1),
	(180, 11, 'Aragatsotn', 'AGT', 1),
	(181, 11, 'Ararat', 'ARR', 1),
	(182, 11, 'Armavir', 'ARM', 1),
	(183, 11, 'Geghark\'unik\'', 'GEG', 1),
	(184, 11, 'Kotayk\'', 'KOT', 1),
	(185, 11, 'Lorri', 'LOR', 1),
	(186, 11, 'Shirak', 'SHI', 1),
	(187, 11, 'Syunik\'', 'SYU', 1),
	(188, 11, 'Tavush', 'TAV', 1),
	(189, 11, 'Vayots\' Dzor', 'VAY', 1),
	(190, 11, 'Yerevan', 'YER', 1),
	(191, 13, 'Australian Capital Territory', 'ACT', 1),
	(192, 13, 'New South Wales', 'NSW', 1),
	(193, 13, 'Northern Territory', 'NT', 1),
	(194, 13, 'Queensland', 'QLD', 1),
	(195, 13, 'South Australia', 'SA', 1),
	(196, 13, 'Tasmania', 'TAS', 1),
	(197, 13, 'Victoria', 'VIC', 1),
	(198, 13, 'Western Australia', 'WA', 1),
	(199, 14, 'Burgenland', 'BUR', 1),
	(200, 14, 'Kärnten', 'KAR', 1),
	(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
	(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
	(203, 14, 'Salzburg', 'SAL', 1),
	(204, 14, 'Steiermark', 'STE', 1),
	(205, 14, 'Tirol', 'TIR', 1),
	(206, 14, 'Vorarlberg', 'VOR', 1),
	(207, 14, 'Wien', 'WIE', 1),
	(208, 15, 'Ali Bayramli', 'AB', 1),
	(209, 15, 'Abseron', 'ABS', 1),
	(210, 15, 'AgcabAdi', 'AGC', 1),
	(211, 15, 'Agdam', 'AGM', 1),
	(212, 15, 'Agdas', 'AGS', 1),
	(213, 15, 'Agstafa', 'AGA', 1),
	(214, 15, 'Agsu', 'AGU', 1),
	(215, 15, 'Astara', 'AST', 1),
	(216, 15, 'Baki', 'BA', 1),
	(217, 15, 'BabAk', 'BAB', 1),
	(218, 15, 'BalakAn', 'BAL', 1),
	(219, 15, 'BArdA', 'BAR', 1),
	(220, 15, 'Beylaqan', 'BEY', 1),
	(221, 15, 'Bilasuvar', 'BIL', 1),
	(222, 15, 'Cabrayil', 'CAB', 1),
	(223, 15, 'Calilabab', 'CAL', 1),
	(224, 15, 'Culfa', 'CUL', 1),
	(225, 15, 'Daskasan', 'DAS', 1),
	(226, 15, 'Davaci', 'DAV', 1),
	(227, 15, 'Fuzuli', 'FUZ', 1),
	(228, 15, 'Ganca', 'GA', 1),
	(229, 15, 'Gadabay', 'GAD', 1),
	(230, 15, 'Goranboy', 'GOR', 1),
	(231, 15, 'Goycay', 'GOY', 1),
	(232, 15, 'Haciqabul', 'HAC', 1),
	(233, 15, 'Imisli', 'IMI', 1),
	(234, 15, 'Ismayilli', 'ISM', 1),
	(235, 15, 'Kalbacar', 'KAL', 1),
	(236, 15, 'Kurdamir', 'KUR', 1),
	(237, 15, 'Lankaran', 'LA', 1),
	(238, 15, 'Lacin', 'LAC', 1),
	(239, 15, 'Lankaran', 'LAN', 1),
	(240, 15, 'Lerik', 'LER', 1),
	(241, 15, 'Masalli', 'MAS', 1),
	(242, 15, 'Mingacevir', 'MI', 1),
	(243, 15, 'Naftalan', 'NA', 1),
	(244, 15, 'Neftcala', 'NEF', 1),
	(245, 15, 'Oguz', 'OGU', 1),
	(246, 15, 'Ordubad', 'ORD', 1),
	(247, 15, 'Qabala', 'QAB', 1),
	(248, 15, 'Qax', 'QAX', 1),
	(249, 15, 'Qazax', 'QAZ', 1),
	(250, 15, 'Qobustan', 'QOB', 1),
	(251, 15, 'Quba', 'QBA', 1),
	(252, 15, 'Qubadli', 'QBI', 1),
	(253, 15, 'Qusar', 'QUS', 1),
	(254, 15, 'Saki', 'SA', 1),
	(255, 15, 'Saatli', 'SAT', 1),
	(256, 15, 'Sabirabad', 'SAB', 1),
	(257, 15, 'Sadarak', 'SAD', 1),
	(258, 15, 'Sahbuz', 'SAH', 1),
	(259, 15, 'Saki', 'SAK', 1),
	(260, 15, 'Salyan', 'SAL', 1),
	(261, 15, 'Sumqayit', 'SM', 1),
	(262, 15, 'Samaxi', 'SMI', 1),
	(263, 15, 'Samkir', 'SKR', 1),
	(264, 15, 'Samux', 'SMX', 1),
	(265, 15, 'Sarur', 'SAR', 1),
	(266, 15, 'Siyazan', 'SIY', 1),
	(267, 15, 'Susa', 'SS', 1),
	(268, 15, 'Susa', 'SUS', 1),
	(269, 15, 'Tartar', 'TAR', 1),
	(270, 15, 'Tovuz', 'TOV', 1),
	(271, 15, 'Ucar', 'UCA', 1),
	(272, 15, 'Xankandi', 'XA', 1),
	(273, 15, 'Xacmaz', 'XAC', 1),
	(274, 15, 'Xanlar', 'XAN', 1),
	(275, 15, 'Xizi', 'XIZ', 1),
	(276, 15, 'Xocali', 'XCI', 1),
	(277, 15, 'Xocavand', 'XVD', 1),
	(278, 15, 'Yardimli', 'YAR', 1),
	(279, 15, 'Yevlax', 'YEV', 1),
	(280, 15, 'Zangilan', 'ZAN', 1),
	(281, 15, 'Zaqatala', 'ZAQ', 1),
	(282, 15, 'Zardab', 'ZAR', 1),
	(283, 15, 'Naxcivan', 'NX', 1),
	(284, 16, 'Acklins', 'ACK', 1),
	(285, 16, 'Berry Islands', 'BER', 1),
	(286, 16, 'Bimini', 'BIM', 1),
	(287, 16, 'Black Point', 'BLK', 1),
	(288, 16, 'Cat Island', 'CAT', 1),
	(289, 16, 'Central Abaco', 'CAB', 1),
	(290, 16, 'Central Andros', 'CAN', 1),
	(291, 16, 'Central Eleuthera', 'CEL', 1),
	(292, 16, 'City of Freeport', 'FRE', 1),
	(293, 16, 'Crooked Island', 'CRO', 1),
	(294, 16, 'East Grand Bahama', 'EGB', 1),
	(295, 16, 'Exuma', 'EXU', 1),
	(296, 16, 'Grand Cay', 'GRD', 1),
	(297, 16, 'Harbour Island', 'HAR', 1),
	(298, 16, 'Hope Town', 'HOP', 1),
	(299, 16, 'Inagua', 'INA', 1),
	(300, 16, 'Long Island', 'LNG', 1),
	(301, 16, 'Mangrove Cay', 'MAN', 1),
	(302, 16, 'Mayaguana', 'MAY', 1),
	(303, 16, 'Moore\'s Island', 'MOO', 1),
	(304, 16, 'North Abaco', 'NAB', 1),
	(305, 16, 'North Andros', 'NAN', 1),
	(306, 16, 'North Eleuthera', 'NEL', 1),
	(307, 16, 'Ragged Island', 'RAG', 1),
	(308, 16, 'Rum Cay', 'RUM', 1),
	(309, 16, 'San Salvador', 'SAL', 1),
	(310, 16, 'South Abaco', 'SAB', 1),
	(311, 16, 'South Andros', 'SAN', 1),
	(312, 16, 'South Eleuthera', 'SEL', 1),
	(313, 16, 'Spanish Wells', 'SWE', 1),
	(314, 16, 'West Grand Bahama', 'WGB', 1),
	(315, 17, 'Capital', 'CAP', 1),
	(316, 17, 'Central', 'CEN', 1),
	(317, 17, 'Muharraq', 'MUH', 1),
	(318, 17, 'Northern', 'NOR', 1),
	(319, 17, 'Southern', 'SOU', 1),
	(320, 18, 'Barisal', 'BAR', 1),
	(321, 18, 'Chittagong', 'CHI', 1),
	(322, 18, 'Dhaka', 'DHA', 1),
	(323, 18, 'Khulna', 'KHU', 1),
	(324, 18, 'Rajshahi', 'RAJ', 1),
	(325, 18, 'Sylhet', 'SYL', 1),
	(326, 19, 'Christ Church', 'CC', 1),
	(327, 19, 'Saint Andrew', 'AND', 1),
	(328, 19, 'Saint George', 'GEO', 1),
	(329, 19, 'Saint James', 'JAM', 1),
	(330, 19, 'Saint John', 'JOH', 1),
	(331, 19, 'Saint Joseph', 'JOS', 1),
	(332, 19, 'Saint Lucy', 'LUC', 1),
	(333, 19, 'Saint Michael', 'MIC', 1),
	(334, 19, 'Saint Peter', 'PET', 1),
	(335, 19, 'Saint Philip', 'PHI', 1),
	(336, 19, 'Saint Thomas', 'THO', 1),
	(337, 20, 'Brestskaya (Brest)', 'BR', 1),
	(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
	(339, 20, 'Horad Minsk', 'HM', 1),
	(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
	(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
	(342, 20, 'Minskaya', 'MI', 1),
	(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
	(344, 21, 'Antwerpen', 'VAN', 1),
	(345, 21, 'Brabant Wallon', 'WBR', 1),
	(346, 21, 'Hainaut', 'WHT', 1),
	(347, 21, 'Liège', 'WLG', 1),
	(348, 21, 'Limburg', 'VLI', 1),
	(349, 21, 'Luxembourg', 'WLX', 1),
	(350, 21, 'Namur', 'WNA', 1),
	(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
	(352, 21, 'Vlaams Brabant', 'VBR', 1),
	(353, 21, 'West-Vlaanderen', 'VWV', 1),
	(354, 22, 'Belize', 'BZ', 1),
	(355, 22, 'Cayo', 'CY', 1),
	(356, 22, 'Corozal', 'CR', 1),
	(357, 22, 'Orange Walk', 'OW', 1),
	(358, 22, 'Stann Creek', 'SC', 1),
	(359, 22, 'Toledo', 'TO', 1),
	(360, 23, 'Alibori', 'AL', 1),
	(361, 23, 'Atakora', 'AK', 1),
	(362, 23, 'Atlantique', 'AQ', 1),
	(363, 23, 'Borgou', 'BO', 1),
	(364, 23, 'Collines', 'CO', 1),
	(365, 23, 'Donga', 'DO', 1),
	(366, 23, 'Kouffo', 'KO', 1),
	(367, 23, 'Littoral', 'LI', 1),
	(368, 23, 'Mono', 'MO', 1),
	(369, 23, 'Oueme', 'OU', 1),
	(370, 23, 'Plateau', 'PL', 1),
	(371, 23, 'Zou', 'ZO', 1),
	(372, 24, 'Devonshire', 'DS', 1),
	(373, 24, 'Hamilton City', 'HC', 1),
	(374, 24, 'Hamilton', 'HA', 1),
	(375, 24, 'Paget', 'PG', 1),
	(376, 24, 'Pembroke', 'PB', 1),
	(377, 24, 'Saint George City', 'GC', 1),
	(378, 24, 'Saint George\'s', 'SG', 1),
	(379, 24, 'Sandys', 'SA', 1),
	(380, 24, 'Smith\'s', 'SM', 1),
	(381, 24, 'Southampton', 'SH', 1),
	(382, 24, 'Warwick', 'WA', 1),
	(383, 25, 'Bumthang', 'BUM', 1),
	(384, 25, 'Chukha', 'CHU', 1),
	(385, 25, 'Dagana', 'DAG', 1),
	(386, 25, 'Gasa', 'GAS', 1),
	(387, 25, 'Haa', 'HAA', 1),
	(388, 25, 'Lhuntse', 'LHU', 1),
	(389, 25, 'Mongar', 'MON', 1),
	(390, 25, 'Paro', 'PAR', 1),
	(391, 25, 'Pemagatshel', 'PEM', 1),
	(392, 25, 'Punakha', 'PUN', 1),
	(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
	(394, 25, 'Samtse', 'SAT', 1),
	(395, 25, 'Sarpang', 'SAR', 1),
	(396, 25, 'Thimphu', 'THI', 1),
	(397, 25, 'Trashigang', 'TRG', 1),
	(398, 25, 'Trashiyangste', 'TRY', 1),
	(399, 25, 'Trongsa', 'TRO', 1),
	(400, 25, 'Tsirang', 'TSI', 1),
	(401, 25, 'Wangdue Phodrang', 'WPH', 1),
	(402, 25, 'Zhemgang', 'ZHE', 1),
	(403, 26, 'Beni', 'BEN', 1),
	(404, 26, 'Chuquisaca', 'CHU', 1),
	(405, 26, 'Cochabamba', 'COC', 1),
	(406, 26, 'La Paz', 'LPZ', 1),
	(407, 26, 'Oruro', 'ORU', 1),
	(408, 26, 'Pando', 'PAN', 1),
	(409, 26, 'Potosi', 'POT', 1),
	(410, 26, 'Santa Cruz', 'SCZ', 1),
	(411, 26, 'Tarija', 'TAR', 1),
	(412, 27, 'Brcko district', 'BRO', 1),
	(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
	(414, 27, 'Posavski Kanton', 'FPO', 1),
	(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
	(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
	(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
	(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
	(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
	(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
	(421, 27, 'Kanton Sarajevo', 'FSA', 1),
	(422, 27, 'Zapadnobosanska', 'FZA', 1),
	(423, 27, 'Banja Luka', 'SBL', 1),
	(424, 27, 'Doboj', 'SDO', 1),
	(425, 27, 'Bijeljina', 'SBI', 1),
	(426, 27, 'Vlasenica', 'SVL', 1),
	(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
	(428, 27, 'Foca', 'SFO', 1),
	(429, 27, 'Trebinje', 'STR', 1),
	(430, 28, 'Central', 'CE', 1),
	(431, 28, 'Ghanzi', 'GH', 1),
	(432, 28, 'Kgalagadi', 'KD', 1),
	(433, 28, 'Kgatleng', 'KT', 1),
	(434, 28, 'Kweneng', 'KW', 1),
	(435, 28, 'Ngamiland', 'NG', 1),
	(436, 28, 'North East', 'NE', 1),
	(437, 28, 'North West', 'NW', 1),
	(438, 28, 'South East', 'SE', 1),
	(439, 28, 'Southern', 'SO', 1),
	(440, 30, 'Acre', 'AC', 1),
	(441, 30, 'Alagoas', 'AL', 1),
	(442, 30, 'Amapá', 'AP', 1),
	(443, 30, 'Amazonas', 'AM', 1),
	(444, 30, 'Bahia', 'BA', 1),
	(445, 30, 'Ceará', 'CE', 1),
	(446, 30, 'Distrito Federal', 'DF', 1),
	(447, 30, 'Espírito Santo', 'ES', 1),
	(448, 30, 'Goiás', 'GO', 1),
	(449, 30, 'Maranhão', 'MA', 1),
	(450, 30, 'Mato Grosso', 'MT', 1),
	(451, 30, 'Mato Grosso do Sul', 'MS', 1),
	(452, 30, 'Minas Gerais', 'MG', 1),
	(453, 30, 'Pará', 'PA', 1),
	(454, 30, 'Paraíba', 'PB', 1),
	(455, 30, 'Paraná', 'PR', 1),
	(456, 30, 'Pernambuco', 'PE', 1),
	(457, 30, 'Piauí', 'PI', 1),
	(458, 30, 'Rio de Janeiro', 'RJ', 1),
	(459, 30, 'Rio Grande do Norte', 'RN', 1),
	(460, 30, 'Rio Grande do Sul', 'RS', 1),
	(461, 30, 'Rondônia', 'RO', 1),
	(462, 30, 'Roraima', 'RR', 1),
	(463, 30, 'Santa Catarina', 'SC', 1),
	(464, 30, 'São Paulo', 'SP', 1),
	(465, 30, 'Sergipe', 'SE', 1),
	(466, 30, 'Tocantins', 'TO', 1),
	(467, 31, 'Peros Banhos', 'PB', 1),
	(468, 31, 'Salomon Islands', 'SI', 1),
	(469, 31, 'Nelsons Island', 'NI', 1),
	(470, 31, 'Three Brothers', 'TB', 1),
	(471, 31, 'Eagle Islands', 'EA', 1),
	(472, 31, 'Danger Island', 'DI', 1),
	(473, 31, 'Egmont Islands', 'EG', 1),
	(474, 31, 'Diego Garcia', 'DG', 1),
	(475, 32, 'Belait', 'BEL', 1),
	(476, 32, 'Brunei and Muara', 'BRM', 1),
	(477, 32, 'Temburong', 'TEM', 1),
	(478, 32, 'Tutong', 'TUT', 1),
	(479, 33, 'Blagoevgrad', '', 1),
	(480, 33, 'Burgas', '', 1),
	(481, 33, 'Dobrich', '', 1),
	(482, 33, 'Gabrovo', '', 1),
	(483, 33, 'Haskovo', '', 1),
	(484, 33, 'Kardjali', '', 1),
	(485, 33, 'Kyustendil', '', 1),
	(486, 33, 'Lovech', '', 1),
	(487, 33, 'Montana', '', 1),
	(488, 33, 'Pazardjik', '', 1),
	(489, 33, 'Pernik', '', 1),
	(490, 33, 'Pleven', '', 1),
	(491, 33, 'Plovdiv', '', 1),
	(492, 33, 'Razgrad', '', 1),
	(493, 33, 'Shumen', '', 1),
	(494, 33, 'Silistra', '', 1),
	(495, 33, 'Sliven', '', 1),
	(496, 33, 'Smolyan', '', 1),
	(497, 33, 'Sofia', '', 1),
	(498, 33, 'Sofia - town', '', 1),
	(499, 33, 'Stara Zagora', '', 1),
	(500, 33, 'Targovishte', '', 1),
	(501, 33, 'Varna', '', 1),
	(502, 33, 'Veliko Tarnovo', '', 1),
	(503, 33, 'Vidin', '', 1),
	(504, 33, 'Vratza', '', 1),
	(505, 33, 'Yambol', '', 1),
	(506, 34, 'Bale', 'BAL', 1),
	(507, 34, 'Bam', 'BAM', 1),
	(508, 34, 'Banwa', 'BAN', 1),
	(509, 34, 'Bazega', 'BAZ', 1),
	(510, 34, 'Bougouriba', 'BOR', 1),
	(511, 34, 'Boulgou', 'BLG', 1),
	(512, 34, 'Boulkiemde', 'BOK', 1),
	(513, 34, 'Comoe', 'COM', 1),
	(514, 34, 'Ganzourgou', 'GAN', 1),
	(515, 34, 'Gnagna', 'GNA', 1),
	(516, 34, 'Gourma', 'GOU', 1),
	(517, 34, 'Houet', 'HOU', 1),
	(518, 34, 'Ioba', 'IOA', 1),
	(519, 34, 'Kadiogo', 'KAD', 1),
	(520, 34, 'Kenedougou', 'KEN', 1),
	(521, 34, 'Komondjari', 'KOD', 1),
	(522, 34, 'Kompienga', 'KOP', 1),
	(523, 34, 'Kossi', 'KOS', 1),
	(524, 34, 'Koulpelogo', 'KOL', 1),
	(525, 34, 'Kouritenga', 'KOT', 1),
	(526, 34, 'Kourweogo', 'KOW', 1),
	(527, 34, 'Leraba', 'LER', 1),
	(528, 34, 'Loroum', 'LOR', 1),
	(529, 34, 'Mouhoun', 'MOU', 1),
	(530, 34, 'Nahouri', 'NAH', 1),
	(531, 34, 'Namentenga', 'NAM', 1),
	(532, 34, 'Nayala', 'NAY', 1),
	(533, 34, 'Noumbiel', 'NOU', 1),
	(534, 34, 'Oubritenga', 'OUB', 1),
	(535, 34, 'Oudalan', 'OUD', 1),
	(536, 34, 'Passore', 'PAS', 1),
	(537, 34, 'Poni', 'PON', 1),
	(538, 34, 'Sanguie', 'SAG', 1),
	(539, 34, 'Sanmatenga', 'SAM', 1),
	(540, 34, 'Seno', 'SEN', 1),
	(541, 34, 'Sissili', 'SIS', 1),
	(542, 34, 'Soum', 'SOM', 1),
	(543, 34, 'Sourou', 'SOR', 1),
	(544, 34, 'Tapoa', 'TAP', 1),
	(545, 34, 'Tuy', 'TUY', 1),
	(546, 34, 'Yagha', 'YAG', 1),
	(547, 34, 'Yatenga', 'YAT', 1),
	(548, 34, 'Ziro', 'ZIR', 1),
	(549, 34, 'Zondoma', 'ZOD', 1),
	(550, 34, 'Zoundweogo', 'ZOW', 1),
	(551, 35, 'Bubanza', 'BB', 1),
	(552, 35, 'Bujumbura', 'BJ', 1),
	(553, 35, 'Bururi', 'BR', 1),
	(554, 35, 'Cankuzo', 'CA', 1),
	(555, 35, 'Cibitoke', 'CI', 1),
	(556, 35, 'Gitega', 'GI', 1),
	(557, 35, 'Karuzi', 'KR', 1),
	(558, 35, 'Kayanza', 'KY', 1),
	(559, 35, 'Kirundo', 'KI', 1),
	(560, 35, 'Makamba', 'MA', 1),
	(561, 35, 'Muramvya', 'MU', 1),
	(562, 35, 'Muyinga', 'MY', 1),
	(563, 35, 'Mwaro', 'MW', 1),
	(564, 35, 'Ngozi', 'NG', 1),
	(565, 35, 'Rutana', 'RT', 1),
	(566, 35, 'Ruyigi', 'RY', 1),
	(567, 36, 'Phnom Penh', 'PP', 1),
	(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
	(569, 36, 'Pailin', 'PA', 1),
	(570, 36, 'Keb', 'KB', 1),
	(571, 36, 'Banteay Meanchey', 'BM', 1),
	(572, 36, 'Battambang', 'BA', 1),
	(573, 36, 'Kampong Cham', 'KM', 1),
	(574, 36, 'Kampong Chhnang', 'KN', 1),
	(575, 36, 'Kampong Speu', 'KU', 1),
	(576, 36, 'Kampong Som', 'KO', 1),
	(577, 36, 'Kampong Thom', 'KT', 1),
	(578, 36, 'Kampot', 'KP', 1),
	(579, 36, 'Kandal', 'KL', 1),
	(580, 36, 'Kaoh Kong', 'KK', 1),
	(581, 36, 'Kratie', 'KR', 1),
	(582, 36, 'Mondul Kiri', 'MK', 1),
	(583, 36, 'Oddar Meancheay', 'OM', 1),
	(584, 36, 'Pursat', 'PU', 1),
	(585, 36, 'Preah Vihear', 'PR', 1),
	(586, 36, 'Prey Veng', 'PG', 1),
	(587, 36, 'Ratanak Kiri', 'RK', 1),
	(588, 36, 'Siemreap', 'SI', 1),
	(589, 36, 'Stung Treng', 'ST', 1),
	(590, 36, 'Svay Rieng', 'SR', 1),
	(591, 36, 'Takeo', 'TK', 1),
	(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
	(593, 37, 'Centre', 'CEN', 1),
	(594, 37, 'East (Est)', 'EST', 1),
	(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
	(596, 37, 'Littoral', 'LIT', 1),
	(597, 37, 'North (Nord)', 'NOR', 1),
	(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
	(599, 37, 'West (Ouest)', 'OUE', 1),
	(600, 37, 'South (Sud)', 'SUD', 1),
	(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
	(602, 38, 'Alberta', 'AB', 1),
	(603, 38, 'British Columbia', 'BC', 1),
	(604, 38, 'Manitoba', 'MB', 1),
	(605, 38, 'New Brunswick', 'NB', 1),
	(606, 38, 'Newfoundland and Labrador', 'NL', 1),
	(607, 38, 'Northwest Territories', 'NT', 1),
	(608, 38, 'Nova Scotia', 'NS', 1),
	(609, 38, 'Nunavut', 'NU', 1),
	(610, 38, 'Ontario', 'ON', 1),
	(611, 38, 'Prince Edward Island', 'PE', 1),
	(612, 38, 'Qu&eacute;bec', 'QC', 1),
	(613, 38, 'Saskatchewan', 'SK', 1),
	(614, 38, 'Yukon Territory', 'YT', 1),
	(615, 39, 'Boa Vista', 'BV', 1),
	(616, 39, 'Brava', 'BR', 1),
	(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
	(618, 39, 'Maio', 'MA', 1),
	(619, 39, 'Mosteiros', 'MO', 1),
	(620, 39, 'Paul', 'PA', 1),
	(621, 39, 'Porto Novo', 'PN', 1),
	(622, 39, 'Praia', 'PR', 1),
	(623, 39, 'Ribeira Grande', 'RG', 1),
	(624, 39, 'Sal', 'SL', 1),
	(625, 39, 'Santa Catarina', 'CA', 1),
	(626, 39, 'Santa Cruz', 'CR', 1),
	(627, 39, 'Sao Domingos', 'SD', 1),
	(628, 39, 'Sao Filipe', 'SF', 1),
	(629, 39, 'Sao Nicolau', 'SN', 1),
	(630, 39, 'Sao Vicente', 'SV', 1),
	(631, 39, 'Tarrafal', 'TA', 1),
	(632, 40, 'Creek', 'CR', 1),
	(633, 40, 'Eastern', 'EA', 1),
	(634, 40, 'Midland', 'ML', 1),
	(635, 40, 'South Town', 'ST', 1),
	(636, 40, 'Spot Bay', 'SP', 1),
	(637, 40, 'Stake Bay', 'SK', 1),
	(638, 40, 'West End', 'WD', 1),
	(639, 40, 'Western', 'WN', 1),
	(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
	(641, 41, 'Basse-Kotto', 'BKO', 1),
	(642, 41, 'Haute-Kotto', 'HKO', 1),
	(643, 41, 'Haut-Mbomou', 'HMB', 1),
	(644, 41, 'Kemo', 'KEM', 1),
	(645, 41, 'Lobaye', 'LOB', 1),
	(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
	(647, 41, 'Mbomou', 'MBO', 1),
	(648, 41, 'Nana-Mambere', 'NMM', 1),
	(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
	(650, 41, 'Ouaka', 'OUK', 1),
	(651, 41, 'Ouham', 'OUH', 1),
	(652, 41, 'Ouham-Pende', 'OPE', 1),
	(653, 41, 'Vakaga', 'VAK', 1),
	(654, 41, 'Nana-Grebizi', 'NGR', 1),
	(655, 41, 'Sangha-Mbaere', 'SMB', 1),
	(656, 41, 'Bangui', 'BAN', 1),
	(657, 42, 'Batha', 'BA', 1),
	(658, 42, 'Biltine', 'BI', 1),
	(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
	(660, 42, 'Chari-Baguirmi', 'CB', 1),
	(661, 42, 'Guera', 'GU', 1),
	(662, 42, 'Kanem', 'KA', 1),
	(663, 42, 'Lac', 'LA', 1),
	(664, 42, 'Logone Occidental', 'LC', 1),
	(665, 42, 'Logone Oriental', 'LR', 1),
	(666, 42, 'Mayo-Kebbi', 'MK', 1),
	(667, 42, 'Moyen-Chari', 'MC', 1),
	(668, 42, 'Ouaddai', 'OU', 1),
	(669, 42, 'Salamat', 'SA', 1),
	(670, 42, 'Tandjile', 'TA', 1),
	(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
	(672, 43, 'Antofagasta', 'AN', 1),
	(673, 43, 'Araucania', 'AR', 1),
	(674, 43, 'Atacama', 'AT', 1),
	(675, 43, 'Bio-Bio', 'BI', 1),
	(676, 43, 'Coquimbo', 'CO', 1),
	(677, 43, 'Libertador General Bernardo O\'Hi', 'LI', 1),
	(678, 43, 'Los Lagos', 'LL', 1),
	(679, 43, 'Magallanes y de la Antartica Chi', 'MA', 1),
	(680, 43, 'Maule', 'ML', 1),
	(681, 43, 'Region Metropolitana', 'RM', 1),
	(682, 43, 'Tarapaca', 'TA', 1),
	(683, 43, 'Valparaiso', 'VS', 1),
	(684, 44, 'Anhui', 'AN', 1),
	(685, 44, 'Beijing', 'BE', 1),
	(686, 44, 'Chongqing', 'CH', 1),
	(687, 44, 'Fujian', 'FU', 1),
	(688, 44, 'Gansu', 'GA', 1),
	(689, 44, 'Guangdong', 'GU', 1),
	(690, 44, 'Guangxi', 'GX', 1),
	(691, 44, 'Guizhou', 'GZ', 1),
	(692, 44, 'Hainan', 'HA', 1),
	(693, 44, 'Hebei', 'HB', 1),
	(694, 44, 'Heilongjiang', 'HL', 1),
	(695, 44, 'Henan', 'HE', 1),
	(696, 44, 'Hong Kong', 'HK', 1),
	(697, 44, 'Hubei', 'HU', 1),
	(698, 44, 'Hunan', 'HN', 1),
	(699, 44, 'Inner Mongolia', 'IM', 1),
	(700, 44, 'Jiangsu', 'JI', 1),
	(701, 44, 'Jiangxi', 'JX', 1),
	(702, 44, 'Jilin', 'JL', 1),
	(703, 44, 'Liaoning', 'LI', 1),
	(704, 44, 'Macau', 'MA', 1),
	(705, 44, 'Ningxia', 'NI', 1),
	(706, 44, 'Shaanxi', 'SH', 1),
	(707, 44, 'Shandong', 'SA', 1),
	(708, 44, 'Shanghai', 'SG', 1),
	(709, 44, 'Shanxi', 'SX', 1),
	(710, 44, 'Sichuan', 'SI', 1),
	(711, 44, 'Tianjin', 'TI', 1),
	(712, 44, 'Xinjiang', 'XI', 1),
	(713, 44, 'Yunnan', 'YU', 1),
	(714, 44, 'Zhejiang', 'ZH', 1),
	(715, 46, 'Direction Island', 'D', 1),
	(716, 46, 'Home Island', 'H', 1),
	(717, 46, 'Horsburgh Island', 'O', 1),
	(718, 46, 'South Island', 'S', 1),
	(719, 46, 'West Island', 'W', 1),
	(720, 47, 'Amazonas', 'AMZ', 1),
	(721, 47, 'Antioquia', 'ANT', 1),
	(722, 47, 'Arauca', 'ARA', 1),
	(723, 47, 'Atlantico', 'ATL', 1),
	(724, 47, 'Bogota D.C.', 'BDC', 1),
	(725, 47, 'Bolivar', 'BOL', 1),
	(726, 47, 'Boyaca', 'BOY', 1),
	(727, 47, 'Caldas', 'CAL', 1),
	(728, 47, 'Caqueta', 'CAQ', 1),
	(729, 47, 'Casanare', 'CAS', 1),
	(730, 47, 'Cauca', 'CAU', 1),
	(731, 47, 'Cesar', 'CES', 1),
	(732, 47, 'Choco', 'CHO', 1),
	(733, 47, 'Cordoba', 'COR', 1),
	(734, 47, 'Cundinamarca', 'CAM', 1),
	(735, 47, 'Guainia', 'GNA', 1),
	(736, 47, 'Guajira', 'GJR', 1),
	(737, 47, 'Guaviare', 'GVR', 1),
	(738, 47, 'Huila', 'HUI', 1),
	(739, 47, 'Magdalena', 'MAG', 1),
	(740, 47, 'Meta', 'MET', 1),
	(741, 47, 'Narino', 'NAR', 1),
	(742, 47, 'Norte de Santander', 'NDS', 1),
	(743, 47, 'Putumayo', 'PUT', 1),
	(744, 47, 'Quindio', 'QUI', 1),
	(745, 47, 'Risaralda', 'RIS', 1),
	(746, 47, 'San Andres y Providencia', 'SAP', 1),
	(747, 47, 'Santander', 'SAN', 1),
	(748, 47, 'Sucre', 'SUC', 1),
	(749, 47, 'Tolima', 'TOL', 1),
	(750, 47, 'Valle del Cauca', 'VDC', 1),
	(751, 47, 'Vaupes', 'VAU', 1),
	(752, 47, 'Vichada', 'VIC', 1),
	(753, 48, 'Grande Comore', 'G', 1),
	(754, 48, 'Anjouan', 'A', 1),
	(755, 48, 'Moheli', 'M', 1),
	(756, 49, 'Bouenza', 'BO', 1),
	(757, 49, 'Brazzaville', 'BR', 1),
	(758, 49, 'Cuvette', 'CU', 1),
	(759, 49, 'Cuvette-Ouest', 'CO', 1),
	(760, 49, 'Kouilou', 'KO', 1),
	(761, 49, 'Lekoumou', 'LE', 1),
	(762, 49, 'Likouala', 'LI', 1),
	(763, 49, 'Niari', 'NI', 1),
	(764, 49, 'Plateaux', 'PL', 1),
	(765, 49, 'Pool', 'PO', 1),
	(766, 49, 'Sangha', 'SA', 1),
	(767, 50, 'Pukapuka', 'PU', 1),
	(768, 50, 'Rakahanga', 'RK', 1),
	(769, 50, 'Manihiki', 'MK', 1),
	(770, 50, 'Penrhyn', 'PE', 1),
	(771, 50, 'Nassau Island', 'NI', 1),
	(772, 50, 'Surwarrow', 'SU', 1),
	(773, 50, 'Palmerston', 'PA', 1),
	(774, 50, 'Aitutaki', 'AI', 1),
	(775, 50, 'Manuae', 'MA', 1),
	(776, 50, 'Takutea', 'TA', 1),
	(777, 50, 'Mitiaro', 'MT', 1),
	(778, 50, 'Atiu', 'AT', 1),
	(779, 50, 'Mauke', 'MU', 1),
	(780, 50, 'Rarotonga', 'RR', 1),
	(781, 50, 'Mangaia', 'MG', 1),
	(782, 51, 'Alajuela', 'AL', 1),
	(783, 51, 'Cartago', 'CA', 1),
	(784, 51, 'Guanacaste', 'GU', 1),
	(785, 51, 'Heredia', 'HE', 1),
	(786, 51, 'Limon', 'LI', 1),
	(787, 51, 'Puntarenas', 'PU', 1),
	(788, 51, 'San Jose', 'SJ', 1),
	(789, 52, 'Abengourou', 'ABE', 1),
	(790, 52, 'Abidjan', 'ABI', 1),
	(791, 52, 'Aboisso', 'ABO', 1),
	(792, 52, 'Adiake', 'ADI', 1),
	(793, 52, 'Adzope', 'ADZ', 1),
	(794, 52, 'Agboville', 'AGB', 1),
	(795, 52, 'Agnibilekrou', 'AGN', 1),
	(796, 52, 'Alepe', 'ALE', 1),
	(797, 52, 'Bocanda', 'BOC', 1),
	(798, 52, 'Bangolo', 'BAN', 1),
	(799, 52, 'Beoumi', 'BEO', 1),
	(800, 52, 'Biankouma', 'BIA', 1),
	(801, 52, 'Bondoukou', 'BDK', 1),
	(802, 52, 'Bongouanou', 'BGN', 1),
	(803, 52, 'Bouafle', 'BFL', 1),
	(804, 52, 'Bouake', 'BKE', 1),
	(805, 52, 'Bouna', 'BNA', 1),
	(806, 52, 'Boundiali', 'BDL', 1),
	(807, 52, 'Dabakala', 'DKL', 1),
	(808, 52, 'Dabou', 'DBU', 1),
	(809, 52, 'Daloa', 'DAL', 1),
	(810, 52, 'Danane', 'DAN', 1),
	(811, 52, 'Daoukro', 'DAO', 1),
	(812, 52, 'Dimbokro', 'DIM', 1),
	(813, 52, 'Divo', 'DIV', 1),
	(814, 52, 'Duekoue', 'DUE', 1),
	(815, 52, 'Ferkessedougou', 'FER', 1),
	(816, 52, 'Gagnoa', 'GAG', 1),
	(817, 52, 'Grand-Bassam', 'GBA', 1),
	(818, 52, 'Grand-Lahou', 'GLA', 1),
	(819, 52, 'Guiglo', 'GUI', 1),
	(820, 52, 'Issia', 'ISS', 1),
	(821, 52, 'Jacqueville', 'JAC', 1),
	(822, 52, 'Katiola', 'KAT', 1),
	(823, 52, 'Korhogo', 'KOR', 1),
	(824, 52, 'Lakota', 'LAK', 1),
	(825, 52, 'Man', 'MAN', 1),
	(826, 52, 'Mankono', 'MKN', 1),
	(827, 52, 'Mbahiakro', 'MBA', 1),
	(828, 52, 'Odienne', 'ODI', 1),
	(829, 52, 'Oume', 'OUM', 1),
	(830, 52, 'Sakassou', 'SAK', 1),
	(831, 52, 'San-Pedro', 'SPE', 1),
	(832, 52, 'Sassandra', 'SAS', 1),
	(833, 52, 'Seguela', 'SEG', 1),
	(834, 52, 'Sinfra', 'SIN', 1),
	(835, 52, 'Soubre', 'SOU', 1),
	(836, 52, 'Tabou', 'TAB', 1),
	(837, 52, 'Tanda', 'TAN', 1),
	(838, 52, 'Tiebissou', 'TIE', 1),
	(839, 52, 'Tingrela', 'TIN', 1),
	(840, 52, 'Tiassale', 'TIA', 1),
	(841, 52, 'Touba', 'TBA', 1),
	(842, 52, 'Toulepleu', 'TLP', 1),
	(843, 52, 'Toumodi', 'TMD', 1),
	(844, 52, 'Vavoua', 'VAV', 1),
	(845, 52, 'Yamoussoukro', 'YAM', 1),
	(846, 52, 'Zuenoula', 'ZUE', 1),
	(847, 53, 'Bjelovar-Bilogora', 'BB', 1),
	(848, 53, 'City of Zagreb', 'CZ', 1),
	(849, 53, 'Dubrovnik-Neretva', 'DN', 1),
	(850, 53, 'Istra', 'IS', 1),
	(851, 53, 'Karlovac', 'KA', 1),
	(852, 53, 'Koprivnica-Krizevci', 'KK', 1),
	(853, 53, 'Krapina-Zagorje', 'KZ', 1),
	(854, 53, 'Lika-Senj', 'LS', 1),
	(855, 53, 'Medimurje', 'ME', 1),
	(856, 53, 'Osijek-Baranja', 'OB', 1),
	(857, 53, 'Pozega-Slavonia', 'PS', 1),
	(858, 53, 'Primorje-Gorski Kotar', 'PG', 1),
	(859, 53, 'Sibenik', 'SI', 1),
	(860, 53, 'Sisak-Moslavina', 'SM', 1),
	(861, 53, 'Slavonski Brod-Posavina', 'SB', 1),
	(862, 53, 'Split-Dalmatia', 'SD', 1),
	(863, 53, 'Varazdin', 'VA', 1),
	(864, 53, 'Virovitica-Podravina', 'VP', 1),
	(865, 53, 'Vukovar-Srijem', 'VS', 1),
	(866, 53, 'Zadar-Knin', 'ZK', 1),
	(867, 53, 'Zagreb', 'ZA', 1),
	(868, 54, 'Camaguey', 'CA', 1),
	(869, 54, 'Ciego de Avila', 'CD', 1),
	(870, 54, 'Cienfuegos', 'CI', 1),
	(871, 54, 'Ciudad de La Habana', 'CH', 1),
	(872, 54, 'Granma', 'GR', 1),
	(873, 54, 'Guantanamo', 'GU', 1),
	(874, 54, 'Holguin', 'HO', 1),
	(875, 54, 'Isla de la Juventud', 'IJ', 1),
	(876, 54, 'La Habana', 'LH', 1),
	(877, 54, 'Las Tunas', 'LT', 1),
	(878, 54, 'Matanzas', 'MA', 1),
	(879, 54, 'Pinar del Rio', 'PR', 1),
	(880, 54, 'Sancti Spiritus', 'SS', 1),
	(881, 54, 'Santiago de Cuba', 'SC', 1),
	(882, 54, 'Villa Clara', 'VC', 1),
	(883, 55, 'Famagusta', 'F', 1),
	(884, 55, 'Kyrenia', 'K', 1),
	(885, 55, 'Larnaca', 'A', 1),
	(886, 55, 'Limassol', 'I', 1),
	(887, 55, 'Nicosia', 'N', 1),
	(888, 55, 'Paphos', 'P', 1),
	(889, 56, 'Ústecký', 'U', 1),
	(890, 56, 'Jihočeský', 'C', 1),
	(891, 56, 'Jihomoravský', 'B', 1),
	(892, 56, 'Karlovarský', 'K', 1),
	(893, 56, 'Královehradecký', 'H', 1),
	(894, 56, 'Liberecký', 'L', 1),
	(895, 56, 'Moravskoslezský', 'T', 1),
	(896, 56, 'Olomoucký', 'M', 1),
	(897, 56, 'Pardubický', 'E', 1),
	(898, 56, 'Plzeňský', 'P', 1),
	(899, 56, 'Praha', 'A', 1),
	(900, 56, 'Středočeský', 'S', 1),
	(901, 56, 'Vysočina', 'J', 1),
	(902, 56, 'Zlínský', 'Z', 1),
	(903, 57, 'Arhus', 'AR', 1),
	(904, 57, 'Bornholm', 'BH', 1),
	(905, 57, 'Copenhagen', 'CO', 1),
	(906, 57, 'Faroe Islands', 'FO', 1),
	(907, 57, 'Frederiksborg', 'FR', 1),
	(908, 57, 'Fyn', 'FY', 1),
	(909, 57, 'Kobenhavn', 'KO', 1),
	(910, 57, 'Nordjylland', 'NO', 1),
	(911, 57, 'Ribe', 'RI', 1),
	(912, 57, 'Ringkobing', 'RK', 1),
	(913, 57, 'Roskilde', 'RO', 1),
	(914, 57, 'Sonderjylland', 'SO', 1),
	(915, 57, 'Storstrom', 'ST', 1),
	(916, 57, 'Vejle', 'VK', 1),
	(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
	(918, 57, 'Viborg', 'VB', 1),
	(919, 58, '\'Ali Sabih', 'S', 1),
	(920, 58, 'Dikhil', 'K', 1),
	(921, 58, 'Djibouti', 'J', 1),
	(922, 58, 'Obock', 'O', 1),
	(923, 58, 'Tadjoura', 'T', 1),
	(924, 59, 'Saint Andrew Parish', 'AND', 1),
	(925, 59, 'Saint David Parish', 'DAV', 1),
	(926, 59, 'Saint George Parish', 'GEO', 1),
	(927, 59, 'Saint John Parish', 'JOH', 1),
	(928, 59, 'Saint Joseph Parish', 'JOS', 1),
	(929, 59, 'Saint Luke Parish', 'LUK', 1),
	(930, 59, 'Saint Mark Parish', 'MAR', 1),
	(931, 59, 'Saint Patrick Parish', 'PAT', 1),
	(932, 59, 'Saint Paul Parish', 'PAU', 1),
	(933, 59, 'Saint Peter Parish', 'PET', 1),
	(934, 60, 'Distrito Nacional', 'DN', 1),
	(935, 60, 'Azua', 'AZ', 1),
	(936, 60, 'Baoruco', 'BC', 1),
	(937, 60, 'Barahona', 'BH', 1),
	(938, 60, 'Dajabon', 'DJ', 1),
	(939, 60, 'Duarte', 'DU', 1),
	(940, 60, 'Elias Pina', 'EL', 1),
	(941, 60, 'El Seybo', 'SY', 1),
	(942, 60, 'Espaillat', 'ET', 1),
	(943, 60, 'Hato Mayor', 'HM', 1),
	(944, 60, 'Independencia', 'IN', 1),
	(945, 60, 'La Altagracia', 'AL', 1),
	(946, 60, 'La Romana', 'RO', 1),
	(947, 60, 'La Vega', 'VE', 1),
	(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
	(949, 60, 'Monsenor Nouel', 'MN', 1),
	(950, 60, 'Monte Cristi', 'MC', 1),
	(951, 60, 'Monte Plata', 'MP', 1),
	(952, 60, 'Pedernales', 'PD', 1),
	(953, 60, 'Peravia (Bani)', 'PR', 1),
	(954, 60, 'Puerto Plata', 'PP', 1),
	(955, 60, 'Salcedo', 'SL', 1),
	(956, 60, 'Samana', 'SM', 1),
	(957, 60, 'Sanchez Ramirez', 'SH', 1),
	(958, 60, 'San Cristobal', 'SC', 1),
	(959, 60, 'San Jose de Ocoa', 'JO', 1),
	(960, 60, 'San Juan', 'SJ', 1),
	(961, 60, 'San Pedro de Macoris', 'PM', 1),
	(962, 60, 'Santiago', 'SA', 1),
	(963, 60, 'Santiago Rodriguez', 'ST', 1),
	(964, 60, 'Santo Domingo', 'SD', 1),
	(965, 60, 'Valverde', 'VA', 1),
	(966, 61, 'Aileu', 'AL', 1),
	(967, 61, 'Ainaro', 'AN', 1),
	(968, 61, 'Baucau', 'BA', 1),
	(969, 61, 'Bobonaro', 'BO', 1),
	(970, 61, 'Cova Lima', 'CO', 1),
	(971, 61, 'Dili', 'DI', 1),
	(972, 61, 'Ermera', 'ER', 1),
	(973, 61, 'Lautem', 'LA', 1),
	(974, 61, 'Liquica', 'LI', 1),
	(975, 61, 'Manatuto', 'MT', 1),
	(976, 61, 'Manufahi', 'MF', 1),
	(977, 61, 'Oecussi', 'OE', 1),
	(978, 61, 'Viqueque', 'VI', 1),
	(979, 62, 'Azuay', 'AZU', 1),
	(980, 62, 'Bolivar', 'BOL', 1),
	(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
	(982, 62, 'Carchi', 'CAR', 1),
	(983, 62, 'Chimborazo', 'CHI', 1),
	(984, 62, 'Cotopaxi', 'COT', 1),
	(985, 62, 'El Oro', 'EOR', 1),
	(986, 62, 'Esmeraldas', 'ESM', 1),
	(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
	(988, 62, 'Guayas', 'GUA', 1),
	(989, 62, 'Imbabura', 'IMB', 1),
	(990, 62, 'Loja', 'LOJ', 1),
	(991, 62, 'Los Rios', 'LRO', 1),
	(992, 62, 'Manab&iacute;', 'MAN', 1),
	(993, 62, 'Morona Santiago', 'MSA', 1),
	(994, 62, 'Napo', 'NAP', 1),
	(995, 62, 'Orellana', 'ORE', 1),
	(996, 62, 'Pastaza', 'PAS', 1),
	(997, 62, 'Pichincha', 'PIC', 1),
	(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
	(999, 62, 'Tungurahua', 'TUN', 1),
	(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
	(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
	(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
	(1003, 63, 'Al Buhayrah', 'BHY', 1),
	(1004, 63, 'Al Fayyum', 'FYM', 1),
	(1005, 63, 'Al Gharbiyah', 'GBY', 1),
	(1006, 63, 'Al Iskandariyah', 'IDR', 1),
	(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
	(1008, 63, 'Al Jizah', 'JZH', 1),
	(1009, 63, 'Al Minufiyah', 'MFY', 1),
	(1010, 63, 'Al Minya', 'MNY', 1),
	(1011, 63, 'Al Qahirah', 'QHR', 1),
	(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
	(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
	(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
	(1015, 63, 'As Suways', 'SWY', 1),
	(1016, 63, 'Aswan', 'ASW', 1),
	(1017, 63, 'Asyut', 'ASY', 1),
	(1018, 63, 'Bani Suwayf', 'BSW', 1),
	(1019, 63, 'Bur Sa\'id', 'BSD', 1),
	(1020, 63, 'Dumyat', 'DMY', 1),
	(1021, 63, 'Janub Sina\'', 'JNS', 1),
	(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
	(1023, 63, 'Matruh', 'MAT', 1),
	(1024, 63, 'Qina', 'QIN', 1),
	(1025, 63, 'Shamal Sina\'', 'SHS', 1),
	(1026, 63, 'Suhaj', 'SUH', 1),
	(1027, 64, 'Ahuachapan', 'AH', 1),
	(1028, 64, 'Cabanas', 'CA', 1),
	(1029, 64, 'Chalatenango', 'CH', 1),
	(1030, 64, 'Cuscatlan', 'CU', 1),
	(1031, 64, 'La Libertad', 'LB', 1),
	(1032, 64, 'La Paz', 'PZ', 1),
	(1033, 64, 'La Union', 'UN', 1),
	(1034, 64, 'Morazan', 'MO', 1),
	(1035, 64, 'San Miguel', 'SM', 1),
	(1036, 64, 'San Salvador', 'SS', 1),
	(1037, 64, 'San Vicente', 'SV', 1),
	(1038, 64, 'Santa Ana', 'SA', 1),
	(1039, 64, 'Sonsonate', 'SO', 1),
	(1040, 64, 'Usulutan', 'US', 1),
	(1041, 65, 'Provincia Annobon', 'AN', 1),
	(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
	(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
	(1044, 65, 'Provincia Centro Sur', 'CS', 1),
	(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
	(1046, 65, 'Provincia Litoral', 'LI', 1),
	(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
	(1048, 66, 'Central (Maekel)', 'MA', 1),
	(1049, 66, 'Anseba (Keren)', 'KE', 1),
	(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
	(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
	(1052, 66, 'Southern (Debub)', 'DE', 1),
	(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
	(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
	(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
	(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
	(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
	(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
	(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
	(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
	(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
	(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
	(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
	(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
	(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
	(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
	(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
	(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
	(1069, 68, 'Afar', 'AF', 1),
	(1070, 68, 'Amhara', 'AH', 1),
	(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
	(1072, 68, 'Gambela', 'GB', 1),
	(1073, 68, 'Hariai', 'HR', 1),
	(1074, 68, 'Oromia', 'OR', 1),
	(1075, 68, 'Somali', 'SM', 1),
	(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
	(1077, 68, 'Tigray', 'TG', 1),
	(1078, 68, 'Addis Ababa', 'AA', 1),
	(1079, 68, 'Dire Dawa', 'DD', 1),
	(1080, 71, 'Central Division', 'C', 1),
	(1081, 71, 'Northern Division', 'N', 1),
	(1082, 71, 'Eastern Division', 'E', 1),
	(1083, 71, 'Western Division', 'W', 1),
	(1084, 71, 'Rotuma', 'R', 1),
	(1085, 72, 'Ahvenanmaan Laani', 'AL', 1),
	(1086, 72, 'Etela-Suomen Laani', 'ES', 1),
	(1087, 72, 'Ita-Suomen Laani', 'IS', 1),
	(1088, 72, 'Lansi-Suomen Laani', 'LS', 1),
	(1089, 72, 'Lapin Lanani', 'LA', 1),
	(1090, 72, 'Oulun Laani', 'OU', 1),
	(1114, 74, 'Ain', '01', 1),
	(1115, 74, 'Aisne', '02', 1),
	(1116, 74, 'Allier', '03', 1),
	(1117, 74, 'Alpes de Haute Provence', '04', 1),
	(1118, 74, 'Hautes-Alpes', '05', 1),
	(1119, 74, 'Alpes Maritimes', '06', 1),
	(1120, 74, 'Ard&egrave;che', '07', 1),
	(1121, 74, 'Ardennes', '08', 1),
	(1122, 74, 'Ari&egrave;ge', '09', 1),
	(1123, 74, 'Aube', '10', 1),
	(1124, 74, 'Aude', '11', 1),
	(1125, 74, 'Aveyron', '12', 1),
	(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
	(1127, 74, 'Calvados', '14', 1),
	(1128, 74, 'Cantal', '15', 1),
	(1129, 74, 'Charente', '16', 1),
	(1130, 74, 'Charente Maritime', '17', 1),
	(1131, 74, 'Cher', '18', 1),
	(1132, 74, 'Corr&egrave;ze', '19', 1),
	(1133, 74, 'Corse du Sud', '2A', 1),
	(1134, 74, 'Haute Corse', '2B', 1),
	(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
	(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
	(1137, 74, 'Creuse', '23', 1),
	(1138, 74, 'Dordogne', '24', 1),
	(1139, 74, 'Doubs', '25', 1),
	(1140, 74, 'Dr&ocirc;me', '26', 1),
	(1141, 74, 'Eure', '27', 1),
	(1142, 74, 'Eure et Loir', '28', 1),
	(1143, 74, 'Finist&egrave;re', '29', 1),
	(1144, 74, 'Gard', '30', 1),
	(1145, 74, 'Haute Garonne', '31', 1),
	(1146, 74, 'Gers', '32', 1),
	(1147, 74, 'Gironde', '33', 1),
	(1148, 74, 'H&eacute;rault', '34', 1),
	(1149, 74, 'Ille et Vilaine', '35', 1),
	(1150, 74, 'Indre', '36', 1),
	(1151, 74, 'Indre et Loire', '37', 1),
	(1152, 74, 'Is&eacute;re', '38', 1),
	(1153, 74, 'Jura', '39', 1),
	(1154, 74, 'Landes', '40', 1),
	(1155, 74, 'Loir et Cher', '41', 1),
	(1156, 74, 'Loire', '42', 1),
	(1157, 74, 'Haute Loire', '43', 1),
	(1158, 74, 'Loire Atlantique', '44', 1),
	(1159, 74, 'Loiret', '45', 1),
	(1160, 74, 'Lot', '46', 1),
	(1161, 74, 'Lot et Garonne', '47', 1),
	(1162, 74, 'Loz&egrave;re', '48', 1),
	(1163, 74, 'Maine et Loire', '49', 1),
	(1164, 74, 'Manche', '50', 1),
	(1165, 74, 'Marne', '51', 1),
	(1166, 74, 'Haute Marne', '52', 1),
	(1167, 74, 'Mayenne', '53', 1),
	(1168, 74, 'Meurthe et Moselle', '54', 1),
	(1169, 74, 'Meuse', '55', 1),
	(1170, 74, 'Morbihan', '56', 1),
	(1171, 74, 'Moselle', '57', 1),
	(1172, 74, 'Ni&egrave;vre', '58', 1),
	(1173, 74, 'Nord', '59', 1),
	(1174, 74, 'Oise', '60', 1),
	(1175, 74, 'Orne', '61', 1),
	(1176, 74, 'Pas de Calais', '62', 1),
	(1177, 74, 'Puy de D&ocirc;me', '63', 1),
	(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
	(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
	(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
	(1181, 74, 'Bas Rhin', '67', 1),
	(1182, 74, 'Haut Rhin', '68', 1),
	(1183, 74, 'Rh&ocirc;ne', '69', 1),
	(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
	(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
	(1186, 74, 'Sarthe', '72', 1),
	(1187, 74, 'Savoie', '73', 1),
	(1188, 74, 'Haute Savoie', '74', 1),
	(1189, 74, 'Paris', '75', 1),
	(1190, 74, 'Seine Maritime', '76', 1),
	(1191, 74, 'Seine et Marne', '77', 1),
	(1192, 74, 'Yvelines', '78', 1),
	(1193, 74, 'Deux S&egrave;vres', '79', 1),
	(1194, 74, 'Somme', '80', 1),
	(1195, 74, 'Tarn', '81', 1),
	(1196, 74, 'Tarn et Garonne', '82', 1),
	(1197, 74, 'Var', '83', 1),
	(1198, 74, 'Vaucluse', '84', 1),
	(1199, 74, 'Vend&eacute;e', '85', 1),
	(1200, 74, 'Vienne', '86', 1),
	(1201, 74, 'Haute Vienne', '87', 1),
	(1202, 74, 'Vosges', '88', 1),
	(1203, 74, 'Yonne', '89', 1),
	(1204, 74, 'Territoire de Belfort', '90', 1),
	(1205, 74, 'Essonne', '91', 1),
	(1206, 74, 'Hauts de Seine', '92', 1),
	(1207, 74, 'Seine St-Denis', '93', 1),
	(1208, 74, 'Val de Marne', '94', 1),
	(1209, 74, 'Val d\'Oise', '95', 1),
	(1210, 76, 'Archipel des Marquises', 'M', 1),
	(1211, 76, 'Archipel des Tuamotu', 'T', 1),
	(1212, 76, 'Archipel des Tubuai', 'I', 1),
	(1213, 76, 'Iles du Vent', 'V', 1),
	(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
	(1215, 77, 'Iles Crozet', 'C', 1),
	(1216, 77, 'Iles Kerguelen', 'K', 1),
	(1217, 77, 'Ile Amsterdam', 'A', 1),
	(1218, 77, 'Ile Saint-Paul', 'P', 1),
	(1219, 77, 'Adelie Land', 'D', 1),
	(1220, 78, 'Estuaire', 'ES', 1),
	(1221, 78, 'Haut-Ogooue', 'HO', 1),
	(1222, 78, 'Moyen-Ogooue', 'MO', 1),
	(1223, 78, 'Ngounie', 'NG', 1),
	(1224, 78, 'Nyanga', 'NY', 1),
	(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
	(1226, 78, 'Ogooue-Lolo', 'OL', 1),
	(1227, 78, 'Ogooue-Maritime', 'OM', 1),
	(1228, 78, 'Woleu-Ntem', 'WN', 1),
	(1229, 79, 'Banjul', 'BJ', 1),
	(1230, 79, 'Basse', 'BS', 1),
	(1231, 79, 'Brikama', 'BR', 1),
	(1232, 79, 'Janjangbure', 'JA', 1),
	(1233, 79, 'Kanifeng', 'KA', 1),
	(1234, 79, 'Kerewan', 'KE', 1),
	(1235, 79, 'Kuntaur', 'KU', 1),
	(1236, 79, 'Mansakonko', 'MA', 1),
	(1237, 79, 'Lower River', 'LR', 1),
	(1238, 79, 'Central River', 'CR', 1),
	(1239, 79, 'North Bank', 'NB', 1),
	(1240, 79, 'Upper River', 'UR', 1),
	(1241, 79, 'Western', 'WE', 1),
	(1242, 80, 'Abkhazia', 'AB', 1),
	(1243, 80, 'Ajaria', 'AJ', 1),
	(1244, 80, 'Tbilisi', 'TB', 1),
	(1245, 80, 'Guria', 'GU', 1),
	(1246, 80, 'Imereti', 'IM', 1),
	(1247, 80, 'Kakheti', 'KA', 1),
	(1248, 80, 'Kvemo Kartli', 'KK', 1),
	(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
	(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
	(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
	(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
	(1253, 80, 'Shida Kartli', 'SK', 1),
	(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
	(1255, 81, 'Bayern', 'BAY', 1),
	(1256, 81, 'Berlin', 'BER', 1),
	(1257, 81, 'Brandenburg', 'BRG', 1),
	(1258, 81, 'Bremen', 'BRE', 1),
	(1259, 81, 'Hamburg', 'HAM', 1),
	(1260, 81, 'Hessen', 'HES', 1),
	(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
	(1262, 81, 'Niedersachsen', 'NDS', 1),
	(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
	(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
	(1265, 81, 'Saarland', 'SAR', 1),
	(1266, 81, 'Sachsen', 'SAS', 1),
	(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
	(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
	(1269, 81, 'Th&uuml;ringen', 'THE', 1),
	(1270, 82, 'Ashanti Region', 'AS', 1),
	(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
	(1272, 82, 'Central Region', 'CE', 1),
	(1273, 82, 'Eastern Region', 'EA', 1),
	(1274, 82, 'Greater Accra Region', 'GA', 1),
	(1275, 82, 'Northern Region', 'NO', 1),
	(1276, 82, 'Upper East Region', 'UE', 1),
	(1277, 82, 'Upper West Region', 'UW', 1),
	(1278, 82, 'Volta Region', 'VO', 1),
	(1279, 82, 'Western Region', 'WE', 1),
	(1280, 84, 'Attica', 'AT', 1),
	(1281, 84, 'Central Greece', 'CN', 1),
	(1282, 84, 'Central Macedonia', 'CM', 1),
	(1283, 84, 'Crete', 'CR', 1),
	(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
	(1285, 84, 'Epirus', 'EP', 1),
	(1286, 84, 'Ionian Islands', 'II', 1),
	(1287, 84, 'North Aegean', 'NA', 1),
	(1288, 84, 'Peloponnesos', 'PP', 1),
	(1289, 84, 'South Aegean', 'SA', 1),
	(1290, 84, 'Thessaly', 'TH', 1),
	(1291, 84, 'West Greece', 'WG', 1),
	(1292, 84, 'West Macedonia', 'WM', 1),
	(1293, 85, 'Avannaa', 'A', 1),
	(1294, 85, 'Tunu', 'T', 1),
	(1295, 85, 'Kitaa', 'K', 1),
	(1296, 86, 'Saint Andrew', 'A', 1),
	(1297, 86, 'Saint David', 'D', 1),
	(1298, 86, 'Saint George', 'G', 1),
	(1299, 86, 'Saint John', 'J', 1),
	(1300, 86, 'Saint Mark', 'M', 1),
	(1301, 86, 'Saint Patrick', 'P', 1),
	(1302, 86, 'Carriacou', 'C', 1),
	(1303, 86, 'Petit Martinique', 'Q', 1),
	(1304, 89, 'Alta Verapaz', 'AV', 1),
	(1305, 89, 'Baja Verapaz', 'BV', 1),
	(1306, 89, 'Chimaltenango', 'CM', 1),
	(1307, 89, 'Chiquimula', 'CQ', 1),
	(1308, 89, 'El Peten', 'PE', 1),
	(1309, 89, 'El Progreso', 'PR', 1),
	(1310, 89, 'El Quiche', 'QC', 1),
	(1311, 89, 'Escuintla', 'ES', 1),
	(1312, 89, 'Guatemala', 'GU', 1),
	(1313, 89, 'Huehuetenango', 'HU', 1),
	(1314, 89, 'Izabal', 'IZ', 1),
	(1315, 89, 'Jalapa', 'JA', 1),
	(1316, 89, 'Jutiapa', 'JU', 1),
	(1317, 89, 'Quetzaltenango', 'QZ', 1),
	(1318, 89, 'Retalhuleu', 'RE', 1),
	(1319, 89, 'Sacatepequez', 'ST', 1),
	(1320, 89, 'San Marcos', 'SM', 1),
	(1321, 89, 'Santa Rosa', 'SR', 1),
	(1322, 89, 'Solola', 'SO', 1),
	(1323, 89, 'Suchitepequez', 'SU', 1),
	(1324, 89, 'Totonicapan', 'TO', 1),
	(1325, 89, 'Zacapa', 'ZA', 1),
	(1326, 90, 'Conakry', 'CNK', 1),
	(1327, 90, 'Beyla', 'BYL', 1),
	(1328, 90, 'Boffa', 'BFA', 1),
	(1329, 90, 'Boke', 'BOK', 1),
	(1330, 90, 'Coyah', 'COY', 1),
	(1331, 90, 'Dabola', 'DBL', 1),
	(1332, 90, 'Dalaba', 'DLB', 1),
	(1333, 90, 'Dinguiraye', 'DGR', 1),
	(1334, 90, 'Dubreka', 'DBR', 1),
	(1335, 90, 'Faranah', 'FRN', 1),
	(1336, 90, 'Forecariah', 'FRC', 1),
	(1337, 90, 'Fria', 'FRI', 1),
	(1338, 90, 'Gaoual', 'GAO', 1),
	(1339, 90, 'Gueckedou', 'GCD', 1),
	(1340, 90, 'Kankan', 'KNK', 1),
	(1341, 90, 'Kerouane', 'KRN', 1),
	(1342, 90, 'Kindia', 'KND', 1),
	(1343, 90, 'Kissidougou', 'KSD', 1),
	(1344, 90, 'Koubia', 'KBA', 1),
	(1345, 90, 'Koundara', 'KDA', 1),
	(1346, 90, 'Kouroussa', 'KRA', 1),
	(1347, 90, 'Labe', 'LAB', 1),
	(1348, 90, 'Lelouma', 'LLM', 1),
	(1349, 90, 'Lola', 'LOL', 1),
	(1350, 90, 'Macenta', 'MCT', 1),
	(1351, 90, 'Mali', 'MAL', 1),
	(1352, 90, 'Mamou', 'MAM', 1),
	(1353, 90, 'Mandiana', 'MAN', 1),
	(1354, 90, 'Nzerekore', 'NZR', 1),
	(1355, 90, 'Pita', 'PIT', 1),
	(1356, 90, 'Siguiri', 'SIG', 1),
	(1357, 90, 'Telimele', 'TLM', 1),
	(1358, 90, 'Tougue', 'TOG', 1),
	(1359, 90, 'Yomou', 'YOM', 1),
	(1360, 91, 'Bafata Region', 'BF', 1),
	(1361, 91, 'Biombo Region', 'BB', 1),
	(1362, 91, 'Bissau Region', 'BS', 1),
	(1363, 91, 'Bolama Region', 'BL', 1),
	(1364, 91, 'Cacheu Region', 'CA', 1),
	(1365, 91, 'Gabu Region', 'GA', 1),
	(1366, 91, 'Oio Region', 'OI', 1),
	(1367, 91, 'Quinara Region', 'QU', 1),
	(1368, 91, 'Tombali Region', 'TO', 1),
	(1369, 92, 'Barima-Waini', 'BW', 1),
	(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
	(1371, 92, 'Demerara-Mahaica', 'DM', 1),
	(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
	(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
	(1374, 92, 'Mahaica-Berbice', 'MB', 1),
	(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
	(1376, 92, 'Potaro-Siparuni', 'PI', 1),
	(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
	(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
	(1379, 93, 'Artibonite', 'AR', 1),
	(1380, 93, 'Centre', 'CE', 1),
	(1381, 93, 'Grand\'Anse', 'GA', 1),
	(1382, 93, 'Nord', 'ND', 1),
	(1383, 93, 'Nord-Est', 'NE', 1),
	(1384, 93, 'Nord-Ouest', 'NO', 1),
	(1385, 93, 'Ouest', 'OU', 1),
	(1386, 93, 'Sud', 'SD', 1),
	(1387, 93, 'Sud-Est', 'SE', 1),
	(1388, 94, 'Flat Island', 'F', 1),
	(1389, 94, 'McDonald Island', 'M', 1),
	(1390, 94, 'Shag Island', 'S', 1),
	(1391, 94, 'Heard Island', 'H', 1),
	(1392, 95, 'Atlantida', 'AT', 1),
	(1393, 95, 'Choluteca', 'CH', 1),
	(1394, 95, 'Colon', 'CL', 1),
	(1395, 95, 'Comayagua', 'CM', 1),
	(1396, 95, 'Copan', 'CP', 1),
	(1397, 95, 'Cortes', 'CR', 1),
	(1398, 95, 'El Paraiso', 'PA', 1),
	(1399, 95, 'Francisco Morazan', 'FM', 1),
	(1400, 95, 'Gracias a Dios', 'GD', 1),
	(1401, 95, 'Intibuca', 'IN', 1),
	(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
	(1403, 95, 'La Paz', 'PZ', 1),
	(1404, 95, 'Lempira', 'LE', 1),
	(1405, 95, 'Ocotepeque', 'OC', 1),
	(1406, 95, 'Olancho', 'OL', 1),
	(1407, 95, 'Santa Barbara', 'SB', 1),
	(1408, 95, 'Valle', 'VA', 1),
	(1409, 95, 'Yoro', 'YO', 1),
	(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
	(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
	(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
	(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
	(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
	(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
	(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
	(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
	(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
	(1419, 96, 'Islands New Territories', 'NIS', 1),
	(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
	(1421, 96, 'North New Territories', 'NNO', 1),
	(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
	(1423, 96, 'Sha Tin New Territories', 'NST', 1),
	(1424, 96, 'Tai Po New Territories', 'NTP', 1),
	(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
	(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
	(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
	(1428, 97, 'Bacs-Kiskun', 'BK', 1),
	(1429, 97, 'Baranya', 'BA', 1),
	(1430, 97, 'Bekes', 'BE', 1),
	(1431, 97, 'Bekescsaba', 'BS', 1),
	(1432, 97, 'Borsod-Abauj-Zemplen', 'BZ', 1),
	(1433, 97, 'Budapest', 'BU', 1),
	(1434, 97, 'Csongrad', 'CS', 1),
	(1435, 97, 'Debrecen', 'DE', 1),
	(1436, 97, 'Dunaujvaros', 'DU', 1),
	(1437, 97, 'Eger', 'EG', 1),
	(1438, 97, 'Fejer', 'FE', 1),
	(1439, 97, 'Gyor', 'GY', 1),
	(1440, 97, 'Gyor-Moson-Sopron', 'GM', 1),
	(1441, 97, 'Hajdu-Bihar', 'HB', 1),
	(1442, 97, 'Heves', 'HE', 1),
	(1443, 97, 'Hodmezovasarhely', 'HO', 1),
	(1444, 97, 'Jasz-Nagykun-Szolnok', 'JN', 1),
	(1445, 97, 'Kaposvar', 'KA', 1),
	(1446, 97, 'Kecskemet', 'KE', 1),
	(1447, 97, 'Komarom-Esztergom', 'KO', 1),
	(1448, 97, 'Miskolc', 'MI', 1),
	(1449, 97, 'Nagykanizsa', 'NA', 1),
	(1450, 97, 'Nograd', 'NO', 1),
	(1451, 97, 'Nyiregyhaza', 'NY', 1),
	(1452, 97, 'Pecs', 'PE', 1),
	(1453, 97, 'Pest', 'PS', 1),
	(1454, 97, 'Somogy', 'SO', 1),
	(1455, 97, 'Sopron', 'SP', 1),
	(1456, 97, 'Szabolcs-Szatmar-Bereg', 'SS', 1),
	(1457, 97, 'Szeged', 'SZ', 1),
	(1458, 97, 'Szekesfehervar', 'SE', 1),
	(1459, 97, 'Szolnok', 'SL', 1),
	(1460, 97, 'Szombathely', 'SM', 1),
	(1461, 97, 'Tatabanya', 'TA', 1),
	(1462, 97, 'Tolna', 'TO', 1),
	(1463, 97, 'Vas', 'VA', 1),
	(1464, 97, 'Veszprem', 'VE', 1),
	(1465, 97, 'Zala', 'ZA', 1),
	(1466, 97, 'Zalaegerszeg', 'ZZ', 1),
	(1467, 98, 'Austurland', 'AL', 1),
	(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
	(1469, 98, 'Norourland eystra', 'NE', 1),
	(1470, 98, 'Norourland vestra', 'NV', 1),
	(1471, 98, 'Suourland', 'SL', 1),
	(1472, 98, 'Suournes', 'SN', 1),
	(1473, 98, 'Vestfiroir', 'VF', 1),
	(1474, 98, 'Vesturland', 'VL', 1),
	(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
	(1476, 99, 'Andhra Pradesh', 'AP', 1),
	(1477, 99, 'Arunachal Pradesh', 'AR', 1),
	(1478, 99, 'Assam', 'AS', 1),
	(1479, 99, 'Bihar', 'BI', 1),
	(1480, 99, 'Chandigarh', 'CH', 1),
	(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
	(1482, 99, 'Daman and Diu', 'DM', 1),
	(1483, 99, 'Delhi', 'DE', 1),
	(1484, 99, 'Goa', 'GO', 1),
	(1485, 99, 'Gujarat', 'GU', 1),
	(1486, 99, 'Haryana', 'HA', 1),
	(1487, 99, 'Himachal Pradesh', 'HP', 1),
	(1488, 99, 'Jammu and Kashmir', 'JA', 1),
	(1489, 99, 'Karnataka', 'KA', 1),
	(1490, 99, 'Kerala', 'KE', 1),
	(1491, 99, 'Lakshadweep Islands', 'LI', 1),
	(1492, 99, 'Madhya Pradesh', 'MP', 1),
	(1493, 99, 'Maharashtra', 'MA', 1),
	(1494, 99, 'Manipur', 'MN', 1),
	(1495, 99, 'Meghalaya', 'ME', 1),
	(1496, 99, 'Mizoram', 'MI', 1),
	(1497, 99, 'Nagaland', 'NA', 1),
	(1498, 99, 'Orissa', 'OR', 1),
	(1499, 99, 'Pondicherry', 'PO', 1),
	(1500, 99, 'Punjab', 'PU', 1),
	(1501, 99, 'Rajasthan', 'RA', 1),
	(1502, 99, 'Sikkim', 'SI', 1),
	(1503, 99, 'Tamil Nadu', 'TN', 1),
	(1504, 99, 'Tripura', 'TR', 1),
	(1505, 99, 'Uttar Pradesh', 'UP', 1),
	(1506, 99, 'West Bengal', 'WB', 1),
	(1507, 100, 'Aceh', 'AC', 1),
	(1508, 100, 'Bali', 'BA', 1),
	(1509, 100, 'Banten', 'BT', 1),
	(1510, 100, 'Bengkulu', 'BE', 1),
	(1511, 100, 'BoDeTaBek', 'BD', 1),
	(1512, 100, 'Gorontalo', 'GO', 1),
	(1513, 100, 'Jakarta Raya', 'JK', 1),
	(1514, 100, 'Jambi', 'JA', 1),
	(1515, 100, 'Jawa Barat', 'JB', 1),
	(1516, 100, 'Jawa Tengah', 'JT', 1),
	(1517, 100, 'Jawa Timur', 'JI', 1),
	(1518, 100, 'Kalimantan Barat', 'KB', 1),
	(1519, 100, 'Kalimantan Selatan', 'KS', 1),
	(1520, 100, 'Kalimantan Tengah', 'KT', 1),
	(1521, 100, 'Kalimantan Timur', 'KI', 1),
	(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
	(1523, 100, 'Lampung', 'LA', 1),
	(1524, 100, 'Maluku', 'MA', 1),
	(1525, 100, 'Maluku Utara', 'MU', 1),
	(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
	(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
	(1528, 100, 'Papua', 'PA', 1),
	(1529, 100, 'Riau', 'RI', 1),
	(1530, 100, 'Sulawesi Selatan', 'SN', 1),
	(1531, 100, 'Sulawesi Tengah', 'ST', 1),
	(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
	(1533, 100, 'Sulawesi Utara', 'SA', 1),
	(1534, 100, 'Sumatera Barat', 'SB', 1),
	(1535, 100, 'Sumatera Selatan', 'SS', 1),
	(1536, 100, 'Sumatera Utara', 'SU', 1),
	(1537, 100, 'Yogyakarta', 'YO', 1),
	(1538, 101, 'Tehran', 'TEH', 1),
	(1539, 101, 'Qom', 'QOM', 1),
	(1540, 101, 'Markazi', 'MKZ', 1),
	(1541, 101, 'Qazvin', 'QAZ', 1),
	(1542, 101, 'Gilan', 'GIL', 1),
	(1543, 101, 'Ardabil', 'ARD', 1),
	(1544, 101, 'Zanjan', 'ZAN', 1),
	(1545, 101, 'East Azarbaijan', 'EAZ', 1),
	(1546, 101, 'West Azarbaijan', 'WEZ', 1),
	(1547, 101, 'Kurdistan', 'KRD', 1),
	(1548, 101, 'Hamadan', 'HMD', 1),
	(1549, 101, 'Kermanshah', 'KRM', 1),
	(1550, 101, 'Ilam', 'ILM', 1),
	(1551, 101, 'Lorestan', 'LRS', 1),
	(1552, 101, 'Khuzestan', 'KZT', 1),
	(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
	(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
	(1555, 101, 'Bushehr', 'BSH', 1),
	(1556, 101, 'Fars', 'FAR', 1),
	(1557, 101, 'Hormozgan', 'HRM', 1),
	(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
	(1559, 101, 'Kerman', 'KRB', 1),
	(1560, 101, 'Yazd', 'YZD', 1),
	(1561, 101, 'Esfahan', 'EFH', 1),
	(1562, 101, 'Semnan', 'SMN', 1),
	(1563, 101, 'Mazandaran', 'MZD', 1),
	(1564, 101, 'Golestan', 'GLS', 1),
	(1565, 101, 'North Khorasan', 'NKH', 1),
	(1566, 101, 'Razavi Khorasan', 'RKH', 1),
	(1567, 101, 'South Khorasan', 'SKH', 1),
	(1568, 102, 'Baghdad', 'BD', 1),
	(1569, 102, 'Salah ad Din', 'SD', 1),
	(1570, 102, 'Diyala', 'DY', 1),
	(1571, 102, 'Wasit', 'WS', 1),
	(1572, 102, 'Maysan', 'MY', 1),
	(1573, 102, 'Al Basrah', 'BA', 1),
	(1574, 102, 'Dhi Qar', 'DQ', 1),
	(1575, 102, 'Al Muthanna', 'MU', 1),
	(1576, 102, 'Al Qadisyah', 'QA', 1),
	(1577, 102, 'Babil', 'BB', 1),
	(1578, 102, 'Al Karbala', 'KB', 1),
	(1579, 102, 'An Najaf', 'NJ', 1),
	(1580, 102, 'Al Anbar', 'AB', 1),
	(1581, 102, 'Ninawa', 'NN', 1),
	(1582, 102, 'Dahuk', 'DH', 1),
	(1583, 102, 'Arbil', 'AL', 1),
	(1584, 102, 'At Ta\'mim', 'TM', 1),
	(1585, 102, 'As Sulaymaniyah', 'SL', 1),
	(1586, 103, 'Carlow', 'CA', 1),
	(1587, 103, 'Cavan', 'CV', 1),
	(1588, 103, 'Clare', 'CL', 1),
	(1589, 103, 'Cork', 'CO', 1),
	(1590, 103, 'Donegal', 'DO', 1),
	(1591, 103, 'Dublin', 'DU', 1),
	(1592, 103, 'Galway', 'GA', 1),
	(1593, 103, 'Kerry', 'KE', 1),
	(1594, 103, 'Kildare', 'KI', 1),
	(1595, 103, 'Kilkenny', 'KL', 1),
	(1596, 103, 'Laois', 'LA', 1),
	(1597, 103, 'Leitrim', 'LE', 1),
	(1598, 103, 'Limerick', 'LI', 1),
	(1599, 103, 'Longford', 'LO', 1),
	(1600, 103, 'Louth', 'LU', 1),
	(1601, 103, 'Mayo', 'MA', 1),
	(1602, 103, 'Meath', 'ME', 1),
	(1603, 103, 'Monaghan', 'MO', 1),
	(1604, 103, 'Offaly', 'OF', 1),
	(1605, 103, 'Roscommon', 'RO', 1),
	(1606, 103, 'Sligo', 'SL', 1),
	(1607, 103, 'Tipperary', 'TI', 1),
	(1608, 103, 'Waterford', 'WA', 1),
	(1609, 103, 'Westmeath', 'WE', 1),
	(1610, 103, 'Wexford', 'WX', 1),
	(1611, 103, 'Wicklow', 'WI', 1),
	(1612, 104, 'Be\'er Sheva', 'BS', 1),
	(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
	(1614, 104, 'Eilat and Arava', 'EA', 1),
	(1615, 104, 'Galil', 'GA', 1),
	(1616, 104, 'Haifa', 'HA', 1),
	(1617, 104, 'Jehuda Mountains', 'JM', 1),
	(1618, 104, 'Jerusalem', 'JE', 1),
	(1619, 104, 'Negev', 'NE', 1),
	(1620, 104, 'Semaria', 'SE', 1),
	(1621, 104, 'Sharon', 'SH', 1),
	(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
	(3860, 105, 'Caltanissetta', 'CL', 1),
	(3842, 105, 'Agrigento', 'AG', 1),
	(3843, 105, 'Alessandria', 'AL', 1),
	(3844, 105, 'Ancona', 'AN', 1),
	(3845, 105, 'Aosta', 'AO', 1),
	(3846, 105, 'Arezzo', 'AR', 1),
	(3847, 105, 'Ascoli Piceno', 'AP', 1),
	(3848, 105, 'Asti', 'AT', 1),
	(3849, 105, 'Avellino', 'AV', 1),
	(3850, 105, 'Bari', 'BA', 1),
	(3851, 105, 'Belluno', 'BL', 1),
	(3852, 105, 'Benevento', 'BN', 1),
	(3853, 105, 'Bergamo', 'BG', 1),
	(3854, 105, 'Biella', 'BI', 1),
	(3855, 105, 'Bologna', 'BO', 1),
	(3856, 105, 'Bolzano', 'BZ', 1),
	(3857, 105, 'Brescia', 'BS', 1),
	(3858, 105, 'Brindisi', 'BR', 1),
	(3859, 105, 'Cagliari', 'CA', 1),
	(1643, 106, 'Clarendon Parish', 'CLA', 1),
	(1644, 106, 'Hanover Parish', 'HAN', 1),
	(1645, 106, 'Kingston Parish', 'KIN', 1),
	(1646, 106, 'Manchester Parish', 'MAN', 1),
	(1647, 106, 'Portland Parish', 'POR', 1),
	(1648, 106, 'Saint Andrew Parish', 'AND', 1),
	(1649, 106, 'Saint Ann Parish', 'ANN', 1),
	(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
	(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
	(1652, 106, 'Saint James Parish', 'JAM', 1),
	(1653, 106, 'Saint Mary Parish', 'MAR', 1),
	(1654, 106, 'Saint Thomas Parish', 'THO', 1),
	(1655, 106, 'Trelawny Parish', 'TRL', 1),
	(1656, 106, 'Westmoreland Parish', 'WML', 1),
	(1657, 107, 'Aichi', 'AI', 1),
	(1658, 107, 'Akita', 'AK', 1),
	(1659, 107, 'Aomori', 'AO', 1),
	(1660, 107, 'Chiba', 'CH', 1),
	(1661, 107, 'Ehime', 'EH', 1),
	(1662, 107, 'Fukui', 'FK', 1),
	(1663, 107, 'Fukuoka', 'FU', 1),
	(1664, 107, 'Fukushima', 'FS', 1),
	(1665, 107, 'Gifu', 'GI', 1),
	(1666, 107, 'Gumma', 'GU', 1),
	(1667, 107, 'Hiroshima', 'HI', 1),
	(1668, 107, 'Hokkaido', 'HO', 1),
	(1669, 107, 'Hyogo', 'HY', 1),
	(1670, 107, 'Ibaraki', 'IB', 1),
	(1671, 107, 'Ishikawa', 'IS', 1),
	(1672, 107, 'Iwate', 'IW', 1),
	(1673, 107, 'Kagawa', 'KA', 1),
	(1674, 107, 'Kagoshima', 'KG', 1),
	(1675, 107, 'Kanagawa', 'KN', 1),
	(1676, 107, 'Kochi', 'KO', 1),
	(1677, 107, 'Kumamoto', 'KU', 1),
	(1678, 107, 'Kyoto', 'KY', 1),
	(1679, 107, 'Mie', 'MI', 1),
	(1680, 107, 'Miyagi', 'MY', 1),
	(1681, 107, 'Miyazaki', 'MZ', 1),
	(1682, 107, 'Nagano', 'NA', 1),
	(1683, 107, 'Nagasaki', 'NG', 1),
	(1684, 107, 'Nara', 'NR', 1),
	(1685, 107, 'Niigata', 'NI', 1),
	(1686, 107, 'Oita', 'OI', 1),
	(1687, 107, 'Okayama', 'OK', 1),
	(1688, 107, 'Okinawa', 'ON', 1),
	(1689, 107, 'Osaka', 'OS', 1),
	(1690, 107, 'Saga', 'SA', 1),
	(1691, 107, 'Saitama', 'SI', 1),
	(1692, 107, 'Shiga', 'SH', 1),
	(1693, 107, 'Shimane', 'SM', 1),
	(1694, 107, 'Shizuoka', 'SZ', 1),
	(1695, 107, 'Tochigi', 'TO', 1),
	(1696, 107, 'Tokushima', 'TS', 1),
	(1697, 107, 'Tokyo', 'TK', 1),
	(1698, 107, 'Tottori', 'TT', 1),
	(1699, 107, 'Toyama', 'TY', 1),
	(1700, 107, 'Wakayama', 'WA', 1),
	(1701, 107, 'Yamagata', 'YA', 1),
	(1702, 107, 'Yamaguchi', 'YM', 1),
	(1703, 107, 'Yamanashi', 'YN', 1),
	(1704, 108, '\'Amman', 'AM', 1),
	(1705, 108, 'Ajlun', 'AJ', 1),
	(1706, 108, 'Al \'Aqabah', 'AA', 1),
	(1707, 108, 'Al Balqa\'', 'AB', 1),
	(1708, 108, 'Al Karak', 'AK', 1),
	(1709, 108, 'Al Mafraq', 'AL', 1),
	(1710, 108, 'At Tafilah', 'AT', 1),
	(1711, 108, 'Az Zarqa\'', 'AZ', 1),
	(1712, 108, 'Irbid', 'IR', 1),
	(1713, 108, 'Jarash', 'JA', 1),
	(1714, 108, 'Ma\'an', 'MA', 1),
	(1715, 108, 'Madaba', 'MD', 1),
	(1716, 109, 'Almaty', 'AL', 1),
	(1717, 109, 'Almaty City', 'AC', 1),
	(1718, 109, 'Aqmola', 'AM', 1),
	(1719, 109, 'Aqtobe', 'AQ', 1),
	(1720, 109, 'Astana City', 'AS', 1),
	(1721, 109, 'Atyrau', 'AT', 1),
	(1722, 109, 'Batys Qazaqstan', 'BA', 1),
	(1723, 109, 'Bayqongyr City', 'BY', 1),
	(1724, 109, 'Mangghystau', 'MA', 1),
	(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
	(1726, 109, 'Pavlodar', 'PA', 1),
	(1727, 109, 'Qaraghandy', 'QA', 1),
	(1728, 109, 'Qostanay', 'QO', 1),
	(1729, 109, 'Qyzylorda', 'QY', 1),
	(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
	(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
	(1732, 109, 'Zhambyl', 'ZH', 1),
	(1733, 110, 'Central', 'CE', 1),
	(1734, 110, 'Coast', 'CO', 1),
	(1735, 110, 'Eastern', 'EA', 1),
	(1736, 110, 'Nairobi Area', 'NA', 1),
	(1737, 110, 'North Eastern', 'NE', 1),
	(1738, 110, 'Nyanza', 'NY', 1),
	(1739, 110, 'Rift Valley', 'RV', 1),
	(1740, 110, 'Western', 'WE', 1),
	(1741, 111, 'Abaiang', 'AG', 1),
	(1742, 111, 'Abemama', 'AM', 1),
	(1743, 111, 'Aranuka', 'AK', 1),
	(1744, 111, 'Arorae', 'AO', 1),
	(1745, 111, 'Banaba', 'BA', 1),
	(1746, 111, 'Beru', 'BE', 1),
	(1747, 111, 'Butaritari', 'bT', 1),
	(1748, 111, 'Kanton', 'KA', 1),
	(1749, 111, 'Kiritimati', 'KR', 1),
	(1750, 111, 'Kuria', 'KU', 1),
	(1751, 111, 'Maiana', 'MI', 1),
	(1752, 111, 'Makin', 'MN', 1),
	(1753, 111, 'Marakei', 'ME', 1),
	(1754, 111, 'Nikunau', 'NI', 1),
	(1755, 111, 'Nonouti', 'NO', 1),
	(1756, 111, 'Onotoa', 'ON', 1),
	(1757, 111, 'Tabiteuea', 'TT', 1),
	(1758, 111, 'Tabuaeran', 'TR', 1),
	(1759, 111, 'Tamana', 'TM', 1),
	(1760, 111, 'Tarawa', 'TW', 1),
	(1761, 111, 'Teraina', 'TE', 1),
	(1762, 112, 'Chagang-do', 'CHA', 1),
	(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
	(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
	(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
	(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
	(1767, 112, 'Kangwon-do', 'KAN', 1),
	(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
	(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
	(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
	(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
	(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
	(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
	(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
	(1775, 113, 'Cheju-do', 'CD', 1),
	(1776, 113, 'Cholla-bukto', 'CB', 1),
	(1777, 113, 'Cholla-namdo', 'CN', 1),
	(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
	(1779, 113, 'Kangwon-do', 'KA', 1),
	(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
	(1781, 113, 'Kyonggi-do', 'KD', 1),
	(1782, 113, 'Kyongsang-bukto', 'KB', 1),
	(1783, 113, 'Kyongsang-namdo', 'KN', 1),
	(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
	(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
	(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
	(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
	(1788, 114, 'Al \'Asimah', 'AL', 1),
	(1789, 114, 'Al Ahmadi', 'AA', 1),
	(1790, 114, 'Al Farwaniyah', 'AF', 1),
	(1791, 114, 'Al Jahra\'', 'AJ', 1),
	(1792, 114, 'Hawalli', 'HA', 1),
	(1793, 115, 'Bishkek', 'GB', 1),
	(1794, 115, 'Batken', 'B', 1),
	(1795, 115, 'Chu', 'C', 1),
	(1796, 115, 'Jalal-Abad', 'J', 1),
	(1797, 115, 'Naryn', 'N', 1),
	(1798, 115, 'Osh', 'O', 1),
	(1799, 115, 'Talas', 'T', 1),
	(1800, 115, 'Ysyk-Kol', 'Y', 1),
	(1801, 116, 'Vientiane', 'VT', 1),
	(1802, 116, 'Attapu', 'AT', 1),
	(1803, 116, 'Bokeo', 'BK', 1),
	(1804, 116, 'Bolikhamxai', 'BL', 1),
	(1805, 116, 'Champasak', 'CH', 1),
	(1806, 116, 'Houaphan', 'HO', 1),
	(1807, 116, 'Khammouan', 'KH', 1),
	(1808, 116, 'Louang Namtha', 'LM', 1),
	(1809, 116, 'Louangphabang', 'LP', 1),
	(1810, 116, 'Oudomxai', 'OU', 1),
	(1811, 116, 'Phongsali', 'PH', 1),
	(1812, 116, 'Salavan', 'SL', 1),
	(1813, 116, 'Savannakhet', 'SV', 1),
	(1814, 116, 'Vientiane', 'VI', 1),
	(1815, 116, 'Xaignabouli', 'XA', 1),
	(1816, 116, 'Xekong', 'XE', 1),
	(1817, 116, 'Xiangkhoang', 'XI', 1),
	(1818, 116, 'Xaisomboun', 'XN', 1),
	(1819, 117, 'Aizkraukles Rajons', 'AIZ', 1),
	(1820, 117, 'Aluksnes Rajons', 'ALU', 1),
	(1821, 117, 'Balvu Rajons', 'BAL', 1),
	(1822, 117, 'Bauskas Rajons', 'BAU', 1),
	(1823, 117, 'Cesu Rajons', 'CES', 1),
	(1824, 117, 'Daugavpils Rajons', 'DGR', 1),
	(1825, 117, 'Dobeles Rajons', 'DOB', 1),
	(1826, 117, 'Gulbenes Rajons', 'GUL', 1),
	(1827, 117, 'Jekabpils Rajons', 'JEK', 1),
	(1828, 117, 'Jelgavas Rajons', 'JGR', 1),
	(1829, 117, 'Kraslavas Rajons', 'KRA', 1),
	(1830, 117, 'Kuldigas Rajons', 'KUL', 1),
	(1831, 117, 'Liepajas Rajons', 'LPR', 1),
	(1832, 117, 'Limbazu Rajons', 'LIM', 1),
	(1833, 117, 'Ludzas Rajons', 'LUD', 1),
	(1834, 117, 'Madonas Rajons', 'MAD', 1),
	(1835, 117, 'Ogres Rajons', 'OGR', 1),
	(1836, 117, 'Preilu Rajons', 'PRE', 1),
	(1837, 117, 'Rezeknes Rajons', 'RZR', 1),
	(1838, 117, 'Rigas Rajons', 'RGR', 1),
	(1839, 117, 'Saldus Rajons', 'SAL', 1),
	(1840, 117, 'Talsu Rajons', 'TAL', 1),
	(1841, 117, 'Tukuma Rajons', 'TUK', 1),
	(1842, 117, 'Valkas Rajons', 'VLK', 1),
	(1843, 117, 'Valmieras Rajons', 'VLM', 1),
	(1844, 117, 'Ventspils Rajons', 'VSR', 1),
	(1845, 117, 'Daugavpils', 'DGV', 1),
	(1846, 117, 'Jelgava', 'JGV', 1),
	(1847, 117, 'Jurmala', 'JUR', 1),
	(1848, 117, 'Liepaja', 'LPK', 1),
	(1849, 117, 'Rezekne', 'RZK', 1),
	(1850, 117, 'Riga', 'RGA', 1),
	(1851, 117, 'Ventspils', 'VSL', 1),
	(1852, 119, 'Berea', 'BE', 1),
	(1853, 119, 'Butha-Buthe', 'BB', 1),
	(1854, 119, 'Leribe', 'LE', 1),
	(1855, 119, 'Mafeteng', 'MF', 1),
	(1856, 119, 'Maseru', 'MS', 1),
	(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
	(1858, 119, 'Mokhotlong', 'MK', 1),
	(1859, 119, 'Qacha\'s Nek', 'QN', 1),
	(1860, 119, 'Quthing', 'QT', 1),
	(1861, 119, 'Thaba-Tseka', 'TT', 1),
	(1862, 120, 'Bomi', 'BI', 1),
	(1863, 120, 'Bong', 'BG', 1),
	(1864, 120, 'Grand Bassa', 'GB', 1),
	(1865, 120, 'Grand Cape Mount', 'CM', 1),
	(1866, 120, 'Grand Gedeh', 'GG', 1),
	(1867, 120, 'Grand Kru', 'GK', 1),
	(1868, 120, 'Lofa', 'LO', 1),
	(1869, 120, 'Margibi', 'MG', 1),
	(1870, 120, 'Maryland', 'ML', 1),
	(1871, 120, 'Montserrado', 'MS', 1),
	(1872, 120, 'Nimba', 'NB', 1),
	(1873, 120, 'River Cess', 'RC', 1),
	(1874, 120, 'Sinoe', 'SN', 1),
	(1875, 121, 'Ajdabiya', 'AJ', 1),
	(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
	(1877, 121, 'Al Fatih', 'FA', 1),
	(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
	(1879, 121, 'Al Jufrah', 'JU', 1),
	(1880, 121, 'Al Khums', 'KH', 1),
	(1881, 121, 'Al Kufrah', 'KU', 1),
	(1882, 121, 'An Nuqat al Khams', 'NK', 1),
	(1883, 121, 'Ash Shati\'', 'AS', 1),
	(1884, 121, 'Awbari', 'AW', 1),
	(1885, 121, 'Az Zawiyah', 'ZA', 1),
	(1886, 121, 'Banghazi', 'BA', 1),
	(1887, 121, 'Darnah', 'DA', 1),
	(1888, 121, 'Ghadamis', 'GD', 1),
	(1889, 121, 'Gharyan', 'GY', 1),
	(1890, 121, 'Misratah', 'MI', 1),
	(1891, 121, 'Murzuq', 'MZ', 1),
	(1892, 121, 'Sabha', 'SB', 1),
	(1893, 121, 'Sawfajjin', 'SW', 1),
	(1894, 121, 'Surt', 'SU', 1),
	(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
	(1896, 121, 'Tarhunah', 'TH', 1),
	(1897, 121, 'Tubruq', 'TU', 1),
	(1898, 121, 'Yafran', 'YA', 1),
	(1899, 121, 'Zlitan', 'ZL', 1),
	(1900, 122, 'Vaduz', 'V', 1),
	(1901, 122, 'Schaan', 'A', 1),
	(1902, 122, 'Balzers', 'B', 1),
	(1903, 122, 'Triesen', 'N', 1),
	(1904, 122, 'Eschen', 'E', 1),
	(1905, 122, 'Mauren', 'M', 1),
	(1906, 122, 'Triesenberg', 'T', 1),
	(1907, 122, 'Ruggell', 'R', 1),
	(1908, 122, 'Gamprin', 'G', 1),
	(1909, 122, 'Schellenberg', 'L', 1),
	(1910, 122, 'Planken', 'P', 1),
	(1911, 123, 'Alytus', 'AL', 1),
	(1912, 123, 'Kaunas', 'KA', 1),
	(1913, 123, 'Klaipeda', 'KL', 1),
	(1914, 123, 'Marijampole', 'MA', 1),
	(1915, 123, 'Panevezys', 'PA', 1),
	(1916, 123, 'Siauliai', 'SI', 1),
	(1917, 123, 'Taurage', 'TA', 1),
	(1918, 123, 'Telsiai', 'TE', 1),
	(1919, 123, 'Utena', 'UT', 1),
	(1920, 123, 'Vilnius', 'VI', 1),
	(1921, 124, 'Diekirch', 'DD', 1),
	(1922, 124, 'Clervaux', 'DC', 1),
	(1923, 124, 'Redange', 'DR', 1),
	(1924, 124, 'Vianden', 'DV', 1),
	(1925, 124, 'Wiltz', 'DW', 1),
	(1926, 124, 'Grevenmacher', 'GG', 1),
	(1927, 124, 'Echternach', 'GE', 1),
	(1928, 124, 'Remich', 'GR', 1),
	(1929, 124, 'Luxembourg', 'LL', 1),
	(1930, 124, 'Capellen', 'LC', 1),
	(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
	(1932, 124, 'Mersch', 'LM', 1),
	(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
	(1934, 125, 'St. Anthony Parish', 'ANT', 1),
	(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
	(1936, 125, 'Cathedral Parish', 'CAT', 1),
	(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
	(1938, 127, 'Antananarivo', 'AN', 1),
	(1939, 127, 'Antsiranana', 'AS', 1),
	(1940, 127, 'Fianarantsoa', 'FN', 1),
	(1941, 127, 'Mahajanga', 'MJ', 1),
	(1942, 127, 'Toamasina', 'TM', 1),
	(1943, 127, 'Toliara', 'TL', 1),
	(1944, 128, 'Balaka', 'BLK', 1),
	(1945, 128, 'Blantyre', 'BLT', 1),
	(1946, 128, 'Chikwawa', 'CKW', 1),
	(1947, 128, 'Chiradzulu', 'CRD', 1),
	(1948, 128, 'Chitipa', 'CTP', 1),
	(1949, 128, 'Dedza', 'DDZ', 1),
	(1950, 128, 'Dowa', 'DWA', 1),
	(1951, 128, 'Karonga', 'KRG', 1),
	(1952, 128, 'Kasungu', 'KSG', 1),
	(1953, 128, 'Likoma', 'LKM', 1),
	(1954, 128, 'Lilongwe', 'LLG', 1),
	(1955, 128, 'Machinga', 'MCG', 1),
	(1956, 128, 'Mangochi', 'MGC', 1),
	(1957, 128, 'Mchinji', 'MCH', 1),
	(1958, 128, 'Mulanje', 'MLJ', 1),
	(1959, 128, 'Mwanza', 'MWZ', 1),
	(1960, 128, 'Mzimba', 'MZM', 1),
	(1961, 128, 'Ntcheu', 'NTU', 1),
	(1962, 128, 'Nkhata Bay', 'NKB', 1),
	(1963, 128, 'Nkhotakota', 'NKH', 1),
	(1964, 128, 'Nsanje', 'NSJ', 1),
	(1965, 128, 'Ntchisi', 'NTI', 1),
	(1966, 128, 'Phalombe', 'PHL', 1),
	(1967, 128, 'Rumphi', 'RMP', 1),
	(1968, 128, 'Salima', 'SLM', 1),
	(1969, 128, 'Thyolo', 'THY', 1),
	(1970, 128, 'Zomba', 'ZBA', 1),
	(1971, 129, 'Johor', 'JO', 1),
	(1972, 129, 'Kedah', 'KE', 1),
	(1973, 129, 'Kelantan', 'KL', 1),
	(1974, 129, 'Labuan', 'LA', 1),
	(1975, 129, 'Melaka', 'ME', 1),
	(1976, 129, 'Negeri Sembilan', 'NS', 1),
	(1977, 129, 'Pahang', 'PA', 1),
	(1978, 129, 'Perak', 'PE', 1),
	(1979, 129, 'Perlis', 'PR', 1),
	(1980, 129, 'Pulau Pinang', 'PP', 1),
	(1981, 129, 'Sabah', 'SA', 1),
	(1982, 129, 'Sarawak', 'SR', 1),
	(1983, 129, 'Selangor', 'SE', 1),
	(1984, 129, 'Terengganu', 'TE', 1),
	(1985, 129, 'Wilayah Persekutuan', 'WP', 1),
	(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
	(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
	(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
	(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
	(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
	(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
	(1992, 130, 'Faadhippolhu', 'FAA', 1),
	(1993, 130, 'Male Atoll', 'MAA', 1),
	(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
	(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
	(1996, 130, 'Felidhe Atoll', 'FEA', 1),
	(1997, 130, 'Mulaku Atoll', 'MUA', 1),
	(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
	(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
	(2000, 130, 'Kolhumadulu', 'KLH', 1),
	(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
	(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
	(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
	(2004, 130, 'Fua Mulaku', 'FMU', 1),
	(2005, 130, 'Addu', 'ADD', 1),
	(2006, 131, 'Gao', 'GA', 1),
	(2007, 131, 'Kayes', 'KY', 1),
	(2008, 131, 'Kidal', 'KD', 1),
	(2009, 131, 'Koulikoro', 'KL', 1),
	(2010, 131, 'Mopti', 'MP', 1),
	(2011, 131, 'Segou', 'SG', 1),
	(2012, 131, 'Sikasso', 'SK', 1),
	(2013, 131, 'Tombouctou', 'TB', 1),
	(2014, 131, 'Bamako Capital District', 'CD', 1),
	(2015, 132, 'Attard', 'ATT', 1),
	(2016, 132, 'Balzan', 'BAL', 1),
	(2017, 132, 'Birgu', 'BGU', 1),
	(2018, 132, 'Birkirkara', 'BKK', 1),
	(2019, 132, 'Birzebbuga', 'BRZ', 1),
	(2020, 132, 'Bormla', 'BOR', 1),
	(2021, 132, 'Dingli', 'DIN', 1),
	(2022, 132, 'Fgura', 'FGU', 1),
	(2023, 132, 'Floriana', 'FLO', 1),
	(2024, 132, 'Gudja', 'GDJ', 1),
	(2025, 132, 'Gzira', 'GZR', 1),
	(2026, 132, 'Gargur', 'GRG', 1),
	(2027, 132, 'Gaxaq', 'GXQ', 1),
	(2028, 132, 'Hamrun', 'HMR', 1),
	(2029, 132, 'Iklin', 'IKL', 1),
	(2030, 132, 'Isla', 'ISL', 1),
	(2031, 132, 'Kalkara', 'KLK', 1),
	(2032, 132, 'Kirkop', 'KRK', 1),
	(2033, 132, 'Lija', 'LIJ', 1),
	(2034, 132, 'Luqa', 'LUQ', 1),
	(2035, 132, 'Marsa', 'MRS', 1),
	(2036, 132, 'Marsaskala', 'MKL', 1),
	(2037, 132, 'Marsaxlokk', 'MXL', 1),
	(2038, 132, 'Mdina', 'MDN', 1),
	(2039, 132, 'Melliea', 'MEL', 1),
	(2040, 132, 'Mgarr', 'MGR', 1),
	(2041, 132, 'Mosta', 'MST', 1),
	(2042, 132, 'Mqabba', 'MQA', 1),
	(2043, 132, 'Msida', 'MSI', 1),
	(2044, 132, 'Mtarfa', 'MTF', 1),
	(2045, 132, 'Naxxar', 'NAX', 1),
	(2046, 132, 'Paola', 'PAO', 1),
	(2047, 132, 'Pembroke', 'PEM', 1),
	(2048, 132, 'Pieta', 'PIE', 1),
	(2049, 132, 'Qormi', 'QOR', 1),
	(2050, 132, 'Qrendi', 'QRE', 1),
	(2051, 132, 'Rabat', 'RAB', 1),
	(2052, 132, 'Safi', 'SAF', 1),
	(2053, 132, 'San Giljan', 'SGI', 1),
	(2054, 132, 'Santa Lucija', 'SLU', 1),
	(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
	(2056, 132, 'San Gwann', 'SGW', 1),
	(2057, 132, 'Santa Venera', 'SVE', 1),
	(2058, 132, 'Siggiewi', 'SIG', 1),
	(2059, 132, 'Sliema', 'SLM', 1),
	(2060, 132, 'Swieqi', 'SWQ', 1),
	(2061, 132, 'Ta Xbiex', 'TXB', 1),
	(2062, 132, 'Tarxien', 'TRX', 1),
	(2063, 132, 'Valletta', 'VLT', 1),
	(2064, 132, 'Xgajra', 'XGJ', 1),
	(2065, 132, 'Zabbar', 'ZBR', 1),
	(2066, 132, 'Zebbug', 'ZBG', 1),
	(2067, 132, 'Zejtun', 'ZJT', 1),
	(2068, 132, 'Zurrieq', 'ZRQ', 1),
	(2069, 132, 'Fontana', 'FNT', 1),
	(2070, 132, 'Ghajnsielem', 'GHJ', 1),
	(2071, 132, 'Gharb', 'GHR', 1),
	(2072, 132, 'Ghasri', 'GHS', 1),
	(2073, 132, 'Kercem', 'KRC', 1),
	(2074, 132, 'Munxar', 'MUN', 1),
	(2075, 132, 'Nadur', 'NAD', 1),
	(2076, 132, 'Qala', 'QAL', 1),
	(2077, 132, 'Victoria', 'VIC', 1),
	(2078, 132, 'San Lawrenz', 'SLA', 1),
	(2079, 132, 'Sannat', 'SNT', 1),
	(2080, 132, 'Xagra', 'ZAG', 1),
	(2081, 132, 'Xewkija', 'XEW', 1),
	(2082, 132, 'Zebbug', 'ZEB', 1),
	(2083, 133, 'Ailinginae', 'ALG', 1),
	(2084, 133, 'Ailinglaplap', 'ALL', 1),
	(2085, 133, 'Ailuk', 'ALK', 1),
	(2086, 133, 'Arno', 'ARN', 1),
	(2087, 133, 'Aur', 'AUR', 1),
	(2088, 133, 'Bikar', 'BKR', 1),
	(2089, 133, 'Bikini', 'BKN', 1),
	(2090, 133, 'Bokak', 'BKK', 1),
	(2091, 133, 'Ebon', 'EBN', 1),
	(2092, 133, 'Enewetak', 'ENT', 1),
	(2093, 133, 'Erikub', 'EKB', 1),
	(2094, 133, 'Jabat', 'JBT', 1),
	(2095, 133, 'Jaluit', 'JLT', 1),
	(2096, 133, 'Jemo', 'JEM', 1),
	(2097, 133, 'Kili', 'KIL', 1),
	(2098, 133, 'Kwajalein', 'KWJ', 1),
	(2099, 133, 'Lae', 'LAE', 1),
	(2100, 133, 'Lib', 'LIB', 1),
	(2101, 133, 'Likiep', 'LKP', 1),
	(2102, 133, 'Majuro', 'MJR', 1),
	(2103, 133, 'Maloelap', 'MLP', 1),
	(2104, 133, 'Mejit', 'MJT', 1),
	(2105, 133, 'Mili', 'MIL', 1),
	(2106, 133, 'Namorik', 'NMK', 1),
	(2107, 133, 'Namu', 'NAM', 1),
	(2108, 133, 'Rongelap', 'RGL', 1),
	(2109, 133, 'Rongrik', 'RGK', 1),
	(2110, 133, 'Toke', 'TOK', 1),
	(2111, 133, 'Ujae', 'UJA', 1),
	(2112, 133, 'Ujelang', 'UJL', 1),
	(2113, 133, 'Utirik', 'UTK', 1),
	(2114, 133, 'Wotho', 'WTH', 1),
	(2115, 133, 'Wotje', 'WTJ', 1),
	(2116, 135, 'Adrar', 'AD', 1),
	(2117, 135, 'Assaba', 'AS', 1),
	(2118, 135, 'Brakna', 'BR', 1),
	(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
	(2120, 135, 'Gorgol', 'GO', 1),
	(2121, 135, 'Guidimaka', 'GM', 1),
	(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
	(2123, 135, 'Hodh El Gharbi', 'HG', 1),
	(2124, 135, 'Inchiri', 'IN', 1),
	(2125, 135, 'Tagant', 'TA', 1),
	(2126, 135, 'Tiris Zemmour', 'TZ', 1),
	(2127, 135, 'Trarza', 'TR', 1),
	(2128, 135, 'Nouakchott', 'NO', 1),
	(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
	(2130, 136, 'Curepipe', 'CU', 1),
	(2131, 136, 'Port Louis', 'PU', 1),
	(2132, 136, 'Quatre Bornes', 'QB', 1),
	(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
	(2134, 136, 'Agalega Islands', 'AG', 1),
	(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
	(2136, 136, 'Rodrigues', 'RO', 1),
	(2137, 136, 'Black River', 'BL', 1),
	(2138, 136, 'Flacq', 'FL', 1),
	(2139, 136, 'Grand Port', 'GP', 1),
	(2140, 136, 'Moka', 'MO', 1),
	(2141, 136, 'Pamplemousses', 'PA', 1),
	(2142, 136, 'Plaines Wilhems', 'PW', 1),
	(2143, 136, 'Port Louis', 'PL', 1),
	(2144, 136, 'Riviere du Rempart', 'RR', 1),
	(2145, 136, 'Savanne', 'SA', 1),
	(2146, 138, 'Baja California Norte', 'BN', 1),
	(2147, 138, 'Baja California Sur', 'BS', 1),
	(2148, 138, 'Campeche', 'CA', 1),
	(2149, 138, 'Chiapas', 'CI', 1),
	(2150, 138, 'Chihuahua', 'CH', 1),
	(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
	(2152, 138, 'Colima', 'CL', 1),
	(2153, 138, 'Distrito Federal', 'DF', 1),
	(2154, 138, 'Durango', 'DU', 1),
	(2155, 138, 'Guanajuato', 'GA', 1),
	(2156, 138, 'Guerrero', 'GE', 1),
	(2157, 138, 'Hidalgo', 'HI', 1),
	(2158, 138, 'Jalisco', 'JA', 1),
	(2159, 138, 'Mexico', 'ME', 1),
	(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
	(2161, 138, 'Morelos', 'MO', 1),
	(2162, 138, 'Nayarit', 'NA', 1),
	(2163, 138, 'Nuevo Leon', 'NL', 1),
	(2164, 138, 'Oaxaca', 'OA', 1),
	(2165, 138, 'Puebla', 'PU', 1),
	(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
	(2167, 138, 'Quintana Roo', 'QR', 1),
	(2168, 138, 'San Luis Potosi', 'SA', 1),
	(2169, 138, 'Sinaloa', 'SI', 1),
	(2170, 138, 'Sonora', 'SO', 1),
	(2171, 138, 'Tabasco', 'TB', 1),
	(2172, 138, 'Tamaulipas', 'TM', 1),
	(2173, 138, 'Tlaxcala', 'TL', 1),
	(2174, 138, 'Veracruz-Llave', 'VE', 1),
	(2175, 138, 'Yucatan', 'YU', 1),
	(2176, 138, 'Zacatecas', 'ZA', 1),
	(2177, 139, 'Chuuk', 'C', 1),
	(2178, 139, 'Kosrae', 'K', 1),
	(2179, 139, 'Pohnpei', 'P', 1),
	(2180, 139, 'Yap', 'Y', 1),
	(2181, 140, 'Gagauzia', 'GA', 1),
	(2182, 140, 'Chisinau', 'CU', 1),
	(2183, 140, 'Balti', 'BA', 1),
	(2184, 140, 'Cahul', 'CA', 1),
	(2185, 140, 'Edinet', 'ED', 1),
	(2186, 140, 'Lapusna', 'LA', 1),
	(2187, 140, 'Orhei', 'OR', 1),
	(2188, 140, 'Soroca', 'SO', 1),
	(2189, 140, 'Tighina', 'TI', 1),
	(2190, 140, 'Ungheni', 'UN', 1),
	(2191, 140, 'St‚nga Nistrului', 'SN', 1),
	(2192, 141, 'Fontvieille', 'FV', 1),
	(2193, 141, 'La Condamine', 'LC', 1),
	(2194, 141, 'Monaco-Ville', 'MV', 1),
	(2195, 141, 'Monte-Carlo', 'MC', 1),
	(2196, 142, 'Ulanbaatar', '1', 1),
	(2197, 142, 'Orhon', '035', 1),
	(2198, 142, 'Darhan uul', '037', 1),
	(2199, 142, 'Hentiy', '039', 1),
	(2200, 142, 'Hovsgol', '041', 1),
	(2201, 142, 'Hovd', '043', 1),
	(2202, 142, 'Uvs', '046', 1),
	(2203, 142, 'Tov', '047', 1),
	(2204, 142, 'Selenge', '049', 1),
	(2205, 142, 'Suhbaatar', '051', 1),
	(2206, 142, 'Omnogovi', '053', 1),
	(2207, 142, 'Ovorhangay', '055', 1),
	(2208, 142, 'Dzavhan', '057', 1),
	(2209, 142, 'DundgovL', '059', 1),
	(2210, 142, 'Dornod', '061', 1),
	(2211, 142, 'Dornogov', '063', 1),
	(2212, 142, 'Govi-Sumber', '064', 1),
	(2213, 142, 'Govi-Altay', '065', 1),
	(2214, 142, 'Bulgan', '067', 1),
	(2215, 142, 'Bayanhongor', '069', 1),
	(2216, 142, 'Bayan-Olgiy', '071', 1),
	(2217, 142, 'Arhangay', '073', 1),
	(2218, 143, 'Saint Anthony', 'A', 1),
	(2219, 143, 'Saint Georges', 'G', 1),
	(2220, 143, 'Saint Peter', 'P', 1),
	(2221, 144, 'Agadir', 'AGD', 1),
	(2222, 144, 'Al Hoceima', 'HOC', 1),
	(2223, 144, 'Azilal', 'AZI', 1),
	(2224, 144, 'Beni Mellal', 'BME', 1),
	(2225, 144, 'Ben Slimane', 'BSL', 1),
	(2226, 144, 'Boulemane', 'BLM', 1),
	(2227, 144, 'Casablanca', 'CBL', 1),
	(2228, 144, 'Chaouen', 'CHA', 1),
	(2229, 144, 'El Jadida', 'EJA', 1),
	(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
	(2231, 144, 'Er Rachidia', 'ERA', 1),
	(2232, 144, 'Essaouira', 'ESS', 1),
	(2233, 144, 'Fes', 'FES', 1),
	(2234, 144, 'Figuig', 'FIG', 1),
	(2235, 144, 'Guelmim', 'GLM', 1),
	(2236, 144, 'Ifrane', 'IFR', 1),
	(2237, 144, 'Kenitra', 'KEN', 1),
	(2238, 144, 'Khemisset', 'KHM', 1),
	(2239, 144, 'Khenifra', 'KHN', 1),
	(2240, 144, 'Khouribga', 'KHO', 1),
	(2241, 144, 'Laayoune', 'LYN', 1),
	(2242, 144, 'Larache', 'LAR', 1),
	(2243, 144, 'Marrakech', 'MRK', 1),
	(2244, 144, 'Meknes', 'MKN', 1),
	(2245, 144, 'Nador', 'NAD', 1),
	(2246, 144, 'Ouarzazate', 'ORZ', 1),
	(2247, 144, 'Oujda', 'OUJ', 1),
	(2248, 144, 'Rabat-Sale', 'RSA', 1),
	(2249, 144, 'Safi', 'SAF', 1),
	(2250, 144, 'Settat', 'SET', 1),
	(2251, 144, 'Sidi Kacem', 'SKA', 1),
	(2252, 144, 'Tangier', 'TGR', 1),
	(2253, 144, 'Tan-Tan', 'TAN', 1),
	(2254, 144, 'Taounate', 'TAO', 1),
	(2255, 144, 'Taroudannt', 'TRD', 1),
	(2256, 144, 'Tata', 'TAT', 1),
	(2257, 144, 'Taza', 'TAZ', 1),
	(2258, 144, 'Tetouan', 'TET', 1),
	(2259, 144, 'Tiznit', 'TIZ', 1),
	(2260, 144, 'Ad Dakhla', 'ADK', 1),
	(2261, 144, 'Boujdour', 'BJD', 1),
	(2262, 144, 'Es Smara', 'ESM', 1),
	(2263, 145, 'Cabo Delgado', 'CD', 1),
	(2264, 145, 'Gaza', 'GZ', 1),
	(2265, 145, 'Inhambane', 'IN', 1),
	(2266, 145, 'Manica', 'MN', 1),
	(2267, 145, 'Maputo (city)', 'MC', 1),
	(2268, 145, 'Maputo', 'MP', 1),
	(2269, 145, 'Nampula', 'NA', 1),
	(2270, 145, 'Niassa', 'NI', 1),
	(2271, 145, 'Sofala', 'SO', 1),
	(2272, 145, 'Tete', 'TE', 1),
	(2273, 145, 'Zambezia', 'ZA', 1),
	(2274, 146, 'Ayeyarwady', 'AY', 1),
	(2275, 146, 'Bago', 'BG', 1),
	(2276, 146, 'Magway', 'MG', 1),
	(2277, 146, 'Mandalay', 'MD', 1),
	(2278, 146, 'Sagaing', 'SG', 1),
	(2279, 146, 'Tanintharyi', 'TN', 1),
	(2280, 146, 'Yangon', 'YG', 1),
	(2281, 146, 'Chin State', 'CH', 1),
	(2282, 146, 'Kachin State', 'KC', 1),
	(2283, 146, 'Kayah State', 'KH', 1),
	(2284, 146, 'Kayin State', 'KN', 1),
	(2285, 146, 'Mon State', 'MN', 1),
	(2286, 146, 'Rakhine State', 'RK', 1),
	(2287, 146, 'Shan State', 'SH', 1),
	(2288, 147, 'Caprivi', 'CA', 1),
	(2289, 147, 'Erongo', 'ER', 1),
	(2290, 147, 'Hardap', 'HA', 1),
	(2291, 147, 'Karas', 'KR', 1),
	(2292, 147, 'Kavango', 'KV', 1),
	(2293, 147, 'Khomas', 'KH', 1),
	(2294, 147, 'Kunene', 'KU', 1),
	(2295, 147, 'Ohangwena', 'OW', 1),
	(2296, 147, 'Omaheke', 'OK', 1),
	(2297, 147, 'Omusati', 'OT', 1),
	(2298, 147, 'Oshana', 'ON', 1),
	(2299, 147, 'Oshikoto', 'OO', 1),
	(2300, 147, 'Otjozondjupa', 'OJ', 1),
	(2301, 148, 'Aiwo', 'AO', 1),
	(2302, 148, 'Anabar', 'AA', 1),
	(2303, 148, 'Anetan', 'AT', 1),
	(2304, 148, 'Anibare', 'AI', 1),
	(2305, 148, 'Baiti', 'BA', 1),
	(2306, 148, 'Boe', 'BO', 1),
	(2307, 148, 'Buada', 'BU', 1),
	(2308, 148, 'Denigomodu', 'DE', 1),
	(2309, 148, 'Ewa', 'EW', 1),
	(2310, 148, 'Ijuw', 'IJ', 1),
	(2311, 148, 'Meneng', 'ME', 1),
	(2312, 148, 'Nibok', 'NI', 1),
	(2313, 148, 'Uaboe', 'UA', 1),
	(2314, 148, 'Yaren', 'YA', 1),
	(2315, 149, 'Bagmati', 'BA', 1),
	(2316, 149, 'Bheri', 'BH', 1),
	(2317, 149, 'Dhawalagiri', 'DH', 1),
	(2318, 149, 'Gandaki', 'GA', 1),
	(2319, 149, 'Janakpur', 'JA', 1),
	(2320, 149, 'Karnali', 'KA', 1),
	(2321, 149, 'Kosi', 'KO', 1),
	(2322, 149, 'Lumbini', 'LU', 1),
	(2323, 149, 'Mahakali', 'MA', 1),
	(2324, 149, 'Mechi', 'ME', 1),
	(2325, 149, 'Narayani', 'NA', 1),
	(2326, 149, 'Rapti', 'RA', 1),
	(2327, 149, 'Sagarmatha', 'SA', 1),
	(2328, 149, 'Seti', 'SE', 1),
	(2329, 150, 'Drenthe', 'DR', 1),
	(2330, 150, 'Flevoland', 'FL', 1),
	(2331, 150, 'Friesland', 'FR', 1),
	(2332, 150, 'Gelderland', 'GE', 1),
	(2333, 150, 'Groningen', 'GR', 1),
	(2334, 150, 'Limburg', 'LI', 1),
	(2335, 150, 'Noord Brabant', 'NB', 1),
	(2336, 150, 'Noord Holland', 'NH', 1),
	(2337, 150, 'Overijssel', 'OV', 1),
	(2338, 150, 'Utrecht', 'UT', 1),
	(2339, 150, 'Zeeland', 'ZE', 1),
	(2340, 150, 'Zuid Holland', 'ZH', 1),
	(2341, 152, 'Iles Loyaute', 'L', 1),
	(2342, 152, 'Nord', 'N', 1),
	(2343, 152, 'Sud', 'S', 1),
	(2344, 153, 'Auckland', 'AUK', 1),
	(2345, 153, 'Bay of Plenty', 'BOP', 1),
	(2346, 153, 'Canterbury', 'CAN', 1),
	(2347, 153, 'Coromandel', 'COR', 1),
	(2348, 153, 'Gisborne', 'GIS', 1),
	(2349, 153, 'Fiordland', 'FIO', 1),
	(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
	(2351, 153, 'Marlborough', 'MBH', 1),
	(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
	(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
	(2354, 153, 'Nelson', 'NSN', 1),
	(2355, 153, 'Northland', 'NTL', 1),
	(2356, 153, 'Otago', 'OTA', 1),
	(2357, 153, 'Southland', 'STL', 1),
	(2358, 153, 'Taranaki', 'TKI', 1),
	(2359, 153, 'Wellington', 'WGN', 1),
	(2360, 153, 'Waikato', 'WKO', 1),
	(2361, 153, 'Wairarapa', 'WAI', 1),
	(2362, 153, 'West Coast', 'WTC', 1),
	(2363, 154, 'Atlantico Norte', 'AN', 1),
	(2364, 154, 'Atlantico Sur', 'AS', 1),
	(2365, 154, 'Boaco', 'BO', 1),
	(2366, 154, 'Carazo', 'CA', 1),
	(2367, 154, 'Chinandega', 'CI', 1),
	(2368, 154, 'Chontales', 'CO', 1),
	(2369, 154, 'Esteli', 'ES', 1),
	(2370, 154, 'Granada', 'GR', 1),
	(2371, 154, 'Jinotega', 'JI', 1),
	(2372, 154, 'Leon', 'LE', 1),
	(2373, 154, 'Madriz', 'MD', 1),
	(2374, 154, 'Managua', 'MN', 1),
	(2375, 154, 'Masaya', 'MS', 1),
	(2376, 154, 'Matagalpa', 'MT', 1),
	(2377, 154, 'Nuevo Segovia', 'NS', 1),
	(2378, 154, 'Rio San Juan', 'RS', 1),
	(2379, 154, 'Rivas', 'RI', 1),
	(2380, 155, 'Agadez', 'AG', 1),
	(2381, 155, 'Diffa', 'DF', 1),
	(2382, 155, 'Dosso', 'DS', 1),
	(2383, 155, 'Maradi', 'MA', 1),
	(2384, 155, 'Niamey', 'NM', 1),
	(2385, 155, 'Tahoua', 'TH', 1),
	(2386, 155, 'Tillaberi', 'TL', 1),
	(2387, 155, 'Zinder', 'ZD', 1),
	(2388, 156, 'Abia', 'AB', 1),
	(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
	(2390, 156, 'Adamawa', 'AD', 1),
	(2391, 156, 'Akwa Ibom', 'AK', 1),
	(2392, 156, 'Anambra', 'AN', 1),
	(2393, 156, 'Bauchi', 'BC', 1),
	(2394, 156, 'Bayelsa', 'BY', 1),
	(2395, 156, 'Benue', 'BN', 1),
	(2396, 156, 'Borno', 'BO', 1),
	(2397, 156, 'Cross River', 'CR', 1),
	(2398, 156, 'Delta', 'DE', 1),
	(2399, 156, 'Ebonyi', 'EB', 1),
	(2400, 156, 'Edo', 'ED', 1),
	(2401, 156, 'Ekiti', 'EK', 1),
	(2402, 156, 'Enugu', 'EN', 1),
	(2403, 156, 'Gombe', 'GO', 1),
	(2404, 156, 'Imo', 'IM', 1),
	(2405, 156, 'Jigawa', 'JI', 1),
	(2406, 156, 'Kaduna', 'KD', 1),
	(2407, 156, 'Kano', 'KN', 1),
	(2408, 156, 'Katsina', 'KT', 1),
	(2409, 156, 'Kebbi', 'KE', 1),
	(2410, 156, 'Kogi', 'KO', 1),
	(2411, 156, 'Kwara', 'KW', 1),
	(2412, 156, 'Lagos', 'LA', 1),
	(2413, 156, 'Nassarawa', 'NA', 1),
	(2414, 156, 'Niger', 'NI', 1),
	(2415, 156, 'Ogun', 'OG', 1),
	(2416, 156, 'Ondo', 'ONG', 1),
	(2417, 156, 'Osun', 'OS', 1),
	(2418, 156, 'Oyo', 'OY', 1),
	(2419, 156, 'Plateau', 'PL', 1),
	(2420, 156, 'Rivers', 'RI', 1),
	(2421, 156, 'Sokoto', 'SO', 1),
	(2422, 156, 'Taraba', 'TA', 1),
	(2423, 156, 'Yobe', 'YO', 1),
	(2424, 156, 'Zamfara', 'ZA', 1),
	(2425, 159, 'Northern Islands', 'N', 1),
	(2426, 159, 'Rota', 'R', 1),
	(2427, 159, 'Saipan', 'S', 1),
	(2428, 159, 'Tinian', 'T', 1),
	(2429, 160, 'Akershus', 'AK', 1),
	(2430, 160, 'Aust-Agder', 'AA', 1),
	(2431, 160, 'Buskerud', 'BU', 1),
	(2432, 160, 'Finnmark', 'FM', 1),
	(2433, 160, 'Hedmark', 'HM', 1),
	(2434, 160, 'Hordaland', 'HL', 1),
	(2435, 160, 'More og Romdal', 'MR', 1),
	(2436, 160, 'Nord-Trondelag', 'NT', 1),
	(2437, 160, 'Nordland', 'NL', 1),
	(2438, 160, 'Ostfold', 'OF', 1),
	(2439, 160, 'Oppland', 'OP', 1),
	(2440, 160, 'Oslo', 'OL', 1),
	(2441, 160, 'Rogaland', 'RL', 1),
	(2442, 160, 'Sor-Trondelag', 'ST', 1),
	(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
	(2444, 160, 'Svalbard', 'SV', 1),
	(2445, 160, 'Telemark', 'TM', 1),
	(2446, 160, 'Troms', 'TR', 1),
	(2447, 160, 'Vest-Agder', 'VA', 1),
	(2448, 160, 'Vestfold', 'VF', 1),
	(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
	(2450, 161, 'Al Batinah', 'BA', 1),
	(2451, 161, 'Al Wusta', 'WU', 1),
	(2452, 161, 'Ash Sharqiyah', 'SH', 1),
	(2453, 161, 'Az Zahirah', 'ZA', 1),
	(2454, 161, 'Masqat', 'MA', 1),
	(2455, 161, 'Musandam', 'MU', 1),
	(2456, 161, 'Zufar', 'ZU', 1),
	(2457, 162, 'Balochistan', 'B', 1),
	(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
	(2459, 162, 'Islamabad Capital Territory', 'I', 1),
	(2460, 162, 'North-West Frontier', 'N', 1),
	(2461, 162, 'Punjab', 'P', 1),
	(2462, 162, 'Sindh', 'S', 1),
	(2463, 163, 'Aimeliik', 'AM', 1),
	(2464, 163, 'Airai', 'AR', 1),
	(2465, 163, 'Angaur', 'AN', 1),
	(2466, 163, 'Hatohobei', 'HA', 1),
	(2467, 163, 'Kayangel', 'KA', 1),
	(2468, 163, 'Koror', 'KO', 1),
	(2469, 163, 'Melekeok', 'ME', 1),
	(2470, 163, 'Ngaraard', 'NA', 1),
	(2471, 163, 'Ngarchelong', 'NG', 1),
	(2472, 163, 'Ngardmau', 'ND', 1),
	(2473, 163, 'Ngatpang', 'NT', 1),
	(2474, 163, 'Ngchesar', 'NC', 1),
	(2475, 163, 'Ngeremlengui', 'NR', 1),
	(2476, 163, 'Ngiwal', 'NW', 1),
	(2477, 163, 'Peleliu', 'PE', 1),
	(2478, 163, 'Sonsorol', 'SO', 1),
	(2479, 164, 'Bocas del Toro', 'BT', 1),
	(2480, 164, 'Chiriqui', 'CH', 1),
	(2481, 164, 'Cocle', 'CC', 1),
	(2482, 164, 'Colon', 'CL', 1),
	(2483, 164, 'Darien', 'DA', 1),
	(2484, 164, 'Herrera', 'HE', 1),
	(2485, 164, 'Los Santos', 'LS', 1),
	(2486, 164, 'Panama', 'PA', 1),
	(2487, 164, 'San Blas', 'SB', 1),
	(2488, 164, 'Veraguas', 'VG', 1),
	(2489, 165, 'Bougainville', 'BV', 1),
	(2490, 165, 'Central', 'CE', 1),
	(2491, 165, 'Chimbu', 'CH', 1),
	(2492, 165, 'Eastern Highlands', 'EH', 1),
	(2493, 165, 'East New Britain', 'EB', 1),
	(2494, 165, 'East Sepik', 'ES', 1),
	(2495, 165, 'Enga', 'EN', 1),
	(2496, 165, 'Gulf', 'GU', 1),
	(2497, 165, 'Madang', 'MD', 1),
	(2498, 165, 'Manus', 'MN', 1),
	(2499, 165, 'Milne Bay', 'MB', 1),
	(2500, 165, 'Morobe', 'MR', 1),
	(2501, 165, 'National Capital', 'NC', 1),
	(2502, 165, 'New Ireland', 'NI', 1),
	(2503, 165, 'Northern', 'NO', 1),
	(2504, 165, 'Sandaun', 'SA', 1),
	(2505, 165, 'Southern Highlands', 'SH', 1),
	(2506, 165, 'Western', 'WE', 1),
	(2507, 165, 'Western Highlands', 'WH', 1),
	(2508, 165, 'West New Britain', 'WB', 1),
	(2509, 166, 'Alto Paraguay', 'AG', 1),
	(2510, 166, 'Alto Parana', 'AN', 1),
	(2511, 166, 'Amambay', 'AM', 1),
	(2512, 166, 'Asuncion', 'AS', 1),
	(2513, 166, 'Boqueron', 'BO', 1),
	(2514, 166, 'Caaguazu', 'CG', 1),
	(2515, 166, 'Caazapa', 'CZ', 1),
	(2516, 166, 'Canindeyu', 'CN', 1),
	(2517, 166, 'Central', 'CE', 1),
	(2518, 166, 'Concepcion', 'CC', 1),
	(2519, 166, 'Cordillera', 'CD', 1),
	(2520, 166, 'Guaira', 'GU', 1),
	(2521, 166, 'Itapua', 'IT', 1),
	(2522, 166, 'Misiones', 'MI', 1),
	(2523, 166, 'Neembucu', 'NE', 1),
	(2524, 166, 'Paraguari', 'PA', 1),
	(2525, 166, 'Presidente Hayes', 'PH', 1),
	(2526, 166, 'San Pedro', 'SP', 1),
	(2527, 167, 'Amazonas', 'AM', 1),
	(2528, 167, 'Ancash', 'AN', 1),
	(2529, 167, 'Apurimac', 'AP', 1),
	(2530, 167, 'Arequipa', 'AR', 1),
	(2531, 167, 'Ayacucho', 'AY', 1),
	(2532, 167, 'Cajamarca', 'CJ', 1),
	(2533, 167, 'Callao', 'CL', 1),
	(2534, 167, 'Cusco', 'CU', 1),
	(2535, 167, 'Huancavelica', 'HV', 1),
	(2536, 167, 'Huanuco', 'HO', 1),
	(2537, 167, 'Ica', 'IC', 1),
	(2538, 167, 'Junin', 'JU', 1),
	(2539, 167, 'La Libertad', 'LD', 1),
	(2540, 167, 'Lambayeque', 'LY', 1),
	(2541, 167, 'Lima', 'LI', 1),
	(2542, 167, 'Loreto', 'LO', 1),
	(2543, 167, 'Madre de Dios', 'MD', 1),
	(2544, 167, 'Moquegua', 'MO', 1),
	(2545, 167, 'Pasco', 'PA', 1),
	(2546, 167, 'Piura', 'PI', 1),
	(2547, 167, 'Puno', 'PU', 1),
	(2548, 167, 'San Martin', 'SM', 1),
	(2549, 167, 'Tacna', 'TA', 1),
	(2550, 167, 'Tumbes', 'TU', 1),
	(2551, 167, 'Ucayali', 'UC', 1),
	(2552, 168, 'Abra', 'ABR', 1),
	(2553, 168, 'Agusan del Norte', 'ANO', 1),
	(2554, 168, 'Agusan del Sur', 'ASU', 1),
	(2555, 168, 'Aklan', 'AKL', 1),
	(2556, 168, 'Albay', 'ALB', 1),
	(2557, 168, 'Antique', 'ANT', 1),
	(2558, 168, 'Apayao', 'APY', 1),
	(2559, 168, 'Aurora', 'AUR', 1),
	(2560, 168, 'Basilan', 'BAS', 1),
	(2561, 168, 'Bataan', 'BTA', 1),
	(2562, 168, 'Batanes', 'BTE', 1),
	(2563, 168, 'Batangas', 'BTG', 1),
	(2564, 168, 'Biliran', 'BLR', 1),
	(2565, 168, 'Benguet', 'BEN', 1),
	(2566, 168, 'Bohol', 'BOL', 1),
	(2567, 168, 'Bukidnon', 'BUK', 1),
	(2568, 168, 'Bulacan', 'BUL', 1),
	(2569, 168, 'Cagayan', 'CAG', 1),
	(2570, 168, 'Camarines Norte', 'CNO', 1),
	(2571, 168, 'Camarines Sur', 'CSU', 1),
	(2572, 168, 'Camiguin', 'CAM', 1),
	(2573, 168, 'Capiz', 'CAP', 1),
	(2574, 168, 'Catanduanes', 'CAT', 1),
	(2575, 168, 'Cavite', 'CAV', 1),
	(2576, 168, 'Cebu', 'CEB', 1),
	(2577, 168, 'Compostela', 'CMP', 1),
	(2578, 168, 'Davao del Norte', 'DNO', 1),
	(2579, 168, 'Davao del Sur', 'DSU', 1),
	(2580, 168, 'Davao Oriental', 'DOR', 1),
	(2581, 168, 'Eastern Samar', 'ESA', 1),
	(2582, 168, 'Guimaras', 'GUI', 1),
	(2583, 168, 'Ifugao', 'IFU', 1),
	(2584, 168, 'Ilocos Norte', 'INO', 1),
	(2585, 168, 'Ilocos Sur', 'ISU', 1),
	(2586, 168, 'Iloilo', 'ILO', 1),
	(2587, 168, 'Isabela', 'ISA', 1),
	(2588, 168, 'Kalinga', 'KAL', 1),
	(2589, 168, 'Laguna', 'LAG', 1),
	(2590, 168, 'Lanao del Norte', 'LNO', 1),
	(2591, 168, 'Lanao del Sur', 'LSU', 1),
	(2592, 168, 'La Union', 'UNI', 1),
	(2593, 168, 'Leyte', 'LEY', 1),
	(2594, 168, 'Maguindanao', 'MAG', 1),
	(2595, 168, 'Marinduque', 'MRN', 1),
	(2596, 168, 'Masbate', 'MSB', 1),
	(2597, 168, 'Mindoro Occidental', 'MIC', 1),
	(2598, 168, 'Mindoro Oriental', 'MIR', 1),
	(2599, 168, 'Misamis Occidental', 'MSC', 1),
	(2600, 168, 'Misamis Oriental', 'MOR', 1),
	(2601, 168, 'Mountain', 'MOP', 1),
	(2602, 168, 'Negros Occidental', 'NOC', 1),
	(2603, 168, 'Negros Oriental', 'NOR', 1),
	(2604, 168, 'North Cotabato', 'NCT', 1),
	(2605, 168, 'Northern Samar', 'NSM', 1),
	(2606, 168, 'Nueva Ecija', 'NEC', 1),
	(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
	(2608, 168, 'Palawan', 'PLW', 1),
	(2609, 168, 'Pampanga', 'PMP', 1),
	(2610, 168, 'Pangasinan', 'PNG', 1),
	(2611, 168, 'Quezon', 'QZN', 1),
	(2612, 168, 'Quirino', 'QRN', 1),
	(2613, 168, 'Rizal', 'RIZ', 1),
	(2614, 168, 'Romblon', 'ROM', 1),
	(2615, 168, 'Samar', 'SMR', 1),
	(2616, 168, 'Sarangani', 'SRG', 1),
	(2617, 168, 'Siquijor', 'SQJ', 1),
	(2618, 168, 'Sorsogon', 'SRS', 1),
	(2619, 168, 'South Cotabato', 'SCO', 1),
	(2620, 168, 'Southern Leyte', 'SLE', 1),
	(2621, 168, 'Sultan Kudarat', 'SKU', 1),
	(2622, 168, 'Sulu', 'SLU', 1),
	(2623, 168, 'Surigao del Norte', 'SNO', 1),
	(2624, 168, 'Surigao del Sur', 'SSU', 1),
	(2625, 168, 'Tarlac', 'TAR', 1),
	(2626, 168, 'Tawi-Tawi', 'TAW', 1),
	(2627, 168, 'Zambales', 'ZBL', 1),
	(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
	(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
	(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
	(2631, 170, 'Dolnoslaskie', 'DO', 1),
	(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
	(2633, 170, 'Lodzkie', 'LO', 1),
	(2634, 170, 'Lubelskie', 'LL', 1),
	(2635, 170, 'Lubuskie', 'LU', 1),
	(2636, 170, 'Malopolskie', 'ML', 1),
	(2637, 170, 'Mazowieckie', 'MZ', 1),
	(2638, 170, 'Opolskie', 'OP', 1),
	(2639, 170, 'Podkarpackie', 'PP', 1),
	(2640, 170, 'Podlaskie', 'PL', 1),
	(2641, 170, 'Pomorskie', 'PM', 1),
	(2642, 170, 'Slaskie', 'SL', 1),
	(2643, 170, 'Swietokrzyskie', 'SW', 1),
	(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
	(2645, 170, 'Wielkopolskie', 'WP', 1),
	(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
	(2647, 198, 'Saint Pierre', 'P', 1),
	(2648, 198, 'Miquelon', 'M', 1),
	(2649, 171, 'A&ccedil;ores', 'AC', 1),
	(2650, 171, 'Aveiro', 'AV', 1),
	(2651, 171, 'Beja', 'BE', 1),
	(2652, 171, 'Braga', 'BR', 1),
	(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
	(2654, 171, 'Castelo Branco', 'CB', 1),
	(2655, 171, 'Coimbra', 'CO', 1),
	(2656, 171, '&Eacute;vora', 'EV', 1),
	(2657, 171, 'Faro', 'FA', 1),
	(2658, 171, 'Guarda', 'GU', 1),
	(2659, 171, 'Leiria', 'LE', 1),
	(2660, 171, 'Lisboa', 'LI', 1),
	(2661, 171, 'Madeira', 'ME', 1),
	(2662, 171, 'Portalegre', 'PO', 1),
	(2663, 171, 'Porto', 'PR', 1),
	(2664, 171, 'Santar&eacute;m', 'SA', 1),
	(2665, 171, 'Set&uacute;bal', 'SE', 1),
	(2666, 171, 'Viana do Castelo', 'VC', 1),
	(2667, 171, 'Vila Real', 'VR', 1),
	(2668, 171, 'Viseu', 'VI', 1),
	(2669, 173, 'Ad Dawhah', 'DW', 1),
	(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
	(2671, 173, 'Al Jumayliyah', 'JM', 1),
	(2672, 173, 'Al Khawr', 'KR', 1),
	(2673, 173, 'Al Wakrah', 'WK', 1),
	(2674, 173, 'Ar Rayyan', 'RN', 1),
	(2675, 173, 'Jarayan al Batinah', 'JB', 1),
	(2676, 173, 'Madinat ash Shamal', 'MS', 1),
	(2677, 173, 'Umm Sa\'id', 'UD', 1),
	(2678, 173, 'Umm Salal', 'UL', 1),
	(2679, 175, 'Alba', 'AB', 1),
	(2680, 175, 'Arad', 'AR', 1),
	(2681, 175, 'Arges', 'AG', 1),
	(2682, 175, 'Bacau', 'BC', 1),
	(2683, 175, 'Bihor', 'BH', 1),
	(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
	(2685, 175, 'Botosani', 'BT', 1),
	(2686, 175, 'Brasov', 'BV', 1),
	(2687, 175, 'Braila', 'BR', 1),
	(2688, 175, 'Bucuresti', 'B', 1),
	(2689, 175, 'Buzau', 'BZ', 1),
	(2690, 175, 'Caras-Severin', 'CS', 1),
	(2691, 175, 'Calarasi', 'CL', 1),
	(2692, 175, 'Cluj', 'CJ', 1),
	(2693, 175, 'Constanta', 'CT', 1),
	(2694, 175, 'Covasna', 'CV', 1),
	(2695, 175, 'Dimbovita', 'DB', 1),
	(2696, 175, 'Dolj', 'DJ', 1),
	(2697, 175, 'Galati', 'GL', 1),
	(2698, 175, 'Giurgiu', 'GR', 1),
	(2699, 175, 'Gorj', 'GJ', 1),
	(2700, 175, 'Harghita', 'HR', 1),
	(2701, 175, 'Hunedoara', 'HD', 1),
	(2702, 175, 'Ialomita', 'IL', 1),
	(2703, 175, 'Iasi', 'IS', 1),
	(2704, 175, 'Ilfov', 'IF', 1),
	(2705, 175, 'Maramures', 'MM', 1),
	(2706, 175, 'Mehedinti', 'MH', 1),
	(2707, 175, 'Mures', 'MS', 1),
	(2708, 175, 'Neamt', 'NT', 1),
	(2709, 175, 'Olt', 'OT', 1),
	(2710, 175, 'Prahova', 'PH', 1),
	(2711, 175, 'Satu-Mare', 'SM', 1),
	(2712, 175, 'Salaj', 'SJ', 1),
	(2713, 175, 'Sibiu', 'SB', 1),
	(2714, 175, 'Suceava', 'SV', 1),
	(2715, 175, 'Teleorman', 'TR', 1),
	(2716, 175, 'Timis', 'TM', 1),
	(2717, 175, 'Tulcea', 'TL', 1),
	(2718, 175, 'Vaslui', 'VS', 1),
	(2719, 175, 'Valcea', 'VL', 1),
	(2720, 175, 'Vrancea', 'VN', 1),
	(2721, 176, 'Abakan', 'AB', 1),
	(2722, 176, 'Aginskoye', 'AG', 1),
	(2723, 176, 'Anadyr', 'AN', 1),
	(2724, 176, 'Arkahangelsk', 'AR', 1),
	(2725, 176, 'Astrakhan', 'AS', 1),
	(2726, 176, 'Barnaul', 'BA', 1),
	(2727, 176, 'Belgorod', 'BE', 1),
	(2728, 176, 'Birobidzhan', 'BI', 1),
	(2729, 176, 'Blagoveshchensk', 'BL', 1),
	(2730, 176, 'Bryansk', 'BR', 1),
	(2731, 176, 'Cheboksary', 'CH', 1),
	(2732, 176, 'Chelyabinsk', 'CL', 1),
	(2733, 176, 'Cherkessk', 'CR', 1),
	(2734, 176, 'Chita', 'CI', 1),
	(2735, 176, 'Dudinka', 'DU', 1),
	(2736, 176, 'Elista', 'EL', 1),
	(2737, 176, 'Gomo-Altaysk', 'GO', 1),
	(2738, 176, 'Gorno-Altaysk', 'GA', 1),
	(2739, 176, 'Groznyy', 'GR', 1),
	(2740, 176, 'Irkutsk', 'IR', 1),
	(2741, 176, 'Ivanovo', 'IV', 1),
	(2742, 176, 'Izhevsk', 'IZ', 1),
	(2743, 176, 'Kalinigrad', 'KA', 1),
	(2744, 176, 'Kaluga', 'KL', 1),
	(2745, 176, 'Kasnodar', 'KS', 1),
	(2746, 176, 'Kazan', 'KZ', 1),
	(2747, 176, 'Kemerovo', 'KE', 1),
	(2748, 176, 'Khabarovsk', 'KH', 1),
	(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
	(2750, 176, 'Kostroma', 'KO', 1),
	(2751, 176, 'Krasnodar', 'KR', 1),
	(2752, 176, 'Krasnoyarsk', 'KN', 1),
	(2753, 176, 'Kudymkar', 'KU', 1),
	(2754, 176, 'Kurgan', 'KG', 1),
	(2755, 176, 'Kursk', 'KK', 1),
	(2756, 176, 'Kyzyl', 'KY', 1),
	(2757, 176, 'Lipetsk', 'LI', 1),
	(2758, 176, 'Magadan', 'MA', 1),
	(2759, 176, 'Makhachkala', 'MK', 1),
	(2760, 176, 'Maykop', 'MY', 1),
	(2761, 176, 'Moscow', 'MO', 1),
	(2762, 176, 'Murmansk', 'MU', 1),
	(2763, 176, 'Nalchik', 'NA', 1),
	(2764, 176, 'Naryan Mar', 'NR', 1),
	(2765, 176, 'Nazran', 'NZ', 1),
	(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
	(2767, 176, 'Novgorod', 'NO', 1),
	(2768, 176, 'Novosibirsk', 'NV', 1),
	(2769, 176, 'Omsk', 'OM', 1),
	(2770, 176, 'Orel', 'OR', 1),
	(2771, 176, 'Orenburg', 'OE', 1),
	(2772, 176, 'Palana', 'PA', 1),
	(2773, 176, 'Penza', 'PE', 1),
	(2774, 176, 'Perm', 'PR', 1),
	(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
	(2776, 176, 'Petrozavodsk', 'PT', 1),
	(2777, 176, 'Pskov', 'PS', 1),
	(2778, 176, 'Rostov-na-Donu', 'RO', 1),
	(2779, 176, 'Ryazan', 'RY', 1),
	(2780, 176, 'Salekhard', 'SL', 1),
	(2781, 176, 'Samara', 'SA', 1),
	(2782, 176, 'Saransk', 'SR', 1),
	(2783, 176, 'Saratov', 'SV', 1),
	(2784, 176, 'Smolensk', 'SM', 1),
	(2785, 176, 'St. Petersburg', 'SP', 1),
	(2786, 176, 'Stavropol', 'ST', 1),
	(2787, 176, 'Syktyvkar', 'SY', 1),
	(2788, 176, 'Tambov', 'TA', 1),
	(2789, 176, 'Tomsk', 'TO', 1),
	(2790, 176, 'Tula', 'TU', 1),
	(2791, 176, 'Tura', 'TR', 1),
	(2792, 176, 'Tver', 'TV', 1),
	(2793, 176, 'Tyumen', 'TY', 1),
	(2794, 176, 'Ufa', 'UF', 1),
	(2795, 176, 'Ul\'yanovsk', 'UL', 1),
	(2796, 176, 'Ulan-Ude', 'UU', 1),
	(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
	(2798, 176, 'Vladikavkaz', 'VL', 1),
	(2799, 176, 'Vladimir', 'VA', 1),
	(2800, 176, 'Vladivostok', 'VV', 1),
	(2801, 176, 'Volgograd', 'VG', 1),
	(2802, 176, 'Vologda', 'VD', 1),
	(2803, 176, 'Voronezh', 'VO', 1),
	(2804, 176, 'Vyatka', 'VY', 1),
	(2805, 176, 'Yakutsk', 'YA', 1),
	(2806, 176, 'Yaroslavl', 'YR', 1),
	(2807, 176, 'Yekaterinburg', 'YE', 1),
	(2808, 176, 'Yoshkar-Ola', 'YO', 1),
	(2809, 177, 'Butare', 'BU', 1),
	(2810, 177, 'Byumba', 'BY', 1),
	(2811, 177, 'Cyangugu', 'CY', 1),
	(2812, 177, 'Gikongoro', 'GK', 1),
	(2813, 177, 'Gisenyi', 'GS', 1),
	(2814, 177, 'Gitarama', 'GT', 1),
	(2815, 177, 'Kibungo', 'KG', 1),
	(2816, 177, 'Kibuye', 'KY', 1),
	(2817, 177, 'Kigali Rurale', 'KR', 1),
	(2818, 177, 'Kigali-ville', 'KV', 1),
	(2819, 177, 'Ruhengeri', 'RU', 1),
	(2820, 177, 'Umutara', 'UM', 1),
	(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
	(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
	(2823, 178, 'Saint George Basseterre', 'SGB', 1),
	(2824, 178, 'Saint George Gingerland', 'SGG', 1),
	(2825, 178, 'Saint James Windward', 'SJW', 1),
	(2826, 178, 'Saint John Capesterre', 'SJC', 1),
	(2827, 178, 'Saint John Figtree', 'SJF', 1),
	(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
	(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
	(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
	(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
	(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
	(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
	(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
	(2835, 179, 'Anse-la-Raye', 'AR', 1),
	(2836, 179, 'Castries', 'CA', 1),
	(2837, 179, 'Choiseul', 'CH', 1),
	(2838, 179, 'Dauphin', 'DA', 1),
	(2839, 179, 'Dennery', 'DE', 1),
	(2840, 179, 'Gros-Islet', 'GI', 1),
	(2841, 179, 'Laborie', 'LA', 1),
	(2842, 179, 'Micoud', 'MI', 1),
	(2843, 179, 'Praslin', 'PR', 1),
	(2844, 179, 'Soufriere', 'SO', 1),
	(2845, 179, 'Vieux-Fort', 'VF', 1),
	(2846, 180, 'Charlotte', 'C', 1),
	(2847, 180, 'Grenadines', 'R', 1),
	(2848, 180, 'Saint Andrew', 'A', 1),
	(2849, 180, 'Saint David', 'D', 1),
	(2850, 180, 'Saint George', 'G', 1),
	(2851, 180, 'Saint Patrick', 'P', 1),
	(2852, 181, 'A\'ana', 'AN', 1),
	(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
	(2854, 181, 'Atua', 'AT', 1),
	(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
	(2856, 181, 'Gaga\'emauga', 'GE', 1),
	(2857, 181, 'Gagaifomauga', 'GF', 1),
	(2858, 181, 'Palauli', 'PA', 1),
	(2859, 181, 'Satupa\'itea', 'SA', 1),
	(2860, 181, 'Tuamasaga', 'TU', 1),
	(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
	(2862, 181, 'Vaisigano', 'VS', 1),
	(2863, 182, 'Acquaviva', 'AC', 1),
	(2864, 182, 'Borgo Maggiore', 'BM', 1),
	(2865, 182, 'Chiesanuova', 'CH', 1),
	(2866, 182, 'Domagnano', 'DO', 1),
	(2867, 182, 'Faetano', 'FA', 1),
	(2868, 182, 'Fiorentino', 'FI', 1),
	(2869, 182, 'Montegiardino', 'MO', 1),
	(2870, 182, 'Citta di San Marino', 'SM', 1),
	(2871, 182, 'Serravalle', 'SE', 1),
	(2872, 183, 'Sao Tome', 'S', 1),
	(2873, 183, 'Principe', 'P', 1),
	(2874, 184, 'Al Bahah', 'BH', 1),
	(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
	(2876, 184, 'Al Jawf', 'JF', 1),
	(2877, 184, 'Al Madinah', 'MD', 1),
	(2878, 184, 'Al Qasim', 'QS', 1),
	(2879, 184, 'Ar Riyad', 'RD', 1),
	(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
	(2881, 184, '\'Asir', 'AS', 1),
	(2882, 184, 'Ha\'il', 'HL', 1),
	(2883, 184, 'Jizan', 'JZ', 1),
	(2884, 184, 'Makkah', 'ML', 1),
	(2885, 184, 'Najran', 'NR', 1),
	(2886, 184, 'Tabuk', 'TB', 1),
	(2887, 185, 'Dakar', 'DA', 1),
	(2888, 185, 'Diourbel', 'DI', 1),
	(2889, 185, 'Fatick', 'FA', 1),
	(2890, 185, 'Kaolack', 'KA', 1),
	(2891, 185, 'Kolda', 'KO', 1),
	(2892, 185, 'Louga', 'LO', 1),
	(2893, 185, 'Matam', 'MA', 1),
	(2894, 185, 'Saint-Louis', 'SL', 1),
	(2895, 185, 'Tambacounda', 'TA', 1),
	(2896, 185, 'Thies', 'TH', 1),
	(2897, 185, 'Ziguinchor', 'ZI', 1),
	(2898, 186, 'Anse aux Pins', 'AP', 1),
	(2899, 186, 'Anse Boileau', 'AB', 1),
	(2900, 186, 'Anse Etoile', 'AE', 1),
	(2901, 186, 'Anse Louis', 'AL', 1),
	(2902, 186, 'Anse Royale', 'AR', 1),
	(2903, 186, 'Baie Lazare', 'BL', 1),
	(2904, 186, 'Baie Sainte Anne', 'BS', 1),
	(2905, 186, 'Beau Vallon', 'BV', 1),
	(2906, 186, 'Bel Air', 'BA', 1),
	(2907, 186, 'Bel Ombre', 'BO', 1),
	(2908, 186, 'Cascade', 'CA', 1),
	(2909, 186, 'Glacis', 'GL', 1),
	(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
	(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
	(2912, 186, 'La Digue', 'DG', 1),
	(2913, 186, 'La Riviere Anglaise', 'RA', 1),
	(2914, 186, 'Mont Buxton', 'MB', 1),
	(2915, 186, 'Mont Fleuri', 'MF', 1),
	(2916, 186, 'Plaisance', 'PL', 1),
	(2917, 186, 'Pointe La Rue', 'PR', 1),
	(2918, 186, 'Port Glaud', 'PG', 1),
	(2919, 186, 'Saint Louis', 'SL', 1),
	(2920, 186, 'Takamaka', 'TA', 1),
	(2921, 187, 'Eastern', 'E', 1),
	(2922, 187, 'Northern', 'N', 1),
	(2923, 187, 'Southern', 'S', 1),
	(2924, 187, 'Western', 'W', 1),
	(2925, 189, 'Banskobystrický', 'BA', 1),
	(2926, 189, 'Bratislavský', 'BR', 1),
	(2927, 189, 'Košický', 'KO', 1),
	(2928, 189, 'Nitriansky', 'NI', 1),
	(2929, 189, 'Prešovský', 'PR', 1),
	(2930, 189, 'Trenčiansky', 'TC', 1),
	(2931, 189, 'Trnavský', 'TV', 1),
	(2932, 189, 'Žilinský', 'ZI', 1),
	(2933, 191, 'Central', 'CE', 1),
	(2934, 191, 'Choiseul', 'CH', 1),
	(2935, 191, 'Guadalcanal', 'GC', 1),
	(2936, 191, 'Honiara', 'HO', 1),
	(2937, 191, 'Isabel', 'IS', 1),
	(2938, 191, 'Makira', 'MK', 1),
	(2939, 191, 'Malaita', 'ML', 1),
	(2940, 191, 'Rennell and Bellona', 'RB', 1),
	(2941, 191, 'Temotu', 'TM', 1),
	(2942, 191, 'Western', 'WE', 1),
	(2943, 192, 'Awdal', 'AW', 1),
	(2944, 192, 'Bakool', 'BK', 1),
	(2945, 192, 'Banaadir', 'BN', 1),
	(2946, 192, 'Bari', 'BR', 1),
	(2947, 192, 'Bay', 'BY', 1),
	(2948, 192, 'Galguduud', 'GA', 1),
	(2949, 192, 'Gedo', 'GE', 1),
	(2950, 192, 'Hiiraan', 'HI', 1),
	(2951, 192, 'Jubbada Dhexe', 'JD', 1),
	(2952, 192, 'Jubbada Hoose', 'JH', 1),
	(2953, 192, 'Mudug', 'MU', 1),
	(2954, 192, 'Nugaal', 'NU', 1),
	(2955, 192, 'Sanaag', 'SA', 1),
	(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
	(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
	(2958, 192, 'Sool', 'SL', 1),
	(2959, 192, 'Togdheer', 'TO', 1),
	(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
	(2961, 193, 'Eastern Cape', 'EC', 1),
	(2962, 193, 'Free State', 'FS', 1),
	(2963, 193, 'Gauteng', 'GT', 1),
	(2964, 193, 'KwaZulu-Natal', 'KN', 1),
	(2965, 193, 'Limpopo', 'LP', 1),
	(2966, 193, 'Mpumalanga', 'MP', 1),
	(2967, 193, 'North West', 'NW', 1),
	(2968, 193, 'Northern Cape', 'NC', 1),
	(2969, 193, 'Western Cape', 'WC', 1),
	(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
	(2971, 195, '&Aacute;lava', 'AL', 1),
	(2972, 195, 'Albacete', 'AB', 1),
	(2973, 195, 'Alicante', 'AC', 1),
	(2974, 195, 'Almeria', 'AM', 1),
	(2975, 195, 'Asturias', 'AS', 1),
	(2976, 195, '&Aacute;vila', 'AV', 1),
	(2977, 195, 'Badajoz', 'BJ', 1),
	(2978, 195, 'Baleares', 'IB', 1),
	(2979, 195, 'Barcelona', 'BA', 1),
	(2980, 195, 'Burgos', 'BU', 1),
	(2981, 195, 'C&aacute;ceres', 'CC', 1),
	(2982, 195, 'C&aacute;diz', 'CZ', 1),
	(2983, 195, 'Cantabria', 'CT', 1),
	(2984, 195, 'Castell&oacute;n', 'CL', 1),
	(2985, 195, 'Ceuta', 'CE', 1),
	(2986, 195, 'Ciudad Real', 'CR', 1),
	(2987, 195, 'C&oacute;rdoba', 'CD', 1),
	(2988, 195, 'Cuenca', 'CU', 1),
	(2989, 195, 'Girona', 'GI', 1),
	(2990, 195, 'Granada', 'GD', 1),
	(2991, 195, 'Guadalajara', 'GJ', 1),
	(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
	(2993, 195, 'Huelva', 'HL', 1),
	(2994, 195, 'Huesca', 'HS', 1),
	(2995, 195, 'Ja&eacute;n', 'JN', 1),
	(2996, 195, 'La Rioja', 'RJ', 1),
	(2997, 195, 'Las Palmas', 'PM', 1),
	(2998, 195, 'Leon', 'LE', 1),
	(2999, 195, 'Lleida', 'LL', 1),
	(3000, 195, 'Lugo', 'LG', 1),
	(3001, 195, 'Madrid', 'MD', 1),
	(3002, 195, 'Malaga', 'MA', 1),
	(3003, 195, 'Melilla', 'ML', 1),
	(3004, 195, 'Murcia', 'MU', 1),
	(3005, 195, 'Navarra', 'NV', 1),
	(3006, 195, 'Ourense', 'OU', 1),
	(3007, 195, 'Palencia', 'PL', 1),
	(3008, 195, 'Pontevedra', 'PO', 1),
	(3009, 195, 'Salamanca', 'SL', 1),
	(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
	(3011, 195, 'Segovia', 'SG', 1),
	(3012, 195, 'Sevilla', 'SV', 1),
	(3013, 195, 'Soria', 'SO', 1),
	(3014, 195, 'Tarragona', 'TA', 1),
	(3015, 195, 'Teruel', 'TE', 1),
	(3016, 195, 'Toledo', 'TO', 1),
	(3017, 195, 'Valencia', 'VC', 1),
	(3018, 195, 'Valladolid', 'VD', 1),
	(3019, 195, 'Vizcaya', 'VZ', 1),
	(3020, 195, 'Zamora', 'ZM', 1),
	(3021, 195, 'Zaragoza', 'ZR', 1),
	(3022, 196, 'Central', 'CE', 1),
	(3023, 196, 'Eastern', 'EA', 1),
	(3024, 196, 'North Central', 'NC', 1),
	(3025, 196, 'Northern', 'NO', 1),
	(3026, 196, 'North Western', 'NW', 1),
	(3027, 196, 'Sabaragamuwa', 'SA', 1),
	(3028, 196, 'Southern', 'SO', 1),
	(3029, 196, 'Uva', 'UV', 1),
	(3030, 196, 'Western', 'WE', 1),
	(3031, 197, 'Ascension', 'A', 1),
	(3032, 197, 'Saint Helena', 'S', 1),
	(3033, 197, 'Tristan da Cunha', 'T', 1),
	(3034, 199, 'A\'ali an Nil', 'ANL', 1),
	(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
	(3036, 199, 'Al Buhayrat', 'BRT', 1),
	(3037, 199, 'Al Jazirah', 'JZR', 1),
	(3038, 199, 'Al Khartum', 'KRT', 1),
	(3039, 199, 'Al Qadarif', 'QDR', 1),
	(3040, 199, 'Al Wahdah', 'WDH', 1),
	(3041, 199, 'An Nil al Abyad', 'ANB', 1),
	(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
	(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
	(3044, 199, 'Bahr al Jabal', 'BJA', 1),
	(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
	(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
	(3047, 199, 'Gharb Darfur', 'GDA', 1),
	(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
	(3049, 199, 'Janub Darfur', 'JDA', 1),
	(3050, 199, 'Janub Kurdufan', 'JKU', 1),
	(3051, 199, 'Junqali', 'JQL', 1),
	(3052, 199, 'Kassala', 'KSL', 1),
	(3053, 199, 'Nahr an Nil', 'NNL', 1),
	(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
	(3055, 199, 'Shamal Darfur', 'SDA', 1),
	(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
	(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
	(3058, 199, 'Sinnar', 'SNR', 1),
	(3059, 199, 'Warab', 'WRB', 1),
	(3060, 200, 'Brokopondo', 'BR', 1),
	(3061, 200, 'Commewijne', 'CM', 1),
	(3062, 200, 'Coronie', 'CR', 1),
	(3063, 200, 'Marowijne', 'MA', 1),
	(3064, 200, 'Nickerie', 'NI', 1),
	(3065, 200, 'Para', 'PA', 1),
	(3066, 200, 'Paramaribo', 'PM', 1),
	(3067, 200, 'Saramacca', 'SA', 1),
	(3068, 200, 'Sipaliwini', 'SI', 1),
	(3069, 200, 'Wanica', 'WA', 1),
	(3070, 202, 'Hhohho', 'H', 1),
	(3071, 202, 'Lubombo', 'L', 1),
	(3072, 202, 'Manzini', 'M', 1),
	(3073, 202, 'Shishelweni', 'S', 1),
	(3074, 203, 'Blekinge', 'K', 1),
	(3075, 203, 'Dalarna', 'W', 1),
	(3076, 203, 'G&auml;vleborg', 'X', 1),
	(3077, 203, 'Gotland', 'I', 1),
	(3078, 203, 'Halland', 'N', 1),
	(3079, 203, 'J&auml;mtland', 'Z', 1),
	(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
	(3081, 203, 'Kalmar', 'H', 1),
	(3082, 203, 'Kronoberg', 'G', 1),
	(3083, 203, 'Norrbotten', 'BD', 1),
	(3084, 203, '&Ouml;rebro', 'T', 1),
	(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
	(3086, 203, 'Sk&aring;ne', 'M', 1),
	(3087, 203, 'S&ouml;dermanland', 'D', 1),
	(3088, 203, 'Stockholm', 'AB', 1),
	(3089, 203, 'Uppsala', 'C', 1),
	(3090, 203, 'V&auml;rmland', 'S', 1),
	(3091, 203, 'V&auml;sterbotten', 'AC', 1),
	(3092, 203, 'V&auml;sternorrland', 'Y', 1),
	(3093, 203, 'V&auml;stmanland', 'U', 1),
	(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
	(3095, 204, 'Aargau', 'AG', 1),
	(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
	(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
	(3098, 204, 'Basel-Stadt', 'BS', 1),
	(3099, 204, 'Basel-Landschaft', 'BL', 1),
	(3100, 204, 'Bern', 'BE', 1),
	(3101, 204, 'Fribourg', 'FR', 1),
	(3102, 204, 'Gen&egrave;ve', 'GE', 1),
	(3103, 204, 'Glarus', 'GL', 1),
	(3104, 204, 'Graub&uuml;nden', 'GR', 1),
	(3105, 204, 'Jura', 'JU', 1),
	(3106, 204, 'Luzern', 'LU', 1),
	(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
	(3108, 204, 'Nidwald', 'NW', 1),
	(3109, 204, 'Obwald', 'OW', 1),
	(3110, 204, 'St. Gallen', 'SG', 1),
	(3111, 204, 'Schaffhausen', 'SH', 1),
	(3112, 204, 'Schwyz', 'SZ', 1),
	(3113, 204, 'Solothurn', 'SO', 1),
	(3114, 204, 'Thurgau', 'TG', 1),
	(3115, 204, 'Ticino', 'TI', 1),
	(3116, 204, 'Uri', 'UR', 1),
	(3117, 204, 'Valais', 'VS', 1),
	(3118, 204, 'Vaud', 'VD', 1),
	(3119, 204, 'Zug', 'ZG', 1),
	(3120, 204, 'Z&uuml;rich', 'ZH', 1),
	(3121, 205, 'Al Hasakah', 'HA', 1),
	(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
	(3123, 205, 'Al Qunaytirah', 'QU', 1),
	(3124, 205, 'Ar Raqqah', 'RQ', 1),
	(3125, 205, 'As Suwayda', 'SU', 1),
	(3126, 205, 'Dara', 'DA', 1),
	(3127, 205, 'Dayr az Zawr', 'DZ', 1),
	(3128, 205, 'Dimashq', 'DI', 1),
	(3129, 205, 'Halab', 'HL', 1),
	(3130, 205, 'Hamah', 'HM', 1),
	(3131, 205, 'Hims', 'HI', 1),
	(3132, 205, 'Idlib', 'ID', 1),
	(3133, 205, 'Rif Dimashq', 'RD', 1),
	(3134, 205, 'Tartus', 'TA', 1),
	(3135, 206, 'Chang-hua', 'CH', 1),
	(3136, 206, 'Chia-i', 'CI', 1),
	(3137, 206, 'Hsin-chu', 'HS', 1),
	(3138, 206, 'Hua-lien', 'HL', 1),
	(3139, 206, 'I-lan', 'IL', 1),
	(3140, 206, 'Kao-hsiung county', 'KH', 1),
	(3141, 206, 'Kin-men', 'KM', 1),
	(3142, 206, 'Lien-chiang', 'LC', 1),
	(3143, 206, 'Miao-li', 'ML', 1),
	(3144, 206, 'Nan-t\'ou', 'NT', 1),
	(3145, 206, 'P\'eng-hu', 'PH', 1),
	(3146, 206, 'P\'ing-tung', 'PT', 1),
	(3147, 206, 'T\'ai-chung', 'TG', 1),
	(3148, 206, 'T\'ai-nan', 'TA', 1),
	(3149, 206, 'T\'ai-pei county', 'TP', 1),
	(3150, 206, 'T\'ai-tung', 'TT', 1),
	(3151, 206, 'T\'ao-yuan', 'TY', 1),
	(3152, 206, 'Yun-lin', 'YL', 1),
	(3153, 206, 'Chia-i city', 'CC', 1),
	(3154, 206, 'Chi-lung', 'CL', 1),
	(3155, 206, 'Hsin-chu', 'HC', 1),
	(3156, 206, 'T\'ai-chung', 'TH', 1),
	(3157, 206, 'T\'ai-nan', 'TN', 1),
	(3158, 206, 'Kao-hsiung city', 'KC', 1),
	(3159, 206, 'T\'ai-pei city', 'TC', 1),
	(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
	(3161, 207, 'Khatlon', 'KT', 1),
	(3162, 207, 'Sughd', 'SU', 1),
	(3163, 208, 'Arusha', 'AR', 1),
	(3164, 208, 'Dar es Salaam', 'DS', 1),
	(3165, 208, 'Dodoma', 'DO', 1),
	(3166, 208, 'Iringa', 'IR', 1),
	(3167, 208, 'Kagera', 'KA', 1),
	(3168, 208, 'Kigoma', 'KI', 1),
	(3169, 208, 'Kilimanjaro', 'KJ', 1),
	(3170, 208, 'Lindi', 'LN', 1),
	(3171, 208, 'Manyara', 'MY', 1),
	(3172, 208, 'Mara', 'MR', 1),
	(3173, 208, 'Mbeya', 'MB', 1),
	(3174, 208, 'Morogoro', 'MO', 1),
	(3175, 208, 'Mtwara', 'MT', 1),
	(3176, 208, 'Mwanza', 'MW', 1),
	(3177, 208, 'Pemba North', 'PN', 1),
	(3178, 208, 'Pemba South', 'PS', 1),
	(3179, 208, 'Pwani', 'PW', 1),
	(3180, 208, 'Rukwa', 'RK', 1),
	(3181, 208, 'Ruvuma', 'RV', 1),
	(3182, 208, 'Shinyanga', 'SH', 1),
	(3183, 208, 'Singida', 'SI', 1),
	(3184, 208, 'Tabora', 'TB', 1),
	(3185, 208, 'Tanga', 'TN', 1),
	(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
	(3187, 208, 'Zanzibar North', 'ZN', 1),
	(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
	(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
	(3190, 209, 'Ang Thong', 'Ang Thong', 1),
	(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
	(3192, 209, 'Bangkok', 'Bangkok', 1),
	(3193, 209, 'Buriram', 'Buriram', 1),
	(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
	(3195, 209, 'Chai Nat', 'Chai Nat', 1),
	(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
	(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
	(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
	(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
	(3200, 209, 'Chon Buri', 'Chon Buri', 1),
	(3201, 209, 'Chumphon', 'Chumphon', 1),
	(3202, 209, 'Kalasin', 'Kalasin', 1),
	(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
	(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
	(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
	(3206, 209, 'Krabi', 'Krabi', 1),
	(3207, 209, 'Lampang', 'Lampang', 1),
	(3208, 209, 'Lamphun', 'Lamphun', 1),
	(3209, 209, 'Loei', 'Loei', 1),
	(3210, 209, 'Lop Buri', 'Lop Buri', 1),
	(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
	(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
	(3213, 209, 'Mukdahan', 'Mukdahan', 1),
	(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
	(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
	(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
	(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
	(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
	(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
	(3220, 209, 'Nan', 'Nan', 1),
	(3221, 209, 'Narathiwat', 'Narathiwat', 1),
	(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
	(3223, 209, 'Nong Khai', 'Nong Khai', 1),
	(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
	(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
	(3226, 209, 'Pattani', 'Pattani', 1),
	(3227, 209, 'Phangnga', 'Phangnga', 1),
	(3228, 209, 'Phatthalung', 'Phatthalung', 1),
	(3229, 209, 'Phayao', 'Phayao', 1),
	(3230, 209, 'Phetchabun', 'Phetchabun', 1),
	(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
	(3232, 209, 'Phichit', 'Phichit', 1),
	(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
	(3234, 209, 'Phrae', 'Phrae', 1),
	(3235, 209, 'Phuket', 'Phuket', 1),
	(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
	(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
	(3238, 209, 'Ranong', 'Ranong', 1),
	(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
	(3240, 209, 'Rayong', 'Rayong', 1),
	(3241, 209, 'Roi Et', 'Roi Et', 1),
	(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
	(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
	(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
	(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
	(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
	(3247, 209, 'Sara Buri', 'Sara Buri', 1),
	(3248, 209, 'Satun', 'Satun', 1),
	(3249, 209, 'Sing Buri', 'Sing Buri', 1),
	(3250, 209, 'Sisaket', 'Sisaket', 1),
	(3251, 209, 'Songkhla', 'Songkhla', 1),
	(3252, 209, 'Sukhothai', 'Sukhothai', 1),
	(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
	(3254, 209, 'Surat Thani', 'Surat Thani', 1),
	(3255, 209, 'Surin', 'Surin', 1),
	(3256, 209, 'Tak', 'Tak', 1),
	(3257, 209, 'Trang', 'Trang', 1),
	(3258, 209, 'Trat', 'Trat', 1),
	(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
	(3260, 209, 'Udon Thani', 'Udon Thani', 1),
	(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
	(3262, 209, 'Uttaradit', 'Uttaradit', 1),
	(3263, 209, 'Yala', 'Yala', 1),
	(3264, 209, 'Yasothon', 'Yasothon', 1),
	(3265, 210, 'Kara', 'K', 1),
	(3266, 210, 'Plateaux', 'P', 1),
	(3267, 210, 'Savanes', 'S', 1),
	(3268, 210, 'Centrale', 'C', 1),
	(3269, 210, 'Maritime', 'M', 1),
	(3270, 211, 'Atafu', 'A', 1),
	(3271, 211, 'Fakaofo', 'F', 1),
	(3272, 211, 'Nukunonu', 'N', 1),
	(3273, 212, 'Ha\'apai', 'H', 1),
	(3274, 212, 'Tongatapu', 'T', 1),
	(3275, 212, 'Vava\'u', 'V', 1),
	(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
	(3277, 213, 'Diego Martin', 'DM', 1),
	(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
	(3279, 213, 'Penal/Debe', 'PD', 1),
	(3280, 213, 'Princes Town', 'PT', 1),
	(3281, 213, 'Sangre Grande', 'SG', 1),
	(3282, 213, 'San Juan/Laventille', 'SL', 1),
	(3283, 213, 'Siparia', 'SI', 1),
	(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
	(3285, 213, 'Port of Spain', 'PS', 1),
	(3286, 213, 'San Fernando', 'SF', 1),
	(3287, 213, 'Arima', 'AR', 1),
	(3288, 213, 'Point Fortin', 'PF', 1),
	(3289, 213, 'Chaguanas', 'CH', 1),
	(3290, 213, 'Tobago', 'TO', 1),
	(3291, 214, 'Ariana', 'AR', 1),
	(3292, 214, 'Beja', 'BJ', 1),
	(3293, 214, 'Ben Arous', 'BA', 1),
	(3294, 214, 'Bizerte', 'BI', 1),
	(3295, 214, 'Gabes', 'GB', 1),
	(3296, 214, 'Gafsa', 'GF', 1),
	(3297, 214, 'Jendouba', 'JE', 1),
	(3298, 214, 'Kairouan', 'KR', 1),
	(3299, 214, 'Kasserine', 'KS', 1),
	(3300, 214, 'Kebili', 'KB', 1),
	(3301, 214, 'Kef', 'KF', 1),
	(3302, 214, 'Mahdia', 'MH', 1),
	(3303, 214, 'Manouba', 'MN', 1),
	(3304, 214, 'Medenine', 'ME', 1),
	(3305, 214, 'Monastir', 'MO', 1),
	(3306, 214, 'Nabeul', 'NA', 1),
	(3307, 214, 'Sfax', 'SF', 1),
	(3308, 214, 'Sidi', 'SD', 1),
	(3309, 214, 'Siliana', 'SL', 1),
	(3310, 214, 'Sousse', 'SO', 1),
	(3311, 214, 'Tataouine', 'TA', 1),
	(3312, 214, 'Tozeur', 'TO', 1),
	(3313, 214, 'Tunis', 'TU', 1),
	(3314, 214, 'Zaghouan', 'ZA', 1),
	(3315, 215, 'Adana', 'ADA', 1),
	(3316, 215, 'Adıyaman', 'ADI', 1),
	(3317, 215, 'Afyonkarahisar', 'AFY', 1),
	(3318, 215, 'Ağrı', 'AGR', 1),
	(3319, 215, 'Aksaray', 'AKS', 1),
	(3320, 215, 'Amasya', 'AMA', 1),
	(3321, 215, 'Ankara', 'ANK', 1),
	(3322, 215, 'Antalya', 'ANT', 1),
	(3323, 215, 'Ardahan', 'ARD', 1),
	(3324, 215, 'Artvin', 'ART', 1),
	(3325, 215, 'Aydın', 'AYI', 1),
	(3326, 215, 'Balıkesir', 'BAL', 1),
	(3327, 215, 'Bartın', 'BAR', 1),
	(3328, 215, 'Batman', 'BAT', 1),
	(3329, 215, 'Bayburt', 'BAY', 1),
	(3330, 215, 'Bilecik', 'BIL', 1),
	(3331, 215, 'Bingöl', 'BIN', 1),
	(3332, 215, 'Bitlis', 'BIT', 1),
	(3333, 215, 'Bolu', 'BOL', 1),
	(3334, 215, 'Burdur', 'BRD', 1),
	(3335, 215, 'Bursa', 'BRS', 1),
	(3336, 215, 'Çanakkale', 'CKL', 1),
	(3337, 215, 'Çankırı', 'CKR', 1),
	(3338, 215, 'Çorum', 'COR', 1),
	(3339, 215, 'Denizli', 'DEN', 1),
	(3340, 215, 'Diyarbakir', 'DIY', 1),
	(3341, 215, 'Düzce', 'DUZ', 1),
	(3342, 215, 'Edirne', 'EDI', 1),
	(3343, 215, 'Elazığ', 'ELA', 1),
	(3344, 215, 'Erzincan', 'EZC', 1),
	(3345, 215, 'Erzurum', 'EZR', 1),
	(3346, 215, 'Eskişehir', 'ESK', 1),
	(3347, 215, 'Gaziantep', 'GAZ', 1),
	(3348, 215, 'Giresun', 'GIR', 1),
	(3349, 215, 'Gümüşhane', 'GMS', 1),
	(3350, 215, 'Hakkari', 'HKR', 1),
	(3351, 215, 'Hatay', 'HTY', 1),
	(3352, 215, 'Iğdır', 'IGD', 1),
	(3353, 215, 'Isparta', 'ISP', 1),
	(3354, 215, 'İstanbul', 'IST', 1),
	(3355, 215, 'İzmir', 'IZM', 1),
	(3356, 215, 'Kahramanmaraş', 'KAH', 1),
	(3357, 215, 'Karabük', 'KRB', 1),
	(3358, 215, 'Karaman', 'KRM', 1),
	(3359, 215, 'Kars', 'KRS', 1),
	(3360, 215, 'Kastamonu', 'KAS', 1),
	(3361, 215, 'Kayseri', 'KAY', 1),
	(3362, 215, 'Kilis', 'KLS', 1),
	(3363, 215, 'Kırıkkale', 'KRK', 1),
	(3364, 215, 'Kırklareli', 'KLR', 1),
	(3365, 215, 'Kırşehir', 'KRH', 1),
	(3366, 215, 'Kocaeli', 'KOC', 1),
	(3367, 215, 'Konya', 'KON', 1),
	(3368, 215, 'Kütahya', 'KUT', 1),
	(3369, 215, 'Malatya', 'MAL', 1),
	(3370, 215, 'Manisa', 'MAN', 1),
	(3371, 215, 'Mardin', 'MAR', 1),
	(3372, 215, 'Mersin', 'MER', 1),
	(3373, 215, 'Muğla', 'MUG', 1),
	(3374, 215, 'Muş', 'MUS', 1),
	(3375, 215, 'Nevşehir', 'NEV', 1),
	(3376, 215, 'Niğde', 'NIG', 1),
	(3377, 215, 'Ordu', 'ORD', 1),
	(3378, 215, 'Osmaniye', 'OSM', 1),
	(3379, 215, 'Rize', 'RIZ', 1),
	(3380, 215, 'Sakarya', 'SAK', 1),
	(3381, 215, 'Samsun', 'SAM', 1),
	(3382, 215, 'Şanlıurfa', 'SAN', 1),
	(3383, 215, 'Siirt', 'SII', 1),
	(3384, 215, 'Sinop', 'SIN', 1),
	(3385, 215, 'Şırnak', 'SIR', 1),
	(3386, 215, 'Sivas', 'SIV', 1),
	(3387, 215, 'Tekirdağ', 'TEL', 1),
	(3388, 215, 'Tokat', 'TOK', 1),
	(3389, 215, 'Trabzon', 'TRA', 1),
	(3390, 215, 'Tunceli', 'TUN', 1),
	(3391, 215, 'Uşak', 'USK', 1),
	(3392, 215, 'Van', 'VAN', 1),
	(3393, 215, 'Yalova', 'YAL', 1),
	(3394, 215, 'Yozgat', 'YOZ', 1),
	(3395, 215, 'Zonguldak', 'ZON', 1),
	(3396, 216, 'Ahal Welayaty', 'A', 1),
	(3397, 216, 'Balkan Welayaty', 'B', 1),
	(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
	(3399, 216, 'Lebap Welayaty', 'L', 1),
	(3400, 216, 'Mary Welayaty', 'M', 1),
	(3401, 217, 'Ambergris Cays', 'AC', 1),
	(3402, 217, 'Dellis Cay', 'DC', 1),
	(3403, 217, 'French Cay', 'FC', 1),
	(3404, 217, 'Little Water Cay', 'LW', 1),
	(3405, 217, 'Parrot Cay', 'RC', 1),
	(3406, 217, 'Pine Cay', 'PN', 1),
	(3407, 217, 'Salt Cay', 'SL', 1),
	(3408, 217, 'Grand Turk', 'GT', 1),
	(3409, 217, 'South Caicos', 'SC', 1),
	(3410, 217, 'East Caicos', 'EC', 1),
	(3411, 217, 'Middle Caicos', 'MC', 1),
	(3412, 217, 'North Caicos', 'NC', 1),
	(3413, 217, 'Providenciales', 'PR', 1),
	(3414, 217, 'West Caicos', 'WC', 1),
	(3415, 218, 'Nanumanga', 'NMG', 1),
	(3416, 218, 'Niulakita', 'NLK', 1),
	(3417, 218, 'Niutao', 'NTO', 1),
	(3418, 218, 'Funafuti', 'FUN', 1),
	(3419, 218, 'Nanumea', 'NME', 1),
	(3420, 218, 'Nui', 'NUI', 1),
	(3421, 218, 'Nukufetau', 'NFT', 1),
	(3422, 218, 'Nukulaelae', 'NLL', 1),
	(3423, 218, 'Vaitupu', 'VAI', 1),
	(3424, 219, 'Kalangala', 'KAL', 1),
	(3425, 219, 'Kampala', 'KMP', 1),
	(3426, 219, 'Kayunga', 'KAY', 1),
	(3427, 219, 'Kiboga', 'KIB', 1),
	(3428, 219, 'Luwero', 'LUW', 1),
	(3429, 219, 'Masaka', 'MAS', 1),
	(3430, 219, 'Mpigi', 'MPI', 1),
	(3431, 219, 'Mubende', 'MUB', 1),
	(3432, 219, 'Mukono', 'MUK', 1),
	(3433, 219, 'Nakasongola', 'NKS', 1),
	(3434, 219, 'Rakai', 'RAK', 1),
	(3435, 219, 'Sembabule', 'SEM', 1),
	(3436, 219, 'Wakiso', 'WAK', 1),
	(3437, 219, 'Bugiri', 'BUG', 1),
	(3438, 219, 'Busia', 'BUS', 1),
	(3439, 219, 'Iganga', 'IGA', 1),
	(3440, 219, 'Jinja', 'JIN', 1),
	(3441, 219, 'Kaberamaido', 'KAB', 1),
	(3442, 219, 'Kamuli', 'KML', 1),
	(3443, 219, 'Kapchorwa', 'KPC', 1),
	(3444, 219, 'Katakwi', 'KTK', 1),
	(3445, 219, 'Kumi', 'KUM', 1),
	(3446, 219, 'Mayuge', 'MAY', 1),
	(3447, 219, 'Mbale', 'MBA', 1),
	(3448, 219, 'Pallisa', 'PAL', 1),
	(3449, 219, 'Sironko', 'SIR', 1),
	(3450, 219, 'Soroti', 'SOR', 1),
	(3451, 219, 'Tororo', 'TOR', 1),
	(3452, 219, 'Adjumani', 'ADJ', 1),
	(3453, 219, 'Apac', 'APC', 1),
	(3454, 219, 'Arua', 'ARU', 1),
	(3455, 219, 'Gulu', 'GUL', 1),
	(3456, 219, 'Kitgum', 'KIT', 1),
	(3457, 219, 'Kotido', 'KOT', 1),
	(3458, 219, 'Lira', 'LIR', 1),
	(3459, 219, 'Moroto', 'MRT', 1),
	(3460, 219, 'Moyo', 'MOY', 1),
	(3461, 219, 'Nakapiripirit', 'NAK', 1),
	(3462, 219, 'Nebbi', 'NEB', 1),
	(3463, 219, 'Pader', 'PAD', 1),
	(3464, 219, 'Yumbe', 'YUM', 1),
	(3465, 219, 'Bundibugyo', 'BUN', 1),
	(3466, 219, 'Bushenyi', 'BSH', 1),
	(3467, 219, 'Hoima', 'HOI', 1),
	(3468, 219, 'Kabale', 'KBL', 1),
	(3469, 219, 'Kabarole', 'KAR', 1),
	(3470, 219, 'Kamwenge', 'KAM', 1),
	(3471, 219, 'Kanungu', 'KAN', 1),
	(3472, 219, 'Kasese', 'KAS', 1),
	(3473, 219, 'Kibaale', 'KBA', 1),
	(3474, 219, 'Kisoro', 'KIS', 1),
	(3475, 219, 'Kyenjojo', 'KYE', 1),
	(3476, 219, 'Masindi', 'MSN', 1),
	(3477, 219, 'Mbarara', 'MBR', 1),
	(3478, 219, 'Ntungamo', 'NTU', 1),
	(3479, 219, 'Rukungiri', 'RUK', 1),
	(3480, 220, 'Cherkasy', 'CK', 1),
	(3481, 220, 'Chernihiv', 'CH', 1),
	(3482, 220, 'Chernivtsi', 'CV', 1),
	(3483, 220, 'Crimea', 'CR', 1),
	(3484, 220, 'Dnipropetrovs\'k', 'DN', 1),
	(3485, 220, 'Donets\'k', 'DO', 1),
	(3486, 220, 'Ivano-Frankivs\'k', 'IV', 1),
	(3487, 220, 'Kharkiv Kherson', 'KL', 1),
	(3488, 220, 'Khmel\'nyts\'kyy', 'KM', 1),
	(3489, 220, 'Kirovohrad', 'KR', 1),
	(3490, 220, 'Kiev', 'KV', 1),
	(3491, 220, 'Kyyiv', 'KY', 1),
	(3492, 220, 'Luhans\'k', 'LU', 1),
	(3493, 220, 'L\'viv', 'LV', 1),
	(3494, 220, 'Mykolayiv', 'MY', 1),
	(3495, 220, 'Odesa', 'OD', 1),
	(3496, 220, 'Poltava', 'PO', 1),
	(3497, 220, 'Rivne', 'RI', 1),
	(3498, 220, 'Sevastopol', 'SE', 1),
	(3499, 220, 'Sumy', 'SU', 1),
	(3500, 220, 'Ternopil\'', 'TE', 1),
	(3501, 220, 'Vinnytsya', 'VI', 1),
	(3502, 220, 'Volyn\'', 'VO', 1),
	(3503, 220, 'Zakarpattya', 'ZK', 1),
	(3504, 220, 'Zaporizhzhya', 'ZA', 1),
	(3505, 220, 'Zhytomyr', 'ZH', 1),
	(3506, 221, 'Abu Zaby', 'AZ', 1),
	(3507, 221, '\'Ajman', 'AJ', 1),
	(3508, 221, 'Al Fujayrah', 'FU', 1),
	(3509, 221, 'Ash Shariqah', 'SH', 1),
	(3510, 221, 'Dubayy', 'DU', 1),
	(3511, 221, 'R\'as al Khaymah', 'RK', 1),
	(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
	(3513, 222, 'Aberdeen', 'ABN', 1),
	(3514, 222, 'Aberdeenshire', 'ABNS', 1),
	(3515, 222, 'Anglesey', 'ANG', 1),
	(3516, 222, 'Angus', 'AGS', 1),
	(3517, 222, 'Argyll and Bute', 'ARY', 1),
	(3518, 222, 'Bedfordshire', 'BEDS', 1),
	(3519, 222, 'Berkshire', 'BERKS', 1),
	(3520, 222, 'Blaenau Gwent', 'BLA', 1),
	(3521, 222, 'Bridgend', 'BRI', 1),
	(3522, 222, 'Bristol', 'BSTL', 1),
	(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
	(3524, 222, 'Caerphilly', 'CAE', 1),
	(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
	(3526, 222, 'Cardiff', 'CDF', 1),
	(3527, 222, 'Carmarthenshire', 'CARM', 1),
	(3528, 222, 'Ceredigion', 'CDGN', 1),
	(3529, 222, 'Cheshire', 'CHES', 1),
	(3530, 222, 'Clackmannanshire', 'CLACK', 1),
	(3531, 222, 'Conwy', 'CON', 1),
	(3532, 222, 'Cornwall', 'CORN', 1),
	(3533, 222, 'Denbighshire', 'DNBG', 1),
	(3534, 222, 'Derbyshire', 'DERBY', 1),
	(3535, 222, 'Devon', 'DVN', 1),
	(3536, 222, 'Dorset', 'DOR', 1),
	(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
	(3538, 222, 'Dundee', 'DUND', 1),
	(3539, 222, 'Durham', 'DHM', 1),
	(3540, 222, 'East Ayrshire', 'ARYE', 1),
	(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
	(3542, 222, 'East Lothian', 'LOTE', 1),
	(3543, 222, 'East Renfrewshire', 'RENE', 1),
	(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
	(3545, 222, 'East Sussex', 'SXE', 1),
	(3546, 222, 'Edinburgh', 'EDIN', 1),
	(3547, 222, 'Essex', 'ESX', 1),
	(3548, 222, 'Falkirk', 'FALK', 1),
	(3549, 222, 'Fife', 'FFE', 1),
	(3550, 222, 'Flintshire', 'FLINT', 1),
	(3551, 222, 'Glasgow', 'GLAS', 1),
	(3552, 222, 'Gloucestershire', 'GLOS', 1),
	(3553, 222, 'Greater London', 'LDN', 1),
	(3554, 222, 'Greater Manchester', 'MCH', 1),
	(3555, 222, 'Gwynedd', 'GDD', 1),
	(3556, 222, 'Hampshire', 'HANTS', 1),
	(3557, 222, 'Herefordshire', 'HWR', 1),
	(3558, 222, 'Hertfordshire', 'HERTS', 1),
	(3559, 222, 'Highlands', 'HLD', 1),
	(3560, 222, 'Inverclyde', 'IVER', 1),
	(3561, 222, 'Isle of Wight', 'IOW', 1),
	(3562, 222, 'Kent', 'KNT', 1),
	(3563, 222, 'Lancashire', 'LANCS', 1),
	(3564, 222, 'Leicestershire', 'LEICS', 1),
	(3565, 222, 'Lincolnshire', 'LINCS', 1),
	(3566, 222, 'Merseyside', 'MSY', 1),
	(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
	(3568, 222, 'Midlothian', 'MLOT', 1),
	(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
	(3570, 222, 'Moray', 'MORAY', 1),
	(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
	(3572, 222, 'Newport', 'NEWPT', 1),
	(3573, 222, 'Norfolk', 'NOR', 1),
	(3574, 222, 'North Ayrshire', 'ARYN', 1),
	(3575, 222, 'North Lanarkshire', 'LANN', 1),
	(3576, 222, 'North Yorkshire', 'YSN', 1),
	(3577, 222, 'Northamptonshire', 'NHM', 1),
	(3578, 222, 'Northumberland', 'NLD', 1),
	(3579, 222, 'Nottinghamshire', 'NOT', 1),
	(3580, 222, 'Orkney Islands', 'ORK', 1),
	(3581, 222, 'Oxfordshire', 'OFE', 1),
	(3582, 222, 'Pembrokeshire', 'PEM', 1),
	(3583, 222, 'Perth and Kinross', 'PERTH', 1),
	(3584, 222, 'Powys', 'PWS', 1),
	(3585, 222, 'Renfrewshire', 'REN', 1),
	(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
	(3587, 222, 'Rutland', 'RUT', 1),
	(3588, 222, 'Scottish Borders', 'BOR', 1),
	(3589, 222, 'Shetland Islands', 'SHET', 1),
	(3590, 222, 'Shropshire', 'SPE', 1),
	(3591, 222, 'Somerset', 'SOM', 1),
	(3592, 222, 'South Ayrshire', 'ARYS', 1),
	(3593, 222, 'South Lanarkshire', 'LANS', 1),
	(3594, 222, 'South Yorkshire', 'YSS', 1),
	(3595, 222, 'Staffordshire', 'SFD', 1),
	(3596, 222, 'Stirling', 'STIR', 1),
	(3597, 222, 'Suffolk', 'SFK', 1),
	(3598, 222, 'Surrey', 'SRY', 1),
	(3599, 222, 'Swansea', 'SWAN', 1),
	(3600, 222, 'Torfaen', 'TORF', 1),
	(3601, 222, 'Tyne and Wear', 'TWR', 1),
	(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
	(3603, 222, 'Warwickshire', 'WARKS', 1),
	(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
	(3605, 222, 'West Lothian', 'WLOT', 1),
	(3606, 222, 'West Midlands', 'WMD', 1),
	(3607, 222, 'West Sussex', 'SXW', 1),
	(3608, 222, 'West Yorkshire', 'YSW', 1),
	(3609, 222, 'Western Isles', 'WIL', 1),
	(3610, 222, 'Wiltshire', 'WLT', 1),
	(3611, 222, 'Worcestershire', 'WORCS', 1),
	(3612, 222, 'Wrexham', 'WRX', 1),
	(3613, 223, 'Alabama', 'AL', 1),
	(3614, 223, 'Alaska', 'AK', 1),
	(3615, 223, 'American Samoa', 'AS', 1),
	(3616, 223, 'Arizona', 'AZ', 1),
	(3617, 223, 'Arkansas', 'AR', 1),
	(3618, 223, 'Armed Forces Africa', 'AF', 1),
	(3619, 223, 'Armed Forces Americas', 'AA', 1),
	(3620, 223, 'Armed Forces Canada', 'AC', 1),
	(3621, 223, 'Armed Forces Europe', 'AE', 1),
	(3622, 223, 'Armed Forces Middle East', 'AM', 1),
	(3623, 223, 'Armed Forces Pacific', 'AP', 1),
	(3624, 223, 'California', 'CA', 1),
	(3625, 223, 'Colorado', 'CO', 1),
	(3626, 223, 'Connecticut', 'CT', 1),
	(3627, 223, 'Delaware', 'DE', 1),
	(3628, 223, 'District of Columbia', 'DC', 1),
	(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
	(3630, 223, 'Florida', 'FL', 1),
	(3631, 223, 'Georgia', 'GA', 1),
	(3632, 223, 'Guam', 'GU', 1),
	(3633, 223, 'Hawaii', 'HI', 1),
	(3634, 223, 'Idaho', 'ID', 1),
	(3635, 223, 'Illinois', 'IL', 1),
	(3636, 223, 'Indiana', 'IN', 1),
	(3637, 223, 'Iowa', 'IA', 1),
	(3638, 223, 'Kansas', 'KS', 1),
	(3639, 223, 'Kentucky', 'KY', 1),
	(3640, 223, 'Louisiana', 'LA', 1),
	(3641, 223, 'Maine', 'ME', 1),
	(3642, 223, 'Marshall Islands', 'MH', 1),
	(3643, 223, 'Maryland', 'MD', 1),
	(3644, 223, 'Massachusetts', 'MA', 1),
	(3645, 223, 'Michigan', 'MI', 1),
	(3646, 223, 'Minnesota', 'MN', 1),
	(3647, 223, 'Mississippi', 'MS', 1),
	(3648, 223, 'Missouri', 'MO', 1),
	(3649, 223, 'Montana', 'MT', 1),
	(3650, 223, 'Nebraska', 'NE', 1),
	(3651, 223, 'Nevada', 'NV', 1),
	(3652, 223, 'New Hampshire', 'NH', 1),
	(3653, 223, 'New Jersey', 'NJ', 1),
	(3654, 223, 'New Mexico', 'NM', 1),
	(3655, 223, 'New York', 'NY', 1),
	(3656, 223, 'North Carolina', 'NC', 1),
	(3657, 223, 'North Dakota', 'ND', 1),
	(3658, 223, 'Northern Mariana Islands', 'MP', 1),
	(3659, 223, 'Ohio', 'OH', 1),
	(3660, 223, 'Oklahoma', 'OK', 1),
	(3661, 223, 'Oregon', 'OR', 1),
	(3662, 223, 'Palau', 'PW', 1),
	(3663, 223, 'Pennsylvania', 'PA', 1),
	(3664, 223, 'Puerto Rico', 'PR', 1),
	(3665, 223, 'Rhode Island', 'RI', 1),
	(3666, 223, 'South Carolina', 'SC', 1),
	(3667, 223, 'South Dakota', 'SD', 1),
	(3668, 223, 'Tennessee', 'TN', 1),
	(3669, 223, 'Texas', 'TX', 1),
	(3670, 223, 'Utah', 'UT', 1),
	(3671, 223, 'Vermont', 'VT', 1),
	(3672, 223, 'Virgin Islands', 'VI', 1),
	(3673, 223, 'Virginia', 'VA', 1),
	(3674, 223, 'Washington', 'WA', 1),
	(3675, 223, 'West Virginia', 'WV', 1),
	(3676, 223, 'Wisconsin', 'WI', 1),
	(3677, 223, 'Wyoming', 'WY', 1),
	(3678, 224, 'Baker Island', 'BI', 1),
	(3679, 224, 'Howland Island', 'HI', 1),
	(3680, 224, 'Jarvis Island', 'JI', 1),
	(3681, 224, 'Johnston Atoll', 'JA', 1),
	(3682, 224, 'Kingman Reef', 'KR', 1),
	(3683, 224, 'Midway Atoll', 'MA', 1),
	(3684, 224, 'Navassa Island', 'NI', 1),
	(3685, 224, 'Palmyra Atoll', 'PA', 1),
	(3686, 224, 'Wake Island', 'WI', 1),
	(3687, 225, 'Artigas', 'AR', 1),
	(3688, 225, 'Canelones', 'CA', 1),
	(3689, 225, 'Cerro Largo', 'CL', 1),
	(3690, 225, 'Colonia', 'CO', 1),
	(3691, 225, 'Durazno', 'DU', 1),
	(3692, 225, 'Flores', 'FS', 1),
	(3693, 225, 'Florida', 'FA', 1),
	(3694, 225, 'Lavalleja', 'LA', 1),
	(3695, 225, 'Maldonado', 'MA', 1),
	(3696, 225, 'Montevideo', 'MO', 1),
	(3697, 225, 'Paysandu', 'PA', 1),
	(3698, 225, 'Rio Negro', 'RN', 1),
	(3699, 225, 'Rivera', 'RV', 1),
	(3700, 225, 'Rocha', 'RO', 1),
	(3701, 225, 'Salto', 'SL', 1),
	(3702, 225, 'San Jose', 'SJ', 1),
	(3703, 225, 'Soriano', 'SO', 1),
	(3704, 225, 'Tacuarembo', 'TA', 1),
	(3705, 225, 'Treinta y Tres', 'TT', 1),
	(3706, 226, 'Andijon', 'AN', 1),
	(3707, 226, 'Buxoro', 'BU', 1),
	(3708, 226, 'Farg\'ona', 'FA', 1),
	(3709, 226, 'Jizzax', 'JI', 1),
	(3710, 226, 'Namangan', 'NG', 1),
	(3711, 226, 'Navoiy', 'NW', 1),
	(3712, 226, 'Qashqadaryo', 'QA', 1),
	(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
	(3714, 226, 'Samarqand', 'SA', 1),
	(3715, 226, 'Sirdaryo', 'SI', 1),
	(3716, 226, 'Surxondaryo', 'SU', 1),
	(3717, 226, 'Toshkent City', 'TK', 1),
	(3718, 226, 'Toshkent Region', 'TO', 1),
	(3719, 226, 'Xorazm', 'XO', 1),
	(3720, 227, 'Malampa', 'MA', 1),
	(3721, 227, 'Penama', 'PE', 1),
	(3722, 227, 'Sanma', 'SA', 1),
	(3723, 227, 'Shefa', 'SH', 1),
	(3724, 227, 'Tafea', 'TA', 1),
	(3725, 227, 'Torba', 'TO', 1),
	(3726, 229, 'Amazonas', 'AM', 1),
	(3727, 229, 'Anzoategui', 'AN', 1),
	(3728, 229, 'Apure', 'AP', 1),
	(3729, 229, 'Aragua', 'AR', 1),
	(3730, 229, 'Barinas', 'BA', 1),
	(3731, 229, 'Bolivar', 'BO', 1),
	(3732, 229, 'Carabobo', 'CA', 1),
	(3733, 229, 'Cojedes', 'CO', 1),
	(3734, 229, 'Delta Amacuro', 'DA', 1),
	(3735, 229, 'Dependencias Federales', 'DF', 1),
	(3736, 229, 'Distrito Federal', 'DI', 1),
	(3737, 229, 'Falcon', 'FA', 1),
	(3738, 229, 'Guarico', 'GU', 1),
	(3739, 229, 'Lara', 'LA', 1),
	(3740, 229, 'Merida', 'ME', 1),
	(3741, 229, 'Miranda', 'MI', 1),
	(3742, 229, 'Monagas', 'MO', 1),
	(3743, 229, 'Nueva Esparta', 'NE', 1),
	(3744, 229, 'Portuguesa', 'PO', 1),
	(3745, 229, 'Sucre', 'SU', 1),
	(3746, 229, 'Tachira', 'TA', 1),
	(3747, 229, 'Trujillo', 'TR', 1),
	(3748, 229, 'Vargas', 'VA', 1),
	(3749, 229, 'Yaracuy', 'YA', 1),
	(3750, 229, 'Zulia', 'ZU', 1),
	(3751, 230, 'An Giang', 'AG', 1),
	(3752, 230, 'Bac Giang', 'BG', 1),
	(3753, 230, 'Bac Kan', 'BK', 1),
	(3754, 230, 'Bac Lieu', 'BL', 1),
	(3755, 230, 'Bac Ninh', 'BC', 1),
	(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
	(3757, 230, 'Ben Tre', 'BN', 1),
	(3758, 230, 'Binh Dinh', 'BH', 1),
	(3759, 230, 'Binh Duong', 'BU', 1),
	(3760, 230, 'Binh Phuoc', 'BP', 1),
	(3761, 230, 'Binh Thuan', 'BT', 1),
	(3762, 230, 'Ca Mau', 'CM', 1),
	(3763, 230, 'Can Tho', 'CT', 1),
	(3764, 230, 'Cao Bang', 'CB', 1),
	(3765, 230, 'Dak Lak', 'DL', 1),
	(3766, 230, 'Dak Nong', 'DG', 1),
	(3767, 230, 'Da Nang', 'DN', 1),
	(3768, 230, 'Dien Bien', 'DB', 1),
	(3769, 230, 'Dong Nai', 'DI', 1),
	(3770, 230, 'Dong Thap', 'DT', 1),
	(3771, 230, 'Gia Lai', 'GL', 1),
	(3772, 230, 'Ha Giang', 'HG', 1),
	(3773, 230, 'Hai Duong', 'HD', 1),
	(3774, 230, 'Hai Phong', 'HP', 1),
	(3775, 230, 'Ha Nam', 'HM', 1),
	(3776, 230, 'Ha Noi', 'HI', 1),
	(3777, 230, 'Ha Tay', 'HT', 1),
	(3778, 230, 'Ha Tinh', 'HH', 1),
	(3779, 230, 'Hoa Binh', 'HB', 1),
	(3780, 230, 'Ho Chi Minh City', 'HC', 1),
	(3781, 230, 'Hau Giang', 'HU', 1),
	(3782, 230, 'Hung Yen', 'HY', 1),
	(3783, 232, 'Saint Croix', 'C', 1),
	(3784, 232, 'Saint John', 'J', 1),
	(3785, 232, 'Saint Thomas', 'T', 1),
	(3786, 233, 'Alo', 'A', 1),
	(3787, 233, 'Sigave', 'S', 1),
	(3788, 233, 'Wallis', 'W', 1),
	(3789, 235, 'Abyan', 'AB', 1),
	(3790, 235, 'Adan', 'AD', 1),
	(3791, 235, 'Amran', 'AM', 1),
	(3792, 235, 'Al Bayda', 'BA', 1),
	(3793, 235, 'Ad Dali', 'DA', 1),
	(3794, 235, 'Dhamar', 'DH', 1),
	(3795, 235, 'Hadramawt', 'HD', 1),
	(3796, 235, 'Hajjah', 'HJ', 1),
	(3797, 235, 'Al Hudaydah', 'HU', 1),
	(3798, 235, 'Ibb', 'IB', 1),
	(3799, 235, 'Al Jawf', 'JA', 1),
	(3800, 235, 'Lahij', 'LA', 1),
	(3801, 235, 'Ma\'rib', 'MA', 1),
	(3802, 235, 'Al Mahrah', 'MR', 1),
	(3803, 235, 'Al Mahwit', 'MW', 1),
	(3804, 235, 'Sa\'dah', 'SD', 1),
	(3805, 235, 'San\'a', 'SN', 1),
	(3806, 235, 'Shabwah', 'SH', 1),
	(3807, 235, 'Ta\'izz', 'TA', 1),
	(3812, 237, 'Bas-Congo', 'BC', 1),
	(3813, 237, 'Bandundu', 'BN', 1),
	(3814, 237, 'Equateur', 'EQ', 1),
	(3815, 237, 'Katanga', 'KA', 1),
	(3816, 237, 'Kasai-Oriental', 'KE', 1),
	(3817, 237, 'Kinshasa', 'KN', 1),
	(3818, 237, 'Kasai-Occidental', 'KW', 1),
	(3819, 237, 'Maniema', 'MA', 1),
	(3820, 237, 'Nord-Kivu', 'NK', 1),
	(3821, 237, 'Orientale', 'OR', 1),
	(3822, 237, 'Sud-Kivu', 'SK', 1),
	(3823, 238, 'Central', 'CE', 1),
	(3824, 238, 'Copperbelt', 'CB', 1),
	(3825, 238, 'Eastern', 'EA', 1),
	(3826, 238, 'Luapula', 'LP', 1),
	(3827, 238, 'Lusaka', 'LK', 1),
	(3828, 238, 'Northern', 'NO', 1),
	(3829, 238, 'North-Western', 'NW', 1),
	(3830, 238, 'Southern', 'SO', 1),
	(3831, 238, 'Western', 'WE', 1),
	(3832, 239, 'Bulawayo', 'BU', 1),
	(3833, 239, 'Harare', 'HA', 1),
	(3834, 239, 'Manicaland', 'ML', 1),
	(3835, 239, 'Mashonaland Central', 'MC', 1),
	(3836, 239, 'Mashonaland East', 'ME', 1),
	(3837, 239, 'Mashonaland West', 'MW', 1),
	(3838, 239, 'Masvingo', 'MV', 1),
	(3839, 239, 'Matabeleland North', 'MN', 1),
	(3840, 239, 'Matabeleland South', 'MS', 1),
	(3841, 239, 'Midlands', 'MD', 1),
	(3861, 105, 'Campobasso', 'CB', 1),
	(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
	(3863, 105, 'Caserta', 'CE', 1),
	(3864, 105, 'Catania', 'CT', 1),
	(3865, 105, 'Catanzaro', 'CZ', 1),
	(3866, 105, 'Chieti', 'CH', 1),
	(3867, 105, 'Como', 'CO', 1),
	(3868, 105, 'Cosenza', 'CS', 1),
	(3869, 105, 'Cremona', 'CR', 1),
	(3870, 105, 'Crotone', 'KR', 1),
	(3871, 105, 'Cuneo', 'CN', 1),
	(3872, 105, 'Enna', 'EN', 1),
	(3873, 105, 'Ferrara', 'FE', 1),
	(3874, 105, 'Firenze', 'FI', 1),
	(3875, 105, 'Foggia', 'FG', 1),
	(3876, 105, 'Forli-Cesena', 'FC', 1),
	(3877, 105, 'Frosinone', 'FR', 1),
	(3878, 105, 'Genova', 'GE', 1),
	(3879, 105, 'Gorizia', 'GO', 1),
	(3880, 105, 'Grosseto', 'GR', 1),
	(3881, 105, 'Imperia', 'IM', 1),
	(3882, 105, 'Isernia', 'IS', 1),
	(3883, 105, 'L&#39;Aquila', 'AQ', 1),
	(3884, 105, 'La Spezia', 'SP', 1),
	(3885, 105, 'Latina', 'LT', 1),
	(3886, 105, 'Lecce', 'LE', 1),
	(3887, 105, 'Lecco', 'LC', 1),
	(3888, 105, 'Livorno', 'LI', 1),
	(3889, 105, 'Lodi', 'LO', 1),
	(3890, 105, 'Lucca', 'LU', 1),
	(3891, 105, 'Macerata', 'MC', 1),
	(3892, 105, 'Mantova', 'MN', 1),
	(3893, 105, 'Massa-Carrara', 'MS', 1),
	(3894, 105, 'Matera', 'MT', 1),
	(3895, 105, 'Medio Campidano', 'VS', 1),
	(3896, 105, 'Messina', 'ME', 1),
	(3897, 105, 'Milano', 'MI', 1),
	(3898, 105, 'Modena', 'MO', 1),
	(3899, 105, 'Napoli', 'NA', 1),
	(3900, 105, 'Novara', 'NO', 1),
	(3901, 105, 'Nuoro', 'NU', 1),
	(3902, 105, 'Ogliastra', 'OG', 1),
	(3903, 105, 'Olbia-Tempio', 'OT', 1),
	(3904, 105, 'Oristano', 'OR', 1),
	(3905, 105, 'Padova', 'PD', 1),
	(3906, 105, 'Palermo', 'PA', 1),
	(3907, 105, 'Parma', 'PR', 1),
	(3908, 105, 'Pavia', 'PV', 1),
	(3909, 105, 'Perugia', 'PG', 1),
	(3910, 105, 'Pesaro e Urbino', 'PU', 1),
	(3911, 105, 'Pescara', 'PE', 1),
	(3912, 105, 'Piacenza', 'PC', 1),
	(3913, 105, 'Pisa', 'PI', 1),
	(3914, 105, 'Pistoia', 'PT', 1),
	(3915, 105, 'Pordenone', 'PN', 1),
	(3916, 105, 'Potenza', 'PZ', 1),
	(3917, 105, 'Prato', 'PO', 1),
	(3918, 105, 'Ragusa', 'RG', 1),
	(3919, 105, 'Ravenna', 'RA', 1),
	(3920, 105, 'Reggio Calabria', 'RC', 1),
	(3921, 105, 'Reggio Emilia', 'RE', 1),
	(3922, 105, 'Rieti', 'RI', 1),
	(3923, 105, 'Rimini', 'RN', 1),
	(3924, 105, 'Roma', 'RM', 1),
	(3925, 105, 'Rovigo', 'RO', 1),
	(3926, 105, 'Salerno', 'SA', 1),
	(3927, 105, 'Sassari', 'SS', 1),
	(3928, 105, 'Savona', 'SV', 1),
	(3929, 105, 'Siena', 'SI', 1),
	(3930, 105, 'Siracusa', 'SR', 1),
	(3931, 105, 'Sondrio', 'SO', 1),
	(3932, 105, 'Taranto', 'TA', 1),
	(3933, 105, 'Teramo', 'TE', 1),
	(3934, 105, 'Terni', 'TR', 1),
	(3935, 105, 'Torino', 'TO', 1),
	(3936, 105, 'Trapani', 'TP', 1),
	(3937, 105, 'Trento', 'TN', 1),
	(3938, 105, 'Treviso', 'TV', 1),
	(3939, 105, 'Trieste', 'TS', 1),
	(3940, 105, 'Udine', 'UD', 1),
	(3941, 105, 'Varese', 'VA', 1),
	(3942, 105, 'Venezia', 'VE', 1),
	(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
	(3944, 105, 'Vercelli', 'VC', 1),
	(3945, 105, 'Verona', 'VR', 1),
	(3946, 105, 'Vibo Valentia', 'VV', 1),
	(3947, 105, 'Vicenza', 'VI', 1),
	(3948, 105, 'Viterbo', 'VT', 1),
	(3949, 222, 'County Antrim', 'ANT', 1),
	(3950, 222, 'County Armagh', 'ARM', 1),
	(3951, 222, 'County Down', 'DOW', 1),
	(3952, 222, 'County Fermanagh', 'FER', 1),
	(3953, 222, 'County Londonderry', 'LDY', 1),
	(3954, 222, 'County Tyrone', 'TYR', 1),
	(3955, 222, 'Cumbria', 'CMA', 1),
	(3956, 190, 'Pomurska', '1', 1),
	(3957, 190, 'Podravska', '2', 1),
	(3958, 190, 'Koroška', '3', 1),
	(3959, 190, 'Savinjska', '4', 1),
	(3960, 190, 'Zasavska', '5', 1),
	(3961, 190, 'Spodnjeposavska', '6', 1),
	(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
	(3963, 190, 'Osrednjeslovenska', '8', 1),
	(3964, 190, 'Gorenjska', '9', 1),
	(3965, 190, 'Notranjsko-kraška', '10', 1),
	(3966, 190, 'Goriška', '11', 1),
	(3967, 190, 'Obalno-kraška', '12', 1),
	(3968, 33, 'Ruse', '', 1),
	(3969, 101, 'Alborz', 'ALB', 1),
	(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
	(3971, 138, 'Aguascalientes', 'AG', 1),
	(3972, 222, 'Isle of Man', 'IOM', 1),
	(3973, 242, 'Andrijevica', '01', 1),
	(3974, 242, 'Bar', '02', 1),
	(3975, 242, 'Berane', '03', 1),
	(3976, 242, 'Bijelo Polje', '04', 1),
	(3977, 242, 'Budva', '05', 1),
	(3978, 242, 'Cetinje', '06', 1),
	(3979, 242, 'Danilovgrad', '07', 1),
	(3980, 242, 'Herceg-Novi', '08', 1),
	(3981, 242, 'Kolašin', '09', 1),
	(3982, 242, 'Kotor', '10', 1),
	(3983, 242, 'Mojkovac', '11', 1),
	(3984, 242, 'Nikšić', '12', 1),
	(3985, 242, 'Plav', '13', 1),
	(3986, 242, 'Pljevlja', '14', 1),
	(3987, 242, 'Plužine', '15', 1),
	(3988, 242, 'Podgorica', '16', 1),
	(3989, 242, 'Rožaje', '17', 1),
	(3990, 242, 'Šavnik', '18', 1),
	(3991, 242, 'Tivat', '19', 1),
	(3992, 242, 'Ulcinj', '20', 1),
	(3993, 242, 'Žabljak', '21', 1),
	(3994, 243, 'Belgrade', '00', 1),
	(3995, 243, 'North Bačka', '01', 1),
	(3996, 243, 'Central Banat', '02', 1),
	(3997, 243, 'North Banat', '03', 1),
	(3998, 243, 'South Banat', '04', 1),
	(3999, 243, 'West Bačka', '05', 1),
	(4000, 243, 'South Bačka', '06', 1),
	(4001, 243, 'Srem', '07', 1),
	(4002, 243, 'Mačva', '08', 1),
	(4003, 243, 'Kolubara', '09', 1),
	(4004, 243, 'Podunavlje', '10', 1),
	(4005, 243, 'Braničevo', '11', 1),
	(4006, 243, 'Šumadija', '12', 1),
	(4007, 243, 'Pomoravlje', '13', 1),
	(4008, 243, 'Bor', '14', 1),
	(4009, 243, 'Zaječar', '15', 1),
	(4010, 243, 'Zlatibor', '16', 1),
	(4011, 243, 'Moravica', '17', 1),
	(4012, 243, 'Raška', '18', 1),
	(4013, 243, 'Rasina', '19', 1),
	(4014, 243, 'Nišava', '20', 1),
	(4015, 243, 'Toplica', '21', 1),
	(4016, 243, 'Pirot', '22', 1),
	(4017, 243, 'Jablanica', '23', 1),
	(4018, 243, 'Pčinja', '24', 1),
	(4019, 243, 'Kosovo', 'KM', 1),
	(4020, 245, 'Bonaire', 'BO', 1),
	(4021, 245, 'Saba', 'SA', 1),
	(4022, 245, 'Sint Eustatius', 'SE', 1),
	(4023, 248, 'Central Equatoria', 'EC', 1),
	(4024, 248, 'Eastern Equatoria', 'EE', 1),
	(4025, 248, 'Jonglei', 'JG', 1),
	(4026, 248, 'Lakes', 'LK', 1),
	(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
	(4028, 248, 'Unity', 'UY', 1),
	(4029, 248, 'Upper Nile', 'NU', 1),
	(4030, 248, 'Warrap', 'WR', 1),
	(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
	(4032, 248, 'Western Equatoria', 'EW', 1);
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;


-- Dumping structure for table zara.zone_to_geo_zone
DROP TABLE IF EXISTS `zone_to_geo_zone`;
CREATE TABLE IF NOT EXISTS `zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- Dumping data for table zara.zone_to_geo_zone: 2 rows
DELETE FROM `zone_to_geo_zone`;
/*!40000 ALTER TABLE `zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
	(57, 222, 0, 3, '2010-02-26 22:33:24', '0000-00-00 00:00:00'),
	(65, 222, 0, 4, '2010-12-15 15:18:13', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `zone_to_geo_zone` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
