<?php 
//panggil file conn.php untuk menghubung ke server
include "system/config/conn.php";

$nm_kelas=$_POST['nm_kelas'];
$tanggal=$_POST['tanggal'];

if(isset($_POST['info'])){
	if($_POST['jam_pelajaran'] != "*Diluar Jam Pelajaran*"){
		$jam_pelajaran=$_POST['jam_pelajaran'];

		$query=mysql_query("SELECT nis FROM siswa WHERE nm_kelas='$nm_kelas' ORDER BY nis ASC");
		while($data=mysql_fetch_array($query)){
			mysql_query("DELETE FROM absensi WHERE nis='$data[nis]' AND tanggal='$tanggal' AND jam_pelajaran='$jam_pelajaran'");
			if($_POST['absen-'.$data['nis']] == 'hadir'){
				//parameter
				$keterangan = $_POST['keterangan-'.$data['nis']];
				$hadir=mysql_query("INSERT INTO absensi(nis,nm_kelas,ket,keterangan,tanggal,info,jam_pelajaran) VALUES ('$data[nis]','$nm_kelas','H','$keterangan','$tanggal','succes','$jam_pelajaran')",$connect);
				?>
					<script language="javascript">window.location.href="page.php?data-absensi&kelas=<?php echo $nm_kelas;?>&tanggal=<?php echo $tanggal;?>&message=absen-success";</script>
				<?php 
			}
			else if($_POST['absen-'.$data['nis']] == 'sakit'){
				//parameter
				$keterangan = $_POST['keterangan-'.$data['nis']];
				$hadir=mysql_query("INSERT INTO absensi(nis,nm_kelas,ket,keterangan,tanggal,info,jam_pelajaran) VALUES ('$data[nis]','$nm_kelas','S','$keterangan','$tanggal','succes','$jam_pelajaran')",$connect);
				?>
				<script language="javascript">window.location.href="page.php?data-absensi&kelas=<?php echo $nm_kelas;?>&tanggal=<?php echo $tanggal;?>&message=absen-success";</script>
				<?php 
			}
			else if($_POST['absen-'.$data['nis']] == 'ijin'){
				//parameter
				$keterangan = $_POST['keterangan-'.$data['nis']];
				$hadir=mysql_query("INSERT INTO absensi(nis,nm_kelas,ket,keterangan,tanggal,info,jam_pelajaran) VALUES ('$data[nis]','$nm_kelas','I','$keterangan','$tanggal','succes','$jam_pelajaran')",$connect);
				?>
				<script language="javascript">window.location.href="page.php?data-absensi&kelas=<?php echo $nm_kelas;?>&tanggal=<?php echo $tanggal;?>&message=absen-success";</script>
				<?php 
			}
			else if($_POST['absen-'.$data['nis']] == 'alfa'){
				//parameter
				$keterangan = $_POST['keterangan-'.$data['nis']];
				$alfa=mysql_query("INSERT INTO absensi(nis,nm_kelas,ket,keterangan,tanggal,info,jam_pelajaran) VALUES ('$data[nis]','$nm_kelas','A','$keterangan','$tanggal','succes','$jam_pelajaran')",$connect);
				?>
				<script language="javascript">window.location.href="page.php?data-absensi&kelas=<?php echo $nm_kelas;?>&tanggal=<?php echo $tanggal;?>&message=absen-success";</script>
				<?php 
			}
		}
	}else{
		unset($_POST['info']);
		?><script language="javascript">
			alert("Tidak dapat absen diluar jam pelajaran!");
			window.location.href="page.php?absen-siswa&kelas=<?php echo $nm_kelas;?>";
		</script><?php
	}
}else{
	unset($_POST['info']);
	?><script language="javascript">window.location.href="page.php?absen-siswa&kelas=<?php echo $nm_kelas;?>";</script><?php
}
?>