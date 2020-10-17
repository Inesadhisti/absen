<?php
//panggil file config.php untuk menghubung ke server
include('system/config/conn.php');

//tempat menyimpan file
$folder="system/images/"; 

//tangkap data dari form

$pass = $_POST['pass'];
$pass = md5($pass);
$confirm = $_POST['confirm'];
$confirm = md5($confirm);
$nama = $_POST['nama'];
$user = $_POST['user'];
$level = $_POST['level'];

//menghindari duplikat username
$cek="SELECT user FROM user WHERE user='$user'";
$ada=mysql_query($cek) or die (mysql_error());
if(mysql_num_rows($ada)>0)
{
	echo "<script>alert ('Username Telah Terdaftar ! Silahkan Periksa Kembali !');window.location='page.php?tambah-user' </script> ";
	}

else {
	$query = mysql_query ("insert into user values('','$user','$pass','$confirm','$level','$nama','$foto')")
			or die (mysql_error());
	header('location:page.php?data-user&message=insert-success');
	} 
?>