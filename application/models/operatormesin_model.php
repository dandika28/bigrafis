<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Operatormesin_model extends CI_Model{
	var $table = 'operatormesin';
	function _construct(){
		parent::_construct();
	}

	function updatejob($id,$job)
	{
		$data = array(
                 'jobfinish' => $job,
                     );

		$this->db->where('id',$id);
		$this->db->update($this->table,$data);
			
	}
	
	function getjobnumber($id){
		$this->db->where ('id',$id);
		$this->db->select('jobfinish');
		$query = $this->db->get($this->table);
		
		if($query->num_rows() > 0)
		{
			$data = $query->row_array();
		}
		return $data['jobfinish'];
	}
	
   function get_operator_role($role)
	{
		$this->db->where('role',$role);
		$this->db->select('id,operatorname');
			$records = $this->db->get($this->table);
			//$data=array();
				//foreach($records->result() as $row)
				//	{
					//$data[$row->id] = $row->mesin_name;
					//}
					//return ($data);
			if ($records->num_rows() > 0 ){
			 return $records->result_array();	
			}
		else{
			 return array();	
		 }
	}
	
	function get_operator_role2($role)
	{
		$this->db->where('role',$role);
		$this->db->select('id,operatorname');
			$records = $this->db->get($this->table);
			$data=array();
				foreach($records->result() as $row)
					{
					$data[$row->id] = $row->operatorname;
					}
					return ($data);
			
	}
}
?>
