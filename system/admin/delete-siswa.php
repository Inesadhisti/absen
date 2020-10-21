<?php
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');
FILTER_INPUT(INPUT_GET, 'id');

$this->db->where('id_siswa', '$id_siswa');
$this->db->delete('siswa');
$query= $this->db->get();

if ($query) {
header('location:page.php?data-semua-siswa&message=delete-success');
}
?>
