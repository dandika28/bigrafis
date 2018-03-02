-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.16-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5138
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for big
CREATE DATABASE IF NOT EXISTS `big` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `big`;

-- Dumping structure for table big.company
CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `address` text,
  `status` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table big.company: ~2 rows (approximately)
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` (`company_id`, `name`, `address`, `status`) VALUES
	(1, 'PT. ABC Indonesia', 'Jl. Merpati Raya No.12, Jakarta Pusat, Indonesia', 1),
	(2, 'PT. ZXY Indoesia', 'Jl. Merapi No.1, Jakarta Timur, Indonesia', 1);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;

-- Dumping structure for table big.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) DEFAULT '0',
  `customer_contact` varchar(100) DEFAULT '0',
  `customer_address` varchar(200) DEFAULT '0',
  `customer_phone` varchar(20) DEFAULT '0',
  `customer_email` varchar(50) DEFAULT '0',
  `customer_fax` varchar(20) DEFAULT '0',
  `customer_city` varchar(20) DEFAULT '0',
  `customer_country` varchar(20) DEFAULT '0',
  `customer_kode` varchar(20) DEFAULT '0',
  `customer_postal` varchar(7) DEFAULT '0',
  `created_by` varchar(10) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`),
  KEY `customer_name` (`customer_name`),
  KEY `customer_kode` (`customer_kode`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table big.customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`id`, `customer_name`, `customer_contact`, `customer_address`, `customer_phone`, `customer_email`, `customer_fax`, `customer_city`, `customer_country`, `customer_kode`, `customer_postal`, `created_by`, `modified_at`) VALUES
	(1, 'CV Smartlink Success', 'Miss. Saridah', 'Komp. Mega Jaya Industri Park B No 06', '6666', 'saridah@smartlinksuccess.com', '7777777', 'Batam', 'Indonesia', '00001', '10220', '1', '2018-01-28 20:35:20');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table big.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table big.groups: ~8 rows (approximately)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `name`, `description`) VALUES
	(1, 'admin', 'Administrator'),
	(2, 'members', 'General User'),
	(3, 'production', 'group production'),
	(4, 'sales', 'sales and marketing'),
	(5, 'gudang', 'gudang'),
	(6, 'hrd', 'human resource'),
	(7, 'general Affairs', 'GA'),
	(8, 'operator mesin', 'operator mesin');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- Dumping structure for table big.groups_header
CREATE TABLE IF NOT EXISTS `groups_header` (
  `id_header_menu` int(11) NOT NULL,
  `id_groups` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table big.groups_header: ~8 rows (approximately)
/*!40000 ALTER TABLE `groups_header` DISABLE KEYS */;
INSERT INTO `groups_header` (`id_header_menu`, `id_groups`) VALUES
	(0, 1),
	(1, 1),
	(1, 2),
	(1, 7),
	(1, 6),
	(1, 8),
	(1, 3),
	(1, 4);
/*!40000 ALTER TABLE `groups_header` ENABLE KEYS */;

-- Dumping structure for table big.groups_menu
CREATE TABLE IF NOT EXISTS `groups_menu` (
  `id_groups` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table big.groups_menu: ~81 rows (approximately)
/*!40000 ALTER TABLE `groups_menu` DISABLE KEYS */;
INSERT INTO `groups_menu` (`id_groups`, `id_menu`) VALUES
	(1, 83),
	(2, 83),
	(1, 85),
	(1, 92),
	(1, 94),
	(1, 96),
	(1, 93),
	(1, 101),
	(2, 101),
	(1, 102),
	(2, 102),
	(1, 104),
	(2, 104),
	(1, 105),
	(2, 105),
	(1, 108),
	(2, 108),
	(1, 109),
	(2, 109),
	(1, 110),
	(2, 110),
	(1, 111),
	(2, 111),
	(1, 112),
	(2, 112),
	(1, 113),
	(1, 114),
	(1, 115),
	(1, 116),
	(1, 117),
	(1, 118),
	(1, 119),
	(1, 120),
	(1, 121),
	(1, 122),
	(1, 123),
	(2, 123),
	(1, 124),
	(1, 125),
	(1, 127),
	(1, 128),
	(5, 128),
	(1, 129),
	(5, 129),
	(8, 124),
	(3, 124),
	(3, 125),
	(8, 127),
	(3, 127),
	(1, 130),
	(6, 130),
	(3, 130),
	(1, 131),
	(7, 131),
	(2, 131),
	(3, 131),
	(4, 131),
	(1, 132),
	(7, 132),
	(5, 132),
	(6, 132),
	(2, 132),
	(3, 132),
	(4, 132),
	(7, 83),
	(5, 83),
	(6, 83),
	(3, 83),
	(4, 83),
	(5, 122),
	(3, 122),
	(4, 122),
	(5, 131),
	(6, 131),
	(7, 113),
	(6, 113),
	(6, 125),
	(4, 125),
	(1, 133),
	(7, 133),
	(5, 133);
/*!40000 ALTER TABLE `groups_menu` ENABLE KEYS */;

-- Dumping structure for table big.gudang
CREATE TABLE IF NOT EXISTS `gudang` (
  `gudang_id` int(11) NOT NULL AUTO_INCREMENT,
  `gudang_name` varchar(50) DEFAULT '0',
  `desc` varchar(50) DEFAULT '0',
  `created_by` varchar(5) DEFAULT '0',
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `gudang_id` (`gudang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table big.gudang: ~3 rows (approximately)
/*!40000 ALTER TABLE `gudang` DISABLE KEYS */;
INSERT INTO `gudang` (`gudang_id`, `gudang_name`, `desc`, `created_by`, `modified_at`) VALUES
	(1, 'WIP', 'Work In Progress', '1', '2018-01-28 17:49:36'),
	(2, 'Finish Good', 'Selesai', '1', '2018-01-28 17:50:46'),
	(3, 'Raw meterial', 'gudang bahan baku metrial', '1', '2018-01-28 20:45:05');
/*!40000 ALTER TABLE `gudang` ENABLE KEYS */;

-- Dumping structure for table big.header_menu
CREATE TABLE IF NOT EXISTS `header_menu` (
  `id_header_menu` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL,
  `header` varchar(50) NOT NULL,
  PRIMARY KEY (`id_header_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table big.header_menu: ~0 rows (approximately)
/*!40000 ALTER TABLE `header_menu` DISABLE KEYS */;
INSERT INTO `header_menu` (`id_header_menu`, `sort`, `header`) VALUES
	(1, 1, 'MAIN NAVIGATION');
/*!40000 ALTER TABLE `header_menu` ENABLE KEYS */;

-- Dumping structure for table big.login_attempts
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table big.login_attempts: ~0 rows (approximately)
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;

-- Dumping structure for table big.material
CREATE TABLE IF NOT EXISTS `material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` int(11) DEFAULT '0',
  `material_name` varchar(200) DEFAULT '0',
  `satuan` varchar(20) DEFAULT '0',
  `gudang_id` varchar(2) DEFAULT '0',
  `created_by` varchar(10) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category_id` int(11) DEFAULT NULL,
  `harga_satuan` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `kode` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=latin1;

-- Dumping data for table big.material: ~264 rows (approximately)
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` (`id`, `kode`, `material_name`, `satuan`, `gudang_id`, `created_by`, `modified_at`, `category_id`, `harga_satuan`) VALUES
	(1, 2000039, 'BSD BLANKO BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(2, 1000121, 'BUKU TABUNGAN', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(3, 3028, 'Cairan Anti Skinning', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(4, 2001, 'Cemani Toka Best One Emblem Process Black M', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(5, 2002, 'Cemani Toka Best One Emblem Process Cyan M', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(6, 2003, 'Cemani Toka Best One Emblem Process Magenta M', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(7, 2004, 'Cemani Toka Best One Emblem Process Yellow M', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(8, 2010, 'Cemani Toka Dus Olive Red', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(9, 2081, 'Cemani Toka Gold TC 6209', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(10, 2017, 'Cemani Toka High Gloss OPV', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(11, 2009, 'Cemani Toka Silver TC 6409', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(12, 2079, 'Cemani Toka TC 0001 Medium', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(13, 2007, 'Cemani Toka TC 0105 Medium Yellow', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(14, 2033, 'Cemani Toka TC 1005 Red', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(15, 2020, 'Cemani Toka TC 1105 Bronze Red', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(16, 2018, 'Cemani Toka TC 1415 Red', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(17, 2039, 'CEMANI TOKA TC 1705 DEEP RED', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(18, 2044, 'Cemani Toka TC 2606 Violet', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(19, 2036, 'Cemani Toka TC 2909 Dark Blue', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(20, 2008, 'Cemani Toka TC 3005 Reflex Blue', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(21, 2012, 'Cemani Toka TC 4005 Green', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(22, 2114, 'Cemani Toka TC 6207 Gold', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(23, 2030, 'Cemani Toka TC 7000 White ', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(24, 2000014, 'CIREBON BLANKO BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(25, 5065, 'Cito Dynamic 0.5 x 1.3', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(26, 5025, 'Cito Dynamic 0.5x1.2', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(27, 5129, 'Cito Dynamic Pro ry 0.5 x 1.5', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(28, 2120, 'CK0001_UV 3679 OLIVE BLUE ', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(29, 2056, 'CM 0091 Ayu Warm Sunflower Orange', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(30, 2057, 'CM 0092 Ayu Lovely Rose Magenta', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(31, 2040, 'CM 0093 Ayu Sweet Orchid Purple', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(32, 2041, 'CM 0094 Ayu Relaxing Jasmine Green', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(33, 2042, 'CM 0095 Ayu Nostalgic Lily Cyan', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(34, 2051, 'CM 0097 CITRUS P 186 C RED', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(35, 2052, 'CM 0098 CITRUS P 300 C BLUE', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(36, 2053, 'CM 0099 CITRUS P 362 C GREEN', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(37, 2058, 'CM 0108 Kris P 124 C Yellow', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(38, 2059, 'CM 0109 Kris P 2935 C Blue', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(39, 2060, 'CM 0110 Kris P Warm Red C', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(40, 2061, 'CM 0111 Kris P 375 C Green', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(41, 2062, 'CM 0112 Kris P 267 C Purple', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(42, 2063, 'CM 0113 Kris P 266 C Purple', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(43, 2064, 'CM 0114 Kris P Rhodamine Red', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(44, 2065, 'CM 0115 Kris P 312 C Blue', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(45, 2066, 'CM 0116 Kris P 137 C Orange', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(46, 2074, 'CM 0138 Medisoft Red', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(47, 2075, 'CM 0139 Medisoft Blue', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(48, 2077, 'CM 0156 Medisoft P 193 C Red', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(49, 2084, 'CM 0284 KRIS P 107 C YELLOW', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(50, 2085, 'CM 0285 KRIS P 1235 C DEEP YELLOW', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(51, 2086, 'CM 0286 KRIS P 237 C PINK', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(52, 2087, 'CM 0287 KRIS P 233 C MAGENTA', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(53, 2082, 'CM 0288 KRIS P 7451 C LIGHT BLUE', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(54, 2083, 'CM 0289 KRIS P 2728 C BLUE', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(55, 2092, 'CM 0371 DUS BOLU STRAWBERY RED', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(56, 2093, 'CM 0372 DUS BOLU STRAWBERY PINK', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(57, 2094, 'CM 0373 DUS PANDAN GREEN', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(58, 2095, 'CM 0374 DUS PANDAN L. GREEN', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(59, 2096, 'CM 0375 DUS COKLAT BROWN', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(60, 2097, 'CM 0376 DUS COKLAT L. BROWN', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(61, 2112, 'CM 0458 SEHAT P 219 C PINK', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(62, 2113, 'CM 0459 SEHAT P 2925 C BLUE', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(63, 2116, 'CM 0487 IVR BLUE P 293 C', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(64, 2122, 'CM 0546 SBN AYU P 3005 C BLUE', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(65, 2126, 'CM 0570 LIPSTIK 81 BROWN', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(66, 2127, 'CM 0571 LIPSTIK 85 RED', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(67, 2128, 'CM 0572 LIPSTIK 86 BROWN', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(68, 2129, 'CM 0573 LIPSTIK 89 RED', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(69, 2130, 'CM 0574 LIPSTIK 90 BROWN', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(70, 2103, 'CM 420 SEHAT JUNIOR NEW P 1795 C RED', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(71, 2104, 'CM 421 SEHAT JUNIOR NEW P 185 C RED', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(72, 2110, 'CM 422 JUNIOR NEW P 485 C RED', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(73, 1000025, 'COL HANGER 12/24', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(74, 5002, 'Corrector', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(75, 5071, 'CREASING RULE / PISAU BIASA', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(76, 5017, 'Cutting Stik DQ 20 Uk 2x2x93', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(77, 2071, 'Daicure Proc. Black', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(78, 2070, 'Daicure Proc. Cyan', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(79, 2069, 'Daicure Proc. Yellow', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(80, 2098, 'DAICURE SL PV 084 CYAN H', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(81, 2101, 'DAICURE SL PV 098 BLACK H', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(82, 2105, 'Daicure SL PV 708 White H', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(83, 2099, 'DAICURE SL PV PROCESS MAGENTA', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(84, 2100, 'DAICURE SL PV PROCESS YELLOW H ', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(85, 2000015, 'Denpasar Blanko BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(86, 5023, 'Developer 14', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(87, 5080, 'DIECUT AL JAMELAH 20 UPS', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(88, 1000140, 'DOOS HI MATTE LIP CREAM ', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(89, 1000153, 'DOOS LIPSTIK CM REJU NEW 1 81', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(90, 1000150, 'DOOS LIPSTIK CM REJU NEW 1 84', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(91, 1000154, 'DOOS LIPSTIK CM REJU NEW 1 85', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(92, 1000156, 'DOOS LIPSTIK CM REJU NEW 1 86', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(93, 1000151, 'DOOS LIPSTIK CM REJU NEW 1 88', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(94, 1000146, 'DOOS LIPSTIK CM REJU NEW 1 89', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(95, 1000155, 'DOOS LIPSTIK CM REJU NEW 1 90', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(96, 1000157, 'DOOS MATTE POWDER HYDRA SERIES', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(97, 1000141, 'DOOS SBN BNGK+WHITENING 90GCSP', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(98, 1000098, 'DORA BEAUTY SOAP 50  GR-WHITE ', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(99, 1120, 'Duplex 250 gr 85 x 120', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(100, 1075, 'Duplex 250gr 65x95', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(101, 1062, 'Duplex 270gr 72x102', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(102, 1087, 'Duplex 270gr 79x109', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(103, 1085, 'Duplex 270gr 85x120', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(104, 1118, 'Duplex 270gr 90 x 120', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(105, 1145, 'DUPLEX 310 85 x 120', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(106, 1074, 'Duplex 310gr 56x79', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(107, 1018, 'Duplex 310gr 72x102', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(108, 1009, 'Duplex 310gr 79x109', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(109, 1133, 'Duplex 310gr 85 x 120 ', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(110, 1043, 'Duplex 310gr 90x120', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(111, 1124, 'Duplex 350gr 109 x 79 ', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(112, 1153, 'Duplex 400gr 90X120', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(113, 1140, 'DUPLEX DGB 300g 79 x 109 cm', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(114, 1073, 'Duplex310gr 112x79', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(115, 1000142, 'DUS BLACK FOREST 418gr', '', '2', '1', '2018-01-28 21:53:26', 11, NULL),
	(116, 1000143, 'DUS SPONGE COKLAT 400gr', '', '2', '1', '2018-01-28 21:53:26', 11, NULL),
	(117, 1000144, 'DUS SPONGE PANDAN 400gr', '', '2', '1', '2018-01-28 21:53:26', 11, NULL),
	(118, 1000145, 'DUS SPONGE VANILLA 400gr', '', '2', '1', '2018-01-28 21:53:26', 11, NULL),
	(119, 1000085, 'ESM AYU BLUE 80G', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(120, 1000020, 'ESM AYU PINK 80GR', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(121, 1000084, 'ESM AYU VIOLLET 80G', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(122, 1000021, 'ESM AYU YELLOW 80GR', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(123, 1000028, 'ESM CITRUS 80G LEMON', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(124, 1000027, 'ESM CITRUS 80G LIME', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(125, 1000051, 'ESM KRIS BLUE 80G EXPORT', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(126, 1000002, 'ESM KRIS BLUE ARAB', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(127, 1000061, 'ESM KRIS GREEN ARAB', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(128, 1000092, 'ESM KRIS HAITI BLUE', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(129, 1000094, 'ESM KRIS HAITI PINK', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(130, 1000093, 'ESM KRIS HAITI YELLOW', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(131, 1000138, 'ESM KRIS HEALTHY BLUE 80 GR', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(132, 1000005, 'ESM KRIS PINK 80G EXPORT', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(133, 1000050, 'ESM KRIS VIOLET 80G EXPORT', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(134, 1000004, 'ESM KRIS VIOLET ARAB', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(135, 1000052, 'ESM KRIS YELLOW 80G EXPORT', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(136, 1000062, 'ESM KRIS YELLOW ARAB', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(137, 1000006, 'ESM MEDISOFT REG 90GR', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(138, 1000112, 'ESM SEHAT JUNIOR RED 80GR ', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(139, 1000007, 'ESM SEHAT PERISAI BLUE 80G', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(140, 1000008, 'ESM SEHAT PERISAI RED 80GR', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(141, 1000128, 'ESM SEHAT PRISAI PINK 80GR', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(142, 1000135, 'ETIKET ARES MIND 12 HLP-IVORY 230 GR ', '', '2', '1', '2018-01-28 21:53:26', 10, NULL),
	(143, 1000124, 'FB BDL PAPAYA 60 GR (OVAL)', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(144, 1000125, 'FB BDL PPY BRIGHTENING SOAP 128 GR ', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(145, 1111, '6 Biru Hologram H-Mind (64X240 M _ TC 2909 HE 600)', '', '3', '1', '2018-01-28 21:53:26', 6, NULL),
	(146, 1110, '6 Biru Hologram H-Mind 120 Meter', '', '3', '1', '2018-01-28 21:53:26', 6, NULL),
	(147, 1155, '6 GOLD 13 60 x 120 m', '', '3', '1', '2018-01-28 21:53:26', 6, NULL),
	(148, 3042, 'Fountain 511', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(149, 3002, 'Fountain Solution', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(150, 3003, 'Gum 14', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(151, 5024, 'Gum Unifin', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(152, 2000016, 'HEAD OFFICE_ BLANKO BRINS', '', '3', '1', '2018-01-28 21:53:26', 8, NULL),
	(153, 1000109, 'ICE COVE LID COVER ', '', '3', '1', '2018-01-28 21:53:26', 11, NULL),
	(154, 5033, 'INK 6 SM 102', '', '3', '1', '2018-01-28 21:53:26', 6, NULL),
	(155, 1000120, 'INNER BOX FOM POWDER ', '', '2', '1', '2018-01-28 21:53:26', 11, NULL),
	(156, 3023, 'IPA Printing', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(157, 1081, 'Ivory 210gr 102 x 72', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(158, 1109, 'IVORY 230 72 X 111 ', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(159, 1094, 'IVORY 230 79 X 109', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(160, 1097, 'Ivory 250gr 109x79', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(161, 1077, 'Ivory 250gr 70x100', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(162, 1142, 'IVORY 270 Gr 79 x 109', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(163, 1150, 'IVORY 300gsm 65 x 100', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(164, 1014, 'Ivory 350gr 65x100', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(165, 1055, 'Ivory 350gr 79x109', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(166, 1128, 'Ivory Foopack 265 Gsm 79 x 109', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(167, 1125, 'Ivory IB 240 gsm 109 X 79', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(168, 1141, 'IVORY IB 250 gr 108,5 x 79', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(169, 1103, 'Ivory IB 250 gr 64 x 97,5', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(170, 1119, 'Ivory IB 250 gr 70 x 100 ', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(171, 1117, 'Ivory IB 250gr 61 x 100', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(172, 1138, 'IVORY IP 230 72 x 113', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(173, 1126, 'Ivory VA 240 gsm 79 x 109', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(174, 1162, 'Ivory VA 250 gsm 109 x 79', '', '3', '1', '2018-01-28 21:53:26', 1, NULL),
	(175, 2000017, 'JAYAPURA BLANKO BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(176, 1000087, 'KAMUS ARAB INDONESIA', '', '2', '1', '2018-01-28 21:53:26', 12, NULL),
	(177, 5027, 'KANAL DAISO G-TAPE 0410', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(178, 4018, 'Karet Gelang', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(179, 5044, 'Karet Pond', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(180, 4005, 'Karton Box Double Wall', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(181, 4023, 'KARTON BOX KFC K125/M125/M125', '', '3', '1', '2018-01-28 21:53:26', 4, NULL),
	(182, 4008, 'Karton Box 10 45 x 26 x 32', '', '3', '1', '2018-01-28 21:53:26', 4, NULL),
	(183, 1000023, 'KOTAK CAMELIA EDT 103', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(184, 4003, 'Lakban Coklat', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(185, 1167, '13 DOF 15 micron 50x4000m ', '', '3', '1', '2018-01-28 21:53:26', 13, NULL),
	(186, 1156, '13 DOF 15 micron 53x4000m', '', '3', '1', '2018-01-28 21:53:26', 13, NULL),
	(187, 1169, '13 DOFF THERMAL 18 Mic 65cm x 3000m', '', '3', '1', '2018-01-28 21:53:26', 13, NULL),
	(188, 1137, '13 SILVER POLOS 0,8M X 5000M', '', '3', '1', '2018-01-28 21:53:26', 13, NULL),
	(189, 1000159, 'LAYER DOOS LIPSTIK CM ', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(190, 1152, 'Lem Klise ', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(191, 3032, 'Lem Korea G', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(192, 3041, 'Lem Metalizze PET SA 716', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(193, 3048, 'Lem Metalizze/Laminating PET SA 716', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(194, 3039, 'LEM OPP', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(195, 3047, 'LEM SA 780', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(196, 5006, 'Lem Super Seal 258', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(197, 4007, 'Lem Superseal 217', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(198, 5084, 'LEM VAP 901 UV VARNISH ', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(199, 1000132, 'LUSIN 12 FULL COL.HANGER MODEL TARIK (LOCAL) 18,0X9,3X1,1 CM', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(200, 1000147, 'M BOX HI MATTE (12 PCS) DUPLEX ', '', '3', '1', '2018-01-28 21:53:26', 4, NULL),
	(201, 5030, 'Majun', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(202, 2000025, 'MALANG BLANKO BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(203, 2000026, 'MANADO BLANKO BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(204, 2000027, 'MEDAN BLANKO BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(205, 3037, 'N-contex', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(206, 2107, 'New Cahaya Proses Cyan', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(207, 2109, 'New Cahaya Proses Yellow', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(208, 3014, 'New Mol Kain Roll Air Web', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(209, 3034, 'Oil Meditran s sae 40', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(210, 1000011, 'OLIVE HERBAL 150 GR', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(211, 1000010, 'OLIVE RED 125 GR', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(212, 1000013, 'OLIVE SABUN 70 GREEN', '', '2', '1', '2018-01-28 21:53:26', 9, NULL),
	(213, 1000104, 'OUTERPACK AXIS HITZ ', '', '2', '1', '2018-01-28 21:53:26', 5, NULL),
	(214, 1000082, 'OUTERPACK XL', '', '2', '1', '2018-01-28 21:53:26', 5, NULL),
	(215, 2000028, 'PADANG BLANKO BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(216, 2000029, 'PALEMBANG BLANKO BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(217, 1000131, 'PAPER 24 FULL COL.KIKO P.HANGER U.18,3X18X1,2CM', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(218, 1000097, 'Paper Tray (18,5 x 11,5 x 3,6 cm)', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(219, 3007, 'Pastapur', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(220, 5073, 'PISAU NEW SEHAT PERISAI 20 UPS', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(221, 5046, 'PISAU POND BOLU 1 UPS', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(222, 5047, 'PISAU POND HAPPY CONETARO 54 UPS', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(223, 5053, 'PISAU POND SIMPATI 4G VIKING', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(224, 5074, 'PISAU SABUN SEHAT JUNIOR 20 UPS', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(225, 5077, 'PISO BDL PAPAYA 128 GR MASS 18 Ups', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(226, 5076, 'PISO BDL PAPAYA 60GR MASS 15 Ups', '', '3', '1', '2018-01-28 21:53:26', 5, NULL),
	(227, 2000031, 'PK.BARU BLANKO  BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(228, 4009, 'Plastik PE Roll 100 x 60 (10)', '', '3', '1', '2018-01-28 21:53:26', 4, NULL),
	(229, 5003, '14 Cleaner', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(230, 5015, '14 CTP 1030 x 770', '', '3', '1', '2018-01-28 21:53:26', 14, NULL),
	(231, 5016, '14 CTP 1030 x 790', '', '3', '1', '2018-01-28 21:53:26', 14, NULL),
	(232, 5019, '14 CTP 400 x 510', '', '3', '1', '2018-01-28 21:53:26', 14, NULL),
	(233, 5022, '14 CTP 459 x 525', '', '3', '1', '2018-01-28 21:53:26', 14, NULL),
	(234, 5092, '14 CTP 795 x 1050 x 0.3', '', '3', '1', '2018-01-28 21:53:26', 14, NULL),
	(235, 5032, '14 CTP Blackwood 1030 x 770', '', '3', '1', '2018-01-28 21:53:26', 14, NULL),
	(236, 4011, '14 Still Band', '', '3', '1', '2018-01-28 21:53:26', 14, NULL),
	(237, 2000032, 'PONTIANAK BLANKO BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(238, 5099, 'Preon + Tabung R 134-13 KG', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(239, 2000040, 'RAWAMANGUN BLANKO BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(240, 3026, 'RW002 - UV Roller Wash', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(241, 3008, 'RWA Roll Cleaner', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(242, 2000033, 'S.MAMPANG BLANKO BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(243, 2067, 'SBN Sehat Blue P 286 C', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(244, 2000034, 'SEMARANG BLANKO BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(245, 3009, 'Spare Gum', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(246, 3010, 'Sponge Viskovita', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(247, 3011, 'Spray Powder', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(248, 4001, 'Stretch Film', '', '3', '1', '2018-01-28 21:53:26', 4, NULL),
	(249, 3020, 'SUMA UV Coating L2', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(250, 2000036, 'SURABAYA BLANKO BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL),
	(251, 2118, 'TC 0615 CF ORANGE', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(252, 2102, 'TC 0615 Orange', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(253, 2043, 'TC 2005 Rhodamine Red', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(254, 2111, 'TC 4005 GREEN ', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(255, 3033, 'TC Reducer', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(256, 2117, 'TINTA KFC ND RED - W', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(257, 2045, 'UV LC Process Black', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(258, 2047, 'UV LC Process Magenta ', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(259, 2049, 'UV LC Process Yellow', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(260, 3038, 'VERNISH MFU 3581S (SUMA)', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(261, 3019, 'Water Base BC PR 77 Oil', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(262, 3031, 'WB In Line (HPR-IL)', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(263, 3040, 'WB SUPER RUB', '', '3', '1', '2018-01-28 21:53:26', 3, NULL),
	(264, 2000037, 'YOGYAKARTA BLANKO BRINS', '', '2', '1', '2018-01-28 21:53:26', 8, NULL);
/*!40000 ALTER TABLE `material` ENABLE KEYS */;

-- Dumping structure for table big.material_category
CREATE TABLE IF NOT EXISTS `material_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material_category_name` varchar(50) DEFAULT '0',
  `createdby` varchar(20) DEFAULT '0',
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table big.material_category: ~14 rows (approximately)
/*!40000 ALTER TABLE `material_category` DISABLE KEYS */;
INSERT INTO `material_category` (`id`, `material_category_name`, `createdby`, `modified_at`) VALUES
	(1, 'kertas', '1', '2018-02-10 20:57:12'),
	(2, 'tinta', '1', '2018-02-10 20:57:15'),
	(3, 'chemical', '1', '2018-02-10 20:57:24'),
	(4, 'packing', '1', '2018-02-10 20:57:31'),
	(5, 'others', '1', '2018-02-10 20:57:34'),
	(6, 'foil', '1', '2018-02-19 21:16:41'),
	(7, 'lem', '1', '2018-02-19 21:16:53'),
	(8, 'stationary', '1', '2018-02-19 21:17:25'),
	(9, 'toiletris', '1', '2018-02-19 21:17:41'),
	(10, 'rokok', '1', '2018-02-19 21:17:57'),
	(11, 'food', '1', '2018-02-19 21:18:02'),
	(12, 'book', '1', '2018-02-19 21:30:46'),
	(13, 'laminasi', '1', '2018-02-19 21:31:20'),
	(14, 'plate', '1', '2018-02-19 21:32:29');
/*!40000 ALTER TABLE `material_category` ENABLE KEYS */;

-- Dumping structure for table big.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL,
  `id_header_menu` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `url` varchar(150) NOT NULL,
  `menu_id` varchar(150) NOT NULL,
  `level_one` int(11) NOT NULL DEFAULT '0',
  `level_two` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

-- Dumping data for table big.menu: ~26 rows (approximately)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id_menu`, `sort`, `id_header_menu`, `label`, `icon`, `url`, `menu_id`, `level_one`, `level_two`) VALUES
	(83, 1, 1, 'Dashboard', 'dashboard', 'crud/index', '', 0, 0),
	(85, 2, 1, 'Access', 'lock', '#', '', 0, 0),
	(92, 3, 1, 'Menu Management', 'bars', 'crud/header_menu', 'menu-menu', 0, 0),
	(93, 4, 1, 'Settings', 'gears', 'crud/settings', '', 0, 0),
	(94, 1, 1, 'Users', 'angle-right', 'crud/users', '', 85, 0),
	(96, 3, 1, 'Groups', 'angle-right', 'crud/groups', '', 85, 0),
	(113, 5, 1, 'Mesin Management', 'gear', '#', '5', 0, 0),
	(114, 1, 1, 'Tambah Mesin', 'angle-right', 'product/mesin', '1', 113, 0),
	(115, 2, 1, 'Mesin Category', 'angle-right', 'product/mesin_category', '2', 113, 0),
	(116, 6, 1, 'Product Management', 'database', '#', '6', 0, 0),
	(117, 1, 1, 'Product Category', 'angle-right', 'product/product_category', '1', 116, 0),
	(118, 2, 1, 'Tambah Product', 'angle-right', 'product/product', '', 116, 0),
	(119, 7, 1, 'Material', 'book', '#', '7', 0, 0),
	(120, 8, 1, 'Gudang', 'wrench', 'product/gudang', '8', 0, 0),
	(121, 9, 1, 'Customer', 'user', 'Customer/customer', '9', 0, 0),
	(122, 3, 1, 'Purchase Order', 'shopping-cart', '#', '3', 0, 0),
	(123, 1, 1, 'Purchase Order Receive', 'angle-right', 'Purchase/purchase_order', '1', 122, 0),
	(124, 4, 1, 'SPK', 'play', '#', '4', 0, 0),
	(125, 1, 1, 'SPK Produksi (Induk)', 'angle-right', 'Purchase/spk_induk', '23', 124, 0),
	(127, 3, 1, 'SPK Proses Mesin', 'angle-right', 'Purchase/spk_proses_mesin', '3', 124, 0),
	(128, 1, 1, 'Material Category', 'angle-right', 'product/material_category', '1', 119, 0),
	(129, 2, 1, 'Material Master Data', 'angle-right', 'product/material', '2', 119, 0),
	(130, 3, 1, 'Operator Mesin', 'angle-right', 'Product/operatormesin', '3', 113, 0),
	(131, 12, 1, 'Report', 'file', '#', '12', 0, 0),
	(132, 1, 1, 'Report mesin', 'angle-right', 'report/mesinreport', '1', 131, 0),
	(133, 6, 1, 'Nota Transfer', 'bell', 'nota', '6', 0, 0);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Dumping structure for table big.mesin
CREATE TABLE IF NOT EXISTS `mesin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesin_name` varchar(50) DEFAULT NULL,
  `mesin_type` varchar(50) DEFAULT NULL,
  `desc` text,
  `created_by` varchar(10) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Dumping data for table big.mesin: ~27 rows (approximately)
/*!40000 ALTER TABLE `mesin` DISABLE KEYS */;
INSERT INTO `mesin` (`id`, `mesin_name`, `mesin_type`, `desc`, `created_by`, `modified_at`) VALUES
	(1, 'MESIN CD 6 WARNA', '1', '<p>MEREK NYA MESIN CD 6 WARNA</p>\r\n', '1', '2018-01-20 04:28:17'),
	(2, 'MESIN SM 8 WARNA', '1', '<p>MESIN SM 8 WARNA</p>\r\n', '1', '2018-01-20 04:31:22'),
	(3, 'MESIN SM 5 WARNA', '1', '<p>MESIN SM 5 WARNA</p>\r\n', '1', '2018-01-20 04:31:50'),
	(4, 'UV/WB COATING HUAWEI', '2', '<p>UV/WB COATING HUAWEI</p>\r\n', '1', '2018-01-20 04:32:18'),
	(5, 'WB COATING TIGER CHEN', '2', '<p>WB COATING TIGER CHEN</p>\r\n', '1', '2018-01-20 04:33:15'),
	(6, 'UV/WB KECIL', '2', NULL, '1', '2018-01-20 04:33:43'),
	(7, 'SPOT UV CINA', '2', '<p>CINA</p>\r\n', '1', '2018-01-20 04:34:05'),
	(8, 'MESIN SM 2 WARNA', '1', '<p>mesin sm 2 warna</p>\r\n', '1', '2018-02-09 22:55:13'),
	(9, 'MESIN SM 1 WARNA', '1', '<p>MESIN SM 1 WARNA</p>\r\n', '1', '2018-02-09 22:55:35'),
	(10, 'MESIN GTO 4 WARNA', '1', '<p>GTO 4 WARNA</p>\r\n', '1', '2018-02-09 22:55:54'),
	(11, 'HOT FOIL - 1', '2', '<p>HOT FOIL - 1</p>\r\n', '1', '2018-02-09 22:57:57'),
	(12, 'HOT FOIL - 2', '2', '<p>HOT FOIL - 2</p>\r\n', '1', '2018-02-09 22:58:16'),
	(13, 'HOT FOIL - 3', '2', '<p>HOT FOIL - 3</p>\r\n', '1', '2018-02-09 22:58:28'),
	(14, 'HOT FOIL - 4', '2', '<p>HOT FOIL - 4</p>\r\n', '1', '2018-02-09 22:58:42'),
	(15, 'HOT FOIL - 5', '2', '<p>HOT FOIL - 5</p>\r\n', '1', '2018-02-09 22:59:07'),
	(16, 'DIE CUT - 1', '8', '<p>DIE CUT - 1</p>\r\n', '1', '2018-02-09 22:59:49'),
	(17, 'DIE CUT - 2', '8', '<p>DIE CUT - 2</p>\r\n', '1', '2018-02-09 23:00:04'),
	(18, 'DIE CUT - 3', '8', '<p>DIE CUT - 3</p>\r\n', '1', '2018-02-09 23:00:19'),
	(19, 'DIE CUT - 4', '8', '<p>DIE CUT - 4</p>\r\n', '1', '2018-02-09 23:00:35'),
	(20, 'GLUE - 1', '6', '<p>GLUE - 1</p>\r\n', '1', '2018-02-09 23:01:05'),
	(21, 'GLUE - 2', '6', '<p>GLUE - 2</p>\r\n', '1', '2018-02-09 23:01:18'),
	(22, 'GLUE - 3', '6', '<p>GLUE - 3</p>\r\n', '1', '2018-02-09 23:01:29'),
	(23, 'GLUE - 4', '6', '<p>GLUE - 4</p>\r\n', '1', '2018-02-09 23:01:46'),
	(24, 'GLUE - 5', '6', '<p>GLUE - 5</p>\r\n', '1', '2018-02-09 23:02:01'),
	(25, 'DIE - CUT 5', '8', '<p>DIE - CUT 5</p>\r\n', '1', '2018-02-18 09:28:18'),
	(26, 'Mesin Cutting 1', '5', '<p>mesin potong kertas</p>\r\n', '1', '2018-02-18 09:28:58'),
	(27, 'Mesin Cutting 2', '5', '<p>mesin potong 2</p>\r\n', '1', '2018-02-18 09:29:21');
/*!40000 ALTER TABLE `mesin` ENABLE KEYS */;

-- Dumping structure for table big.mesin_category
CREATE TABLE IF NOT EXISTS `mesin_category` (
  `categorymesinid` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT '0',
  `createdby` varchar(3) DEFAULT '0',
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`categorymesinid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table big.mesin_category: ~8 rows (approximately)
/*!40000 ALTER TABLE `mesin_category` DISABLE KEYS */;
INSERT INTO `mesin_category` (`categorymesinid`, `category`, `createdby`, `modified_at`) VALUES
	(1, 'cetak', '1', '2018-01-20 04:10:35'),
	(2, 'coating', '1', '2018-01-20 04:25:51'),
	(5, 'potong', '1', '2018-01-20 04:26:41'),
	(6, 'gluing', '1', '2018-01-20 04:26:57'),
	(7, 'plate', '1', '2018-02-10 10:41:48'),
	(8, 'pond', '1', '2018-02-18 09:26:06'),
	(9, 'sortir', '1', '2018-02-18 23:23:43'),
	(10, 'packing', '1', '2018-02-18 23:24:11');
/*!40000 ALTER TABLE `mesin_category` ENABLE KEYS */;

-- Dumping structure for table big.nota_transfer
CREATE TABLE IF NOT EXISTS `nota_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spk_induk` int(11) DEFAULT '0',
  `material` varchar(100) NOT NULL DEFAULT '0',
  `mesin_id` int(11) DEFAULT '0',
  `qty_request` int(11) DEFAULT '0',
  `qty_deliver` int(11) DEFAULT '0',
  `status` varchar(10) DEFAULT '0',
  `keterangan` varchar(50) DEFAULT '0',
  `created_by` varchar(10) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table big.nota_transfer: ~0 rows (approximately)
/*!40000 ALTER TABLE `nota_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota_transfer` ENABLE KEYS */;

-- Dumping structure for table big.notification
CREATE TABLE IF NOT EXISTS `notification` (
  `notification_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `notif` varchar(200) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `group_id` varchar(5) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table big.notification: ~5 rows (approximately)
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` (`notification_id`, `notif`, `type`, `group_id`, `subject`, `date`, `status`) VALUES
	(1, 'Anda mendapat PO Baru dari bagian Sales/Marketing', 'PO', '3', 'PO Baru Nomer ', '2018-02-24 15:33:23', 'N'),
	(2, 'Anda mendapat PO Baru dari bagian Sales/Marketing', 'PO', '3', 'PO Baru Nomer PO/031/II/2018', '2018-02-24 15:35:53', 'N'),
	(3, 'Anda mendapat SPK Baru dari bagian Production', 'SPKINDUK', '5', 'SPK Induk Baru Nomer 246', '2018-03-02 10:03:37', 'R'),
	(4, 'SPK Induk  Proses potong Di assign ke bagian Anda', 'potong', '8', 'SPK Proses potong Baru', '2018-02-24 16:06:59', 'N'),
	(5, 'SPK Induk  Proses sortir Di assign ke bagian Anda', 'sortir', '8', 'SPK Proses sortir Baru', '2018-02-24 16:06:23', 'N');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;

-- Dumping structure for table big.operatormesin
CREATE TABLE IF NOT EXISTS `operatormesin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operatorname` varchar(100) NOT NULL DEFAULT '0',
  `created_by` varchar(10) NOT NULL DEFAULT '0',
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jobfinish` int(11) NOT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table big.operatormesin: ~8 rows (approximately)
/*!40000 ALTER TABLE `operatormesin` DISABLE KEYS */;
INSERT INTO `operatormesin` (`id`, `operatorname`, `created_by`, `modified_at`, `jobfinish`, `role`) VALUES
	(1, 'Dika', '1', '2018-02-21 13:57:51', 2, 1),
	(2, 'Deki', '1', '2018-02-21 15:25:54', 2240473, 2),
	(3, 'wawan', '1', '2018-02-21 16:37:33', 6001, 6),
	(4, 'Sueb', '1', '2018-02-21 13:58:27', 0, 7),
	(5, 'jhon', '1', '2018-02-21 13:58:38', 18022, 8),
	(6, 'Aryo', '1', '2018-02-21 13:58:46', 0, 5),
	(7, 'mukmim', '1', '2018-02-21 13:59:04', 0, 9),
	(8, 'Udin', '1', '2018-02-21 13:59:39', 0, 10);
/*!40000 ALTER TABLE `operatormesin` ENABLE KEYS */;

-- Dumping structure for table big.po
CREATE TABLE IF NOT EXISTS `po` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_po` varchar(50) DEFAULT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `tanggal_po` date DEFAULT NULL,
  `mata_uang` varchar(50) DEFAULT NULL,
  `tanggal_kirim` date DEFAULT NULL,
  `gudang_id` varchar(5) DEFAULT NULL,
  `product_id` varchar(10) DEFAULT NULL,
  `harga_total` varchar(20) DEFAULT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `pajak` varchar(5) DEFAULT NULL,
  `biaya_delivery` varchar(10) DEFAULT NULL,
  `jumlah_unit` varchar(10) DEFAULT NULL,
  `po_status` enum('New','WIP','Hold','Finish') DEFAULT NULL,
  `created_by` varchar(10) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`),
  KEY `no_po` (`no_po`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table big.po: ~4 rows (approximately)
/*!40000 ALTER TABLE `po` DISABLE KEYS */;
INSERT INTO `po` (`id`, `no_po`, `customer_id`, `tanggal_po`, `mata_uang`, `tanggal_kirim`, `gudang_id`, `product_id`, `harga_total`, `discount`, `pajak`, `biaya_delivery`, `jumlah_unit`, `po_status`, `created_by`, `modified_at`) VALUES
	(1, 'PO026/XII/17', 1, '2017-11-01', 'IDR', '2018-01-31', '2', '1', NULL, NULL, NULL, NULL, '3307500', 'WIP', '1', '2018-02-21 08:37:30'),
	(2, 'PO027/V/2018', 1, '2018-02-22', 'IDR', '2018-02-28', '2', '1', '20000000', '1', '10', '120000', '80000', 'WIP', '1', '2018-02-21 08:37:33'),
	(3, 'PO024/XII/17', 1, '2017-07-05', 'IDR', '2018-05-31', '2', '1', '34000000000', '10', '10', '0', '340000000', 'New', '1', '2018-02-24 15:31:41'),
	(4, 'PO/031/II/2018', 1, '2018-02-14', 'IDR', '2018-02-28', '2', '1', '10000000', '1', '1', '100', '30000', 'New', '1', '2018-02-24 15:35:53');
/*!40000 ALTER TABLE `po` ENABLE KEYS */;

-- Dumping structure for table big.product
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_kode` int(11) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_category` varchar(20) DEFAULT NULL,
  `product_desc` text,
  `product_price` varchar(20) DEFAULT NULL,
  `product_unit` varchar(30) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `product_id` (`product_id`),
  KEY `product_kode` (`product_kode`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table big.product: ~0 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`product_id`, `product_kode`, `product_name`, `product_category`, `product_desc`, `product_price`, `product_unit`, `created_by`, `modified_at`) VALUES
	(1, 1000070, 'BLANK H-MIND KHUSUS KAWASAN BATAM', '2', '<p>BUNGKUS ROKOK h-MIND</p>\r\n', '174.50', 'pcs', '1', '2018-01-20 05:16:54');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table big.product_category
CREATE TABLE IF NOT EXISTS `product_category` (
  `categoryproductid` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT '0',
  `createdby` varchar(3) DEFAULT '0',
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`categoryproductid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table big.product_category: ~3 rows (approximately)
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` (`categoryproductid`, `category`, `createdby`, `modified_at`) VALUES
	(1, 'kotak kemasan', '1', '2018-01-20 05:13:55'),
	(2, 'rokok', '1', '2018-01-20 05:14:13'),
	(3, 'bungkus sabun', '1', '2018-01-20 05:14:35');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;

-- Dumping structure for table big.proses
CREATE TABLE IF NOT EXISTS `proses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proses` varchar(50) DEFAULT '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table big.proses: ~8 rows (approximately)
/*!40000 ALTER TABLE `proses` DISABLE KEYS */;
INSERT INTO `proses` (`id`, `proses`) VALUES
	(1, 'cetak'),
	(2, 'coating'),
	(5, 'potong'),
	(6, 'gluing'),
	(7, 'plate'),
	(8, 'pond'),
	(9, 'sortir'),
	(10, 'packing');
/*!40000 ALTER TABLE `proses` ENABLE KEYS */;

-- Dumping structure for table big.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id_settings` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `nama_perusahaan` varchar(150) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `logo` varchar(150) NOT NULL,
  `skin` enum('blue','darkblue','defaut','green-haze','grey','light','light2') NOT NULL,
  PRIMARY KEY (`id_settings`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table big.settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id_settings`, `judul`, `nama_perusahaan`, `alamat`, `logo`, `skin`) VALUES
	(1, 'Bigrafis Webtools', 'Lubana Sukses Abadi', 'DKI Jakarta', '', 'darkblue');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table big.settings_orig
CREATE TABLE IF NOT EXISTS `settings_orig` (
  `id_settings` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(150) NOT NULL,
  `nama_perusahaan` varchar(150) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `logo` varchar(150) NOT NULL,
  `skin` enum('skin-blue','skin-black','skin-purple','skin-green','skin-red','skin-yellow','skin-blue-light','skin-black-light','skin-purple-light','skin-green-light','skin-red-light','skin-yellow-light') NOT NULL,
  PRIMARY KEY (`id_settings`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table big.settings_orig: ~0 rows (approximately)
/*!40000 ALTER TABLE `settings_orig` DISABLE KEYS */;
INSERT INTO `settings_orig` (`id_settings`, `judul`, `nama_perusahaan`, `alamat`, `logo`, `skin`) VALUES
	(1, 'Bigrafis Webtools', 'Maipu', 'DKI Jakarta', '', 'skin-blue');
/*!40000 ALTER TABLE `settings_orig` ENABLE KEYS */;

-- Dumping structure for table big.spk_induk
CREATE TABLE IF NOT EXISTS `spk_induk` (
  `spk_induk_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `spk_date` date NOT NULL,
  `description` varchar(100) NOT NULL,
  `gudang_asal` varchar(10) NOT NULL,
  `gudang_tujuan` varchar(10) NOT NULL,
  `spk_status` enum('New','WIP','Hold','Finish') NOT NULL,
  `created_by` varchar(10) NOT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`spk_induk_id`),
  KEY `po_id` (`po_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table big.spk_induk: ~3 rows (approximately)
/*!40000 ALTER TABLE `spk_induk` DISABLE KEYS */;
INSERT INTO `spk_induk` (`spk_induk_id`, `po_id`, `spk_date`, `description`, `gudang_asal`, `gudang_tujuan`, `spk_status`, `created_by`, `modified_at`) VALUES
	(246, 3, '2018-02-21', 'test', '3', '2', 'New', '1', '2018-02-24 15:45:23'),
	(247, 1, '2018-01-30', 'pro ares mulut tenggorokan qty100000', '3', '1', 'WIP', '1', '2018-02-21 12:56:22'),
	(248, 2, '2018-02-22', 'mohon di kejar ', '3', '2', '', '1', '2018-02-21 07:46:36');
/*!40000 ALTER TABLE `spk_induk` ENABLE KEYS */;

-- Dumping structure for table big.spk_material
CREATE TABLE IF NOT EXISTS `spk_material` (
  `spk_induk_id` int(11) DEFAULT NULL,
  `spk_material_id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_material` int(11) DEFAULT NULL,
  `jumlah_material` int(11) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `gudang_id` varchar(5) DEFAULT NULL,
  `qty_deliver` int(11) DEFAULT NULL,
  UNIQUE KEY `spk_material_id` (`spk_material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table big.spk_material: ~5 rows (approximately)
/*!40000 ALTER TABLE `spk_material` DISABLE KEYS */;
INSERT INTO `spk_material` (`spk_induk_id`, `spk_material_id`, `kode_material`, `jumlah_material`, `satuan`, `gudang_id`, `qty_deliver`) VALUES
	(247, 1, 2, 2, 'Kg', '1', 8),
	(247, 2, 1, 20, 'Riem', '1', 8),
	(247, 3, 1, NULL, 'Riem', '1', 8),
	(247, 4, 2, 777777, 'Riem', '3', 8),
	(248, 5, 187, 30000, 'lbr', '3', 2001),
	(248, 6, 2, 20000, 'Riem', '3', 0);
/*!40000 ALTER TABLE `spk_material` ENABLE KEYS */;

-- Dumping structure for table big.spk_proses_mesin
CREATE TABLE IF NOT EXISTS `spk_proses_mesin` (
  `spk_proses_id` int(11) NOT NULL AUTO_INCREMENT,
  `proses_type` varchar(70) NOT NULL,
  `spk_induk` int(11) NOT NULL,
  `mesin_id` int(11) NOT NULL,
  `qty_order` int(11) NOT NULL,
  `qty_finish` int(11) NOT NULL,
  `nama_kertas` varchar(50) NOT NULL,
  `ukuran_kertas` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `catatan_khusus` varchar(200) NOT NULL,
  `created_by` varchar(10) NOT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status_spk` enum('New','WIP','Hold','Finish') NOT NULL,
  `ukuran_kertas_plano` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `ukuran_kertas_potong` varchar(50) NOT NULL,
  `varnish_type` varchar(5) NOT NULL,
  `lem_type` varchar(50) DEFAULT NULL,
  `proses_ke_mesin` varchar(50) DEFAULT NULL,
  `operator_mesin` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`spk_proses_id`),
  KEY `spk_induk` (`spk_induk`),
  KEY `mesin_id` (`mesin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table big.spk_proses_mesin: ~10 rows (approximately)
/*!40000 ALTER TABLE `spk_proses_mesin` DISABLE KEYS */;
INSERT INTO `spk_proses_mesin` (`spk_proses_id`, `proses_type`, `spk_induk`, `mesin_id`, `qty_order`, `qty_finish`, `nama_kertas`, `ukuran_kertas`, `jumlah`, `warna`, `catatan_khusus`, `created_by`, `modified_at`, `created_at`, `status_spk`, `ukuran_kertas_plano`, `description`, `ukuran_kertas_potong`, `varnish_type`, `lem_type`, `proses_ke_mesin`, `operator_mesin`) VALUES
	(1, '2', 247, 4, 600000, 556713, 'ivory', '72x56', '110000', 'C,M,Y,K,', 'perhatikan register, warna dan hasil cetakan', '1', '2018-02-21 14:18:39', '2018-01-30 16:49:55', 'Hold', '', 'mesin rusak', '', '', NULL, NULL, '2'),
	(2, '1', 247, 1, 50000, 20000, 'IVORY IP 230 72x113', '40x40', '200', 'putih', 'harap yang rapi yaa', '1', '2018-02-21 15:31:51', '2018-02-15 00:00:00', 'Finish', '', '', '', '', NULL, NULL, '1'),
	(3, '7', 247, 11, 5000, 1000, '', '', '5000', '', 'yg rapih', '4', '2018-03-01 21:58:28', '2018-02-19 00:00:00', 'WIP', '', '', '', 'doft', NULL, NULL, '5'),
	(4, '5', 247, 27, 100000, 35000, 'A4', '', '20 rim', '', '', '1', '2018-02-19 22:49:34', '2018-02-19 00:00:00', 'WIP', '4x4', '', '2x2', '', NULL, '1', '2'),
	(5, '6', 247, 22, 20000, 18022, '', '', '20000', '', 'rapet yaa', '1', '2018-02-19 22:51:44', '2018-02-16 00:00:00', 'WIP', '', '', '', '', 'aibon', NULL, '5'),
	(6, '1', 248, 2, 8000, 6811, 'A4', '20x20', '8800', 'c,m.y,k', 'dominan kanan', '1', '2018-02-21 08:50:30', '2018-02-21 00:00:00', 'Finish', '', '', '', '', NULL, NULL, '2'),
	(7, '2', 248, 4, 20000, 50, '', '', '', '', '', '1', '2018-02-21 15:26:49', '0000-00-00 00:00:00', 'WIP', '', '', '', '', NULL, NULL, '2'),
	(8, '6', 248, 20, 12000, 1500, '', '', '44444', '', '', '1', '2018-02-21 16:37:33', '2018-02-21 00:00:00', 'WIP', '', '4444', '', '', 'keut', NULL, '3'),
	(9, '5', 246, 26, 100000, 0, 'c', '', '111111', '', 'c', '1', '2018-02-24 15:55:57', '2018-02-22 00:00:00', 'New', '2x2', '', '3x3', '', NULL, '8', NULL),
	(10, '9', 247, 0, 100000, 0, '', '', '100000', '', '', '1', '2018-02-24 16:06:23', '2018-02-21 00:00:00', 'New', '', '', '', '', NULL, NULL, NULL);
/*!40000 ALTER TABLE `spk_proses_mesin` ENABLE KEYS */;

-- Dumping structure for table big.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table big.users: ~4 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
	(1, '127.0.0.1', 'admin', '$2y$08$v.Lr4yujxQxzZNdmCpgJWu7WLR5hzFDxkh0mRRmSuBartWDE93ySO', '', 'admin@admin.com', NULL, 'asGsHoh0iWTpOuVLM.EMUO900526bdd0557906ac', 1421981304, NULL, 1268889823, 1519981245, 1, 'Admin', 'System', 'ADMIN', '1234567890'),
	(2, '::1', 'user', '$2y$08$EvJBduv65f1wQQ39WNs3R.tuWvZAG5NSCE9Q29eLniyD/6OlownAG', NULL, 'indr4@ymail.com', NULL, NULL, NULL, NULL, 1501733042, 1518238464, 1, 'User', 'System', NULL, '081282222827'),
	(3, '::1', 'operatormesin', '$2y$08$TMjAbBw.FPHxOUaeJo3VueM96MLxvbB/9AMBDzYUFjl6ewPz63xdi', NULL, 'operatormesin@bigrafis.com', NULL, NULL, NULL, NULL, 1519044464, 1519913268, 1, 'operator', 'mesin', NULL, '666666666'),
	(4, '::1', 'gudang', '$2y$08$v.Lr4yujxQxzZNdmCpgJWu7WLR5hzFDxkh0mRRmSuBartWDE93ySO', NULL, 'gu@dang.com', NULL, NULL, NULL, NULL, 1519189506, 1519959993, 1, 'gu', 'dang', NULL, '111111111');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table big.users_groups
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table big.users_groups: ~7 rows (approximately)
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
	(7, 1, 1),
	(8, 1, 2),
	(13, 2, 2),
	(12, 2, 3),
	(11, 2, 8),
	(14, 3, 8),
	(15, 4, 5);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;

-- Dumping structure for view big.view_header_menu
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_header_menu` (
	`id_groups` INT(11) NOT NULL,
	`id_header_menu` INT(11) NOT NULL,
	`header` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`sort` INT(11) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view big.view_menu
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_menu` (
	`id_groups` INT(11) NOT NULL,
	`id_menu` INT(11) NOT NULL,
	`sort` INT(11) NOT NULL,
	`id_header_menu` INT(11) NOT NULL,
	`label` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`icon` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`url` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`menu_id` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`level_one` INT(11) NOT NULL,
	`level_two` INT(11) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view big.view_reportmesin
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_reportmesin` (
	`id` INT(11) NOT NULL,
	`mesin_name` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`jumlahspk` BIGINT(21) NULL
) ENGINE=MyISAM;

-- Dumping structure for view big.view_header_menu
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_header_menu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `view_header_menu` AS select `gh`.`id_groups` AS `id_groups`,`hm`.`id_header_menu` AS `id_header_menu`,`hm`.`header` AS `header`,`hm`.`sort` AS `sort` from (`groups_header` `gh` join `header_menu` `hm` on((`gh`.`id_header_menu` = `hm`.`id_header_menu`))) ;

-- Dumping structure for view big.view_menu
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_menu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `view_menu` AS select `gm`.`id_groups` AS `id_groups`,`m`.`id_menu` AS `id_menu`,`m`.`sort` AS `sort`,`m`.`id_header_menu` AS `id_header_menu`,`m`.`label` AS `label`,`m`.`icon` AS `icon`,`m`.`url` AS `url`,`m`.`menu_id` AS `menu_id`,`m`.`level_one` AS `level_one`,`m`.`level_two` AS `level_two` from (`groups_menu` `gm` join `menu` `m` on((`gm`.`id_menu` = `m`.`id_menu`))) ;

-- Dumping structure for view big.view_reportmesin
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_reportmesin`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `view_reportmesin` AS select a.id, a.mesin_name, (select count(b.spk_proses_id) from spk_proses_mesin b where b.mesin_id = a.id) as jumlahspk from mesin a ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
