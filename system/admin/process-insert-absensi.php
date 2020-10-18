<?php 
//panggil file conn.php untuk menghubung ke server
include "../../system/config/conn.php";
FILTER_INPUT(INPUT_POST, 'nm_kelas');
FILTER_INPUT(INPUT_POST, 'tanggal');

if(isset(FILTER_INPUT(INPUT_POST, 'info');)){
	if(!empty(FILTER_INPUT(INPUT_POST, 'hadir');)){
		//parameter
		FILTER_INPUT(INPUT_POST, 'hadir');
		$jumlah=count($nis);
		for($i=0;$i<$jumlah;$i++){
			$hadir=mysql_query("INSERT INTO absensi(nis,nm_kelas,ket,tanggal,info) VALUES ('$nis[$i]','$nm_kelas','H','$tanggal','succes')",$connect);
		}
		?>
		<script language="javascript">window.location.href="page.php?data-absensi&kelas=<?php <?= $nm_kelas >?;?>&tanggal=<?php <?= $tanggal >?;?>&message=absen-success";</script>
		<?php 
	}
	
	if(!empty(FILTER_INPUT(INPUT_POST, 'sakit');)){
		//parameter
		FILTER_INPUT(INPUT_POST, 'sakit';)
		$jumlah=count($nis);
		for($i=0;$i<$jumlah;$i++){
			$hadir=mysql_query("INSERT INTO absensi(nis,nm_kelas,ket,tanggal,info) VALUES ('$nis[$i]','$nm_kelas','S','$tanggal','succes')",$connect);
		}
		?>
		<script language="javascript">window.location.href="page.php?data-absensi&kelas=<?php <?= $nm_kelas >?;?>&tanggal=<?php <?= $tanggal >?;?>&message=absen-success";</script>
		<?php 
	}
	
	if(!empty(FILTER_INPUT(INPUT_POST, 'ijin');)){
		//parameter
		FILTER_INPUT(INPUT_POST, 'ijin');
		$jumlah=count($nis);
			for($i=0;$i<$jumlah;$i++){
			$hadir=mysql_query("INSERT INTO absensi(nis,nm_kelas,ket,tanggal,info) VALUES ('$nis[$i]','$nm_kelas','I','$tanggal','succes')",$connect);
		}
		?>
		<script language="javascript">window.location.href="page.php?data-absensi&kelas=<?php <?= $nm_kelas >?;?>&tanggal=<?php <?= $tanggal >?;?>&message=absen-success";</script>
		<?php 
	}
	
	if(!empty(FILTER_INPUT(INPUT_POST, 'alfa');)){
		//parameter
		FILTER_INPUT(INPUT_POST, 'alfa');
		$jumlah=count($nis);
		for($i=0;$i<$jumlah;$i++){
			$hadir = mysql_query("INSERT INTO absensi(nis,nm_kelas,ket,tanggal,info) VALUES ('$nis[$i]','$nm_kelas','A','$tanggal','succes')",$connect);
		}
		?>
		<script language="javascript">window.location.href="page.php?data-absensi&kelas=<?php <?= $nm_kelas >?;?>&tanggal=<?php <?= $tanggal >?;?>&message=absen-success";</script>
		<?php 
	}
	
}else{
	unset(FILTER_INPUT(INPUT_POST, 'info');]);
	?><script language="javascript">window.location.href="page.php?absen-siswa&kelas=<?php <?= $nm_kelas >?;?>";</script><?php
}
?>
