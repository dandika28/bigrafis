<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mesin_model extends CI_Model{
	var $table = 'mesin';
	function _construct(){
		parent::_construct();
	}

	function proses()
	{
		$this->db->where('mesin_type','1');
		$this->db->select('id,mesin_name');
			$records = $this->db->get($this->table);
			$data=array();
				foreach($records->result() as $row)
					{
					$data[$row->id] = $row->mesin_name;
					}
					return ($data);
	}
	
	
	function get_mesin($type)
	{
		//$mesintype = $this->db->query('select categorymesinid from mesin_category where category ="'.$type.'"');
		//$riw = $mesintype->row();
		//echo $row->name;
		$this->db->where('mesin_type',$type);
		$this->db->select('id,mesin_name');
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
	
//fungsi untuk mengedit data Daily berdasarkan id
	function editDaily($job_id){
		$data = array(
			'user_id' => $this->input->post('user_id'),
			'job_type' => $this->input->post('job_type'),
			'requestor' => $this->input->post('requestor'),
			'date' => $this->input->post('date'),
			'remark' => $this->input->post('remark')
		);
		$this->db->where('job_id',$job_id);
		$this->db->update($this->table,$data);
	}
	
	function getprosestype($id)
   {
		$qu = $this->db
			->select('proses_type')
			->where('spk_proses_id', $id)
			->get('spk_proses_mesin');
		return $qu->row()->proses_type;
   }

//fungsi untuk menghapus data Daily berdasarkan id Daily
	function deleteDaily($job_id,$job_type){
		$this->db->where('job_id',$job_id);
		$this->db->delete($this->table);
		if($job_type == 'RFC'){$job = 'rfc';}
		else if($job_type == 'incident'){$job = 'incident';}
		else if($job_type == 'other'){$job = 'other';}
		$this->db->where('job_id',$job_id);
		$this->db->delete($job);
	}
//fungsi query daily dan RFC
	function Dailyrfc($job_id)
	{
		$data = array();
		$this->db->where('job_id',$job_id);
		$this->db->select('*');
		$this->db->from('daily');
		$this->db->join('rfc','rfc.jobs_id = daily.jobs_id');
		$query = $this->db->get($this->table);
		
		if($query->num_rows() > 0)
		{
			$data = $query->row_array();
		}
		return $data;
		
	}

	function getallmesin()
	{
		$query = $this->db->query('select a.id, a.mesin_name, a.mesin_type, a.desc, (select count(b.spk_proses_id) from spk_proses_mesin b where b.mesin_id = a.id) as jumlahspk from mesin a');
				
		if($query->num_rows() > 0)
		{
			return $query->row_array();
		}
		
		
	}

   function get_mesinid($id)
   {
		$qu = $this->db
			->select('id')
			->where('id', $id)
			->get($this->table);
		return $qu->row()->id;
   }
	
	function getjob_id()
	{
		$data = array();
		$this->db->select_max('job_id');
		$query = $this->db->get($this->table);
		
		if($query->num_rows() > 0)
		{
			$data = $query->row_array();
		}
		return $data['job_id'];
		
	}

   function get_id($usernya)
   {
		$qu = $this->db
			->select('user_id')
			->where('name', $usernya)
			->get('user');
		return $qu->row()->user_id;
   }
   
}
?>
