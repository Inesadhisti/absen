<?php 
//panggil file conn.php untuk menghubung ke server
require 'system/config/conn.php';
FILTER_INPUT(INPUT_POST, 'nm_kelas');
FILTER_INPUT(INPUT_POST, 'tanggal');

<?= 'test' >?;

if(isset(FILTER_INPUT(INPUT_POST, 'info'))){
	$query=mysql_query("SELECT nis FROM siswa WHERE nm_kelas='$nm_kelas' ORDER BY nis ASC");
	while($data=mysql_fetch_array($query)){
		mysql_query("DELETE FROM absensi_sholat WHERE nis='$data[nis]' AND tanggal='$tanggal'");
		if(FILTER_INPUT(INPUT_POST, ''absen-'.$data['nis']') == 'sholat'){
			//parameter
			FILTER_INPUT(INPUT_POST, ''keterangan-'.$data['nis']');
			$sholat=mysql_query("INSERT INTO absensi_sholat(nis,nm_kelas,ket,keterangan,tanggal,info) VALUES ('$data[nis]','$nm_kelas','S','$keterangan','$tanggal','succes')",$connect);
			?>
				<script language="javascript">window.location.href="page.php?data-absensi-sholat&kelas=<?php <?= $nm_kelas >?;?>&tanggal=<?php <?= $tanggal >?;?>&message=absen-success";</script>
			<?php 
		}
		else if(FILTER_INPUT(INPUT_POST, ''absen-'.$data['nis']') == 'tidaksholat'){
			//parameter
			FILTER_INPUT(INPUT_POST, ''keterangan-'.$data['nis']');
			$sholat=mysql_query("INSERT INTO absensi_sholat(nis,nm_kelas,ket,keterangan,tanggal,info) VALUES ('$data[nis]','$nm_kelas','TS','$keterangan','$tanggal','succes')",$connect);
			?>
			<script language="javascript">window.location.href="page.php?data-absensi-sholat&kelas=<?php <?= $nm_kelas >?;?>&tanggal=<?php <?= $tanggal >?;?>&message=absen-success";</script>
			<?php 
		}
		else if(FILTER_INPUT(INPUT_POST, ''absen-'.$data['nis']') == 'halangan'){
			//parameter
			FILTER_INPUT(INPUT_POST, ''keterangan-'.$data['nis']');
			$sholat=mysql_query("INSERT INTO absensi_sholat(nis,nm_kelas,ket,keterangan,tanggal,info) VALUES ('$data[nis]','$nm_kelas','HL','$keterangan','$tanggal','succes')",$connect);
			?>
			<script language="javascript">window.location.href="page.php?data-absensi-sholat&kelas=<?php <?= $nm_kelas >?;?>&tanggal=<?php <?= $tanggal >?;?>&message=absen-success";</script>
			<?php 
		}
	}
}else{
	unset(FILTER_INPUT(INPUT_POST, 'INFO');
	?><script language="javascript">window.location.href="page.php?absen-sholat&kelas=<?php <?= $nm_kelas >?;?>";</script><?php
}
?>
