<?php
//panggil file config.php untuk menghubung ke server
include('system/config/conn.php');

session_start();
//tangkap data dari form login
$user = $_POST['user'];
$pass = $_POST['pass'];
$pass = md5($pass);

//untuk mencegah sql injection
//kita gunakan mysql_real_escape_string
$user = mysql_real_escape_string($user);
$pass = mysql_real_escape_string($pass);

//cek data yang dikirim, apakah kosong atau tidak
$data = mysql_query("SELECT * FROM user WHERE user='$user' AND pass='$pass'");
if (mysql_num_rows($data) == 1) 
{
//kalau username dan password sudah terdaftar di database
//buat session dengan username dan level dengan isi nama user yang login
$row = mysql_fetch_array($data);
$_SESSION['id_user'] = $row['id_user'];
$_SESSION['user'] = $row['user'];
$_SESSION['nama'] = $row['nama'];
$_SESSION['level'] = $row['level'];
$_SESSION['foto'] = $row['foto'];

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