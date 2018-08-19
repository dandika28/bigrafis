<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2018-07-18 17:19:18 --> Session: The session cookie was not signed.
ERROR - 2018-07-18 17:25:47 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-07-18 17:29:32 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
ERROR - 2018-07-18 17:29:57 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `po`
JOIN `gudang` ON `po`.`gudang_id`=`gudang`.`gudang_id`
JOIN `customer` ON `po`.`customer_id`=`customer`.`id`
WHERE `po`.`id` = `favicon`.`ico`
ERROR - 2018-07-18 17:30:06 --> Query error: Unknown column 'spk_material.harga_material_satuan' in 'field list' - Invalid query: SELECT `material`.`material_name`, `spk_material`.`qty_deliver`, `spk_material`.`harga_material_satuan`, `spk_material`.`jumlah_material`, `spk_material`.`satuan`, `gudang`.`gudang_name`, `material`.`harga_satuan`
FROM `spk_induk`
JOIN `spk_material` ON `spk_induk`.`spk_induk_id`=`spk_material`.`spk_induk_id`
JOIN `material` ON `spk_material`.`kode_material`=`material`.`id`
JOIN `gudang` ON `spk_material`.`gudang_id`=`gudang`.`gudang_id`
WHERE `spk_induk`.`spk_induk_id` = 246
ERROR - 2018-07-18 17:36:50 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_induk`
JOIN `gudang` ON `spk_induk`.`gudang_asal`=`gudang`.`gudang_id`
WHERE `spk_induk`.`spk_induk_id` = `favicon`.`ico`
ERROR - 2018-07-18 17:37:05 --> Severity: Warning --> Division by zero /var/www/html/bigrafis/assets/grocery_crud/themes/datatables/views/list.php 27
ERROR - 2018-07-18 17:37:05 --> Severity: Warning --> Division by zero /var/www/html/bigrafis/assets/grocery_crud/themes/datatables/views/list.php 28
ERROR - 2018-07-18 17:40:42 --> Severity: Warning --> Division by zero /var/www/html/bigrafis/assets/grocery_crud/themes/datatables/views/list.php 27
ERROR - 2018-07-18 17:40:42 --> Severity: Warning --> Division by zero /var/www/html/bigrafis/assets/grocery_crud/themes/datatables/views/list.php 28
ERROR - 2018-07-18 17:40:43 --> Severity: Core Warning --> PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/php_mysql.dll' - /usr/lib64/php/modules/php_mysql.dll: cannot open shared object file: No such file or directory Unknown 0
IINFO - 2018-07-18 17:40:51 --> 556725
ERROR - 2018-07-18 17:40:54 --> Query error: Unknown column 'favicon.ico' in 'where clause' - Invalid query: SELECT *
FROM `spk_proses_mesin`
WHERE `spk_proses_id` = `favicon`.`ico`
ERROR - 2018-07-18 17:41:03 --> Severity: Warning --> Division by zero /var/www/html/bigrafis/assets/grocery_crud/themes/datatables/views/list.php 27
ERROR - 2018-07-18 17:41:03 --> Severity: Warning --> Division by zero /var/www/html/bigrafis/assets/grocery_crud/themes/datatables/views/list.php 28
