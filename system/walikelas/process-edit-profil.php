<?php
//panggil file config.php untuk menghubung ke server
include('system/config/conn.php');

//tempat menyimpan file
$folder="system/images/"; 

//tangkap data dari form
FILTER_INPUT(INPUT_POST, 'id_user');
FILTER_INPUT(INPUT_POST, 'pass');
$pass = md5($pass);
FILTER_INPUT(INPUT_POST, 'confirm');
$confirm = md5($confirm);
FILTER_INPUT(INPUT_POST, 'nama');
FILTER_INPUT(INPUT_POST, 'user');
FILTER_INPUT(INPUT_POST, 'level');

$data = array(
	'user' => $user,
	'pass' => $pass,
	'confirm' => $confirm,
	'level' => $level,
	'nama' => $nama
);
	$this->db->where('id_user', '$id_user');
	$this->db->update('user', $data);

	header('location:page.php?w-home&message=edit-success');  

?>
