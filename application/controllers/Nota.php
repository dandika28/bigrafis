<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Nota extends CI_Controller {

	function __construct()
    {
		parent::__construct();
		$this->load->library('grocery_CRUD');
		$this->load->library('OutputView');
		$this->load->model('crud_model');
    }

    public function index()
    {
        $crud = new Grocery_CRUD();

        $crud->set_subject('SPK Produksi');
        $crud->set_table('spk_induk');

        $crud->unset_columns('created_by','po_id','gudang_asal','gudang_tujuan','description','modified_at');
        $userid = $this->ion_auth->user()->row()->id;
		$crud->field_type('created_by','hidden',$userid);
		$crud->unset_fields('modified_at');
		$crud->set_relation('gudang_asal', 'gudang', 'gudang_name');
		$crud->set_relation('gudang_tujuan', 'gudang', 'gudang_name');
		$crud->set_relation('po_id', 'po', 'no_po');
		$crud->display_as('po_id','Nomer Purchase Order');
		$crud->add_action('Add Nota', 'fa fa-paperclip', 'nota/view','edit_button');
		$crud->unset_add();
        $crud->unset_edit();
        $crud->unset_delete();
        $crud->unset_read();
        $crud->unset_export();
        $crud->unset_print();
		//$crud->required_fields('category');
        $output = $crud->render();

        //$output = (object)array('data' => '' , 'output' => '' , 'js_files' => null , 'css_files' => null);

        $data['judul'] = ' Nota Transfer';
		$data['crumb'] = array( 'Nota' => '' );

        $template = 'metronic_template';
        $view = 'nota';
        $this->outputview->output_admin($view, $template, $data, $output);
	}

	public function new($spk_induk)
	{
		$output = (object)array('data' => '' , 'output' => '' , 'js_files' => null , 'css_files' => null);

        $data['judul'] = ' Nota Transfer';
		$data['crumb'] = array( 'Nota' => 'nota/index', 'New' => '');

        $template = 'metronic_template';
        $view = 'nota';
        $this->outputview->output_admin($view, $template, $data, $output);
	}

	public function view($spk_induk)
	{
		//$output['test'] = $this->crud_model->relation('spk_material','material','*','material.id = spk_material.kode_material', null)->result();

		$output['test'] = $this->crud_model->relation('spk_material','material','material.id = spk_material.kode_material', '*', null)->result();

        $data['judul'] = ' Nota Transfer';
		$data['crumb'] = array( 'Nota' => 'nota/index', 'View' => '');
		$output['spk'] = $spk_induk;
		$output['exporturl'] = 'nota/export';

        $template = 'metronic_template';
        $view = 'nota';

        $this->outputview->output_admin($view, $template, $data, $output);
	}

}