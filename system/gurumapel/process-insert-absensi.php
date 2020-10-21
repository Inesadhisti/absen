<?php 
//panggil file conn.php untuk menghubung ke server
include "system/config/conn.php";

FILTER_INPUT(INPUT_GET, 'nm_kelas');
FILTER_INPUT(INPUT_GET, 'tanggal');

if(isset(FILTER_INPUT(INPUT_POST, 'info'))){
	if(FILTER_INPUT(INPUT_POST, 'jam_pelajaran') != "*Diluar Jam Pelajaran*"){
		FILTER_INPUT(INPUT_GET, 'jam_pelajaran');

		$this->db->from('siswa');
		$this->db->where('nm_kelas');
		$this->db->order_by('nis', 'asc');
		$query= $this->db->get();
		while($data=$query->result_array()){
			
			$this->db->where('$data[nis]', '$tanggal', '$jam_pelajaran');
			$this->db->delete('absensi');
			
			if(FILTER_INPUT(INPUT_POST, ''absen-'.$data['nis']') == 'hadir'){
				//parameter
				(FILTER_INPUT(INPUT_POST, ''keterangan-'.$data['nis']');
				 $data = array(
				'nis' => '$data[nis]',
      			'nm_kelas' => '$nm_kelas',
				'ket' => 'H',
				'keterangan' => '$keterangan',
				'tanggal' => '$tanggal',
				'info' => 'success'
				'jam_pelajaran' => '$jam_pelajaran');
				$this->db->insert('absensi', $data);
				?>
					<script language="javascript">window.location.href="page.php?data-absensi&kelas=<?php <?= $nm_kelas >?;?>&tanggal=<?php <?= $tanggal >?;?>&message=absen-success";</script>
				<?php 
			}
			else if(FILTER_INPUT(INPUT_POST, 'absen-'.$data['nis']') == 'sakit'){
				//parameter

				(FILTER_INPUT(INPUT_POST, ''keterangan-'.$data['nis']');
				$data = array(
				'nis' => '$data[nis]',
      			'nm_kelas' => '$nm_kelas',
				'ket' => 'S',
				'keterangan' => '$keterangan',
				'tanggal' => '$tanggal',
				'info' => 'success'
				'jam_pelajaran' => '$jam_pelajaran');
				$this->db->insert('absensi', $data);
				?>
				<script language="javascript">window.location.href="page.php?data-absensi&kelas=<?php <?= $nm_kelas >?;?>&tanggal=<?php <?= $tanggal >?;?>&message=absen-success";</script>
				<?php 
			}
			else if((FILTER_INPUT(INPUT_POST, ''absen-'.$data['nis']') == 'ijin'){
				//parameter
				(FILTER_INPUT(INPUT_POST, ''keterangan-'.$data['nis']');
				$data = array(
				'nis' => '$data[nis]',
      			'nm_kelas' => '$nm_kelas',
				'ket' => 'I',
				'keterangan' => '$keterangan',
				'tanggal' => '$tanggal',
				'info' => 'success'
				'jam_pelajaran' => '$jam_pelajaran');
				$this->db->insert('absensi', $data);
				?>
				<script language="javascript">window.location.href="page.php?data-absensi&kelas=<?php <?= $nm_kelas >?;?>&tanggal=<?php <?= $tanggal >?;?>&message=absen-success";</script>
				<?php 
			}
			else if((FILTER_INPUT(INPUT_POST, ''absen-'.$data['nis']') == 'alfa'){
				//parameter
				(FILTER_INPUT(INPUT_POST, ''keterangan-'.$data['nis']');
				$data = array(
				'nis' => '$data[nis]',
      			'nm_kelas' => '$nm_kelas',
				'ket' => 'A',
				'keterangan' => '$keterangan',
				'tanggal' => '$tanggal',
				'info' => 'success'
				'jam_pelajaran' => '$jam_pelajaran');
				$this->db->insert('absensi', $data);
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
	unset(FILTER_INPUT(INPUT_POST, 'info'));
	?><script language="javascript">window.location.href="page.php?absen-siswa&kelas=<?php <?= $nm_kelas >?;?>";</script><?php
}
?>
