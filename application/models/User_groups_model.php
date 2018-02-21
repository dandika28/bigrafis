<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User_groups_model extends CI_Model{
        var $table = 'users_groups';
        function _construct(){
                parent::_construct();
        }

        function get_group($user_id) {
                
                $this->db->where('user_id', $user_id);
                $this->db->select('group_id');
                $query = $this->db->get($this->table);
                foreach ($query->result() as $row)
                                        {
                                                return $row->group_id;
                                        }
                
        }
}
