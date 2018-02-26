<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Report extends CI_Controller {
 
    function __construct()
    {
		parent::__construct();
		//$this->load->library('grocery_CRUD');
		$this->load->library('OutputView');
		$this->load->model('crud_model');
		
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

	public function po_receive($id)
	{
		//$output = (object)array('data' => '' , 'output' => '' , 'js_files' => null , 'css_files' => null);

        $data['judul'] = 'PURCHASE ORDER RECEIVED';
        
        //$value = $this->crud_model->select('po','*','id='.$id)->result();
        $value = $this->crud_model->relation('po','gudang','customer',null,'po.gudang_id=gudang.gudang_id','po.customer_id=customer.id',null,'*','po.id='.$id)->result();
        $senddate = new DateTime($value[0]->tanggal_kirim);

        //output
        $output['param'] = 'nonprod';
        $output['valuetable'] = $this->crud_model->relation('po','product',null,null,'po.product_id=product.product_id',null,null,'*','po.id='.$id)->result();
        $output['no'] = $value[0]->no_po;
        $output['tgl'] = $this->tanggal_indo($value[0]->tanggal_po);
        $output['currency'] = $value[0]->mata_uang;
        $output['send_date'] = $senddate->format('d/m/Y');
        $output['gudang'] = $value[0]->gudang_name;
        $output['customername'] = $value[0]->customer_name;
        $output['customercontact'] = $value[0]->customer_contact;
        $output['customeraddress'] = $value[0]->customer_address;

        $template = 'metronic_template';
        $view = 'po_receive';
        $this->outputview->output_admin($view, $template, $data, $output);
	}

	public function po_receive_prod($id)
	{
		//$output = (object)array('data' => '' , 'output' => '' , 'js_files' => null , 'css_files' => null);

        $data['judul'] = 'PURCHASE ORDER RECEIVED';

        $value = $this->crud_model->relation('po','gudang','customer',null,'po.gudang_id=gudang.gudang_id','po.customer_id=customer.id',null,'*','po.id='.$id)->result();
        $senddate = new DateTime($value[0]->tanggal_kirim);

        //output
        $output['param'] = 'prod';
        $output['valuetable'] = $this->crud_model->relation('po','product',null,null,'po.product_id=product.product_id',null,null,'*','po.id='.$id)->result();
        $output['no'] = $value[0]->no_po;
        $output['tgl'] = $this->tanggal_indo($value[0]->tanggal_po);
        $output['currency'] = $value[0]->mata_uang;
        $output['send_date'] = $senddate->format('d/m/Y');
        $output['gudang'] = $value[0]->gudang_name;
        $output['customername'] = $value[0]->customer_name;
        $output['customercontact'] = $value[0]->customer_contact;
        $output['customeraddress'] = $value[0]->customer_address;

        $template = 'metronic_template';
        $view = 'po_receive';
        $this->outputview->output_admin($view, $template, $data, $output);
	}

    public function cetakspk($spk_proses_id)
    {
        $value = $this->crud_model->relation('spk_induk','spk_proses_mesin', 'po', 'product', 'spk_induk.spk_induk_id=spk_proses_mesin.spk_induk','spk_induk.po_id=po.id','po.product_id=product.product_id','spk_induk.spk_induk_id, spk_proses_mesin.proses_type, product.product_name, spk_proses_mesin.qty_order, spk_proses_mesin.nama_kertas, spk_proses_mesin.ukuran_kertas, spk_proses_mesin.ukuran_kertas_plano, spk_proses_mesin.ukuran_kertas_potong, spk_proses_mesin.jumlah, spk_proses_mesin.warna, spk_proses_mesin.proses_ke_mesin, spk_proses_mesin.catatan_khusus, spk_proses_mesin.varnish_type','spk_proses_mesin.spk_proses_id='.$spk_proses_id)->result();

        $data['judul'] = 'SPK PRODUKSI';
        $data['subjudul'] = 'VARNISH';

        $output['data'] = $value[0];
        $output['param'] = $value[0]->proses_type;
        $output['param1'] = 'text-center';

        $template = 'metronic_template';
        $view = 'spk';
        $this->outputview->output_admin($view, $template, $data, $output);

    }

	public function report_spk_induk($spk_induk)
    {
        //$output = (object)array('data' => '' , 'output' => '' , 'js_files' => null , 'css_files' => null);

        $data['judul'] = 'PRODUKSI';
        $data['crumb'] = array( 'Report' => '');

        $value = $this->crud_model->relation('spk_induk','gudang',null,null,'spk_induk.gudang_asal=gudang.gudang_id',null,null,'*','spk_induk.spk_induk_id='.$spk_induk)->result();
        $gudangtujuan = $this->crud_model->relation('spk_induk','gudang',null,null,'spk_induk.gudang_tujuan=gudang.gudang_id',null,null,'gudang_name','spk_induk.spk_induk_id='.$spk_induk)->result();
        $valuetable = $this->crud_model->relation('spk_induk','spk_material','material','gudang','spk_induk.spk_induk_id=spk_material.spk_induk_id','spk_material.kode_material=material.id','spk_material.gudang_id=gudang.gudang_id','material.material_name, spk_material.jumlah_material, spk_material.satuan, gudang.gudang_name','spk_induk.spk_induk_id='.$spk_induk)->result();
        //output
        $output['spkdata'] = $valuetable;
        $output['nomor'] = $value[0]->spk_induk_id;
        $output['tgl'] = $this->tanggal_indo($value[0]->spk_date);
        $output['desc'] = $value[0]->description;
        $output['gdasal'] = $value[0]->gudang_name;
       	$output['gdtujuan'] = $gudangtujuan[0]->gudang_name;

        $template = 'metronic_template';
        $view = 'report';
        $this->outputview->output_admin($view, $template, $data, $output);
    }

    public function tanggal_indo($tanggal)
	{
		$bulan = array (1 =>   'Januari',
					'Februari',
					'Maret',
					'April',
					'Mei',
					'Juni',
					'Juli',
					'Agustus',
					'September',
					'Oktober',
					'November',
					'Desember'
				);


		$split = explode('-', $tanggal);
		return $bulan[ (int)$split[1] ] . ' ' . $split[2] . ', ' . $split[0];
	}
}