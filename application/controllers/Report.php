<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Report extends CI_Controller {
 
    function __construct()
    {
		parent::__construct();
		$this->load->library('grocery_CRUD');
		$this->load->library('OutputView');
		
    }
	
	public function mesinreport ()
	{
		$crud = new Grocery_CRUD();
		$crud->set_subject('Report Per Mesin');
        $crud->set_table('view_reportmesin');
		$crud->set_primary_key('id');
		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_read();
		$crud->display_as('jumlahspk','Jumlah SPK');
		$crud->unset_print(); 
		$crud->unset_columns('id');
		$output = $crud->render();
        
        $data['judul'] = 'Report Mesin';
        $data['crumb'] = array('Report'=>' ', 'Mesin'=>'');
        $view = 'grocery'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
	}
	
	

}