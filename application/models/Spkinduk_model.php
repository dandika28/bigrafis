<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Spkinduk_model extends CI_Model{
	var $table = 'view_report_spk_mesin';
	function _construct(){
		parent::_construct();
	}

	function getspk_by_status($status){
		if ($status == 'all') {
		$this->db->group_by('spk_induk');
		$query = $this->db->get($this->table);
			if($query->num_rows() > 0)
			{
				$data = $query->result_array();
				return $data;
			} 
		} else {
		$this->db->where ('spk_status',$status);
		$this->db->group_by('spk_induk');
		$query = $this->db->get($this->table);
		
		if($query->num_rows() > 0)
		{
			$data = $query->result_array();
			return $data;
		} else {
			$data = array("Nodata" => "No Data found");
			return $data;
		}
		}
		
	}
	
	function getspkmesin_by_status ($status) {
		
		if ($status == 'all') {
			$query = $this->db->get($this->table);
			if($query->num_rows() > 0)
			{
				$data = $query->result_array();
				return $data;
			} 
		} else {
		$this->db->where ('spk_status',$status);
		
		$query = $this->db->get($this->table);
		
		if($query->num_rows() > 0)
		{
			$data = $query->result_array();
			return $data;
		} else {
			$data = array("Nodata" => "No Data found");
			return $data;
		}
		}
	}
	
   
}
?>
