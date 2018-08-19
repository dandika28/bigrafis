<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2018-08-15 18:46:47 --> Session: The session cookie was not signed.
ERROR - 2018-08-15 18:49:42 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 18:50:04 --> Severity: Warning --> Division by zero /var/www/html/bigrafis/assets/grocery_crud/themes/datatables/views/list.php 27
ERROR - 2018-08-15 18:50:04 --> Severity: Warning --> Division by zero /var/www/html/bigrafis/assets/grocery_crud/themes/datatables/views/list.php 28
ERROR - 2018-08-15 18:50:14 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_induk`
JOIN `spk_proses_mesin` ON `spk_induk`.`spk_induk_id`=`spk_proses_mesin`.`spk_induk`
JOIN `po` ON `spk_induk`.`po_id`=`po`.`id`
JOIN `product` ON `po`.`product_id`=`product`.`product_id`
WHERE `spk_proses_mesin`.`spk_proses_id` = `favicon`.`ico`
ERROR - 2018-08-15 18:50:14 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 18:53:02 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_induk`
JOIN `spk_proses_mesin` ON `spk_induk`.`spk_induk_id`=`spk_proses_mesin`.`spk_induk`
JOIN `po` ON `spk_induk`.`po_id`=`po`.`id`
JOIN `product` ON `po`.`product_id`=`product`.`product_id`
WHERE `spk_proses_mesin`.`spk_proses_id` = `favicon`.`ico`
ERROR - 2018-08-15 18:55:43 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 18:56:04 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 19:07:42 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_material`
JOIN `material` ON `material`.`id` = `spk_material`.`kode_material`
WHERE `spk_material`.`spk_induk_id` = `favicon`.`ico`
ERROR - 2018-08-15 19:07:42 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 19:29:28 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 19:33:52 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 19:34:10 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 19:36:00 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_induk`
JOIN `gudang` ON `spk_induk`.`gudang_asal`=`gudang`.`gudang_id`
WHERE `spk_induk`.`spk_induk_id` = `favicon`.`ico`
ERROR - 2018-08-15 19:36:58 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 19:57:37 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 19:57:57 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 19:58:56 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_material`
WHERE `spk_material_id` = `favicon`.`ico`
ERROR - 2018-08-15 20:12:12 --> Severity: Parsing Error --> syntax error, unexpected T_VARIABLE /var/www/html/bigrafis/application/controllers/Product.php 137
ERROR - 2018-08-15 20:12:12 --> Severity: Parsing Error --> syntax error, unexpected T_VARIABLE /var/www/html/bigrafis/application/controllers/Product.php 137
ERROR - 2018-08-15 20:12:43 --> Severity: Parsing Error --> syntax error, unexpected T_VARIABLE /var/www/html/bigrafis/application/controllers/Product.php 137
ERROR - 2018-08-15 20:12:54 --> Severity: Parsing Error --> syntax error, unexpected T_VARIABLE /var/www/html/bigrafis/application/controllers/Product.php 137
ERROR - 2018-08-15 20:15:55 --> Severity: Warning --> Missing argument 2 for Product::material_name_with_code() /var/www/html/bigrafis/application/controllers/Product.php 244
ERROR - 2018-08-15 20:18:18 --> Severity: Warning --> Missing argument 2 for Product::material_name_with_code() /var/www/html/bigrafis/application/controllers/Product.php 244
ERROR - 2018-08-15 20:18:36 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 20:22:24 --> Severity: Warning --> Missing argument 2 for Product::material_name_with_code() /var/www/html/bigrafis/application/controllers/Product.php 244
ERROR - 2018-08-15 20:22:51 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 20:27:02 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_material`
WHERE `spk_material_id` = `favicon`.`ico`
ERROR - 2018-08-15 20:44:28 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_material`
WHERE `spk_material_id` = `favicon`.`ico`
ERROR - 2018-08-15 20:46:52 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_material`
WHERE `spk_material_id` = `favicon`.`ico`
ERROR - 2018-08-15 20:51:01 --> Session: The session cookie was not signed.
ERROR - 2018-08-15 20:51:01 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 20:51:36 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 20:52:07 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 20:52:19 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_material`
WHERE `spk_material_id` = `favicon`.`ico`
ERROR - 2018-08-15 20:52:59 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_material`
WHERE `spk_material_id` = `favicon`.`ico`
ERROR - 2018-08-15 20:53:26 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 20:53:40 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_material`
WHERE `spk_material_id` = `favicon`.`ico`
ERROR - 2018-08-15 20:53:40 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 20:56:33 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 20:56:46 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_material`
WHERE `spk_material_id` = `favicon`.`ico`
ERROR - 2018-08-15 20:56:49 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 20:56:52 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 20:56:53 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 20:56:57 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 20:58:28 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 20:58:46 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_material`
WHERE `spk_material_id` = `favicon`.`ico`
ERROR - 2018-08-15 21:20:59 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 21:22:32 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 21:23:53 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_material`
WHERE `spk_material_id` = `favicon`.`ico`
ERROR - 2018-08-15 21:31:10 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 21:32:20 --> Severity: Warning --> Missing argument 1 for Purchase::spk_material() /var/www/html/bigrafis/application/controllers/Purchase.php 349
ERROR - 2018-08-15 21:32:20 --> Severity: Notice --> Undefined variable: spk_induk /var/www/html/bigrafis/application/controllers/Purchase.php 354
ERROR - 2018-08-15 21:32:20 --> Severity: Notice --> Undefined variable: spk_induk /var/www/html/bigrafis/application/controllers/Purchase.php 363
ERROR - 2018-08-15 21:32:20 --> Severity: Notice --> Undefined variable: spk_induk /var/www/html/bigrafis/application/controllers/Purchase.php 383
ERROR - 2018-08-15 21:40:45 --> Severity: Warning --> Missing argument 2 for Purchase::harga_satuan_custom() /var/www/html/bigrafis/application/controllers/Purchase.php 392
ERROR - 2018-08-15 21:40:45 --> Severity: Error --> Unsupported operand types /var/www/html/bigrafis/application/controllers/Purchase.php 394
ERROR - 2018-08-15 21:42:43 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 21:42:59 --> Severity: Warning --> Missing argument 2 for Purchase::harga_satuan_custom() /var/www/html/bigrafis/application/controllers/Purchase.php 392
ERROR - 2018-08-15 21:42:59 --> Severity: Notice --> Array to string conversion /var/www/html/bigrafis/system/database/DB_driver.php 1392
ERROR - 2018-08-15 21:42:59 --> Query error: Unknown column 'Array' in 'field list' - Invalid query: INSERT INTO `spk_material` (`spk_induk_id`, `kode_material`, `jumlah_material`, `satuan`, `gudang_id`, `harga_material_satuan`) VALUES ('247', '728', '321', 'pcs', '1', Array)
ERROR - 2018-08-15 21:44:24 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-08-15 21:44:36 --> Severity: Warning --> Missing argument 2 for Purchase::harga_satuan_custom() /var/www/html/bigrafis/application/controllers/Purchase.php 392
ERROR - 2018-08-15 21:45:08 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_material`
WHERE `spk_material_id` = `favicon`.`ico`
