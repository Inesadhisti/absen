<?php
//panggil file config.php untuk menghubung ke server
include('system/config/conn.php');

//tempat menyimpan file
$folder="system/images/"; 

//tangkap data dari form
$id_user = $_POST['id_user'];
$pass = $_POST['pass'];
$pass = md5($pass);
$confirm = $_POST['confirm'];
$confirm = md5($confirm);
$nama = $_POST['nama'];
$user = $_POST['user'];
$level = $_POST['level'];

//jika gambar kosong atau tidak di ganti 
	$query = mysql_query("update user set user='$user', pass='$pass', confirm='$confirm', level='$level', nama='$nama' where id_user='$id_user'")
		or die (mysql_error());
	header('location:page.php?data-user&message=edit-success');  

?>