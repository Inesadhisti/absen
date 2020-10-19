<?php
//panggil file config.php untuk menghubung ke server
include('system/config/conn.php');

//tempat menyimpan file
$folder="system/images/"; 

//tangkap data dari form
FILTER_INPUT(INPUT_POST, 'id_user');
FILTER_INPUT(INPUT_POST, 'pass');
$pass = md5($pass);
FILTER_INPUT(INPUT_POST, 'comfirm');
$confirm = md5($confirm);
FILTER_INPUT(INPUT_POST, 'nama');
FILTER_INPUT(INPUT_POST, 'user');
FILTER_INPUT(INPUT_POST, 'level');

//jika gambar kosong atau tidak di ganti 
	$query = mysql_query("update user set user='$user', pass='$pass', confirm='$confirm', level='$level', nama='$nama' where id_user='$id_user'");
	header('location:page.php?data-user&message=edit-success');  

?>
