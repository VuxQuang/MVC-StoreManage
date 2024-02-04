<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Brands extends Admin_Controller 
{
	public function __construct()
	{
		parent::__construct();

		$this->not_logged_in();

		$this->data['page_title'] = 'Quản Lý Nhãn Hiệu';

		$this->load->model('model_brands');
	}

	/* 
	* It only redirects to the manage product page and
	*/
	public function index()
	{
		if(!in_array('viewBrand', $this->permission)) {
			redirect('dashboard', 'refresh');
		}

		$result = $this->model_brands->getBrandData();

		$this->data['results'] = $result;

		$this->render_template('brands/index', $this->data);
	}

	/*
	* Fetches the brand data from the brand table 
	* this function is called from the datatable ajax function
	*/
	public function fetchBrandData()
	{
		$result = array('data' => array());

		$data = $this->model_brands->getBrandData();
		foreach ($data as $key => $value) {

			// button
			$buttons = '';

			if(in_array('viewBrand', $this->permission)) {
				$buttons .= '<button type="button" class="btn btn-default" onclick="editBrand('.$value['id'].')" data-toggle="modal" data-target="#editBrandModal"><i class="fa fa-pencil"></i> Sửa</button>';	
			}
			
			if(in_array('deleteBrand', $this->permission)) {
				$buttons .= ' <button type="button" class="btn btn-default" onclick="removeBrand('.$value['id'].')" data-toggle="modal" data-target="#removeBrandModal"><i class="fa fa-trash"></i> Xóa</button>
				';
			}				

			$status = ($value['active'] == 1) ? '<span class="label label-success">Hoạt động</span>' : '<span class="label label-warning">Ngừng hoạt động</span>';

			$result['data'][$key] = array(
				$value['name'],
				$status,
				$buttons
			);
		} // /foreach

		echo json_encode($result);
	}

	/*
	* It checks if it gets the brand id and retreives
	* the brand information from the brand model and 
	* returns the data into json format. 
	* This function is invoked from the view page.
	*/
	public function fetchBrandDataById($id)
	{
		if($id) {
			$data = $this->model_brands->getBrandData($id);
			echo json_encode($data);
		}

		return false;
	}

	/*
	* Its checks the brand form validation 
	* and if the validation is successfully then it inserts the data into the database 
	* and returns the json format operation messages
	*/
	public function create()
	{

		if(!in_array('createBrand', $this->permission)) {
			redirect('dashboard', 'refresh');
		}

		$response = array();

		$this->form_validation->set_rules('brand_name', 'Brand name', 'trim|required');
		$this->form_validation->set_rules('active', 'Active', 'trim|required');

		$this->form_validation->set_error_delimiters('<p class="text-danger">','</p>');

        if ($this->form_validation->run() == TRUE) {
        	$data = array(
        		'name' => $this->input->post('brand_name'),
        		'active' => $this->input->post('active'),	
        	);

        	$create = $this->model_brands->create($data);
        	if($create == true) {
        		$response['success'] = true;
        		$response['messages'] = 'Tạo thành công';
        	}
        	else {
        		$response['success'] = false;
        		$response['messages'] = 'Lỗi trong cơ sở dữ liệu trong khi tạo thông tin thương hiệu';			
        	}
        }
        else {
        	$response['success'] = false;
        	foreach ($_POST as $key => $value) {
        		$response['messages'][$key] = form_error($key);
        	}
        }

        echo json_encode($response);

	}

	/*
	* Its checks the brand form validation 
	* and if the validation is successfully then it updates the data into the database 
	* and returns the json format operation messages
	*/
	public function update($id)
	{
		if(!in_array('updateBrand', $this->permission)) {
			redirect('dashboard', 'refresh');
		}

		$response = array();

		if($id) {
			$this->form_validation->set_rules('edit_brand_name', 'Brand name', 'trim|required');
			$this->form_validation->set_rules('edit_active', 'Active', 'trim|required');

			$this->form_validation->set_error_delimiters('<p class="text-danger">','</p>');

	        if ($this->form_validation->run() == TRUE) {
	        	$data = array(
	        		'name' => $this->input->post('edit_brand_name'),
	        		'active' => $this->input->post('edit_active'),	
	        	);

	        	$update = $this->model_brands->update($data, $id);
	        	if($update == true) {
	        		$response['success'] = true;
	        		$response['messages'] = 'Cập nhật thành công';
	        	}
	        	else {
	        		$response['success'] = false;
	        		$response['messages'] = 'Lỗi trong cơ sở dữ liệu trong khi tạo thông tin thương hiệu';			
	        	}
	        }
	        else {
	        	$response['success'] = false;
	        	foreach ($_POST as $key => $value) {
	        		$response['messages'][$key] = form_error($key);
	        	}
	        }
		}
		else {
			$response['success'] = false;
    		$response['messages'] = 'Lỗi xin vui lòng làm mới trang một lần nữa !!!';
		}

		echo json_encode($response);
	}

	/*
	* It removes the brand information from the database 
	* and returns the json format operation messages
	*/
	public function remove()
	{
		if(!in_array('deleteBrand', $this->permission)) {
			redirect('dashboard', 'refresh');
		}
		
		$brand_id = $this->input->post('brand_id');
		$response = array();
		if($brand_id) {
			$delete = $this->model_brands->remove($brand_id);

			if($delete == true) {
				$response['success'] = true;
				$response['messages'] = "Xóa thành công";	
			}
			else {
				$response['success'] = false;
				$response['messages'] = "Lỗi trong cơ sở dữ liệu trong khi tạo thông tin thương hiệu";
			}
		}
		else {
			$response['success'] = false;
			$response['messages'] = "Làm mới trang một lần nữa !!!";
		}

		echo json_encode($response);
	}

}