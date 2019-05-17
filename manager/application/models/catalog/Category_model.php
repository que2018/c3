<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Category_model extends CI_Model
{		
	public function add_category($data)
	{
		$this->db->trans_begin();
		
		$category_data = array(	
			'name'	         => $data['name'],
			'description'	 => $data['description'],
			'image'	         => $data['image'],
			'parent_id'	     => $data['parent_id'],
			'top'	 		 => $data['top'],
			'sort_order'	 => $data['sort_order'],
			'date_added'   	 => date('Y-m-d H:i:s'),
			'date_modified'  => date('Y-m-d H:i:s')
		);
		
		$this->db->insert('category', $category_data);
		
		$category_id = $this->db->insert_id();
		
		$level = 0;
		
		$this->db->select('*', false);
		$this->db->from('category_path');
		$this->db->where('category_id', $data['parent_id']);
		$this->db->order_by('level', 'ASC');

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			$results = $q->result_array();
			
			foreach($results as $result) 
			{
				$category_path_data = array(	
					'category_id'  => $category_id,
					'path_id'	   => $result['path_id'],
					'level'   	   => $level
				);
				
				$this->db->insert('category_path', $category_path_data);
				
				$level++;
			}
		}			
		
		$category_path_data = array(	
			'category_id'  => $category_id,
			'path_id'	   => $category_id,
			'level'   	   => $level
		);

		$this->db->insert('category_path', $category_path_data);
				
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $category_id;
		}
	}
	
	public function edit_category($category_id, $data)
	{
		$this->db->trans_begin();
		
		$category_data = array(	
			'name'	         => $data['name'],
			'description'	 => $data['description'],
			'image'	         => $data['image'],
			'parent_id'	     => $data['parent_id'],
			'top'	         => $data['top'],
			'featured'	     => $data['featured'],
			'sort_order'	 => $data['sort_order'],
			'date_modified'  => date('Y-m-d H:i:s')
		);
		
		$this->db->where('category_id', $category_id);
		$this->db->update('category', $category_data);
		
		$this->db->select('*', false);
		$this->db->from('category_path');
		$this->db->where('path_id', $category_id);
		$this->db->order_by('level', 'ASC');
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			$categories_path = $q->result_array();
			
			foreach($categories_path as $category_path) 
			{
				$this->db->where('category_id', $category_path['category_id']);
				$this->db->where('level<', $category_path['level']);
				$this->db->delete('category_path');
				
				$path = array();
				
				$this->db->select('*', false);
				$this->db->from('category_path');
				$this->db->where('category_id', $data['parent_id']);
				$this->db->order_by('level', 'ASC');
				
				$q = $this->db->get();

				if($q->num_rows() > 0)
				{
					$results = $q->result_array();
					
					foreach ($results as $result) 
					{
						$path[] = $result['path_id'];
					}
				}
				
				$this->db->select('*', false);
				$this->db->from('category_path');
				$this->db->where('category_id', $category_path['category_id']);
				$this->db->order_by('level', 'ASC');
				
				$q = $this->db->get();
				
				if($q->num_rows() > 0)
				{
					$results = $q->result_array();
					
					foreach ($results as $result) 
					{
						$path[] = $result['path_id'];
					}
				}
				
				$level = 0;

				foreach ($path as $path_id) 
				{
					$category_path = array(
						'category_id' => $category_path['category_id'],
						'path_id'     => $path_id,
						'level'       => $level
					);

					$this->db->replace('category_path', $category_path);
					
					$level++;
				}
			}
		}
		else
		{
			$this->db->delete('category_path', array('category_id' => $category_id));
		
			$level = 0;
			
			$this->db->select('*', false);
			$this->db->from('category_path');
			$this->db->where('category_id', $data['parent_id']);
			$this->db->order_by('level', 'ASC');
			
			$q = $this->db->get();
			
			if($q->num_rows() > 0)
			{
				$results = $q->result_array();
				
				foreach ($results as $result) 
				{					
					$category_path_data = array(	
						'category_id' => $category_id,
						'path_id'	  => $result['path_id'],
						'level'   	  => $result['level']
					);
					
					$this->db->insert('category_path', $category_path_data);
					
					$level++;
				}
			}
				
			$category_path = array(
				'category_id' => $category_id,
				'path_id'     => $category_id,
				'level'       => $level
			);

			$this->db->replace('category_path', $category_path);
		}
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			return true;
		}
	}
	
	public function get_category($category_id) 
	{						
		$q = $this->db->query("SELECT DISTINCT *, (SELECT GROUP_CONCAT(c1.name ORDER BY level SEPARATOR '&nbsp;&nbsp;&gt;&nbsp;&nbsp;') FROM category_path cp LEFT JOIN category c1 ON (cp.path_id = c1.category_id AND cp.category_id != cp.path_id) WHERE cp.category_id = c.category_id GROUP BY cp.category_id) AS path FROM category c LEFT JOIN category c2 ON (c.category_id = c2.category_id) WHERE c.category_id = '" . (int)$category_id . "'");
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}

	public function delete_category($category_id) 
	{
		$this->db->trans_begin();
		
		$this->db->delete('category_path', array('category_id' => $category_id));
		
		$q = $this->db->get_where('category_path', array('path_id' => $category_id));

		if($q->num_rows() > 0)
		{
			$results = $q->result_array();
			
			foreach($results as $result) 
			{
				$this->delete_category($result['category_id']);
			}
		}
		
		$this->db->delete('category', array('category_id' => $category_id));
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return true;
		}
	}

	public function get_categories($data) 
	{
		$sql = "SELECT cp.category_id AS category_id, GROUP_CONCAT(c3.name ORDER BY cp.level SEPARATOR '&nbsp;&nbsp;&gt;&nbsp;&nbsp;') AS name, c1.parent_id, c1.sort_order FROM category_path cp LEFT JOIN category c1 ON (cp.category_id = c1.category_id) LEFT JOIN category c2 ON (cp.path_id = c2.category_id) LEFT JOIN category c3 ON (cp.path_id = c3.category_id) LEFT JOIN category c4 ON (cp.category_id = c4.category_id)";
		
		if(!empty($data['filter_name'])) 
		{
			$sql .= " WHERE c3.name LIKE '%" . $data['filter_name'] . "%'";
		}

		$sql .= " GROUP BY cp.category_id";

		$sort_data = array(
			'c3.name',
			'c3.sort_order'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY c3.sort_order";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$q = $this->db->query($sql);

		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_category_total($data) 
	{
		$this->db->select('COUNT(category.category_id) AS total', false);
		$this->db->from('category');
		
		if(!empty($data['filter_name'])) 
		{
			$this->db->like('name', $data['filter_name'], 'both');
		}

		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}
