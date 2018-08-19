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
  `harga_satuan` double DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `kode` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=726 DEFAULT CHARSET=latin1;

-- Dumping data for table big.material: ~725 rows (approximately)
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` (`id`, `kode`, `material_name`, `satuan`, `gudang_id`, `created_by`, `modified_at`, `category_id`, `harga_satuan`) VALUES
	(1, 1000123, '.', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 861),
	(2, 5091, '1 Ups Diecut Ares 12 Mind Wooden Die', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 550000),
	(3, 5087, '16 Ups PISAU KRIS HAITI 74x58cm_Laser Biasa PapanLokal 18 mm', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 1612150),
	(4, 5086, '9 Ups PISAU LEZZO CHOCO CHIPS_Laser Biasa PapanLokal 18 mm', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 1320215),
	(5, 3001, 'ABC Wash', 'Liter', '3', '1', '2018-03-06 20:08:38', 3, 47727.27),
	(6, 3022, 'ACRYLAC HIGHLOSS 57G1100', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 35000),
	(7, 3013, 'Acrylacgloss 030/40', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 31000),
	(8, 3029, 'Acrylacgloss 57G1000', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 29099.17),
	(9, 5105, 'Air Cilinder AR 40-04', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 830000),
	(10, 5138, 'AIR SILINDER AIR 25/25cm', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 700000),
	(11, 1000102, 'AL JAMELAH BEUTY SOAP  50 Gr-Pink', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 106.44),
	(12, 3012, 'Alkohol UV ', 'Liter', '3', '1', '2018-03-06 20:08:38', 3, 9000),
	(13, 1144, 'Art Carton 100 gsm 65 x 100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(14, 1102, 'Art Carton 190 gr 65 x 100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 813977),
	(15, 1019, 'Art Carton 190gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1230000),
	(16, 1023, 'Art Carton 210gr 61x92', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(17, 1024, 'Art Carton 210gr 65x100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 904709.27),
	(18, 1115, 'Art Carton 230 65 x 100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(19, 1011, 'Art Carton 260gr 65x100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1450000),
	(20, 1026, 'Art Carton 260gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(21, 1017, 'Art Carton 310gr 65x100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1650000),
	(22, 1174, 'Art Carton 350gr 79 x 109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(23, 1135, 'Art Carton 360gr 65x100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1520114),
	(24, 1175, 'Art Carton 360gr 73 x 88', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(25, 1021, 'Art Carton 360gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 2000881.82),
	(26, 1049, 'Art Carton 400gr 65x100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 2150000),
	(27, 1001, 'Art Paper 120gr 61x92', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 465000),
	(28, 1047, 'Art Paper 120gr 65x100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 453818),
	(29, 1029, 'Art Paper 120gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 629385.45),
	(30, 1016, 'Art Paper 150gr 65x100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 567273),
	(31, 1027, 'Art Paper 150gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(32, 1096, 'Art Paper 85gr 61x88', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 288286.27),
	(33, 1002, 'Art Paper 85gr 61x92', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 286363.64),
	(34, 1059, 'Art Paper 85gr 65x100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(35, 1037, 'ARTP TJA 120gsm 65x100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 530400),
	(36, 50000046, 'BATU GERINDA MESIN LEM', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 100000),
	(37, 1052, 'BC Jangkar 150gr 61x86 Blue', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 472140),
	(38, 1053, 'BC Jangkar 150gr 61x86 Emerald', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 472140),
	(39, 1050, 'BC Jangkar 150gr 61x86 Red Pink', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 472140),
	(40, 1051, 'BC Jangkar 150gr 61x86 Yellow', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 472140),
	(41, 5107, 'Bearing Cam Follower', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1000000),
	(42, 5096, 'BEARING FAG 20205', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 500000),
	(43, 5094, 'BEARING FAG 6309-TBP63', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 535000),
	(44, 5088, 'Bearing INA F-94414 (Cam Pollower GTO)', 'UNIT', '3', '1', '2018-03-06 20:08:38', 15, 500000),
	(45, 5089, 'Bearing INA NK 18/16', 'UNIT', '3', '1', '2018-03-06 20:08:38', 15, 65000),
	(46, 5067, 'BEARING ROLL 6023', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(47, 5068, 'BEARING ROLL 6300', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(48, 5069, 'BEARING ROLL JILAD 6003', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(49, 5126, 'BEARING RRT CSK-30', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 150000),
	(50, 5109, 'BEARING SKF 61815-2Z', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 675000),
	(51, 5125, 'BEARING SKF 6206-ZZ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 80000),
	(52, 5095, 'BEARING SKF 6312-C3', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 492000),
	(53, 1000161, 'BLANK DJIDJI NON KHUSUS KAWASAN BEBAS', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 157.73),
	(54, 1000072, 'BLANK H-MIND KAWASAN BEBAS KARIMUN', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 98.29),
	(55, 1000069, 'BLANK H-MIND KHUSUS KAWASAN BEBAS', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 81.04),
	(56, 1000070, 'BLANK H-MIND KHUSUS KAWASAN BEBAS BATAM', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 78.61),
	(57, 1000071, 'BLANK H-MIND KHUSUS KAWASAN BEBAS BINTAN', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 91.78),
	(58, 1000088, 'BLANK HMIND KKB TANJUNG PINANG', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 90.48),
	(59, 1000073, 'BLANK H-MIND PITA CUKAI', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 116.67),
	(60, 1000063, 'BLANK LUFFMAN EXPORT ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 73.92),
	(61, 1000064, 'BLANK LUFFMAN KHUSUS KAWASAN BEBAS', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 56.12),
	(62, 1000065, 'BLANK LUFFMAN KHUSUS KAWASAN BEBAS BATAM', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 96.01),
	(63, 1000066, 'BLANK LUFFMAN KHUSUS KAWASAN BEBAS BINTAN', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 79.95),
	(64, 1000067, 'BLANK LUFFMAN KHUSUS KAWASAN BEBAS KARIMUN', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 74.58),
	(65, 1000089, 'BLANK LUFFMAN KKB TANJUNG PINANG', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 69.88),
	(66, 1000068, 'BLANK LUFFMAN PITA CUKAI', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 93.05),
	(67, 1000053, 'BLANK ROKOK H-MILD', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(68, 1000056, 'BLANK ROKOK H-MIND BEACUKAI', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(69, 1000009, 'BLANK ROKOK LUFFMAN', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 102.82),
	(70, 1000055, 'BLANK ROKOK LUFFMAN BEACUKAI', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(71, 1000054, 'BLANK ROKOK LUFFMAN KKB', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 73.43),
	(72, 5001, 'Blanket 1045x790x1.95', 'Lbr', '3', '1', '2018-03-06 20:08:38', 15, 870000),
	(73, 5120, 'BLANKET KINYO BAR MC 1052 x 840 x 95 bar', 'Lbr', '3', '1', '2018-03-06 20:08:38', 15, 1020000),
	(74, 5082, 'Blanket Meiji 1052 x 790', 'Lbr', '3', '1', '2018-03-06 20:08:38', 15, 870000),
	(75, 5026, 'BLANKET MEIJI 1052x840', 'Lbr', '3', '1', '2018-03-06 20:08:38', 15, 1020000),
	(76, 5026, 'BLANKET MEIJI 1052x840', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1020000),
	(77, 5011, 'Blanket Meiji GTO 52 (518x450x1.95)', 'Lbr', '3', '1', '2018-03-06 20:08:38', 15, 220000),
	(78, 5012, 'Blanket Meiji-Web 1052x840x1.95 Bar', 'Lbr', '3', '1', '2018-03-06 20:08:38', 15, 1270000),
	(79, 5127, 'BLANKET UK 1120 X 1070', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1320000),
	(80, 1100, 'BOOK PAPER 52 UK 61X86', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 164915),
	(81, 1101, 'BOOK PAPER 52GR 61 X 78', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 149574),
	(82, 1000001, 'BOX DALMONDE 25X25X12', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1322.18),
	(83, 1000122, 'BOX NEW LE GITT UK 15 X 16 ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 805.8),
	(84, 1000076, 'BOX NEW LEGITT UK 15 X 25', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 841.08),
	(85, 1000129, 'BOX OFFSET LEZZO CHOCO CHIPS 95 X 30 X 140 MM', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 315.32),
	(86, 1000173, 'BOX ORIGINAL KEJU NON- Premium Nilai Gizi', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(87, 1000029, 'BOX PECEL PINCUK', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 769.22),
	(88, 5116, 'BRAKE MOTOR MESIN LEM NIKO', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 4750000),
	(89, 5112, 'BREAKER 80 AMPRE', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 475000),
	(90, 5132, 'Breaker Scheneider 60 A', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 365000),
	(91, 1000090, 'BROSUR LUFFMAN KLASIC', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 456.2),
	(92, 2028, 'Brown P 722 C Tinta', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(93, 1000121, 'BUKU TABUNGAN', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 984.2),
	(94, 5122, 'Cable Tahan Panas  MFIN.YMM', 'Meter', '3', '1', '2018-03-06 20:08:38', 15, 7500),
	(95, 3028, 'Cairan Anti Skinning', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 82650),
	(96, 5054, 'CAM FOILOWER 102', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(97, 2026, 'Camelia Purple Tinta', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 320000),
	(98, 5093, 'CARBON BRUSH 4 X 7 CM', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 185000),
	(99, 1121, 'Carton Box 46x35x42 Singgle Wall', 'Pcs', '3', '1', '2018-03-06 20:08:38', 1, 11000),
	(100, 1000110, 'CARTON OLIVE BEAUTY 125 GM 72 PCS HONEY', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 4849.61),
	(101, 1000111, 'CARTON OLIVE BEAUTY 125 GM 72 PCS ROSE', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 5521.31),
	(102, 4016, 'Carton Olive Beauty 125 GSM 72 pcs Honey', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 2700),
	(103, 4015, 'Carton Olive Beauty 125 GSM 72 pcs Rose', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 2700),
	(104, 2121, 'Cemani Toka - CM 0540 KFC RED', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 140000),
	(105, 2001, 'Cemani Toka Best One Emblem Process Black M', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 78314.49),
	(106, 2002, 'Cemani Toka Best One Emblem Process Cyan M', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 102453.06),
	(107, 2003, 'Cemani Toka Best One Emblem Process Magenta M', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 100581.78),
	(108, 2004, 'Cemani Toka Best One Emblem Process Yellow M', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 94692.8),
	(109, 2005, 'Cemani Toka Black TC 5500', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(110, 2010, 'Cemani Toka Dus Olive Red', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 115000),
	(111, 2081, 'Cemani Toka Gold TC 6209', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 260000),
	(112, 2017, 'Cemani Toka High Gloss OPV', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 88000),
	(113, 2029, 'Cemani Toka Light Brown P 7413 C', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(114, 2006, 'Cemani Toka Mat Medium 0001', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 62100),
	(115, 2009, 'Cemani Toka Silver TC 6409', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 151952.38),
	(116, 2079, 'Cemani Toka TC 0001 Medium', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 56183.33),
	(117, 2079, 'CEMANI TOKA TC 0001 MEDIUM', 'Pcs', '3', '1', '2018-03-06 20:08:38', 2, 55000),
	(118, 2007, 'Cemani Toka TC 0105 Medium Yellow', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 116533.33),
	(119, 2033, 'Cemani Toka TC 1005 Red', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(120, 2020, 'Cemani Toka TC 1105 Bronze Red', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 97866.24),
	(121, 2011, 'Cemani Toka TC 1308 Deep Red', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(122, 2018, 'Cemani Toka TC 1415 Red', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(123, 2039, 'CEMANI TOKA TC 1705 DEEP RED', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 122464.04),
	(124, 2034, 'Cemani Toka TC 1804 Rhodamine Red', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(125, 2037, 'Cemani Toka TC 2307 Purple', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(126, 2044, 'Cemani Toka TC 2606 Violet', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 309171.43),
	(127, 2036, 'Cemani Toka TC 2909 Dark Blue', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(128, 2008, 'Cemani Toka TC 3005 Reflex Blue', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 157040.44),
	(129, 2012, 'Cemani Toka TC 4005 Green', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 175000),
	(130, 2035, 'Cemani Toka TC 4106 Green', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(131, 2114, 'Cemani Toka TC 6207 Gold', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 263145.16),
	(132, 2038, 'Cemani Toka TC 6208 Gold', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 286000),
	(133, 2019, 'Cemani Toka TC 6216 Gold', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(134, 2078, 'CEMANI TOKA TC 6409 SILVER', 'Pcs', '3', '1', '2018-03-06 20:08:38', 2, 161000),
	(135, 2030, 'Cemani Toka TC 7000 White ', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 66000),
	(136, 2080, 'CEMANI TOKA TC MAT OPV', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 104500),
	(137, 2031, 'Cemani Toka-Bestak INI Process Black', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(138, 5139, 'Cito Dinamyc 1.0 x 0.4 ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(139, 5065, 'Cito Dynamic 0.5 x 1.3', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 16400),
	(140, 5025, 'Cito Dynamic 0.5x1.2', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 16400),
	(141, 5004, 'Cito Dynamic 0.5x1.5', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 16400),
	(142, 5118, 'Cito Dynamic Pro ry 0.5 x 1.3', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 22000),
	(143, 5129, 'Cito Dynamic Pro ry 0.5 x 1.5', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 22000),
	(144, 5140, 'Cito Dynamic pro ry 1.0 x 0.4', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 22000),
	(145, 2133, 'CK0001_UV 3621 MEDISOFT BLUE', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 331000),
	(146, 2132, 'CK0001_UV 3621 MEDISOFT RED', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 381500),
	(147, 2119, 'CK0001_UV 3678 OLIVE RED ', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 325000),
	(148, 2120, 'CK0001_UV 3679 OLIVE BLUE ', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 428000),
	(149, 4012, 'Clamp Still Band', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 300),
	(150, 2056, 'CM 0091 Ayu Warm Sunflower Orange', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 140000),
	(151, 2057, 'CM 0092 Ayu Lovely Rose Magenta', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 150000),
	(152, 2040, 'CM 0093 Ayu Sweet Orchid Purple', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 220000),
	(153, 2041, 'CM 0094 Ayu Relaxing Jasmine Green', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 171978.5),
	(154, 2042, 'CM 0095 Ayu Nostalgic Lily Cyan', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 145000),
	(155, 2050, 'CM 0096 CITRUS P 109 C YELLOW', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 140000),
	(156, 2051, 'CM 0097 CITRUS P 186 C RED', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 145617.45),
	(157, 2052, 'CM 0098 CITRUS P 300 C BLUE', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 150000),
	(158, 2053, 'CM 0099 CITRUS P 362 C GREEN', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 135000),
	(159, 2058, 'CM 0108 Kris P 124 C Yellow', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 140000),
	(160, 2059, 'CM 0109 Kris P 2935 C Blue', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 145000),
	(161, 2060, 'CM 0110 Kris P Warm Red C', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 150000),
	(162, 2061, 'CM 0111 Kris P 375 C Green', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 145000),
	(163, 2062, 'CM 0112 Kris P 267 C Purple', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 145000),
	(164, 2063, 'CM 0113 Kris P 266 C Purple', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 145000),
	(165, 2064, 'CM 0114 Kris P Rhodamine Red', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 310000),
	(166, 2065, 'CM 0115 Kris P 312 C Blue', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 135000),
	(167, 2066, 'CM 0116 Kris P 137 C Orange', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 140000),
	(168, 2074, 'CM 0138 Medisoft Red', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 150101.9),
	(169, 2075, 'CM 0139 Medisoft Blue', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 170000),
	(170, 2076, 'CM 0140 Medisoft Green', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 190000),
	(171, 2077, 'CM 0156 Medisoft P 193 C Red', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 180000),
	(172, 2084, 'CM 0284 KRIS P 107 C YELLOW', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 135000),
	(173, 2085, 'CM 0285 KRIS P 1235 C DEEP YELLOW', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 140000),
	(174, 2086, 'CM 0286 KRIS P 237 C PINK', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 145000),
	(175, 2087, 'CM 0287 KRIS P 233 C MAGENTA', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 240000),
	(176, 2082, 'CM 0288 KRIS P 7451 C LIGHT BLUE', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 135000),
	(177, 2083, 'CM 0289 KRIS P 2728 C BLUE', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 145000),
	(178, 2092, 'CM 0371 DUS BOLU STRAWBERY RED', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 150000),
	(179, 2093, 'CM 0372 DUS BOLU STRAWBERY PINK', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 130000),
	(180, 2094, 'CM 0373 DUS PANDAN GREEN', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 145000),
	(181, 2095, 'CM 0374 DUS PANDAN L. GREEN', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 135000),
	(182, 2096, 'CM 0375 DUS COKLAT BROWN', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 145000),
	(183, 2097, 'CM 0376 DUS COKLAT L. BROWN', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 140000),
	(184, 2112, 'CM 0458 SEHAT P 219 C PINK', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 150000),
	(185, 2113, 'CM 0459 SEHAT P 2925 C BLUE', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 160000),
	(186, 2115, 'CM 0487 IVR BLUE P 293 C', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(187, 2116, 'CM 0487 IVR BLUE P 293 C', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 170000),
	(188, 2122, 'CM 0546 SBN AYU P 3005 C BLUE', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 165000),
	(189, 2123, 'CM 0547 SBN AYU P 2583 C PURPLE', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 180000),
	(190, 2124, 'CM 0548 SBN AYU P 232 C PINK', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 240000),
	(191, 2125, 'CM 0549 SBN AYU P 123 C YELLOW', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 160000),
	(192, 2126, 'CM 0570 LIPSTIK 81 BROWN', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 150000),
	(193, 2127, 'CM 0571 LIPSTIK 85 RED', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 140000),
	(194, 2128, 'CM 0572 LIPSTIK 86 BROWN', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 150000),
	(195, 2129, 'CM 0573 LIPSTIK 89 RED', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 140000),
	(196, 2130, 'CM 0574 LIPSTIK 90 BROWN', 'Klg', '3', '1', '2018-03-06 20:08:38', 2, 150000),
	(197, 2103, 'CM 420 SEHAT JUNIOR NEW P 1795 C RED', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 150000),
	(198, 2104, 'CM 421 SEHAT JUNIOR NEW P 185 C RED', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 150000),
	(199, 2110, 'CM 422 JUNIOR NEW P 485 C RED', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 150000),
	(200, 1000017, 'COKELAT SHELL NS WAFER 180 GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 593.63),
	(201, 1000025, 'COL HANGER 12/24', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(202, 1000026, 'COL HANGER 18/36', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 359.88),
	(203, 1000024, 'COL HANGER 6/12', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(204, 2021, 'Colored Pencil PMS 123 Yellow C', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(205, 2023, 'Colored Pencil PMS 185 Red C', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(206, 2022, 'Colored Pencil PMS Violet C', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(207, 1000126, 'COMPANY PROFILE UK 23 x 31 cm', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 4178.45),
	(208, 5002, 'Corrector', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 32000),
	(209, 5130, 'Counter Autonics CT45-1P4', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 750000),
	(210, 5071, 'CREASING RULE / PISAU BIASA', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 20000),
	(211, 5049, 'Cutting Stick 15 x 15 x 1157', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 80000),
	(212, 5034, 'CUTTING STICK POLAR 115', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 35000),
	(213, 5017, 'Cutting Stik DQ 20 Uk 2x2x93', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 85000),
	(214, 5013, 'Cutting Stik Uk 13x13x1159', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 50000),
	(215, 1065, 'CWB 250gr 79x102', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(216, 1066, 'CWB 250gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1145000),
	(217, 1064, 'CWB 300gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1487348.48),
	(218, 1067, 'CWB 350gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1602954.54),
	(219, 2071, 'Daicure Proc. Black', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(220, 2070, 'Daicure Proc. Cyan', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(221, 2072, 'Daicure Proc. Magenta', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(222, 2073, 'Daicure Proc. White 709', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 235833.33),
	(223, 2069, 'Daicure Proc. Yellow', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(224, 2091, 'DAICURE RT X PRIMER', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 300000),
	(225, 2098, 'DAICURE SL PV 084 CYAN H', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 252000),
	(226, 2101, 'DAICURE SL PV 098 BLACK H', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 258000),
	(227, 2105, 'Daicure SL PV 708 White H', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 215000),
	(228, 2105, 'Daicure SL PV 708 White H', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 805.8),
	(229, 2099, 'DAICURE SL PV PROCESS MAGENTA', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 248380),
	(230, 2100, 'DAICURE SL PV PROCESS YELLOW H ', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 250000),
	(231, 1000086, 'Denpasar Blanko BRINS', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 64.04),
	(232, 5023, 'Developer Plate', 'Liter', '3', '1', '2018-03-06 20:08:38', 15, 13500),
	(233, 5085, 'Die Cut SAAT Female Brass Embossing Block Male Resin Block Alumunium Block', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 10702000),
	(234, 5080, 'DIECUT AL JAMELAH 20 UPS', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 2361700),
	(235, 2090, 'DJARUM SUPER GOLD', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 88000),
	(236, 2089, 'DJARUM SUPER RED METALLIC', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 89000),
	(237, 6008, 'Djerigen 25L', 'Pcs', '3', '1', '2018-03-06 20:08:38', 17, 1),
	(238, 6009, 'Djerigen 5L', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(239, 1000140, 'DOOS HI MATTE LIP CREAM ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(240, 1000153, 'DOOS LIPSTIK CM REJU NEW 1 81', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 115.51),
	(241, 1000150, 'DOOS LIPSTIK CM REJU NEW 1 84', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 110.44),
	(242, 1000154, 'DOOS LIPSTIK CM REJU NEW 1 85', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 126.3),
	(243, 1000156, 'DOOS LIPSTIK CM REJU NEW 1 86', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(244, 1000151, 'DOOS LIPSTIK CM REJU NEW 1 88', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 151.59),
	(245, 1000146, 'DOOS LIPSTIK CM REJU NEW 1 89', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 125.07),
	(246, 1000155, 'DOOS LIPSTIK CM REJU NEW 1 90', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 109.87),
	(247, 1000157, 'DOOS MATTE POWDER HYDRA SERIES', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 202.67),
	(248, 1000158, 'DOOS MATTE TWC HYDRA SERIES', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 178.11),
	(249, 1000149, 'DOOS SABUN PUTIH 90 G', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 208.32),
	(250, 1000164, 'DOOS SBN BENGKOANG EX SIRIH 90 GR ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(251, 1000141, 'DOOS SBN BNGK+WHITENING 90GCSP', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 301.29),
	(252, 1000031, 'DOOS TC WALINI JASMINE', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 204.37),
	(253, 1000101, 'DORA BEAUTY SOAP 50  GR-GREEN', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 92.14),
	(254, 1000098, 'DORA BEAUTY SOAP 50  GR-WHITE ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 89.06),
	(255, 1000099, 'DORA BEAUTY SOAP 50 GR-PINK', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 91.51),
	(256, 1000100, 'DORA BEAUTY SOAP 50 GR-YELLOW', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 94.32),
	(257, 4010, 'Doube Tape 1/2 cm', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 1168.46),
	(258, 4022, 'Double Tape 1 Cm', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 2250),
	(259, 1120, 'Duplex 250 gr 85 x 120', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1239365.05),
	(260, 1075, 'Duplex 250gr 65x95', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 850000),
	(261, 1036, 'Duplex 250gr 90x120', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(262, 1033, 'Duplex 270gr 120x85', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(263, 1068, 'Duplex 270gr 120x90', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(264, 1062, 'Duplex 270gr 72x102', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 928234.74),
	(265, 1087, 'Duplex 270gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1120000),
	(266, 1085, 'Duplex 270gr 85x120', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1184470),
	(267, 1034, 'Duplex 270gr 89x120', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(268, 1118, 'Duplex 270gr 90 x 120', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1511018),
	(269, 1116, 'DUPLEX 300 _ 58 X 83', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(270, 1163, 'Duplex 310 40.5 X 61', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(271, 1145, 'DUPLEX 310 85 x 120', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1298206),
	(272, 1104, 'DUPLEX 310 GR 120 X 90', 'Pcs', '3', '1', '2018-03-06 20:08:38', 1, 1635955),
	(273, 1171, 'Duplex 310gr 109 x 79 ', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1174176),
	(274, 1073, 'Duplex 310gr 112x79', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1125860.96),
	(275, 1074, 'Duplex 310gr 56x79', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 553531.92),
	(276, 1018, 'Duplex 310gr 72x102', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 941131.95),
	(277, 1009, 'Duplex 310gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1239213),
	(278, 1133, 'Duplex 310gr 85 x 120 ', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1298159),
	(279, 1044, 'Duplex 310gr 89x119.4', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(280, 1043, 'Duplex 310gr 90x120', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1635955),
	(281, 1041, 'Duplex 310gr 95x120', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(282, 1164, 'Duplex 350 71.5 X 91', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 897329),
	(283, 1122, 'Duplex 350 gsm 70 x 100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1080316),
	(284, 1124, 'Duplex 350gr 109 x 79 ', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1277285.94),
	(285, 1006, 'Duplex 350gr 49x79', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(286, 1007, 'Duplex 350gr 60x79', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(287, 1003, 'Duplex 350gr 65x100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(288, 1013, 'Duplex 350gr 72x102', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(289, 1004, 'Duplex 350gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1235398.71),
	(290, 1099, 'Duplex 400gr 102x72', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 0),
	(291, 1030, 'Duplex 400gr 72x102', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 873678.37),
	(292, 1020, 'Duplex 400gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1479370),
	(293, 1153, 'Duplex 400gr 90X120', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1855440),
	(294, 1177, 'DUPLEX 450 GSM 71X73 ', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 898590),
	(295, 1140, 'DUPLEX DGB 300g 79 x 109 cm', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1148687.83),
	(296, 1000142, 'DUS BLACK FOREST 418gr', 'Lbr', '3', '1', '2018-03-06 20:08:38', 16, 657.76),
	(297, 1000148, 'DUS BLACK FOREST KUKUS 400gr', 'Lbr', '3', '1', '2018-03-06 20:08:38', 16, 29.56),
	(298, 1000176, 'DUS BROWNIES KUKUS 400 GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(299, 1000106, 'DUS SM BOLU COKLAT ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(300, 1000107, 'DUS SM BOLU PANDAN', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 574.07),
	(301, 1000108, 'DUS SM BOLU STRAWBERRY', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 324.62),
	(302, 1000143, 'DUS SPONGE COKLAT 400gr', 'Lbr', '3', '1', '2018-03-06 20:08:38', 16, 658.01),
	(303, 1000144, 'DUS SPONGE PANDAN 400gr', 'Lbr', '3', '1', '2018-03-06 20:08:38', 16, 135.62),
	(304, 1000145, 'DUS SPONGE VANILLA 400gr', 'Lbr', '3', '1', '2018-03-06 20:08:38', 16, 683.47),
	(305, 1000083, 'DUS TC WALINI HITAM KLASIK', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 463.49),
	(306, 1000080, 'E INNER DUS PASTA GIGI 100 GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 860),
	(307, 1000169, 'ENVELOPE CALLAWAY DAWN PATROL', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(308, 1000171, 'ENVELOPE CALLAWAY X-TECH WOMENS PINK', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(309, 1000170, 'ENVELOPE CALLWAY X-TECH MENS BLACK/GREEN', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(310, 1000085, 'ESM AYU BLUE 80G', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 135.83),
	(311, 1000057, 'ESM AYU FRESHMILK CHINA 100G', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 163.18),
	(312, 1000019, 'ESM AYU GREEN 80GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 113.28),
	(313, 1000058, 'ESM AYU MILKY MLN CHINA 100G', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 163.18),
	(314, 1000059, 'ESM AYU MILKY STRWBY CHINA 100G', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 163.18),
	(315, 1000020, 'ESM AYU PINK 80GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 148.21),
	(316, 1000084, 'ESM AYU VIOLLET 80G', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 139.29),
	(317, 1000021, 'ESM AYU YELLOW 80GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 155.36),
	(318, 1000028, 'ESM CITRUS 80G LEMON', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 131.99),
	(319, 1000027, 'ESM CITRUS 80G LIME', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 144.94),
	(320, 1000103, 'ESM KRIS BLUE 70 GR ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(321, 1000051, 'ESM KRIS BLUE 80G EXPORT', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 177.71),
	(322, 1000002, 'ESM KRIS BLUE ARAB', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 125.24),
	(323, 1000061, 'ESM KRIS GREEN ARAB', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 147.57),
	(324, 1000092, 'ESM KRIS HAITI BLUE', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 134.84),
	(325, 1000094, 'ESM KRIS HAITI PINK', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 129.13),
	(326, 1000093, 'ESM KRIS HAITI YELLOW', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 124.06),
	(327, 1000138, 'ESM KRIS HEALTHY BLUE 80 GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 126.33),
	(328, 1000137, 'ESM KRIS HEALTHY PINK 80 GR ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 221.84),
	(329, 1000136, 'ESM KRIS HEALTHY RED 80 GR ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 132.92),
	(330, 1000005, 'ESM KRIS PINK 80G EXPORT', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 138.35),
	(331, 1000003, 'ESM KRIS PINK ARAB', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 161.13),
	(332, 1000050, 'ESM KRIS VIOLET 80G EXPORT', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 176.13),
	(333, 1000004, 'ESM KRIS VIOLET ARAB', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 162.52),
	(334, 1000052, 'ESM KRIS YELLOW 80G EXPORT', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 161.67),
	(335, 1000062, 'ESM KRIS YELLOW ARAB', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 134.99),
	(336, 1000074, 'ESM MEDISOFT MOSREP PINK 175GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 321.89),
	(337, 1000006, 'ESM MEDISOFT REG 90GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 123.63),
	(338, 1000134, 'ESM SEHAT JUNIOR BLUE 80 GR ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 147.54),
	(339, 1000112, 'ESM SEHAT JUNIOR RED 80GR ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 138.26),
	(340, 1000152, 'ESM SEHAT MILKY FRESH MILK 100GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 212.06),
	(341, 1000007, 'ESM SEHAT PERISAI BLUE 80G', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 149.1),
	(342, 1000008, 'ESM SEHAT PERISAI RED 80GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 145.04),
	(343, 1000128, 'ESM SEHAT PRISAI PINK 80GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 168.28),
	(344, 1000135, 'ETIKET ARES MIND 12 HLP-IVORY 230 GR ', 'Lbr', '3', '1', '2018-03-06 20:08:38', 16, 77.11),
	(345, 5119, 'FANT BELT 3580', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 45000),
	(346, 1000124, 'FB BDL PAPAYA 60 GR (OVAL)', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 163.79),
	(347, 1000125, 'FB BDL PPY BRIGHTENING SOAP 128 GR ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 203.2),
	(348, 1000096, 'FF Carton (7,3 x 12 cm)', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 183.77),
	(349, 1111, 'Foil Biru Hologram H-Mind (64X240 M _ TC 2909 HE 600)', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 705454),
	(350, 1110, 'Foil Biru Hologram H-Mind 120 Meter', 'Ball', '3', '1', '2018-03-06 20:08:38', 1, 352727),
	(351, 1178, 'FOIL BIRU NEW ALTERNATIVE 2 64X120', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(352, 1131, 'Foil Biru Square 120 m', 'Pcs', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(353, 1143, 'FOIL GOLD', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(354, 1166, 'Foil Gold 101 F uk 64cm x 120m', 'Set', '3', '1', '2018-03-06 20:08:38', 1, 165000),
	(355, 1155, 'FOIL GOLD LAMINASI 60 x 120 m', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 165000),
	(356, 1165, 'Foil Silver 120 F Uk 64cm x 120m ', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 165000),
	(357, 1179, 'FOIL SILVER ALTERNATIVE 2 64X120', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(358, 1108, 'Foil Silver Hologram Luffman 65 x 120', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 315000),
	(359, 1132, 'Foil Silver Square 240 m', 'Pcs', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(360, 3042, 'Fountain 511', 'Liter', '3', '1', '2018-03-06 20:08:38', 3, 34580),
	(361, 3046, 'Fountain DF-2', 'Liter', '3', '1', '2018-03-06 20:08:38', 3, 32500),
	(362, 3002, 'Fountain Solution', 'Liter', '3', '1', '2018-03-06 20:08:38', 3, 25000),
	(363, 5137, 'FREON R22 Chemours Shanghai', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1250000),
	(364, 5108, 'Gifer SM 102', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 200000),
	(365, 1000117, 'GIFT BOX ROBE COUNTDOWN & BELIEVE ', 'Rim', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(366, 1000113, 'GIFT BOX ROBE HOLIDAY WORD & CHRISTMAS ICONS ', 'Rim', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(367, 1000116, 'GIFT BOX ROBE PENGUIN & HOLIDAY GREETINGS ', 'Rim', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(368, 1000118, 'GIFT BOX ROBE POINSENTIAS ON RED & HELPERS ', 'Rim', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(369, 1000114, 'GIFT BOX ROBE WORDS ON RED & MOUSE', 'Rim', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(370, 1000115, 'GIFT BOX ROBE WREATH & HOLLY JOLLY ', 'Rim', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(371, 1000030, 'GIZI SUPER CREAM 9GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 140.65),
	(372, 2016, 'Good News Black', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 19818.18),
	(373, 2015, 'Good News Cyan', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(374, 2013, 'Good News Magenta', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 45136.36),
	(375, 2014, 'Good News Yellow', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(376, 3003, 'Gum Plate', 'Liter', '3', '1', '2018-03-06 20:08:38', 3, 8385.11),
	(377, 3003, 'Gum Plate', 'Pcs', '3', '1', '2018-03-06 20:08:38', 3, 725000),
	(378, 5024, 'Gum Unifin', 'Liter', '3', '1', '2018-03-06 20:08:38', 15, 28134.8),
	(379, 4004, 'Hanger Box Set', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 1),
	(380, 1000130, 'Hanger Plastik + Leaflet M + Susu (10 Pocket)', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 122.08),
	(381, 1060, 'HVS 58gr 61x86 Warrior', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 219073),
	(382, 1048, 'HVS 58gr 65x100 Warrior', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(383, 1061, 'HVS 60gr 65x100 Mirage', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(384, 1010, 'HVS 70gr 65x100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 232825.07),
	(385, 1022, 'HVS 70gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(386, 1039, 'HVS 80gr 62x86', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(387, 1042, 'HVS 80gr 65x100 Mirage', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 260356),
	(388, 1031, 'HVS 80gr 65x100 Premium', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 260342.26),
	(389, 1028, 'HVS Exceedo 70gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(390, 1040, 'HVS Roll 80gr IK Mirage White', 'Kg', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(391, 1045, 'HVS Warrior 58gr 61x86', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(392, 5007, 'IC Paper', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 98750),
	(393, 1136, 'IC PAPER RRT 20 METER', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 1973400),
	(394, 1107, 'IC Paper Uk 1150 mms x 20 mtr', 'Meter', '3', '1', '2018-03-06 20:08:38', 1, 183000),
	(395, 1105, 'IC PAPER UK. 1030 x 795 x 0.4', 'Lbr', '3', '1', '2018-03-06 20:08:38', 1, 36800),
	(396, 1000109, 'ICE COVE LID COVER ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 10.21),
	(397, 5033, 'INK FOIL SM 102', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 12500),
	(398, 1000120, 'INNER BOX FOM POWDER 1000', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 908.61),
	(399, 1000160, 'INNER BOX MEDISOFT TOOTHPASTE 50GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(400, 1000048, 'INNER CIGWELD M035', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(401, 1000049, 'INNER CIGWELD M045', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(402, 1000034, 'INNER CIGWELD RS300', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(403, 1000035, 'INNER CIGWELD RS301', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(404, 1000036, 'INNER CIGWELD RS302', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 631.95),
	(405, 1000044, 'INNER CIGWELD RW 8267', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(406, 1000045, 'INNER CIGWELD RW 8268', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(407, 1000046, 'INNER CIGWELD RW 8269', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(408, 1000047, 'INNER CIGWELD RW 8270', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(409, 1000037, 'INNER CIGWELD S 8155', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 631.95),
	(410, 1000038, 'INNER CIGWELD S 8156', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 631.95),
	(411, 1000039, 'INNER CIGWELD S 8266', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 631.95),
	(412, 1000040, 'INNER CIGWELD S 8350', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(413, 1000041, 'INNER CIGWELD S 8371', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 631.95),
	(414, 1000042, 'INNER CIGWELD S 8525', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(415, 1000043, 'INNER CIGWELD S 8526', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(416, 1000165, 'INNER COLOUR CONCEPT LIGHT BLONDE 0/77 30 ML', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(417, 1000167, 'INNER COLOUR CONDITIONING 6/4 30 ML', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(418, 1000168, 'INNER COLOUR CONDITIONING CONCEPT 2/0 30 ML', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(419, 1000166, 'INNER COLOURE CONCEPT GOLD YELLOW 7/33 30 ML ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(420, 1000022, 'INNER DUS B29', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 5500),
	(421, 3004, 'IPA Alkohol 97%', 'Liter', '3', '1', '2018-03-06 20:08:38', 3, 1),
	(422, 3043, 'IPA MURNI ', 'Liter', '3', '1', '2018-03-06 20:08:38', 3, 18750),
	(423, 3023, 'IPA Printing', 'Liter', '3', '1', '2018-03-06 20:08:38', 3, 10000),
	(424, 3045, 'Iso Prophil Alkohol', 'Liter', '3', '1', '2018-03-06 20:08:38', 3, 18250),
	(425, 1092, 'IVORY 210 72 ROLL', 'Kg', '3', '1', '2018-03-06 20:08:38', 1, 11363.64),
	(426, 1088, 'IVORY 210 72X102', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 806170.91),
	(427, 1081, 'Ivory 210gr 102 x 72', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 864084.77),
	(428, 1083, 'Ivory 210gr 50 x 81', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(429, 1084, 'Ivory 210gr 51x 79', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 442274.32),
	(430, 1056, 'Ivory 210gr 55.5x72', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 438651.82),
	(431, 1091, 'IVORY 210GR 72 x 111', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 953590.91),
	(432, 1080, 'Ivory 210gr 72 x 56.5', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(433, 1090, 'Ivory 210gr 79x102', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1057613),
	(434, 1079, 'Ivory 210gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1027448.86),
	(435, 1076, 'Ivory 210gr 79x56.5', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(436, 1147, 'Ivory 230 100 x 74', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(437, 1109, 'IVORY 230 72 X 111 ', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1237720.32),
	(438, 1095, 'IVORY 230 72 X 120', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1156189.09),
	(439, 1094, 'IVORY 230 79 X 109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1233330.05),
	(440, 1093, 'IVORY 230 79X109', 'Pcs', '3', '1', '2018-03-06 20:08:38', 1, 1125301.14),
	(441, 1173, 'Ivory 230gr 74 x 111', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(442, 1129, 'Ivory 230gr 79 x79', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(443, 1123, 'IVORY 240 79 X 109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1352710),
	(444, 1089, 'IVORY 250 73 X 92', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 953977.27),
	(445, 1057, 'Ivory 250gr 101x75', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 989914.77),
	(446, 1097, 'Ivory 250gr 109x79', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1541084.28),
	(447, 1072, 'Ivory 250gr 65x92', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(448, 1070, 'Ivory 250gr 65x94', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(449, 1071, 'Ivory 250gr 65x97', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(450, 1077, 'Ivory 250gr 70x100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1034091),
	(451, 1058, 'Ivory 250gr 72.5x114', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1080085.23),
	(452, 1130, 'Ivory 250gr 79 x 79', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(453, 1069, 'Ivory 250gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 849357.73),
	(454, 1142, 'IVORY 270 Gr 79 x 109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1750000),
	(455, 1098, 'IVORY 270gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1394981.82),
	(456, 1063, 'IVORY 300gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1855279),
	(457, 1150, 'IVORY 300gsm 65 x 100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1369142.86),
	(458, 1014, 'Ivory 350gr 65x100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1551136),
	(459, 1032, 'Ivory 350gr 78.7x109.2', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1780910),
	(460, 1038, 'Ivory 350gr 78.7x109.2', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(461, 1055, 'Ivory 350gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1972702),
	(462, 1008, 'Ivory 350gr 88.9x119.4', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(463, 1005, 'Ivory 355gr 65x100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(464, 1025, 'Ivory 355gr 78.7x109.2', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(465, 1015, 'Ivory 355gr 88.9x119.4', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(466, 1128, 'Ivory Foopack 265 Gsm 79 x 109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1576596),
	(467, 1125, 'Ivory IB 240 gsm 109 X 79', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1286953),
	(468, 1141, 'IVORY IB 250 gr 108,5 x 79', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1334427),
	(469, 1103, 'Ivory IB 250 gr 64 x 97,5', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 943091),
	(470, 1119, 'Ivory IB 250 gr 70 x 100 ', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1117758.38),
	(471, 1117, 'Ivory IB 250gr 61 x 100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 921932),
	(472, 1112, 'Ivory IB 250gr 61,5 x 100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(473, 1138, 'IVORY IP 230 72 x 113', 'RIEM', '3', '1', '2018-03-06 20:08:38', 1, 1292884),
	(474, 1082, 'Ivory Silver 210gr 102 x 72', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 862252.36),
	(475, 1078, 'Ivory Silver 210gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 505920),
	(476, 1086, 'Ivory Silver 250gr 79x109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1213368.18),
	(477, 1154, 'Ivory VA 230 72 X 113', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(478, 1126, 'Ivory VA 240 gsm 79 x 109', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1352710),
	(479, 1162, 'Ivory VA 250 gsm 109 x 79', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1501074.92),
	(480, 6006, 'JERIGEN 20 LITER', 'Pcs', '3', '1', '2018-03-06 20:08:38', 17, 1),
	(481, 5110, 'KABEL 4 X 10', 'Meter', '3', '1', '2018-03-06 20:08:38', 15, 65000),
	(482, 5111, 'KABEL 4 X 16', 'Meter', '3', '1', '2018-03-06 20:08:38', 15, 95000),
	(483, 5113, 'KABEL SCOUND 16 MM', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1500),
	(484, 5115, 'KABEL TEST 14 CM ', 'PACK', '3', '1', '2018-03-06 20:08:38', 15, 17500),
	(485, 1000087, 'KAMUS ARAB INDONESIA', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 12578.76),
	(486, 5021, 'Kanal Daiso EG Tape 0512', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 19500),
	(487, 5020, 'Kanal Daiso EG Tape 0515', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 11000),
	(488, 5014, 'Kanal Daiso EG-Tape 0513', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 16500),
	(489, 5040, 'Kanal Daiso G Tape 0513', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 19500),
	(490, 5083, 'KANAL DAISO G TAPE 0515', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(491, 5027, 'KANAL DAISO G-TAPE 0410', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 19500),
	(492, 5028, 'KANAL DAISO G-TAPE 0512', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 19500),
	(493, 5081, 'KANAL SHENGLI 0515', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(494, 5036, 'Kape Tinta', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 105000),
	(495, 5102, 'Karbon Brass uk 1,2 x 1,2 x 4 Cm', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 90000),
	(496, 4018, 'Karet Gelang', 'Kg', '3', '1', '2018-03-06 20:08:38', 4, 66000),
	(497, 5044, 'Karet Pond', 'Lbr', '3', '1', '2018-03-06 20:08:38', 15, 45000),
	(498, 6007, 'Karton', 'Kg', '3', '1', '2018-03-06 20:08:38', 17, 1),
	(499, 4025, 'KARTON BOX 39.5 X 33.3 X 19 CM ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 5500),
	(500, 4024, 'KARTON BOX 58 X 34 X 24 CM ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 10500),
	(501, 4023, 'KARTON BOX KFC K125/M125/M125', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 3750),
	(502, 4008, 'Karton Box Rokok 45 x 26 x 32', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 7533.66),
	(503, 4005, 'Karton Box Sabun', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 12780),
	(504, 5008, 'Kawat Mesin Jahit Kertas 0.55 mm', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 69600),
	(505, 1000178, 'KERTAS CETAK BOX OREO COOKIE JAR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(506, 1000162, 'KERTAS CETAK BOX OREO GEMPITA ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 549.15),
	(507, 1000139, 'KERTAS CETAK SNACK BOX KFC ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 340.33),
	(508, 1000163, 'KERTAS INNER OREO GEMPITA ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 62.59),
	(509, 1046, 'Kertas Koran Eco Print 50gr 65 cm', 'Ball', '3', '1', '2018-03-06 20:08:38', 1, 2989038.5),
	(510, 1054, 'Kertas Koran Eco Print 50gr 65cm', 'Ball', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(511, 1035, 'Kertas Pindo Putih 79x109/ Kartu Tik', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(512, 1114, 'Kertas Samson 80 gr GAJAH', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 472727),
	(513, 5136, 'Kompresor Tecumseh France TFH4531F', 'UNIT', '3', '1', '2018-03-06 20:08:38', 15, 8400000),
	(514, 50000047, 'KONTAKTOR LIMIT SWIT', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 450000),
	(515, 5100, 'KONTAKTOR MITSUBISHI 10A 380V', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 400000),
	(516, 5123, 'Kontaktor Schneider 220 V 32 A', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 235000),
	(517, 1000060, 'KOTAK BUNGKUS', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 58.7),
	(518, 1000023, 'KOTAK CAMELIA EDT 103', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(519, 4003, 'Lakban Coklat 5cm', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 7351.51),
	(520, 1167, 'LAMINASI DOF 15 micron 50x4000m ', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 1020000),
	(521, 1156, 'LAMINASI DOF 15 micron 53x4000m', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 1080000),
	(522, 1134, 'Laminasi Doff Roll 40 cm x 3000 m', 'Kg', '3', '1', '2018-03-06 20:08:38', 1, 48000),
	(523, 1169, 'LAMINASI DOFF THERMAL 18 Mic 65cm x 3000m', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 1501500),
	(524, 1172, 'Laminasi Doff Thermal Uk 0.56 x 3000m', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 1293600),
	(525, 1160, 'Laminasi Glossy 15Micron 0.5 x 4000m', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 1065000),
	(526, 1176, 'LAMINASI GLOSSY OPP 15 MIC 0.70X4000 M 38.22 KG', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(527, 1170, 'LAMINASI GLOSSY THERMAL 18mic 50cm x 3000m', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 1290000),
	(528, 1139, 'LAMINASI GLOSSY UK 80', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 1616160),
	(529, 1180, 'LAMINASI METALIZZE PET 0.79X4000 M', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 3476000),
	(530, 1146, 'LAMINASI SILVER POLOS 0,79M X 5000M', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 3476000),
	(531, 1137, 'LAMINASI SILVER POLOS 0,8M X 5000M', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 4400000),
	(532, 1151, 'LAMINASI SILVER POLOS 55 X 3000m', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 1815000),
	(533, 1161, 'LAMINASI SILVER POLOS METALLIZE 0.65m x 4000m', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 2860000),
	(534, 1149, 'LAMINASI SILVER UK 0.55 X 3.990 M ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 1, 2050950),
	(535, 1148, 'LAMINSI SILVER POLOS 0.55M X 4000M', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 2420000),
	(536, 5121, 'Lampu IR 1500 Watt P 90cm', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 400000),
	(537, 1000159, 'LAYER DOOS LIPSTIK CM ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(538, 4006, 'Layer Single Wall', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 1),
	(539, 5009, 'Lem Bending Inmelt', 'Kg', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(540, 1152, 'Lem Klise ', 'Meter', '3', '1', '2018-03-06 20:08:38', 1, 47000),
	(541, 3032, 'Lem Korea G', 'Pcs', '3', '1', '2018-03-06 20:08:38', 3, 5000),
	(542, 3041, 'Lem Metalizze PET SA 716', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 30000),
	(543, 3048, 'Lem Metalizze/Laminating PET SA 716', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 30000),
	(544, 3039, 'LEM OPP', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 26200),
	(545, 4002, 'lem Pox Putih', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 1),
	(546, 3047, 'LEM SA 780 (FOR LAMINASI FOLDER GLUE)', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 42000),
	(547, 5006, 'Lem Super Seal 258', 'Kg', '3', '1', '2018-03-06 20:08:38', 15, 33250),
	(548, 5018, 'Lem Super Seal 814', 'Kg', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(549, 4007, 'Lem Superseal 217', 'Kg', '3', '1', '2018-03-06 20:08:38', 4, 32347),
	(550, 5084, 'LEM VAP 901 UV VARNISH ', 'Klg', '3', '1', '2018-03-06 20:08:38', 15, 35000),
	(551, 5090, 'LEM VAP 951 AJ', 'Kg', '3', '1', '2018-03-06 20:08:38', 15, 25000),
	(552, 6003, 'Limbah Cacahan Kertas', 'Kg', '3', '1', '2018-03-06 20:08:38', 17, 1),
	(553, 6001, 'Limbah Ivory Kopek', 'Kg', '3', '1', '2018-03-06 20:08:38', 17, 1),
	(554, 6002, 'Limbah Lenjer Kertas', 'Kg', '3', '1', '2018-03-06 20:08:38', 17, 1),
	(555, 6005, 'Limbah Pallet Strukan', 'Kg', '3', '1', '2018-03-06 20:08:38', 17, 1),
	(556, 6010, 'Limbah Plate ', 'Lbr', '3', '1', '2018-03-06 20:08:38', 17, 1),
	(557, 6004, 'Limbah Strukan Kertas', 'Kg', '3', '1', '2018-03-06 20:08:38', 17, 1),
	(558, 5124, 'Limit Sensor', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 500000),
	(559, 1000132, 'LUSIN 12 FULL COL.HANGER MODEL TARIK (LOCAL) 18,0X9,3X1,1 CM', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 513.85),
	(560, 1000147, 'M BOX HI MATTE (12 PCS) DUPLEX ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(561, 5030, 'Majun', 'Kg', '3', '1', '2018-03-06 20:08:38', 15, 5000),
	(562, 3005, 'Majun', 'Pcs', '3', '1', '2018-03-06 20:08:38', 3, 705454),
	(563, 1181, 'Master Foil ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(564, 1012, 'Matt paper 150gr 65x100', 'Rim', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(565, 3037, 'N-contex', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 74600),
	(566, 5061, 'NEPEL 10', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(567, 5062, 'NEPEL 12 MM', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(568, 5066, 'NEPEL 3/4 MM', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(569, 5063, 'NEPEL 4/6 MM', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(570, 5064, 'NEPEL 6/10 MM ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(571, 5059, 'NEPEL PU 4', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(572, 5060, 'NEPEL PU 6', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(573, 2106, 'New Cahaya Proses Black', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 60000),
	(574, 2107, 'New Cahaya Proses Cyan', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 71000),
	(575, 2108, 'New Cahaya Proses Magenta', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 67000),
	(576, 2109, 'New Cahaya Proses Yellow', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 63000),
	(577, 3014, 'New Mol Kain Roll Air Web', 'Pcs', '3', '1', '2018-03-06 20:08:38', 3, 195000),
	(578, 3034, 'Oil Meditran s sae 40', 'Liter', '3', '1', '2018-03-06 20:08:38', 3, 21532),
	(579, 5005, 'Oli Mesin SAE', 'Liter', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(580, 1000011, 'OLIVE HERBAL 150 GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 175.03),
	(581, 1000133, 'OLIVE ICE MINT 115 GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 328.67),
	(582, 1000077, 'OLIVE RED 100 GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 140.79),
	(583, 1000010, 'OLIVE RED 125 GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 206.34),
	(584, 1000079, 'OLIVE RED 40 GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 72.18),
	(585, 1000012, 'OLIVE RED 45 GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 40.32),
	(586, 1000013, 'OLIVE SABUN 70 GREEN', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 134.76),
	(587, 1000014, 'OLIVE SABUN 70 PINK', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 107.96),
	(588, 1000015, 'OLIVE SABUN 70 WHITE', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 95.8),
	(589, 1000016, 'OLIVE SABUN 70 YELLOW', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(590, 3015, 'OO Varnish', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 58000),
	(591, 3015, 'OO Varnish', 'Pcs', '3', '1', '2018-03-06 20:08:38', 3, 58000),
	(592, 4021, 'Opp G. Tape C', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 6875),
	(593, 1000081, 'OUTERPACK AXIS', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 117.01),
	(594, 1000104, 'OUTERPACK AXIS HITZ ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 88.72),
	(595, 1000105, 'OUTERPACK SIMPATI 4G (10.000)', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 723159.04),
	(596, 1000095, 'OUTERPACK SIMPATI 4G (50.000)', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 3552.97),
	(597, 1000082, 'OUTERPACK XL', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 145.27),
	(598, 1000091, 'OUTERPACK ZAMTEL + FORM', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 228.81),
	(599, 5101, 'OVER LOAD MITSUBISHI', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 300000),
	(600, 2055, 'Pantone 032 C Red', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(601, 2054, 'Pantone 072 C Blue', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 175000),
	(602, 2032, 'Pantone 4975 C Brown', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(603, 1000127, 'PAPER 12/24 COL HANGER U.18 X 9.5 X 1.1 CM ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 692.15),
	(604, 1000131, 'PAPER 24 FULL COL.KIKO P.HANGER U.18,3X18X1,2CM', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 2343.84),
	(605, 1159, 'PAPER CUP (75 X 45)', 'Lbr', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(606, 1157, 'PAPER CUP (75 X 50 CM)', 'Lbr', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(607, 1158, 'PAPER CUP (77 X 45)', 'Lbr', '3', '1', '2018-03-06 20:08:38', 1, 1),
	(608, 1000097, 'Paper Tray (18,5 x 11,5 x 3,6 cm)', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 241.28),
	(609, 1000172, 'PAPER TRAY (LONG POTATO)', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(610, 3007, 'Pastapur', 'Klg', '3', '1', '2018-03-06 20:08:38', 3, 330000),
	(611, 1000018, 'PEANUT SHELL NS WAFER 180GR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 593.63),
	(612, 5039, 'PERTINAX POND', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 250000),
	(613, 3044, 'Photo Initiator Tinta UV', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 320000),
	(614, 5131, 'Pilot Lamp 220 VAC', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 7000),
	(615, 5042, 'PISAU AYYASI AYAM 6 UP', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 588000),
	(616, 5043, 'PISAU AYYASI KENTANG 14 UP', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1153500),
	(617, 5051, 'Pisau Bolumasspro', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 924000),
	(618, 5079, 'Pisau Die Cut Luffman 18 Ups', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 3610000),
	(619, 5078, 'PISAU Fom 1000G', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 740000),
	(620, 5073, 'PISAU NEW SEHAT PERISAI 20 UPS', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 2109900),
	(621, 5046, 'PISAU POND BOLU 1 UPS', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 303000),
	(622, 5047, 'PISAU POND HAPPY CONETARO 54 UPS', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 951500),
	(623, 5052, 'Pisau Pond Robe 2 Ups', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 848000),
	(624, 5038, 'Pisau Pond Siku Kanan', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 35000),
	(625, 5037, 'Pisau Pond Siku Kiri', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 35000),
	(626, 5041, 'PISAU POND SIMPATI 4G (NAKAYAMA', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 482150),
	(627, 5053, 'PISAU POND SIMPATI 4G VIKING', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 500000),
	(628, 5074, 'PISAU SABUN SEHAT JUNIOR 20 UPS', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 2186900),
	(629, 5048, 'PISAU SEHAT PERISAI, 25 Ups Laser Biasa, Papan Lokal 18mm', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 2521300),
	(630, 5050, 'PISAU SPARE ROKOK', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 35000),
	(631, 5072, 'Pisau Sriboga Le Gitt', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 1036500),
	(632, 5077, 'PISO BDL PAPAYA 128 GR MASS 18 Ups', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 2050000),
	(633, 5076, 'PISO BDL PAPAYA 60GR MASS 15 Ups', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 1603000),
	(634, 5075, 'PISO DORA 28 Ups', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 2800000),
	(635, 5070, 'PISO MEDISOFT 20 Ups', 'Set', '3', '1', '2018-03-06 20:08:38', 15, 2108000),
	(636, 5045, 'PISO_AYU_FA Jigsaw Pisau Biasa 20 Ups', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1605000),
	(637, 4019, 'Plastik 20 x 30', 'Kg', '3', '1', '2018-03-06 20:08:38', 18, 25500),
	(638, 1113, 'PLASTIK HANGER 0,7m-Susu', 'Pcs', '3', '1', '2018-03-06 20:08:38', 18, 1),
	(639, 4009, 'Plastik PE Roll 100 x 60 (Rokok)', 'Ball', '3', '1', '2018-03-06 20:08:38', 4, 280000),
	(640, 1127, 'PLASTIK PVC 0,12 Mic 140 cm x 50 mtr', 'Roll', '3', '1', '2018-03-06 20:08:38', 1, 285000),
	(641, 1106, 'Plastik Pvc 0,18 mc 1,4 x 50 m (Roll)', 'Roll', '3', '1', '2018-03-06 20:08:38', 18, 425000),
	(642, 1106, 'Plastik Pvc 0,18mc 1,4x50m', 'Ball', '3', '1', '2018-03-06 20:08:38', 1, 425000),
	(643, 4013, 'PLASTIK PVC 050X700X1000mm', 'Lbr', '3', '1', '2018-03-06 20:08:38', 18, 1),
	(644, 4014, 'PLASTIK PVC 050X700X1000mm', 'Lbr', '3', '1', '2018-03-06 20:08:38', 18, 1),
	(645, 4017, 'Plastik Wrapping', 'Roll', '3', '1', '2018-03-06 20:08:38', 18, 1),
	(646, 5003, 'Plate Cleaner', 'Liter', '3', '1', '2018-03-06 20:08:38', 15, 21301.08),
	(647, 5003, 'Plate Cleaner', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 22000),
	(648, 5015, 'Plate CTP 1030 x 770', 'Lbr', '3', '1', '2018-03-06 20:08:38', 14, 40200),
	(649, 5016, 'Plate CTP 1030 x 790', 'Lbr', '3', '1', '2018-03-06 20:08:38', 14, 41000),
	(650, 5019, 'Plate CTP 400 x 510', 'Lbr', '3', '1', '2018-03-06 20:08:38', 14, 7453),
	(651, 5022, 'Plate CTP 459 x 525', 'Lbr', '3', '1', '2018-03-06 20:08:38', 14, 8452),
	(652, 5092, 'Plate CTP 795 x 1050 x 0.3', 'Lbr', '3', '1', '2018-03-06 20:08:38', 14, 47000),
	(653, 5032, 'Plate CTP Blackwood 1030 x 770', 'Lbr', '3', '1', '2018-03-06 20:08:38', 14, 43000),
	(654, 5029, 'Plate CTP Blackwood 1030X790', 'Lbr', '3', '1', '2018-03-06 20:08:38', 14, 44000),
	(655, 4011, 'Plate Still Band', 'Roll', '3', '1', '2018-03-06 20:08:38', 4, 772728),
	(656, 5010, 'Pompa Kecil', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(657, 5099, 'Preon + Tabung R 134-13 KG', 'Kg', '3', '1', '2018-03-06 20:08:38', 15, 1150000),
	(658, 5098, 'Preon + Tabung R 22-13 KG', 'Kg', '3', '1', '2018-03-06 20:08:38', 15, 950000),
	(659, 1000119, 'PRODUKSI CERMAI ( KERTAS UK 58 X 83 )', 'Rim', '3', '1', '2018-03-06 20:08:38', 16, 208810.91),
	(660, 5128, 'Push Botton', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 250000),
	(661, 5106, 'R. UV Varnish 205 x 1080 P.As : 1430', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 13336000),
	(662, 50000048, 'REWINDING MOTOR', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(663, 3078, 'Rol-o-past', 'Pot', '3', '1', '2018-03-06 20:08:38', 3, 245000),
	(664, 3026, 'RW002 - UV Roller Wash', 'Liter', '3', '1', '2018-03-06 20:08:38', 3, 27500),
	(665, 3008, 'RWA Roll Cleaner', 'Liter', '3', '1', '2018-03-06 20:08:38', 3, 10500),
	(666, 1000075, 'Sabun Dora', 'Pcs', '3', '1', '2018-03-06 20:08:38', 16, 14.62),
	(667, 1000174, 'SAMPLE FOLDING BOX RIBOTIDE 500 GR', 'Lot', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(668, 1000175, 'SAMPLE FOLDING BOX RIBOTRE 5KG', 'Lot', '3', '1', '2018-03-06 20:08:38', 16, 1),
	(669, 2067, 'SBN Sehat Blue P 286 C', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 150000),
	(670, 2068, 'SBN Sehat Red P 199 C', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 130000),
	(671, 5097, 'Selenoid Valve VF.3130 DC21-26V', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1100000),
	(672, 5057, 'SLANG PU 10 MM', 'Meter', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(673, 5058, 'SLANG PU 12 MM', 'Meter', '3', '1', '2018-03-06 20:08:38', 15, 12000),
	(674, 5055, 'SLANG PU 4 MM ', 'Meter', '3', '1', '2018-03-06 20:08:38', 15, 5000),
	(675, 5056, 'SLANG PU 6 MM', 'Meter', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(676, 5114, 'SOLASI NITO ', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 9000),
	(677, 3009, 'Spare Gum', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 22725.57),
	(678, 3009, 'Spare Gum', 'Pcs', '3', '1', '2018-03-06 20:08:38', 3, 62000),
	(679, 3010, 'Sponge Viskovita', 'Pcs', '3', '1', '2018-03-06 20:08:38', 3, 18580.65),
	(680, 3011, 'Spray Powder', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 70000),
	(681, 3011, 'Spray Powder', 'Pcs', '3', '1', '2018-03-06 20:08:38', 3, 80000),
	(682, 4020, 'STAPLES 24/6 ETONA', 'Dus', '3', '1', '2018-03-06 20:08:38', 4, 49000),
	(683, 2027, 'Stapples Pantone 485 C Red', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(684, 1168, 'Sticker Hati Purbasari Color Matte 13mm x 13mm', 'Pcs', '3', '1', '2018-03-06 20:08:38', 1, 40),
	(685, 4026, 'STIKER LOVE 1.81', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 1),
	(686, 4027, 'STIKER LOVE 1.84', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 1),
	(687, 4028, 'STIKER LOVE 1.88', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 1),
	(688, 4029, 'STIKER LOVE 1.89', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 1),
	(689, 4030, 'STIKER LOVE 1.90', 'Pcs', '3', '1', '2018-03-06 20:08:38', 4, 1),
	(690, 4001, 'Stretch Film 17 mic 50x250m', 'Roll', '3', '1', '2018-03-06 20:08:38', 4, 62000),
	(691, 5035, 'SUCKER AUTOMATIC DIECUT YAWA', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1),
	(692, 3020, 'SUMA UV Coating L2', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 72500),
	(693, 2118, 'TC 0615 CF ORANGE', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 287100),
	(694, 2102, 'TC 0615 Orange', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 160677.08),
	(695, 2043, 'TC 2005 Rhodamine Red', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 560000),
	(696, 2111, 'TC 4005 GREEN ', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 189973.92),
	(697, 3033, 'TC Reducer', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 59300),
	(698, 2131, 'Tinta Blok Oreo Blue Siegwerk', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 227000),
	(699, 2117, 'TINTA KFC ND RED - W', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 120295.14),
	(700, 3016, 'Umuc Micure OP Vanish', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 72500),
	(701, 3016, 'Umuc Micure Op Varnish', 'Pcs', '3', '1', '2018-03-06 20:08:38', 3, 72500),
	(702, 3025, 'UV Endless Varnish HG', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 1),
	(703, 2046, 'UV LC 700 White', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(704, 2045, 'UV LC Process Black', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(705, 2048, 'UV LC Process Cyan', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(706, 2047, 'UV LC Process Magenta ', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(707, 2049, 'UV LC Process Yellow', 'Kg', '3', '1', '2018-03-06 20:08:38', 2, 1),
	(708, 5103, 'Valve - 9982 MFH-5-1/8 Vesto', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1090000),
	(709, 5104, 'Valve PEV-1/4-B Vesto', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 1740000),
	(710, 3017, 'Varnish UV Coating 661-13', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 1),
	(711, 3018, 'Varnish UV Coating 661-15', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 1),
	(712, 5117, 'V-BELT 1.5mm x 7cm', 'Meter', '3', '1', '2018-03-06 20:08:38', 15, 280000),
	(713, 5133, 'V-BELT 2700x15x4cm', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 305000),
	(714, 5135, 'V-BELT 3340x15x4cm', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 365000),
	(715, 5134, 'V-BELT 3780x15x4cm', 'Pcs', '3', '1', '2018-03-06 20:08:38', 15, 411000),
	(716, 3038, 'VERNISH MFU 3581S (SUMA)', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 73500),
	(717, 3024, 'Water Base BC HPR', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 1),
	(718, 3019, 'Water Base BC PR 77 Oil', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 39000),
	(719, 3021, 'Water Base Glossy', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 1),
	(720, 3027, 'Water Base High Gloss BC-HPR 740', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 34000),
	(721, 3035, 'Waterbase Blisterpack', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 90440),
	(722, 3031, 'WB In Line (HPR-IL)', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 33000),
	(723, 3040, 'WB SUPER RUB', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 40000),
	(724, 3030, 'White Grease', 'Klg', '3', '1', '2018-03-06 20:08:38', 3, 250000),
	(725, 3036, 'Whitening Water Base Coating', 'Kg', '3', '1', '2018-03-06 20:08:38', 3, 150000);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- Dumping data for table big.mesin: ~28 rows (approximately)
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
	(11, 'HOT FOIL - 1', '4', '<p>HOT FOIL - 1</p>\r\n', '1', '2018-03-11 06:08:17'),
	(12, 'HOT FOIL - 2', '4', '<p>HOT FOIL - 2</p>\r\n', '1', '2018-03-11 06:08:20'),
	(13, 'HOT FOIL - 3', '4', '<p>HOT FOIL - 3</p>\r\n', '1', '2018-03-11 06:08:23'),
	(14, 'HOT FOIL - 4', '4', '<p>HOT FOIL - 4</p>\r\n', '1', '2018-03-11 06:08:26'),
	(15, 'HOT FOIL - 5', '4', '<p>HOT FOIL - 5</p>\r\n', '1', '2018-03-11 06:08:30'),
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
	(27, 'Mesin Cutting 2', '5', '<p>mesin potong 2</p>\r\n', '1', '2018-02-18 09:29:21'),
	(28, 'CRON', '7', NULL, '1', '2018-03-10 11:14:05');
/*!40000 ALTER TABLE `mesin` ENABLE KEYS */;

-- Dumping structure for table big.mesin_category
CREATE TABLE IF NOT EXISTS `mesin_category` (
  `categorymesinid` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT '0',
  `createdby` varchar(3) DEFAULT '0',
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`categorymesinid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table big.mesin_category: ~9 rows (approximately)
/*!40000 ALTER TABLE `mesin_category` DISABLE KEYS */;
INSERT INTO `mesin_category` (`categorymesinid`, `category`, `createdby`, `modified_at`) VALUES
	(1, 'cetak', '1', '2018-01-20 04:10:35'),
	(2, 'coating', '1', '2018-01-20 04:25:51'),
	(4, 'hot-stamping', '1', '2018-03-11 06:08:09'),
	(5, 'potong', '1', '2018-01-20 04:26:41'),
	(6, 'gluing', '1', '2018-01-20 04:26:57'),
	(7, 'plate', '1', '2018-02-10 10:41:48'),
	(8, 'pond', '1', '2018-02-18 09:26:06'),
	(9, 'sortir', '1', '2018-02-18 23:23:43'),
	(10, 'packing', '1', '2018-02-18 23:24:11'),
	(11, 'Laminating', '1', '2018-03-16 21:05:42');
/*!40000 ALTER TABLE `mesin_category` ENABLE KEYS */;

-- Dumping structure for table big.nota_transfer
CREATE TABLE IF NOT EXISTS `nota_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spk_induk` int(11) DEFAULT '0',
  `status` varchar(10) DEFAULT '0',
  `created_by` varchar(10) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10006 DEFAULT CHARSET=latin1;

-- Dumping data for table big.nota_transfer: ~6 rows (approximately)
/*!40000 ALTER TABLE `nota_transfer` DISABLE KEYS */;
INSERT INTO `nota_transfer` (`id`, `spk_induk`, `status`, `created_by`, `modified_at`) VALUES
	(10000, 246, 'OK', '1', '2018-03-13 23:33:35'),
	(10001, 0, 'OK', '1', '2018-03-13 23:33:36'),
	(10002, 246, 'OK', '1', '2018-03-13 23:35:34'),
	(10003, 0, 'OK', '1', '2018-03-13 23:35:35'),
	(10004, 246, 'OK', '1', '2018-03-13 23:39:32'),
	(10005, 249, 'OK', '1', '2018-03-13 23:40:00');
/*!40000 ALTER TABLE `nota_transfer` ENABLE KEYS */;

-- Dumping structure for table big.nota_transfer_material
CREATE TABLE IF NOT EXISTS `nota_transfer_material` (
  `nota_id` int(11) NOT NULL,
  `spk_material_id` int(11) NOT NULL,
  `qty_deliver` int(11) NOT NULL,
  `mesin_id` int(11) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table big.nota_transfer_material: ~8 rows (approximately)
/*!40000 ALTER TABLE `nota_transfer_material` DISABLE KEYS */;
INSERT INTO `nota_transfer_material` (`nota_id`, `spk_material_id`, `qty_deliver`, `mesin_id`, `keterangan`) VALUES
	(10000, 6, 7, NULL, NULL),
	(10000, 7, 8, NULL, NULL),
	(10002, 6, 4, NULL, NULL),
	(10002, 7, 2, NULL, NULL),
	(10004, 6, 33, NULL, NULL),
	(10004, 7, 32, NULL, NULL),
	(10005, 8, 2, NULL, NULL),
	(10005, 9, 3, NULL, NULL),
	(10005, 10, 1, NULL, NULL);
/*!40000 ALTER TABLE `nota_transfer_material` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table big.notification: ~13 rows (approximately)
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` (`notification_id`, `notif`, `type`, `group_id`, `subject`, `date`, `status`) VALUES
	(1, 'Anda mendapat PO Baru dari bagian Sales/Marketing', 'PO', '3', 'PO Baru Nomer ', '2018-02-24 15:33:23', 'N'),
	(2, 'Anda mendapat PO Baru dari bagian Sales/Marketing', 'PO', '3', 'PO Baru Nomer PO/031/II/2018', '2018-02-24 15:35:53', 'N'),
	(3, 'Anda mendapat SPK Baru dari bagian Production', 'SPKINDUK', '5', 'SPK Induk Baru Nomer 246', '2018-03-02 18:00:11', 'R'),
	(4, 'SPK Induk  Proses potong Di assign ke bagian Anda', 'potong', '8', 'SPK Proses potong Baru', '2018-03-02 18:01:46', 'R'),
	(5, 'SPK Induk  Proses sortir Di assign ke bagian Anda', 'sortir', '8', 'SPK Proses sortir Baru', '2018-03-02 18:01:46', 'R'),
	(6, 'Anda mendapat SPK Baru dari bagian Production', 'SPKINDUK', '5', 'SPK Induk Baru Nomer 249', '2018-03-10 11:07:58', 'R'),
	(7, 'SPK Induk  Proses cetak Di assign ke bagian Anda', 'cetak', '8', 'SPK Proses cetak Baru', '2018-03-10 11:25:35', 'R'),
	(8, 'SPK Induk  Proses potong Di assign ke bagian Anda', 'potong', '8', 'SPK Proses potong Baru', '2018-03-10 12:22:16', 'R'),
	(9, 'SPK Induk  Proses coating Di assign ke bagian Anda', 'coating', '8', 'SPK Proses coating Baru', '2018-03-10 12:22:16', 'R'),
	(10, 'SPK Induk  Proses pond Di assign ke bagian Anda', 'pond', '8', 'SPK Proses pond Baru', '2018-03-10 12:22:16', 'R'),
	(11, 'SPK Induk  Proses sortir Di assign ke bagian Anda', 'sortir', '8', 'SPK Proses sortir Baru', '2018-03-10 12:22:16', 'R'),
	(12, 'SPK Induk  Proses gluing Di assign ke bagian Anda', 'gluing', '8', 'SPK Proses gluing Baru', '2018-03-10 12:22:16', 'R'),
	(13, 'SPK Induk  Proses packing Di assign ke bagian Anda', 'packing', '8', 'SPK Proses packing Baru', '2018-03-10 12:22:16', 'R'),
	(14, 'Anda mendapat SPK Baru dari bagian Production', 'SPKINDUK', '5', 'SPK Induk Baru Nomer ', '2018-03-17 13:20:30', 'N');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- Dumping data for table big.operatormesin: ~39 rows (approximately)
/*!40000 ALTER TABLE `operatormesin` DISABLE KEYS */;
INSERT INTO `operatormesin` (`id`, `operatorname`, `created_by`, `modified_at`, `jobfinish`, `role`) VALUES
	(1, 'Dika', '1', '2018-03-10 12:17:16', 1000002, 2),
	(2, 'Deki', '1', '2018-03-11 08:21:20', 2263523, 2),
	(3, 'wawan', '1', '2018-03-10 06:35:16', 9001, 6),
	(4, 'Sueb', '1', '2018-02-21 13:58:27', 0, 7),
	(5, 'jhon', '1', '2018-02-21 13:58:38', 18022, 8),
	(6, 'Aryo', '1', '2018-03-11 08:18:42', 30700, 5),
	(7, 'mukmim', '1', '2018-02-21 13:59:04', 0, 9),
	(8, 'Udin', '1', '2018-02-21 13:59:39', 0, 10),
	(9, 'octa', '1', '2018-03-10 12:24:05', 0, 9),
	(10, 'M. Soleh', '1', '2018-03-16 17:10:22', 0, 1),
	(11, 'Salman', '1', '2018-03-16 17:10:37', 0, 1),
	(12, 'Ramdhani', '1', '2018-03-16 21:01:04', 0, 1),
	(13, 'Budi Santoso', '1', '2018-03-16 21:01:14', 0, 1),
	(14, 'Aswin', '1', '2018-03-16 21:01:26', 0, 1),
	(15, 'Solehudin', '1', '2018-03-16 21:01:31', 0, 1),
	(16, 'Alip Santoso', '1', '2018-03-16 21:01:37', 0, 1),
	(17, 'Maman Suhaemi', '1', '2018-03-16 21:01:46', 0, 8),
	(18, 'Turiman', '1', '2018-03-16 21:01:51', 0, 8),
	(19, 'Fajar Arifin', '1', '2018-03-16 21:01:58', 0, 8),
	(20, 'Achmad Tajudin', '1', '2018-03-16 21:02:05', 0, 8),
	(21, 'Ait Kustiana', '1', '2018-03-16 21:02:13', 0, 4),
	(22, 'Kiki Rizki', '1', '2018-03-16 21:02:18', 0, 4),
	(23, 'Syaiful Bahri', '1', '2018-03-16 21:02:27', 0, 4),
	(24, 'Gemi Santoso', '1', '2018-03-16 21:02:33', 0, 4),
	(25, 'Taryono', '1', '2018-03-16 21:02:38', 0, 4),
	(26, 'Rahmat Kurniawan Saputra', '1', '2018-03-16 21:02:45', 0, 4),
	(27, 'Hardiyo', '1', '2018-03-16 21:02:51', 0, 4),
	(28, 'Anton Wibisono', '1', '2018-03-16 21:02:57', 0, 4),
	(29, 'Iwan Gunawan', '1', '2018-03-16 21:03:32', 0, 6),
	(30, 'Agus Hermansyah', '1', '2018-03-16 21:03:40', 0, 6),
	(31, 'Prengki Saputra', '1', '2018-03-16 21:03:46', 0, 6),
	(32, 'Januarudin', '1', '2018-03-16 21:03:54', 0, 6),
	(33, 'Mansyur', '1', '2018-03-16 21:04:00', 0, 6),
	(34, 'Ipan Sopian', '1', '2018-03-16 21:04:13', 0, 5),
	(35, 'Johan Susanto', '1', '2018-03-16 21:04:19', 0, 5),
	(36, 'Muhamad Roi', '1', '2018-03-16 21:04:26', 0, 5),
	(37, 'Muradi', '1', '2018-03-16 21:04:32', 0, 2),
	(38, 'Supriyanto ', '1', '2018-03-16 21:04:37', 0, 2),
	(39, 'Ilyas Gani', '1', '2018-03-16 21:04:43', 0, 2),
	(40, 'Sukarman', '1', '2018-03-16 21:04:49', 0, 2),
	(41, 'Prayitno', '1', '2018-03-16 21:08:20', 0, 11);
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
	(1, 'PO026/XII/17', 1, '2017-11-01', 'IDR', '2018-01-31', '2', '1', NULL, NULL, NULL, NULL, '3307500', '', '1', '2018-02-21 08:37:30'),
	(2, 'PO027/V/2018', 1, '2018-02-22', 'IDR', '2018-02-28', '2', '1,2', '20000000', '1', '10', '120000', '80000', '', '1', '2018-03-17 16:29:24'),
	(3, 'PO024/XII/17', 1, '2017-07-05', 'IDR', '2018-05-31', '2', '1', '34000000000', '10', '10', '0', '340000000', 'New', '1', '2018-02-24 15:31:41'),
	(4, 'PO/031/II/2018', 1, '2018-02-14', 'IDR', '2018-02-28', '2', '1', '10000000', '1', '1', '100', '30000', 'New', '1', '2018-02-24 15:35:53');
/*!40000 ALTER TABLE `po` ENABLE KEYS */;

-- Dumping structure for table big.po_product
CREATE TABLE IF NOT EXISTS `po_product` (
  `po_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `po_id` int(11) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `jumlah_unit` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`po_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table big.po_product: ~0 rows (approximately)
/*!40000 ALTER TABLE `po_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `po_product` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table big.product: ~2 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`product_id`, `product_kode`, `product_name`, `product_category`, `product_desc`, `product_price`, `product_unit`, `created_by`, `modified_at`) VALUES
	(1, 1000070, 'BLANK H-MIND KHUSUS KAWASAN BATAM', '2', '<p>BUNGKUS ROKOK h-MIND</p>\r\n', '174.50', 'pcs', '1', '2018-01-20 05:16:54'),
	(2, 123321, 'TEST', '3', '<p>TEST</p>', '150', 'pcs', '1', '2018-03-17 16:29:11');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table big.proses: ~9 rows (approximately)
/*!40000 ALTER TABLE `proses` DISABLE KEYS */;
INSERT INTO `proses` (`id`, `proses`) VALUES
	(1, 'cetak'),
	(2, 'coating'),
	(4, 'hot-stamping'),
	(5, 'potong'),
	(6, 'gluing'),
	(7, 'plate'),
	(8, 'pond'),
	(9, 'sortir'),
	(10, 'packing'),
	(11, 'Laminating');
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
  `spk_induk_id` int(11) NOT NULL AUTO_INCREMENT,
  `po_id` int(11) NOT NULL,
  `spk_date` date NOT NULL,
  `description` varchar(100) NOT NULL,
  `gudang_asal` varchar(10) NOT NULL,
  `gudang_tujuan` varchar(10) NOT NULL,
  `spk_status` enum('New','WIP','Hold','Finish') NOT NULL,
  `status` int(1) NOT NULL,
  `created_by` varchar(10) NOT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`spk_induk_id`),
  KEY `po_id` (`po_id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=latin1;

-- Dumping data for table big.spk_induk: ~4 rows (approximately)
/*!40000 ALTER TABLE `spk_induk` DISABLE KEYS */;
INSERT INTO `spk_induk` (`spk_induk_id`, `po_id`, `spk_date`, `description`, `gudang_asal`, `gudang_tujuan`, `spk_status`, `status`, `created_by`, `modified_at`) VALUES
	(246, 3, '2018-02-21', 'test', '3', '2', 'New', 1, '1', '2018-03-16 17:23:50'),
	(247, 1, '2018-01-30', 'pro ares mulut tenggorokan qty100000', '3', '1', 'WIP', 1, '1', '2018-03-16 17:23:52'),
	(248, 2, '2018-02-22', 'mohon di kejar ', '3', '2', '', 0, '1', '2018-03-16 17:39:53'),
	(249, 1, '2018-03-10', 'test', '3', '1', 'New', 1, '1', '2018-03-16 17:23:57'),
	(250, 2, '2018-03-16', 'test', '3', '2', 'New', 0, '1', '2018-03-17 13:20:30');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table big.spk_material: ~10 rows (approximately)
/*!40000 ALTER TABLE `spk_material` DISABLE KEYS */;
INSERT INTO `spk_material` (`spk_induk_id`, `spk_material_id`, `kode_material`, `jumlah_material`, `satuan`, `gudang_id`, `qty_deliver`) VALUES
	(247, 1, 2, 2, 'Kg', '1', 1),
	(247, 2, 1, 20, 'Riem', '1', 10),
	(247, 3, 1, NULL, 'Riem', '1', 78),
	(247, 4, 2, 777777, 'Riem', '3', 13332),
	(248, 5, 187, 30000, 'lbr', '3', 200),
	(246, 6, 185, 1000, 'Riem', '1', 699),
	(246, 7, 13, 2, 'Kg', '1', 697),
	(249, 8, 8, 15, 'Liter', '3', 1312),
	(249, 9, 57, 1000, 'Riem', '3', 1311),
	(249, 10, 10, 2, 'Kg', '3', 1312);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table big.spk_proses_mesin: ~17 rows (approximately)
/*!40000 ALTER TABLE `spk_proses_mesin` DISABLE KEYS */;
INSERT INTO `spk_proses_mesin` (`spk_proses_id`, `proses_type`, `spk_induk`, `mesin_id`, `qty_order`, `qty_finish`, `nama_kertas`, `ukuran_kertas`, `jumlah`, `warna`, `catatan_khusus`, `created_by`, `modified_at`, `created_at`, `status_spk`, `ukuran_kertas_plano`, `description`, `ukuran_kertas_potong`, `varnish_type`, `lem_type`, `proses_ke_mesin`, `operator_mesin`) VALUES
	(1, '2', 247, 4, 600000, 556713, 'ivory', '72x56', '110000', 'C,M,Y,K,', 'perhatikan register, warna dan hasil cetakan', '1', '2018-02-21 14:18:39', '2018-01-30 16:49:55', 'Hold', '', 'mesin rusak', '', '', NULL, NULL, '2'),
	(2, '1', 247, 1, 50000, 55000, 'IVORY IP 230 72x113', '40x40', '200', 'putih', 'harap yang rapi yaa', '1', '2018-03-11 08:22:18', '2018-02-15 00:00:00', 'Finish', '', '', '', '', NULL, NULL, '1'),
	(3, '2', 247, 11, 5000, 3000, '', '', '5000', '', 'yg rapih', '1', '2018-03-10 06:33:44', '2018-02-19 00:00:00', 'WIP', '', '', '', 'doft', NULL, NULL, '2'),
	(4, '5', 247, 27, 100000, 35000, 'A4', '', '20 rim', '', '', '1', '2018-02-19 22:49:34', '2018-02-19 00:00:00', 'WIP', '4x4', '', '2x2', '', NULL, '1', '2'),
	(5, '6', 247, 22, 20000, 3000, '', '', '20000', '', 'rapet yaa', '1', '2018-03-10 06:35:16', '2018-02-16 00:00:00', 'Finish', '', '', '', '', 'aibon', NULL, '3'),
	(6, '1', 248, 2, 8000, 6811, 'A4', '20x20', '8800', 'c,m.y,k', 'dominan kanan', '1', '2018-02-21 08:50:30', '2018-02-21 00:00:00', 'Finish', '', '', '', '', NULL, NULL, '2'),
	(7, '2', 248, 4, 20000, 20050, '', '', '', '', '', '1', '2018-03-11 08:21:20', '0000-00-00 00:00:00', 'WIP', '', '', '', '', NULL, NULL, '2'),
	(8, '6', 248, 20, 12000, 1500, '', '', '44444', '', '', '1', '2018-02-21 16:37:33', '2018-02-21 00:00:00', 'WIP', '', '4444', '', '', 'keut', NULL, '3'),
	(9, '5', 246, 26, 100000, 3500, 'c', '', '111111', '', 'c', '1', '2018-03-11 08:18:42', '2018-02-22 00:00:00', 'WIP', '2x2', 'bbbb', '3x3', '', NULL, '8', '6'),
	(10, '9', 247, 0, 100000, 0, '', '', '100000', '', '', '1', '2018-02-24 16:06:23', '2018-02-21 00:00:00', 'New', '', '', '', '', NULL, NULL, NULL),
	(11, '1', 249, 1, 1000000, 100000, 'test', '2x5', '1000', 'cmyk', 'glossy', '1', '2018-03-10 11:28:43', '2018-03-10 00:00:00', 'WIP', '', '', '', '', NULL, NULL, '1'),
	(12, '5', 249, 27, 1000000, 0, 'plano', '', '3000', '', '', '1', '2018-03-10 11:47:59', '2018-03-10 00:00:00', 'New', '3x4', '', '1x2', '', NULL, '3', NULL),
	(13, '2', 249, 4, 10000, 0, '', '', '', '', '', '1', '2018-03-10 12:02:51', '2018-03-10 00:00:00', 'New', '', '', '', 'WB', NULL, NULL, NULL),
	(14, '8', 249, 18, 1000000, 0, '', '', '', '', '', '1', '2018-03-10 12:03:56', '2018-03-10 00:00:00', 'New', '', '', '', '', NULL, NULL, NULL),
	(15, '9', 249, 0, 1000000, 0, '', '', '', '', '', '1', '2018-03-10 12:06:05', '2018-03-10 00:00:00', 'New', '', '', '', '', NULL, NULL, NULL),
	(16, '6', 249, 22, 1000000, 0, '', '', '', '', '', '1', '2018-03-10 12:07:22', '2018-03-10 00:00:00', 'New', '', '', '', '', 'aibon', NULL, NULL),
	(17, '10', 249, 0, 1000000, 0, '', '', '', '', '', '1', '2018-03-10 12:07:59', '2018-03-10 00:00:00', 'New', '', '', '', '', NULL, NULL, NULL);
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
	(1, '127.0.0.1', 'admin', '$2y$08$v.Lr4yujxQxzZNdmCpgJWu7WLR5hzFDxkh0mRRmSuBartWDE93ySO', '', 'admin@admin.com', NULL, 'asGsHoh0iWTpOuVLM.EMUO900526bdd0557906ac', 1421981304, NULL, 1268889823, 1522631868, 1, 'Admin', 'System', 'ADMIN', '1234567890'),
	(2, '::1', 'user', '$2y$08$EvJBduv65f1wQQ39WNs3R.tuWvZAG5NSCE9Q29eLniyD/6OlownAG', NULL, 'indr4@ymail.com', NULL, NULL, NULL, NULL, 1501733042, 1518238464, 1, 'User', 'System', NULL, '081282222827'),
	(3, '::1', 'operatormesin', '$2y$08$TMjAbBw.FPHxOUaeJo3VueM96MLxvbB/9AMBDzYUFjl6ewPz63xdi', NULL, 'operatormesin@bigrafis.com', NULL, NULL, NULL, NULL, 1519044464, 1520725087, 1, 'operator', 'mesin', NULL, '666666666'),
	(4, '::1', 'gudang', '$2y$08$DWj0X.FrPCZoWdZ4UTYhY.c6V4z7QU2kUh6I3X/ucV.bJ5D3Ak88W', NULL, 'gu@dang.com', NULL, NULL, NULL, NULL, 1519189506, 1520654859, 1, 'gu', 'dang', NULL, '111111111');
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
