<?php 
//panggil file conn.php untuk menghubung ke server
include "system/config/conn.php";

FILTER_INPUT(INPUT_GET, 'nm_kelas');
FILTER_INPUT(INPUT_GET, 'tanggal');

if(isset(FILTER_INPUT(INPUT_POST, 'info'))){
	if(FILTER_INPUT(INPUT_POST, 'jam_pelajaran') != "*Diluar Jam Pelajaran*"){
		FILTER_INPUT(INPUT_GET, 'jam_pelajaran');

		$query=mysql_query("SELECT nis FROM siswa WHERE nm_kelas='$nm_kelas' ORDER BY nis ASC");
		while($data=mysql_fetch_array($query)){
			mysql_query("DELETE FROM absensi WHERE nis='$data[nis]' AND tanggal='$tanggal' AND jam_pelajaran='$jam_pelajaran'");
			if(FILTER_INPUT(INPUT_POST, ''absen-'.$data['nis']') == 'hadir'){
				//parameter
				(FILTER_INPUT(INPUT_POST, ''keterangan-'.$data['nis']');
				$hadir=mysql_query("INSERT INTO absensi(nis,nm_kelas,ket,keterangan,tanggal,info,jam_pelajaran) VALUES ('$data[nis]','$nm_kelas','H','$keterangan','$tanggal','succes','$jam_pelajaran')",$connect);
				?>
					<script language="javascript">window.location.href="page.php?data-absensi&kelas=<?php <?= $nm_kelas >?;?>&tanggal=<?php <?= $tanggal >?;?>&message=absen-success";</script>
				<?php 
			}
			else if((FILTER_INPUT(INPUT_POST, ''absen-'.$data['nis']') == 'sakit'){
				//parameter
				(FILTER_INPUT(INPUT_POST, ''keterangan-'.$data['nis']');
				$hadir=mysql_query("INSERT INTO absensi(nis,nm_kelas,ket,keterangan,tanggal,info,jam_pelajaran) VALUES ('$data[nis]','$nm_kelas','S','$keterangan','$tanggal','succes','$jam_pelajaran')",$connect);
				?>
				<script language="javascript">window.location.href="page.php?data-absensi&kelas=<?php <?= $nm_kelas >?;?>&tanggal=<?php <?= $tanggal >?;?>&message=absen-success";</script>
				<?php 
			}
			else if((FILTER_INPUT(INPUT_POST, ''absen-'.$data['nis']') == 'ijin'){
				//parameter
				(FILTER_INPUT(INPUT_POST, ''keterangan-'.$data['nis']');
				$hadir=mysql_query("INSERT INTO absensi(nis,nm_kelas,ket,keterangan,tanggal,info,jam_pelajaran) VALUES ('$data[nis]','$nm_kelas','I','$keterangan','$tanggal','succes','$jam_pelajaran')",$connect);
				?>
				<script language="javascript">window.location.href="page.php?data-absensi&kelas=<?php <?= $nm_kelas >?;?>&tanggal=<?php <?= $tanggal >?;?>&message=absen-success";</script>
				<?php 
			}
			else if((FILTER_INPUT(INPUT_POST, ''absen-'.$data['nis']') == 'alfa'){
				//parameter
				$keterangan = $_POST['keterangan-'.$data['nis']];
				$alfa=mysql_query("INSERT INTO absensi(nis,nm_kelas,ket,keterangan,tanggal,info,jam_pelajaran) VALUES ('$data[nis]','$nm_kelas','A','$keterangan','$tanggal','succes','$jam_pelajaran')",$connect);
				?>
				<script language="javascript">window.location.href="page.php?data-absensi&kelas=<?php <?= $nm_kelas >?;?>&tanggal=<?php <?= $tanggal >?;?>&message=absen-success";</script>
				<?php 
			}
		}
	}else{
		unset(FILTER_INPUT(INPUT_POST, 'info'));
		?><script language="javascript">
			alert("Tidak dapat absen diluar jam pelajaran!");
			window.location.href="page.php?absen-siswa&kelas=<?php <?= $nm_kelas >?;?>";
		</script><?php
	}
}else{
	unset((FILTER_INPUT(INPUT_POST, 'info'));
	?><script language="javascript">window.location.href="page.php?absen-siswa&kelas=<?php <?= $nm_kelas >?;?>";</script><?php
}
?>
