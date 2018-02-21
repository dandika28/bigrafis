<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Customer extends CI_Controller {
 
    function __construct()
    {
		parent::__construct();
		$this->load->library('grocery_CRUD');
		$this->load->library('OutputView');
    }
	
	public function customer ()
	{
		$crud = new Grocery_CRUD();
		$crud->set_subject('Customer');
        $crud->set_table('customer');
		$crud->unset_fields('modified_at');
		$crud->unset_columns(array('customer_address','created_by','modified_at','customer_phone','customer_email','customer_phone','customer_fax','customer_country','customer_postal'));
		$userid = $this->ion_auth->user()->row()->id;
		$crud->field_type('created_by','hidden',$userid);
		//$crud->set_relation('product_category', 'product_category', 'category');
		//$crud->display_as('product_category','Tipe Product');
		$crud->required_fields('customer_kode','customer_name','customer_contact','customer_address','customer_phone','customer_city');		
		$crud->unset_print(); 
		$output = $crud->render();
        
        $data['judul'] = 'Customer Management';
        $data['crumb'] = array('Manage'=>' ', 'Customer'=>'');
        $view = 'grocery'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
	}
	
	public function deky(){
		
		$this->load->view('test');
	}
	
}