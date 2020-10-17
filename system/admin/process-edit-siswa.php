<?php
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');

//tempat menyimpan file
$folder="system/images/"; 

//tangkap data dari form
$id_siswa = $_POST['id_siswa'];
$nis = $_POST['nis'];
$nama = $_POST['nama'];
$nm_kelas = $_POST['nm_kelas'];
$jns_kel = $_POST['jns_kel'];
$tmpt_lahir = $_POST['tmpt_lahir'];
$tgl_lahir = $_POST['tgl_lahir'];
$alamat = $_POST['alamat'];
$nama_ortu = $_POST['nama_ortu'];

	//update data di database sesuai id_siswa
	$query = mysql_query("UPDATE siswa SET nis='$nis', nama='$nama', nm_kelas='$nm_kelas', jns_kel='$jns_kel', tmpt_lahir='$tmpt_lahir', tgl_lahir='$tgl_lahir', alamat='$alamat', nama_ortu='$nama_ortu' where id_siswa='$id_siswa'")
		or die (mysql_error());
	header('location:page.php?data-semua-siswa&message=edit-success');   

?>