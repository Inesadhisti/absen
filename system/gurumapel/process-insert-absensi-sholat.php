<?php 
//panggil file conn.php untuk menghubung ke server
include "system/config/conn.php";
$nm_kelas=$_POST['nm_kelas'];
$tanggal=$_POST['tanggal'];

echo 'test';

if(isset($_POST['info'])){
	$query=mysql_query("SELECT nis FROM siswa WHERE nm_kelas='$nm_kelas' ORDER BY nis ASC");
	while($data=mysql_fetch_array($query)){
		mysql_query("DELETE FROM absensi_sholat WHERE nis='$data[nis]' AND tanggal='$tanggal'");
		if($_POST['absen-'.$data['nis']] == 'sholat'){
			//parameter
			$keterangan = $_POST['keterangan-'.$data['nis']];
			$sholat=mysql_query("INSERT INTO absensi_sholat(nis,nm_kelas,ket,keterangan,tanggal,info) VALUES ('$data[nis]','$nm_kelas','S','$keterangan','$tanggal','succes')",$connect);
			?>
				<script language="javascript">window.location.href="page.php?data-absensi-sholat&kelas=<?php echo $nm_kelas;?>&tanggal=<?php echo $tanggal;?>&message=absen-success";</script>
			<?php 
		}
		else if($_POST['absen-'.$data['nis']] == 'tidaksholat'){
			//parameter
			$keterangan = $_POST['keterangan-'.$data['nis']];
			$sholat=mysql_query("INSERT INTO absensi_sholat(nis,nm_kelas,ket,keterangan,tanggal,info) VALUES ('$data[nis]','$nm_kelas','TS','$keterangan','$tanggal','succes')",$connect);
			?>
			<script language="javascript">window.location.href="page.php?data-absensi-sholat&kelas=<?php echo $nm_kelas;?>&tanggal=<?php echo $tanggal;?>&message=absen-success";</script>
			<?php 
		}
		else if($_POST['absen-'.$data['nis']] == 'halangan'){
			//parameter
			$keterangan = $_POST['keterangan-'.$data['nis']];
			$sholat=mysql_query("INSERT INTO absensi_sholat(nis,nm_kelas,ket,keterangan,tanggal,info) VALUES ('$data[nis]','$nm_kelas','HL','$keterangan','$tanggal','succes')",$connect);
			?>
			<script language="javascript">window.location.href="page.php?data-absensi-sholat&kelas=<?php echo $nm_kelas;?>&tanggal=<?php echo $tanggal;?>&message=absen-success";</script>
			<?php 
		}
	}
}else{
	unset($_POST['info']);
	?><script language="javascript">window.location.href="page.php?absen-sholat&kelas=<?php echo $nm_kelas;?>";</script><?php
}
?>