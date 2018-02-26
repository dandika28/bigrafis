<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Crud_model extends CI_Model {

	function __construct()
	{
		parent::__construct();
	}

	function select($table, $fields, $where, $limit = null, $order = null, $group_by = null)
	{
		$this->db->from($table);
		$this->db->select($fields);
		if ($where != null) {
			$this->db->where($where);
		}

		if ($limit != null) {
			$this->db->limit($limit);
		}

		if ($order != null) {
			$this->db->order_by($order);
		}

		if ($group_by != null) {
			$this->db->group_by($group_by);
		}

		return $this->db->get();
	}

	function insert($table, $data)
	{
		$this->db->insert($table, $data);
	}

	function update($table, $data, $where)
	{
        $this->db->where($where); 
        $this->db->update($table, $data);
	}

	function delete($table, $where)
	{
        $this->db->where($where);
        $this->db->delete($table);
	}

	function get_id()
	{
		$id = $this->db->insert_id();
		return $id;
	}

	function columns($table)
	{
		return $this->db->list_fields($table);
	}

	function sum($table, $fields, $where = null)
	{
		$this->db->select_sum($fields);
		if ($where != null) {
			$this->db->where($where);
		}

		return $this->db->get($table);
	}

	function tables()
	{
		return $this->db->list_tables();
	}

	function relation($table1, $table2, $table3, $table4, $param, $param2, $param3, $fields, $where){
		$this->db->select($fields);
		$this->db->from($table1);
		$this->db->join($table2, $param);
		if($table3 != null && $param2 !=null){
			$this->db->join($table3, $param2);
		}
		if($table4 != null && $param3 !=null){
			$this->db->join($table4, $param3);
		}
		if ($where != null) {
			$this->db->where($where);
		}

		return $this->db->get();
	}
}
/* End of file crud_model.php */
/* Location: ./application/models/crud_model.php */