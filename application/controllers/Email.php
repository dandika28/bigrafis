 <?php defined('BASEPATH') OR exit('No direct script access allowed');  
 class Email extends CI_Controller {  
  public function send()  
  {  
   $this->email->set_newline("\r\n");  
   $this->email->from('aryocrane@gmail.com', 'Admin Re:Code');   
   $this->email->to('aryopraseno@outlook.com,arisman7@gmail.com,gunawan.arifiyanto@gmail.com');   
   $this->email->subject('Percobaan email');   
   $this->email->message('Ini adalah email percobaan untuk Tutorial CodeIgniter: Mengirim Email via Gmail SMTP menggunakan Email Library CodeIgniter @ recodeku.blogspot.com');  
   if (!$this->email->send()) {  
    show_error($this->email->print_debugger());   
   }else{  
    echo 'Success to send email';   
   }  
  }  
 }  