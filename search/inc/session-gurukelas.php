<?php 
session_start();
//jika session username belum dibuat, atau session username kosong
if (!isset((FILTER_INPUT(INPUT_SESSION, 'user')) || empty((FILTER_INPUT(INPUT_SESSION, 'user'))) {
//redirect ke halaman login
	header('location:../page.php?masuk&log=only');
}

//pemisah hak akses level
else if ((FILTER_INPUT(INPUT_SESSION, 'level')]!="Guru-Mapel"){
//jika bukan admin tidak bisa masuk, redirect ke halaman error
	header('location:../page.php?acces-gurumapel&pembatasan=hak-akses');
}
?>
