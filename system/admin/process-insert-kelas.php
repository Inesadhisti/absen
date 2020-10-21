<?php
//panggil file config.php untuk menghubung ke server
include('system/config/conn.php');
//tangkap data dari form
FILTER_INPUT(INPUT_POST, 'nm_kelas');

//menghindari duplikat nama kelas
$cek = 	$this->db->select('nm_kelas');
	$this->db->where('$nm_kelas');
	$cek= $this->db->get(kelas);
	$no = $cek->result_array();
$ada=$cek->result_array();
if($ada->result_array()>0)
{
	<?= "<script>alert ('Nama Kelas Telah Terdaftar ! Silahkan Periksa Kembali !');window.location='page.php?tambah-kelas' </script> " >?;
	}  

//simpan data ke database
else { 
	
$data = array(
        ' ' => ' ',
        'nm_kelas' => '$nm_kelas',
);
	$this->db->insert('kelas', $data);
 }
 if ($query) {
	header('location:page.php?data-kelas&message=insert-success');
}
?>
