<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Notification_model extends CI_Model{
	var $table = 'notification';
	function _construct(){
		parent::_construct();
	}

	function insert ($data) {
	
		$this->db->insert($this->table,$data);
	}
	function listnotif($group){
	  
	  $this->db->where('group_id', $group);
	  $this->db->select('subject,notif,date');
	  $query = $this->db->get($this->table);
	  //$query = $this->db->query('SELECT pso,suddud,panggoaran FROM data_anggota WHERE ttl like "%'.$m.'-'.$de.'"');
				$data = $query->result_array();
                //$data['title']  = array('NO ANGGOTA','SUDDUD','PANGGOARAN', 'STATUS','TANGGAL LAHIR','ALAMAT','TELEPON','WILAYAH','KOMISARIAT','JABATAN');
                return $data;  
	  
	}
   
}
?>
