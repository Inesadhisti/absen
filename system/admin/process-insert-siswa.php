<?php
//panggil file config.php untuk menghubung ke server
include('system/config/conn.php');

//tempat menyimpan file
$folder="system/images/"; 

//tangkap data dari form
$nama = $_POST['nama'];
$nis = $_POST['nis'];
$nm_kelas = $_POST['nm_kelas'];
$jns_kel = $_POST['jns_kel'];
$alamat = $_POST['alamat'];
$tmpt_lahir = $_POST['tmpt_lahir'];
$tgl_lahir = $_POST['tgl_lahir'];
$nama_ortu = $_POST['nama_ortu'];

//menghindari duplikat nis
$cek="SELECT nis FROM siswa WHERE nis='$nis'";
$ada=mysql_query($cek) or die (mysql_error());
if(mysql_num_rows($ada)>0)
{
	echo "<script>alert ('NIS Telah Terdaftar ! Silahkan Periksa Kembali !');window.location='page.php?tambah-siswa' </script> ";
	}

else{			
	$query = mysql_query ("INSERT INTO siswa VALUES('','$nama','$nis','$jns_kel','$tgl_lahir','$tmpt_lahir','$alamat','$nm_kelas','$nama_ortu')")
			or die (mysql_error());
	header('location:page.php?data-semua-siswa&message=insert-success');
	
}

?>