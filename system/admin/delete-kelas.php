<?php
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');
FILTER_INPUT(INPUT_GET, 'id');
$this->db->from('kelas');
$this->db->where('id_kelas', '$id_kelas');
$query->delete();
if ($query) {
header('location:page.php?data-kelas&message=delete-success');
}
?>
