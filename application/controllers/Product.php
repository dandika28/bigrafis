<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product extends CI_Controller {
 
    function __construct()
    {
		parent::__construct();
		$this->load->library('grocery_CRUD');
		$this->load->library('OutputView');
		$this->load->model('User_groups_model');
        $this->load->model('Notification_model');
    }
	
	public function product ()
	{
		$crud = new Grocery_CRUD();
		$crud->set_subject('Product');
        $crud->set_table('product');
		$crud->unset_fields('modified_at');
		$crud->unset_columns(array('product_id','createdby','modified_at','product_desc'));
		$userid = $this->ion_auth->user()->row()->id;
		$crud->field_type('created_by','hidden',$userid);
		$crud->set_relation('product_category', 'product_category', 'category');
		$crud->display_as('product_category','Tipe Product');
		$crud->required_fields('product_kode','product_name','product_category','product_price','product_unit');		
		$crud->unset_print(); 
		$output = $crud->render();
        
        $data['judul'] = 'Product Management';
        $data['crumb'] = array('Manage'=>' ', 'Product'=>'');
        $view = 'grocery'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
	}
	
	public function product_category() {
        
        $crud = new Grocery_CRUD();
        
        $crud->set_subject('Product Category');
        $crud->set_table('product_category');
        //$crud->set_field_upload('cover', 'assets/uploads/covers/movie_category');
		$crud->unset_columns('createdby');
        $userid = $this->ion_auth->user()->row()->id;
		$crud->field_type('createdby','hidden',$userid);
		$crud->unset_fields('modified_at');
		$crud->required_fields('category');
		$crud->unset_print();
        $output = $crud->render();
        
        $data['judul'] = 'Product Category';
        $data['crumb'] = array('Product'=>' ', 'Product Category'=>'');
        $view = 'grocery'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
        
    }
    
    public function mesin() {
        
        $crud = new Grocery_CRUD();
        
        $crud->set_subject('Mesin');
        $crud->set_table('mesin');
		$crud->unset_fields('modified_at');
		$crud->unset_columns('created_by','modified_at');
        $crud->set_relation('mesin_type', 'mesin_category', 'category');
        $userid = $this->ion_auth->user()->row()->id;
		$crud->field_type('created_by','hidden',$userid);
		$crud->display_as('mesin_name','Nama Mesin');
		$crud->display_as('mesin_type','Tipe Mesin');
		$crud->display_as('desc','Description');
		$crud->display_as('jmlspk','Jumlah SPK');
		$crud->required_fields('mesin_name','mesin_type');
        $crud->unset_print();
        //$crud->set_field_upload('cover', 'assets/uploads/covers/movie');
        //$crud->set_field_upload('file', 'assets/uploads/movies');
        
        $output = $crud->render();
        
        $data['judul'] = 'Mesin Management';
        $data['crumb'] = array('Manage'=>' ', 'Mesin'=>'');
		$userid = $this->ion_auth->user()->row()->id;
        $group_id = $this->User_groups_model->get_group($userid);
		if ($group_id !='1') { 
			$template = 'metronic_template';
			$view = 'notauth';
			$this->outputview->output_admin($view, $template, $data);
		} else {
        $view = 'grocery'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
        }
    }
    
    public function mesin_category() {
        
        $crud = new Grocery_CRUD();
        
        $crud->set_subject('Mesin Category');
        $crud->set_table('mesin_category');
        //$crud->set_field_upload('cover', 'assets/uploads/covers/movie_category');
		$crud->unset_columns('createdby');
        $userid = $this->ion_auth->user()->row()->id;
		$crud->field_type('createdby','hidden',$userid);
		$crud->unset_fields('modified_at');
		$crud->required_fields('category');
		$crud->unset_print();
        $output = $crud->render();
        
        $data['judul'] = 'Mesin Category';
        $data['crumb'] = array('Mesin'=>' ', 'Mesin Category'=>'');
        $userid = $this->ion_auth->user()->row()->id;
        $group_id = $this->User_groups_model->get_group($userid);
		if ($group_id !='1') { 
			$template = 'metronic_template';
			$view = 'notauth';
			$this->outputview->output_admin($view, $template, $data);
		} else {
        $view = 'grocery'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
        }
    }
    
    public function material() {
        
        $crud = new Grocery_CRUD();
        
        $crud->set_subject('Material');
        $crud->set_table('material');
        $crud->required_fields('material_name','satuan');
        $crud->unset_columns('created_by','gudang_id');
        $userid = $this->ion_auth->user()->row()->id;
		$crud->field_type('created_by','hidden',$userid);
        $crud->display_as('meterial_name','Nama Material');
		$crud->set_relation('gudang_id', 'gudang', 'gudang_name');
		$crud->set_relation('category_id', 'material_category', 'material_category_name');
        $crud->unset_fields('modified_at');        
        $crud->unset_print();
        $output = $crud->render();
        
        $data['judul'] = 'Material';
        $data['crumb'] = array('Material'=>' ', 'Material'=>'');
        $userid = $this->ion_auth->user()->row()->id;
        $group_id = $this->User_groups_model->get_group($userid);
		if ($group_id !='1' && $group_id !='5') { 
			$template = 'metronic_template';
			$view = 'notauth';
			$this->outputview->output_admin($view, $template, $data);
		} else {
        $view = 'grocery'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
        }
    }
	public function material_category() {
        
        $crud = new Grocery_CRUD();
        
        $crud->set_subject('Material Category');
        $crud->set_table('material_category');
        $crud->unset_print();
		$crud->unset_columns('createdby');
        $userid = $this->ion_auth->user()->row()->id;
		$crud->field_type('createdby','hidden',$userid);
		$crud->unset_fields('modified_at');
		$crud->required_fields('material_category_name');
        $output = $crud->render();
        
        $data['judul'] = 'Material Category';
        $data['crumb'] = array('Material'=>' ', 'Material Category'=>'');
		$userid = $this->ion_auth->user()->row()->id;
        $group_id = $this->User_groups_model->get_group($userid);
        if ($group_id !='1' || $group_id !='5') { 
			$template = 'metronic_template';
			$view = 'notauth';
			$this->outputview->output_admin($view, $template, $data);
		} else {
        $view = 'grocery'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
        }
        
    }
    
    public function gudang() {
        
        $crud = new Grocery_CRUD();
        
        $crud->set_subject('Gudang');
        $crud->set_table('gudang');
        $crud->required_fields('gudang_name');
        $crud->unset_columns('created_by');
        $userid = $this->ion_auth->user()->row()->id;
		$crud->field_type('created_by','hidden',$userid);
        $crud->display_as('gudang_name','Nama Gudang');
        $crud->unset_fields('modified_at');    
        $crud->unset_print();
        $output = $crud->render();
        
        $data['judul'] = 'Gudang';
        $data['crumb'] = array('Gudang'=>' ', 'Gudang'=>'');
		$userid = $this->ion_auth->user()->row()->id;
        $group_id = $this->User_groups_model->get_group($userid);
        if ($group_id !='1' && $group_id !='5') { 
			$template = 'metronic_template';
			$view = 'notauth';
			$this->outputview->output_admin($view, $template, $data);
		} else {
        $view = 'grocery'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
        }
        
    }
    
    public function operatormesin() {
        
        $crud = new Grocery_CRUD();
        
        $crud->set_subject('Operator Mesin');
        $crud->set_table('operatormesin');
        $crud->set_relation('role', 'proses', 'proses');
		$crud->unset_columns('created_by');
        $userid = $this->ion_auth->user()->row()->id;
		$crud->field_type('created_by','hidden',$userid);
		$crud->unset_fields('modified_at','jobfinish');
		$crud->required_fields('operator_name');
		$crud->unset_print();
        $output = $crud->render();
        
        $data['judul'] = 'Operator Mesin';
        $data['crumb'] = array('Operator'=>' ', 'Mesin'=>'');
        $userid = $this->ion_auth->user()->row()->id;
        $group_id = $this->User_groups_model->get_group($userid);
		if ($group_id !='1') { 
			$template = 'metronic_template';
			$view = 'notauth';
			$this->outputview->output_admin($view, $template, $data);
		} else {
        $view = 'grocery'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
        }
        
    }

}