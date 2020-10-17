<?php
//panggil file config.php untuk menghubung ke server
include('system/config/conn.php');
//tangkap data dari form
$nm_kelas = $_POST['nm_kelas'];

//menghindari duplikat nama kelas
$cek="SELECT nm_kelas FROM kelas WHERE nm_kelas='$nm_kelas'";
$ada=mysql_query($cek) or die (mysql_error());
if(mysql_num_rows($ada)>0)
{
	echo "<script>alert ('Nama Kelas Telah Terdaftar ! Silahkan Periksa Kembali !');window.location='page.php?tambah-kelas' </script> ";
	}  

//simpan data ke database
else { 
$query = mysql_query("insert into kelas values('','$nm_kelas')") or die(mysql_error());
 }
 if ($query) {
	header('location:page.php?data-kelas&message=insert-success');
}
?>