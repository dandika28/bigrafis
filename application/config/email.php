<?php  
defined('BASEPATH') OR exit('No direct script access allowed');
$config['protocol'] = 'sendmail';
$config['mailpath'] = '/usr/sbin/sendmail';
$config['charset'] = 'iso-8859-1';
$config['wordwrap'] = TRUE;
$config['protocol'] = 'smtp';  
$config['smtp_host'] = 'ssl://smtp.googlemail.com';  
$config['smtp_port'] = '465';  
$config['smtp_user'] = 'aryocrane@gmail.com';   
$config['smtp_pass'] = 'bidazdmczvxqlvto';   
$config['mailtype'] = 'html';  

//$this->email->initialize($config);
