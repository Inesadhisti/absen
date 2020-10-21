<?php
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');
FILTER_INPUT(INPUT_GET, 'id')
$this->db->from('siswa');
$this->db->where('id_siswa', '$id_siswa');
$query->delete();
if ($query) {
header('location:page.php?data-semua-siswa&message=delete-success');
}
?>
