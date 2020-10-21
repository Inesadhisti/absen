<?php
error_reporting(0);
//halaman awal
 if(isset(FILTER_INPUT(INPUT_GET, 'masuk');)){ 
$this->load->model('./sign-out.php');
}
 if(isset(FILTER_INPUT(INPUT_GET, 'keluar');)){ 
include 'sign-out.php';
} 
if(isset(FILTER_INPUT(INPUT_GET, 'process-masuk');)){ 
include 'process-sign-in.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'lupa-sandi');)){ 
include 'reset.php';
}

//halaman error session
 if(isset(FILTER_INPUT(INPUT_GET, 'acess-admin');)){ 
include 'system/error/acces-admin.php';
}
 if(isset(FILTER_INPUT(INPUT_GET, 'kelas');)){ 
include 'system/error/acces-walikelas.php';
}
 if(isset(FILTER_INPUT(INPUT_GET, 'acces-gurumapel');)){ 
include 'system/error/acces-gurumapel.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'error-404');])){ 
include 'system/error/404.php';
}

//halaman admin
 if(isset(FILTER_INPUT(INPUT_GET, 'home');)){ 
include 'system/admin/home.php';
}
 if(isset(FILTER_INPUT(INPUT_GET, 'data-semua-siswa');])){ 
include 'system/admin/data-all-siswa.php';
} 
if(isset(FILTER_INPUT(INPUT_GET, 'data-kelas');)){ 
include 'system/admin/data-kelas.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'data-siswa');)){ 
include 'system/admin/data-siswa.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'data-user');)){ 
include 'system/admin/data-user.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'delete-kelas');)){ 
include 'system/admin/delete-kelas.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'delete-siswa');)){ 
include 'system/admin/delete-siswa.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'delete-user');)){ 
include 'system/admin/delete-user.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'edit-kelas');)){ 
include 'system/admin/edit-kelas.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'edit-siswa');)){ 
include 'system/admin/edit-siswa.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'edit-user');)){ 
include 'system/admin/edit-user.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'tambah-kelas');)){ 
include 'system/admin/insert-kelas.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'tambah-siswa');)){ 
include 'system/admin/insert-siswa.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'tambah-user');)){ 
include 'system/admin/insert-user.php';
}
 if(isset(FILTER_INPUT(INPUT_GET, 'process-edit-kelas');])){ 
include 'system/admin/process-edit-kelas.php';
} 
 if(isset(FILTER_INPUT(INPUT_GET, 'process-edit-siswa');)){ 
include 'system/admin/process-edit-siswa.php';
} 
 if(isset(FILTER_INPUT(INPUT_GET, 'process-edit-user');)){ 
include 'system/admin/process-edit-user.php';
}  
 if(isset(FILTER_INPUT(INPUT_GET, 'process-edit-kelas');)){ 
include 'system/admin/process-insert-kelas.php';
} 
 if(isset(FILTER_INPUT(INPUT_GET, 'process-insert-siswa');)){ 
include 'system/admin/process-insert-siswa.php';
} 
 if(isset(FILTER_INPUT(INPUT_GET, 'process-insert-user');)){ 
include 'system/admin/process-insert-user.php';
} 
if(isset(FILTER_INPUT(INPUT_GET, 'detail-kelas');)){ 
include 'system/admin/view-kelas.php';
}  
if(isset(FILTER_INPUT(INPUT_GET, 'detail-siswa');)){ 
include 'system/admin/view-siswa.php';
}  
if(isset(FILTER_INPUT(INPUT_GET, 'detail-user');)){ 
include 'system/admin/view-user.php';
}

//halaman walikelas
 if(isset(FILTER_INPUT(INPUT_GET, 'w-home');)){ 
include 'system/walikelas/home.php';
}
 if(isset(FILTER_INPUT(INPUT_GET, 'w-data-absensi');)){ 
include 'system/walikelas/data-absensi.php';
}
 if(isset(FILTER_INPUT(INPUT_GET, 'w-data-absensi-sholat');)){ 
include 'system/walikelas/data-absensi-sholat.php';
}
 if(isset(FILTER_INPUT(INPUT_GET, 'rekap-absensi');)){ 
include 'system/walikelas/rekap-absensi.php';
}
 if(isset(FILTER_INPUT(INPUT_GET, 'rekap-absensi-sholat');)){ 
include 'system/walikelas/rekap-absensi-sholat.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'w-data-siswa');)){ 
include 'system/walikelas/data-siswa.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'w-edit-profil');)){ 
include 'system/walikelas/edit-profil.php';
}
 if(isset(FILTER_INPUT(INPUT_GET, 'w-process-edit-profil');)){ 
include 'system/walikelas/process-edit-profil.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'w-detail-siswa');)){ 
include 'system/walikelas/view-siswa.php';
}  
if(isset(FILTER_INPUT(INPUT_GET, 'w-detail-profil');)){ 
include 'system/walikelas/view-profil.php';
}

//halaman gurumapel
if(isset(FILTER_INPUT(INPUT_GET, 'g-home');)){ 
include 'system/gurumapel/home.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'data-absensi');)){ 
include 'system/gurumapel/data-absensi.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'data-absensi-sholat');)){ 
include 'system/gurumapel/data-absensi-sholat.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'g-data-kelas');)){ 
include 'system/gurumapel/data-kelas.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'g-data-siswa');)){ 
include 'system/gurumapel/data-siswa.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'g-edit-profil');)){ 
include 'system/gurumapel/edit-profil.php';
}
if(isset(FILTER_INPUT(INPUT_GET, 'absen-siswa');)){ 
include 'system/gurumapel/insert-absensi.php';
}

if(isset(FILTER_INPUT(INPUT_GET, 'absen-sholat');)){ 
include 'system/gurumapel/insert-absensi-sholat.php';
}
 if(isset(FILTER_INPUT(INPUT_GET, 'process-edit-profil');)){ 
include 'system/gurumapel/process-edit-profil.php';
}  
if(isset(FILTER_INPUT(INPUT_GET, 'process-insert-absensi');)){ 
include 'system/gurumapel/process-insert-absensi.php';
} 

if(isset(FILTER_INPUT(INPUT_GET, 'process-insert-absensi-sholat');)){ 
include 'system/gurumapel/process-insert-absensi-sholat.php';
} 
if(isset(FILTER_INPUT(INPUT_GET, 'g-detail-kelas');)){ 
include 'system/gurumapel/view-kelas.php';
}  
if(isset(FILTER_INPUT(INPUT_GET, 'g-detail-siswa');)){ 
include 'system/gurumapel/view-siswa.php';
}  
if(isset(FILTER_INPUT(INPUT_GET, 'g-detail-profil');)){ 
include 'system/gurumapel/view-profil.php';
}
?>
