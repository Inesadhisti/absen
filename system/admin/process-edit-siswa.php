<?php
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');

//tempat menyimpan file
$folder="system/images/"; 

//tangkap data dari form
FILTER_INPUT(INPUT_POST, 'id_siswa');
FILTER_INPUT(INPUT_POST, 'nis');
FILTER_INPUT(INPUT_POST, 'nama');
FILTER_INPUT(INPUT_POST, 'nm_kelas');
FILTER_INPUT(INPUT_POST, 'jns_kel');
FILTER_INPUT(INPUT_POST, 'tmpt_lahir');
FILTER_INPUT(INPUT_POST, 'tgl_lahir');
FILTER_INPUT(INPUT_POST, 'alamat');
FILTER_INPUT(INPUT_POST, 'nama_ortu');

	//update data di database sesuai id_siswa
	$data = array(
			'nis' => $nis,
			'nama' => $nama,
			'nm_kelas' => $nm_kelas,
			'jns_kel' => $jnl_kel,
			'tmpt_lahir' => $tmpt_lahir,
			'tgl_lahir' => $tgl_lahir,
			'alamat' => $alamat,
			'nm_ortu' => $nm_ortu
		
);
			$this->db->where('id_siswa', '$id_siswa');
			$this->db->update('siswa', $data);

	header('location:page.php?data-semua-siswa&message=edit-success');   

?>
