<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Spkmesin_model extends CI_Model{
	var $table = 'spk_proses_mesin';
	function _construct(){
		parent::_construct();
	}

	function updateqtyfinish($id,$qty)
	{
		$data = array(
                 'qty_finish' => $qty,
                     );

		$this->db->where('spk_proses_id',$id);
		$this->db->update($this->table,$data);
			
	}
	
	function getqtyfinish($id){
		$this->db->where ('spk_proses_id',$id);
		$this->db->select('qty_finish');
		$query = $this->db->get($this->table);
		
		if($query->num_rows() > 0)
		{
			$data = $query->row_array();
		}
		return $data['qty_finish'];
	}
	
   
}
?>
