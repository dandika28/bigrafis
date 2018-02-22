<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Purchase extends CI_Controller {
 
    function __construct()
    {
		parent::__construct();
		$this->load->library('grocery_CRUD');
		$this->load->library('OutputView');
		$this->load->model('Mesin_model');
		$this->load->model('User_groups_model');
		$this->load->model('Operatormesin_model');
		$this->load->library('gc_dependent_select');
    }
	
	public function purchase_order ()
	{
		$crud = new Grocery_CRUD();
		$crud->set_subject('PurchaseOrder');
        $crud->set_table('po');
		$crud->unset_fields('modified_at');
		$crud->unset_columns(array('mata_uang','created_by','modified_at','gudang_id','product_id','pajak','biaya_delivery','jumlah_unit'));
		$userid = $this->ion_auth->user()->row()->id;
		$crud->field_type('created_by','hidden',$userid);
		$crud->set_relation('gudang_id', 'gudang', 'gudang_name');
		$crud->set_relation('customer_id', 'customer', 'customer_name');
		$crud->set_relation('product_id', 'product', 'product_name');
		$crud->display_as('no_po','Nomer Purchase Order');
		$crud->display_as('tanggal_po','Tanggal Purchase Order');
		$crud->display_as('gudang_id','Gudang');
		$crud->display_as('product_id','Product');
		$crud->display_as('customer_id','Customer');
		$crud->required_fields('no_po','tanggal_po','tanggal_kirim');		
		$crud->unset_print(); 
		$output = $crud->render();
        
        $data['judul'] = 'Purchase Order';
        $data['crumb'] = array('PO'=>' ', 'PO'=>'');
        $view = 'grocery'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
	}
	
	public function spk_induk() {
        
        $crud = new Grocery_CRUD();
        
        $crud->set_subject('SPK Produksi');
        $crud->set_table('spk_induk');
        //$crud->set_field_upload('cover', 'assets/uploads/covers/movie_category');
		$crud->unset_columns('created_by','po_id','gudang_asal','gudang_tujuan','description','modified_at');
        $userid = $this->ion_auth->user()->row()->id;
		$crud->field_type('created_by','hidden',$userid);
		$crud->unset_fields('modified_at');
		$crud->set_relation('gudang_asal', 'gudang', 'gudang_name');
		$crud->set_relation('gudang_tujuan', 'gudang', 'gudang_name');
		$crud->set_relation('po_id', 'po', 'no_po');
		$crud->display_as('po_id','Nomer Purchase Order');
		$crud->add_action('Material', 'fa fa-paperclip', 'purchase/spk_material','edit_button');
		$crud->unset_print();
        $output = $crud->render();
        
        $data['judul'] = 'SPK Produksi';
        $data['crumb'] = array('SPK'=>' ', 'Produksi'=>'');
        $view = 'grocery_spkinduk'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
        
    }
    
    public function spk_material($spk_induk) {
        
        $crud = new Grocery_CRUD();
        
        $crud->set_subject('Material');
		$crud->where('spk_induk_id',$spk_induk);
        $crud->set_table('spk_material');
		$crud->unset_fields('modified_at');
		$crud->unset_columns('created_by','created_at');
        $crud->unset_print();
		$crud->set_relation('kode_material', 'material', 'material_name');
		$crud->set_relation('gudang_id', 'gudang', 'gudang_name');
        $userid = $this->ion_auth->user()->row()->id;
		$crud->field_type('created_by','hidden',$userid);
		$crud->field_type('spk_induk_id','hidden',$spk_induk);
		$crud->field_type('satuan','dropdown', array(
					'Riem' => 'Riem',
					'Liter' => 'Liter',
					'Kg' => 'Kg',
					'pcs' => 'Pcs',
					'lbr' => 'Lembar'
					));
		    
        $output = $crud->render();
        
        $data['judul'] = 'Adding Material For SPK No '.$spk_induk;
        $data['crumb'] = array('ADD'=>' ', 'Material'=>'');
        $view = 'grocery'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
        
    }
    
    public function spk_proses_mesin() {
        
        $userid = $this->ion_auth->user()->row()->id;
        $group_id = $this->User_groups_model->get_group($userid);

		$crud = new Grocery_CRUD();
		$crud->set_subject('Proses Produksi');
        $crud->set_table('spk_proses_mesin');
        $crud->set_relation('spk_induk', 'spk_induk', 'spk_induk_id');
		$crud->set_relation('proses_type','proses','proses');
		if ($group_id == '8'){
			$crud->unset_add();
			$crud->unset_delete();
			$crud->unset_print();
			$crud->unset_export();
			$crud->unset_columns('created_by','mesin_id','nama_kertas','ukuran_kertas','description','jumlah','warna','catatan_khusus','modified_at','ukuran_kertas_plano','operator_mesin','ukuran_kertas_potong','varnish_type','lem_type','proses_ke_mesin');
			$crud->unset_edit_fields('created_by','created_at','spk_induk','mesin_id','nama_kertas','proses_type','ukuran_kertas','jumlah','qty_order','warna','catatan_khusus','modified_at','ukuran_kertas_plano','ukuran_kertas_potong','varnish_type','lem_type','proses_ke_mesin');
			if ($this->uri->segment(3) == 'edit'){
				$q = $this->Mesin_model->getprosestype($this->uri->segment(4));
				$ops = $this->Operatormesin_model->get_operator_role2($q);
				//print_r($ops);exit;
				$crud->field_type('operator_mesin','dropdown', $ops);
				
			}
			$crud->callback_after_insert(array($this,'operatormesinupdate'));
			$crud->callback_after_update(array($this,'operatormesinupdate'));
			
		} else {
      
		$crud->callback_field('mesin_id',array($this,'callbackmesin'));
		$crud->unset_columns('created_by','mesin_id','nama_kertas','ukuran_kertas','description','jumlah','warna','catatan_khusus','modified_at','ukuran_kertas_plano','operator_mesin','ukuran_kertas_potong','varnish_type','lem_type','proses_ke_mesin');
        $crud->field_type('created_by','hidden',$userid);
		$crud->unset_fields('modified_at');
		$crud->required_fields('category');
		$crud->unset_edit_fields('created_at','modified_at');
		$mesin = $this->Mesin_model->proses();
		$crud->field_type('proses_ke_mesin','dropdown', $mesin);
		
		$crud->required_fields('spk_induk','proses_type');
		
		
		$crud->callback_field('operator_mesin',array($this,'callbackoperator'));
		$crud->callback_after_insert(array($this,'operatormesinupdate'));
		$crud->callback_after_update(array($this,'operatormesinupdate'));
		$crud->unset_print();
		}
		$output = $crud->render();
		
        
        $data['judul'] = 'SPK Proses Mesin';
        $data['crumb'] = array('SPK'=>' ', 'Mesin'=>'');
        $view = 'grocery'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
        
    }
    
    public function material() {
        
        $crud = new Grocery_CRUD();
        
        $crud->set_subject('Material');
        $crud->set_table('material');
        $crud->required_fields('material_name','satuan');
        $crud->unset_columns('created_by');
        $userid = $this->ion_auth->user()->row()->id;
		$crud->field_type('created_by','hidden',$userid);
        $crud->display_as('meterial_name','Nama Material');
        $crud->unset_fields('modified_at');        
        $crud->unset_print();
        $output = $crud->render();
        
        $data['judul'] = 'Material';
        $data['crumb'] = array('Material'=>' ', 'Material'=>'');
        $view = 'grocery'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
        
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
        $view = 'grocery'; $template='metronic_template';
        $this->outputview->output_admin($view, $template, $data, $output);
        
    }
    
    public function mesin()
        {
                //if (!empty($_GET['q'])){
                        //if (ctype_digit($_GET['q'])) 
                                $q = $this->input->post('field-proses_type');
                                //$p = $this->input->post('area');
                                //$q = ctype_digit($_GET['q']);
                                //echo $q;
                                //$kota = $this->data_anggota_model->getkomisariat($q);
                                $mesin = $this->Mesin_model->get_mesin($q);
                                //print_r ($mesin);
                                //$data = '';
                                //$data.= "<input id='field-pembayaran' type='hidden' name='pembayaran' value='".$master['seat_sell_price']."' />";
                                $data = "";
								$data.= "<select id='field-mesin_id' name='mesin_id' data-placeholder='Select Mesin' style='display: ;'>";
                                //return $mesin;
									foreach ($mesin as $kt) {
										$data.="<option value='$kt[id]' >$kt[mesin_name]</option>\n";
									}
								$data.="</select>";
								echo $data;
                                //}
                        //}
        }
	function callbackmesin($post_array,$private_key)
        {
                //$bookdate = date('Y-m-d H:i:s');
                return "<select id='field-mesin_id' name='mesin_id' class='chosen-select chzn-done' data-placeholder='Select Mesin' style='display: ;'></select>";
        }
	function operatormesinupdate($post_array,$primary_key){
                
           $jobcurrent = $this->Operatormesin_model->getjobnumber($post_array['operator_mesin']);
		   //echo $jobcurrent;
		   $jobupdate = $post_array['qty_finish'] + $jobcurrent;
		   //echo $jobupdate;exit;
		   $this->Operatormesin_model->updatejob($post_array['operator_mesin'], $jobupdate);
        }
	public function operator_role()
        {
                //if (!empty($_GET['q'])){
                        //if (ctype_digit($_GET['q'])) 
                                $q = $this->input->post('field-proses_type');
                                //$p = $this->input->post('area');
                                //$q = ctype_digit($_GET['q']);
                                //echo $q;
                                //$kota = $this->data_anggota_model->getkomisariat($q);
                                $mesin = $this->Operatormesin_model->get_operator_role($q);
                                //print_r ($mesin);
                                //$data = '';
                                //$data.= "<input id='field-pembayaran' type='hidden' name='pembayaran' value='".$master['seat_sell_price']."' />";
                                $data = "";
								$data.= "<select id='field-operator_mesin' name='operator_mesin' data-placeholder='Select Operator' style='display: ;'>";
                                //return $mesin;
									foreach ($mesin as $kt) {
										$data.="<option value='$kt[id]' >$kt[operatorname]</option>\n";
									}
								$data.="</select>";
								echo $data;
                                //}
                        //}
		}
	function callbackoperator($post_array,$private_key)
        {
                //$bookdate = date('Y-m-d H:i:s');
                return "<select id='field-operator_mesin' name='operator_mesin' class='chosen-select chzn-done' data-placeholder='Select Operator' style='display: ;'></select>";
        }
	

}