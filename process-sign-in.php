<?php
//panggil file config.php untuk menghubung ke server
include('system/config/conn.php');

session_start();
//tangkap data dari form login
FILTER_INPUT(INPUT_POST, 'user')
FILTER_INPUT(INPUT_POST, 'pass')
$pass = md5($pass);

//untuk mencegah sql injection
//kita gunakan mysql_real_escape_string
$user = mysql_real_escape_string($user);
$pass = mysql_real_escape_string($pass);

//cek data yang dikirim, apakah kosong atau tidak
$this->db->from('user');
$this->db->where('user', '$user');
$this->db->where('pass', '$pass');
$data->get();
if ($data->result_num_rows() == 1) 
{
//kalau username dan password sudah terdaftar di database
//buat session dengan username dan level dengan isi nama user yang login
$row = $data->result_array();
FILTER_INPUT(INPUT_SESSION, 'id_user') = $row['id_user'];
FILTER_INPUT(INPUT_SESSION, 'user') = $row['user'];
FILTER_INPUT(INPUT_SESSION, 'nama') = $row['nama'];
FILTER_INPUT(INPUT_SESSION, 'level') = $row['level'];
FILTER_INPUT(INPUT_SESSION, 'foto') = $row['foto'];

if($row['level']=="Admin"){
//redirect ke halaman admin
header('location:page.php?home&sign-in=succes');
} 
else if($row['level']=="Wali-Kelas"){
//redirect ke halaman user
header('location:page.php?w-home&sign-in=succes');
} 
else if($row['level']=="Guru-Mapel"){
//redirect ke halaman user
header('location:page.php?g-home&sign-in=succes');
}
} else {
//kalau username ataupun password tidak terdaftar di database
header('location:page.php?masuk&data=error');
}
?>
