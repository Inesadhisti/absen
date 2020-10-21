<?php
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');
FILTER_INPUT(INPUT_GET, 'id');

$this->db->where('id_kelas', '$id_kelas');
$this->db->delete('kelas');
$query= $this->db->get();

if ($query) {
header('location:page.php?data-kelas&message=delete-success');
}
?>
