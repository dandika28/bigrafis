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
      $this->load->model('Notification_model');
      $this->load->model('Spkmesin_model');
      $this->load->library('gc_dependent_select');
      $this->load->model('crud_model');
      $this->load->model('Product_model');
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
      $product = $this->Product_model->getproduct();
      $crud->field_type('product_id','multiselect',$product);		
		//$crud->set_relation('product_id', 'product', 'product_name');
        //$crud->field_type('jumlah_unit','multiselect',array($this,'jumlah_unit')); 

      $crud->display_as('no_po','Nomer Purchase Order');
      $crud->display_as('tanggal_po','Tanggal Purchase Order');
      $crud->display_as('gudang_id','Gudang');
      $crud->display_as('product_id','Product');
      $crud->display_as('customer_id','Customer');
      $crud->required_fields('no_po','tanggal_po','tanggal_kirim');		
      $crud->unset_print();
      $crud->unset_read();
      $crud->unset_edit(); 
      $crud->unset_delete(); 
      $crud->add_action('Report','fa fa-book','report/po_receive','');
      $crud->add_action('Receive','fa fa-clipboard','report/po_receive_prod','');
      $crud->add_action('Detail', 'fa fa-list', 'purchase/purchase_order_detail', '');
      $crud->add_action('Edit', 'fa fa-pencil', 'purchase/purchase_order_edit', '');
      $crud->add_action('Delete', 'fa fa-trash-o', 'purchase/purchase_order_delete', '');
      $crud->callback_after_insert(array($this,'po_notif'));
      $crud->callback_after_insert(array($this, 'po_product'));

      $output = $crud->render();

      $data['judul'] = 'Purchase Order';
      $data['crumb'] = array('PO'=>' ', 'PO'=>'');
      $view = 'grocery'; $template='metronic_template';
      $this->outputview->output_admin($view, $template, $data, $output);
  }

  public function purchase_order_insert(){

    $data = $this->input->post(); 

    $nomor_po = $this->input->post('no_po');
    $customer_id = $this->input->post('customer_id');
    $tanggal_po = $this->input->post('tanggal_po');
    $tgl_po = date('Y-m-d', strtotime(str_replace('/', '-', $tanggal_po)));

    $mata_uang = $this->input->post('mata_uang');
    $tanggal_kirim = $this->input->post('tanggal_kirim');
    $tgl_kirim = date('Y-m-d', strtotime(str_replace('/', '-', $tanggal_kirim)));

    $gudang_id = $this->input->post('gudang_id');
    $harga_total = $this->input->post('harga_total');
    $discount = $this->input->post('discount');
    $pajak = $this->input->post('pajak');
    $biaya_delivery = $this->input->post('biaya_delivery');
    $po_status = $this->input->post('po_status');
    $product = $this->input->post('product');
    $jumlah_unit = $this->input->post('jumlah_unit');
    $created_by = $this->input->post('created_by');

    $data = array('no_po' => $nomor_po , 'customer_id' => $customer_id, 'tanggal_po' => $tgl_po, 'mata_uang' => $mata_uang,
                  'tanggal_kirim' => $tgl_kirim, 'gudang_id' => $gudang_id, 'product_id' => implode(",", $product), 'harga_total' => $harga_total,
                  'discount' => $discount, 'pajak' => $pajak, 'biaya_delivery' => $biaya_delivery, 'po_status' => $po_status, 'jumlah_unit' => implode(",", $jumlah_unit), 'created_by' => $created_by);

    $this->crud_model->insert('po', $data);

    $po_id = $this->crud_model->selectdesc('po','id',null,null,'id',null)->result();
  
    for($i=0;$i<count($product);$i++){
      $data_po_product = array('po_id' => $po_id[0]->id, 'product_id' => $product[$i], 'jumlah_unit' => $jumlah_unit[$i]);
      $this->crud_model->insert('po_product', $data_po_product);
    }
    
    redirect('purchase/purchase_order');
}

public function purchase_order_update($id){

    $dataTemp = $this->crud_model->relation('po', 'customer', 'gudang', null ,'po.customer_id=customer.id', 'po.gudang_id=gudang.gudang_id',
     null, '*', 'po.id='.$id, null)->result();
    $productTemp = $this->crud_model->relation('po','po_product','product', null, 'po.id=po_product.po_id', 
      'po_product.product_id=product.product_id', null, '*', 'po_product.po_id='.$id, null)->result();

    $data = $this->input->post(); 

    $nomor_po = $this->input->post('no_po');
    $customer_id = $this->input->post('customer_id');
    $tanggal_po = $this->input->post('tanggal_po');
    $tgl_po = date('Y-m-d', strtotime(str_replace('/', '-', $tanggal_po)));

    $mata_uang = $this->input->post('mata_uang');
    $tanggal_kirim = $this->input->post('tanggal_kirim');
    $tgl_kirim = date('Y-m-d', strtotime(str_replace('/', '-', $tanggal_kirim)));

    $gudang_id = $this->input->post('gudang_id');
    $harga_total = $this->input->post('harga_total');
    $discount = $this->input->post('discount');
    $pajak = $this->input->post('pajak');
    $biaya_delivery = $this->input->post('biaya_delivery');
    $po_status = $this->input->post('po_status');
    $product = $this->input->post('product');
    $po_product_id = $this->input->post('po_product_id');
    $jumlah_unit = $this->input->post('jumlah_unit');
    $created_by = $this->input->post('created_by');

    $data = array('no_po' => $nomor_po , 'customer_id' => $customer_id, 'tanggal_po' => $tgl_po, 'mata_uang' => $mata_uang,
                  'tanggal_kirim' => $tgl_kirim, 'gudang_id' => $gudang_id, 'product_id' => implode(",", $product), 'harga_total' => $harga_total,
                  'discount' => $discount, 'pajak' => $pajak, 'biaya_delivery' => $biaya_delivery, 'po_status' => $po_status, 'jumlah_unit' => implode(",", $jumlah_unit), 'created_by' => $created_by);

    $this->crud_model->update('po', $data, 'id='.$id);

    //$po_id = $this->crud_model->selectdesc('po','id',null,null,'id',null)->result();
     if(count($product) < count($productTemp)){
      for($i=0;$i<count($productTemp);$i++){
        if(!empty($po_product_id[$i])){
          $data_po_product = array('product_id' => $product[$i], 'jumlah_unit' => $jumlah_unit[$i]);
          $this->crud_model->update('po_product', $data_po_product, 'po_product_id='.$po_product_id[$i]); 
        }else{
          $this->crud_model->delete('po_product','po_product_id='.$productTemp[$i]->po_product_id);
        }
      }
     }else{
      for($i=0;$i<count($product);$i++){
        if(!empty($po_product_id[$i])){
            $data_po_product = array('product_id' => $product[$i], 'jumlah_unit' => $jumlah_unit[$i]);
            $this->crud_model->update('po_product', $data_po_product, 'po_product_id='.$po_product_id[$i]); 
          }else{
            $data_po_product = array('po_id' => $id, 'product_id' => $product[$i], 'jumlah_unit' => $jumlah_unit[$i]);
            $this->crud_model->insert('po_product', $data_po_product);
          }
      }
    }
    
    redirect('purchase/purchase_order');
}

public function purchase_order_delete($id){
  $this->crud_model->delete('po', 'id='.$id);
  $this->crud_model->delete('po_product', 'po_id='.$id);
  redirect('purchase/purchase_order'); 
}

public function purchase_order_add(){

    $data['judul'] = ' Purchase Order Insert';
    $data['jsFiles'] = ' set';
    $data['crumb'] = array( 'PurchaseOrder' => '');
    $template = 'metronic_template';
    $view = 'add_custom';

    $output['customer'] = $this->crud_model->select('customer','*',null,null,null,null)->result();
    $output['gudang'] = $this->crud_model->select('gudang','*',null,null,null,null)->result();
    $output['po_status'] = $this->crud_model->get_enum_values('po','po_status');
    $output['product'] = $this->crud_model->select('product','*',null,null,null,null)->result();
    $output['url'] = 'purchase/purchase_order_insert';

    $this->outputview->output_admin($view, $template, $data, $output);    
}

public function purchase_order_detail($id)
{
    $data['judul'] = ' Purchase Order Detail';
    $data['jsFiles'] = ' set';
    $data['crumb'] = array( 'PurchaseOrder' => '');
    $template = 'metronic_template';
    $view = 'detail_custom';

    $value = $this->crud_model->relation('po', 'customer', 'gudang', null ,'po.customer_id=customer.id', 'po.gudang_id=gudang.gudang_id',
     null, '*', 'po.id='.$id, null)->result();
    $output['value'] = $value[0];
    $output['product'] = $this->crud_model->relation('po','po_product','product', null, 'po.id=po_product.po_id', 
      'po_product.product_id=product.product_id', null, '*', 'po_product.po_id='.$id, null)->result();

    $this->outputview->output_admin($view, $template, $data, $output);   
}

public function purchase_order_edit($id)
{
    $data['judul'] = ' Purchase Order Detail';
    $data['jsFiles'] = ' set';
    $data['crumb'] = array( 'PurchaseOrder' => '');
    $template = 'metronic_template';
    $view = 'edit_custom';

    $value = $this->crud_model->relation('po', 'customer', 'gudang', null ,'po.customer_id=customer.id', 'po.gudang_id=gudang.gudang_id',
     null, '*', 'po.id='.$id, null)->result();
   
    $gudang = array();
    $gudangTemp = $this->crud_model->select('gudang','*',null,null,null,null)->result();
    for ($i=0; $i < count($gudangTemp); $i++) { 
      if($gudangTemp[$i]->gudang_id!=$value[0]->gudang_id){
        array_push($gudang,$gudangTemp[$i]);
      }
    }

    $customer = array();
    $customerTemp = $this->crud_model->select('customer','*',null,null,null,null)->result();
    for ($i=0; $i < count($customerTemp); $i++) { 
      if($customerTemp[$i]->id!=$value[0]->customer_id){
        array_push($customer,$customerTemp[$i]);
      }
    }

    $po_status = array();
    $po_statusTemp = $this->crud_model->get_enum_values('po','po_status');
    for ($i=0; $i < count($po_statusTemp); $i++) { 
      if($po_statusTemp[$i]!=$value[0]->po_status){
        array_push($po_status,$po_statusTemp[$i]);
      }
    }

    $output['value'] = $value[0];
    $output['product_history'] = $this->crud_model->relation('po','po_product','product', null, 'po.id=po_product.po_id', 
      'po_product.product_id=product.product_id', null, '*', 'po_product.po_id='.$id, 'po_product_id')->result();
    $output['product'] = $this->crud_model->select('product','*',null,null,null,null)->result();
    $output['gudang'] = $gudang;
    $output['customer'] = $customer;
    $output['po_status'] = $po_status;
    $output['url'] = 'purchase/purchase_order_update/'.$id;

    $this->outputview->output_admin($view, $template, $data, $output); 
}

function jumlah_unit(){
    return '<input type="text" class="form-control" autocomplete="off" style="width: auto;">';
}
function po_product($post_array,$primary_key){
    $po_id = $this->crud_model->selectdesc('po', 'id', null, null, 'id', null)->result();
    $id = $po_id[0]->id;
    $product_id = $post_array['product_id'];
    for($i=0;$i<count($product_id);$i++){
     $data = array('po_id' => $id, 'product_id' => $product_id[$i], 'jumlah_unit' => $post_array['jumlah_unit'] );
     $this->crud_model->insert('po_product', $data);
 }
}

function po_notif($post_array,$primary_key){
    $data = array (
        "subject" => "PO Baru Nomer ".$post_array['no_po'],
        "notif" => "Anda mendapat PO Baru dari bagian Sales/Marketing",
        "type" => "PO",
        "group_id" => "3",
        "status" => "N"
    );
    $this->Notification_model->insert($data);
}
public function spk_induk() {

    $crud = new Grocery_CRUD();

    $crud->set_subject('SPK Produksi');
    $crud->set_table('spk_induk');
        //$crud->set_field_upload('cover', 'assets/uploads/covers/movie_category');
    $crud->where('status',1);
    $crud->unset_columns('created_by','po_id','gudang_asal','gudang_tujuan','description','modified_at','status');
    $userid = $this->ion_auth->user()->row()->id;
    $crud->field_type('created_by','hidden',$userid);
    $crud->unset_fields('modified_at');
    $crud->field_type('status','hidden','1');
    $crud->set_relation('gudang_asal', 'gudang', 'gudang_name');
    $crud->set_relation('gudang_tujuan', 'gudang', 'gudang_name');
    $crud->set_relation('po_id', 'po', 'no_po');
    $crud->display_as('po_id','Nomer Purchase Order');
    $crud->add_action('Material', 'fa fa-paperclip', 'purchase/spk_material','edit_button');
    $crud->add_action('Report', 'fa fa-book','report/report_spk_induk','');
    $crud->add_action('Delete', 'fa fa-trash-o','purchase/delete_spk_induk', '');
    $crud->unset_print();
    $crud->unset_delete();
    $crud->callback_after_insert(array($this,'spkinduk_notif'));

    $crud->callback_field('description',array($this,'callback_description_spk_induk' ));

    $output = $crud->render();

    $data['judul'] = 'SPK Produksi';
    $data['crumb'] = array('SPK'=>' ', 'Produksi'=>'');
    $view = 'grocery_spkinduk'; $template='metronic_template';
    $this->outputview->output_admin($view, $template, $data, $output);

}
function spkinduk_notif($post_array,$primary_key){
    $data = array (
        "subject" => "SPK Induk Baru Nomer ".$post_array['spk_induk_id'],
        "notif" => "Anda mendapat SPK Baru dari bagian Production",
        "type" => "SPKINDUK",
        "group_id" => "5",
        "status" => "N"
    );
    $this->Notification_model->insert($data);
}

public function spk_material($spk_induk) {

    $crud = new Grocery_CRUD();

    $crud->set_subject('Material');
    $crud->where('spk_induk_id',$spk_induk);
    $crud->set_table('spk_material');
    $crud->unset_fields('modified_at','qty_deliver');
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
    $crud->callback_before_insert(array($this,'spkmesin_qtyfinish'));
    $crud->callback_before_update(array($this,'spkmesin_qtyfinish'));
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
  $crud->callback_before_insert(array($this,'spkmesin_qtyfinish'));
  $crud->callback_before_update(array($this,'spkmesin_qtyfinish'));
  $crud->callback_after_insert(array($this,'operatormesinupdate'));
  $crud->callback_after_update(array($this,'operatormesinupdate'));
  $crud->callback_after_insert(array($this,'spkprosesmesin_notif'));
  $crud->unset_print();
}

$crud->columns('proses_type', 'spk_induk', 'qty_order', 'qty_finish', 'created_at', 'status_spk', 'progress');
$crud->callback_column('percent',array($this,'percent_column_callback'));

$crud->add_action('Print','fa fa-book','report/cetakspk', '');
$output = $crud->render();

$data['preview'] = 'set';
$data['judul'] = 'SPK Proses Mesin';
$data['crumb'] = array('SPK'=>' ', 'Mesin'=>'');
$output->data = $data;
$view = 'grocery'; $template='metronic_template';
$this->outputview->output_admin($view, $template, $data, $output);

}

function percent_column_callback()
{
  return '';
}

function spkprosesmesin_notif($post_array,$primary_key){
    $proses = $post_array['proses_type'];
    switch ($proses) {
        case 1:
        $proses_type = 'cetak';
        break;
        case 2:
        $proses_type = 'coating';
        break;
        case 9:
        $proses_type = 'sortir';
        break;
        case 5:
        $proses_type = 'potong';
        break;
        case 6:
        $proses_type = 'gluing';
        break;
        case 7:
        $proses_type = 'plate';
        break;
        case 8:
        $proses_type = 'pond';
        break;
        case 10:
        $proses_type = 'packing';
        break;
    }
    $data = array (
        "subject" => "SPK Proses ".$proses_type." Baru",
        "notif" => "SPK Induk ".$post_array['spk_induk_id']." Proses ".$proses_type." Di assign ke bagian Anda",
        "type" => $proses_type,
        "group_id" => "8",
        "status" => "N"
    );
    $this->Notification_model->insert($data);
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
public function descriptionPO()
{
  $q = $this->input->post('po-id');
  $description = $this->crud_model->relation('po_product', 'product', null, null,'po_product.product_id=product.product_id', null, null, '*', 'po_product.po_id='.$q,null)->result();

  $data= "";
  $data.= "<select id='field-description' name='description' data-placeholder='Select Description' style='display: ;'>";

  foreach ($description as $key => $value) {
    $data.="<option value='$value->product_name' >$value->product_name</option>\n";
  }
  $data.="</select>";
  echo $data;
}

function updatenotif()
{
    $id = $this->input->post('groupId');
        //log_message('IINFO', '=== UpdateNotif=== nilai id:'.$id);

    $q = array('table_name' => 'notification',
        'group_id' => $id,
        'status' => 'R');

    if($this->crud_model->updatenotif($q)){
        $data = "success";
    }else{
        $data = implode("|",$q);
    }

        //log_message('IINFO', '=== UpdateNotif=== out');

    echo $data;
}
function callbackmesin($post_array,$private_key)
{
                //$bookdate = date('Y-m-d H:i:s');
    return "<select id='field-mesin_id' name='mesin_id' class='chosen-select chzn-done' data-placeholder='Select Mesin' style='display: ;'></select>";
}

function callback_description_spk_induk($post_array,$private_key)
{
    return "<select id='field-description' name='description' class='chosen-select chzn-done' data-placeholder='Select Description' style='display: ;'></select>"; 
}

function operatormesinupdate($post_array,$primary_key){

    $jobcurrent = $this->Operatormesin_model->getjobnumber($post_array['operator_mesin']);
    $jobupdate = $post_array['qty_finish'] + $jobcurrent;
    $this->Operatormesin_model->updatejob($post_array['operator_mesin'], $jobupdate);

}

function spkmesin_qtyfinish($post_array,$primary_key){

   $qtyfisnishcurrent = $this->Spkmesin_model->getqtyfinish($primary_key);
   $qtyfinish = $post_array['qty_finish'] + $qtyfisnishcurrent ;
   $post_array['qty_finish'] = $qtyfinish;
   return $post_array;

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

public function delete_spk_induk($spk_induk){
    $data = array('status' => '0');
    $condition  = array('spk_induk_id' => $spk_induk);
    $this->crud_model->update('spk_induk', $data, $condition);
    redirect('purchase/spk_induk');
}
}
