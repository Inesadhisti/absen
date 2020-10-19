<?php
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');
FILTER_INPUT(INPUT_GET, 'id')
$query = mysql_query("DELETE FROM siswa WHERE id_siswa='$id_siswa'");
if ($query) {
header('location:page.php?data-semua-siswa&message=delete-success');
}
?>
