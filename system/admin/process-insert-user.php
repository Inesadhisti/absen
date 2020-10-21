<?php
//panggil file config.php untuk menghubung ke server
include('system/config/conn.php');

//tempat menyimpan file
$folder="system/images/"; 

//tangkap data dari form

FILTER_INPUT(INPUT_POST, 'pass');
$pass = md5($pass);
FILTER_INPUT(INPUT_POST, 'confirm');
$confirm = md5($confirm);
FILTER_INPUT(INPUT_POST, 'nama');
FILTER_INPUT(INPUT_POST, 'user');
FILTER_INPUT(INPUT_POST, 'level');

//menghindari duplikat username
$cek = 	$this->db->select('user');
$this->db->where('$user');
$cek= $this->db->get('user);
$no = $cek->result_array();
$ada= $cek->result_array();
if($ada->result_array()>0)
{
	<?= "<script>alert ('Username Telah Terdaftar ! Silahkan Periksa Kembali !');window.location='page.php?tambah-user' </script> " >?;
	}

else {

$data = array(
        ' ' => ' ',
        'user' => '$user',
        'pass' => '$pass',
		'confirm => '$confirm',
		'level' => '$level',
        'nama' => '$nama',
		'foto => '$foto'
);
$this->db->insert('user', $data);

	header('location:page.php?data-user&message=insert-success');
	} 
?>
