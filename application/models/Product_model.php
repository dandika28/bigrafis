<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product_model extends CI_Model{
	var $table = 'product';
	function _construct(){
		parent::_construct();
	}


	function getproduct()
	{
		$this->db->select('product_id,product_name');
			$records = $this->db->get($this->table);
			$data=array();
				foreach($records->result() as $row)
					{
					$data[$row->product_id] = $row->product_name;
					}
					return ($data);
			
	}
}
?>
