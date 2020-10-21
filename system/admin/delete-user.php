<?php
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');
(FILTER_INPUT(INPUT_GET, 'id');
$this->db->where('$id_user', 'id_user');
$this->db->delete('user');
$query= $this->db->get();
if ($query) {
header('location:page.php?data-user&message=delete-success');
}
?>
