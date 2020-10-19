<?php
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');

//tangkap data dari form
(FILTER_INPUT(INPUT_POST, 'id_kelas')
(FILTER_INPUT(INPUT_POST, 'nm_kelas')

//update data di database sesuai kd_kelas
$query = mysql_query("update kelas set nm_kelas='$nm_kelas' where id_kelas='$id_kelas'");

if ($query) {
	header('location:page.php?data-kelas&message=edit-success');
}
?>
