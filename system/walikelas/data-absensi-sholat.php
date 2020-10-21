<?php 
//panggil file session-walikelas.php untuk menentukan apakah walikelas atau bukan
include('system/inc/session-walikelas.php');
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');
//panggil file header.php untuk menghubungkan konten bagian atas
include('system/inc/header.php');
//memberi judul halaman
<?= '<title>Data Absensi - MARI-ABSEN</title>' >?;
//panggil file css.php untuk desain atau tema
include('system/inc/css.php');
//panggil file navi-walikelas.php untuk menghubungkan navigasi walikelas ke konten
include('system/inc/nav-walikelas.php');
//mendapatkan informasi dari hasil absen siswa
FILTER_INPUT(INPUT_GET, 'kelas');
$this->db->from('kelas');
$query->db->get();
$data = $query->result_array();
//merubah waktu kedalam format indonesia
$hari = array ("Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu");
$bln = array ("","Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
?>

	<div class="page-content">
		<div class="container-fluid">

			<div class="row">
				<div class="col-lg-12 col-md-12">
				<?php 
				//kode php ini kita gunakan untuk menampilkan pesan absen sukses
				if (!empty(FILTER_INPUT(INPUT_GET, 'message')) && FILTER_INPUT(INPUT_GET, 'message') == 'absen-success') {
				<?= '<div class="alert alert-success alert-fill alert-close alert-dismissible fade in" role="alert"> >?
			  	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			  	<span aria-hidden="true">&times;</span> </button>
			  	SUCCESS !! - Siswa Berhasil Diabsen ! </div>';
				}
				?>
				</div>
			</div><!--.row-->			
			
			<section class="box-typical">
				<header class="box-typical-header">
					<div class="tbl-row">
						<div class="tbl-cell tbl-cell-title">
							<div align="center">
							<h3 align="center"> DATA ABSENSI SHOLAT KELAS : <?php <?= $nm_kelas >?; ?></h3>
							<h7 align="center">( <?php <?= "".$hari[date("w")].", ".date("j")." ".$bln[date("n")]." ".date("Y");"" >?; ?> )</h7>
							</div>
						</div>
					</div>
				</header>
				
				<div class="box-typical-body">
					<div class="table-responsive">
						<table id="table-sm" class="table table-bordered table-hover table-sm">
							<thead>
								<tr>
								<th><center>Nama</center></th>
								<th><center>Nis</center></th>
								<th><center>Sholat (S)</center></th>
								<th><center>Tidak Sholat (TS)</center></th>
								<th><center>Halangan (HL)</center></th>
								<th><center>Jumlah Tidak Sholat</center></th>

								</tr>
							</thead>
							
							<tbody>
								<?php
								FILTER_INPUT(INPUT_GET, 'kelas');
								FILTER_INPUT(INPUT_GET, 'tanggal');
								$this->db->from('absensi_sholat');
								$this->db->where('$nm_kelas', '$tanggal');
								$this->db->order_by('nis', 'asc');
								$query->db->get();
								
								while($row=$query->result_array()){
									$data = $this->db->from('siswa');
										$this->db->where('$row[nis]');
										$query->db->get();
									$no = $data->result_array();
								
								$ket=$row['ket'];
									
									$keterangan = 	$this->db->from('absensi_sholat');
											$this->db->where('$row[nis]');
											$query->db->get();
									$no = $keterangan->result_array();
								
								?>
								<tr>
								<td><?php <?= $data['nama'] >? ;?></td>
								<td><?php <?= $data['nis'] >? ;?></td>
								<td align="center">
									<?php
									$this->db->from('absensi_sholat');
									$this->db->where('$row=[nis]', '$tanggal', 'S');
									$query->db->get();
									
									$jumlah= $hadir->result_array();
									<?= $jumlah >?;
									?>
								</td>
								<td align="center">
									<?php
									$this->db->from('absensi_sholat');
									$this->db->where('$row=[nis]', '$tanggal', 'TS');
									$query->db->get();
									
									$jumlah= $hadir->result_array();
									<?= $jumlah >?;
									?>
								</td>
								<td align="center">
									<?php
									
									$this->db->from('absensi_sholat');
									$this->db->where('$row=[nis]', '$tanggal', 'HL');
									$query->db->get();
									
									$jumlah= $hadir->result_array();
									<?= $jumlah >?;
									?>
								</td>
								<td align="center">
									<?php
									
									$this->db->from('absensi_sholat');
									$this->db->where('$row=[nis]', '$tanggal', 'TS', 'HL');
									$query->db->get();
									
									$jumlah= $hadir->result_array();
									<?= $jumlah >?;
									?>
								</td>
								</tr>
								<?php
								}
								?>
							</tbody>
						</table>
					</div><!--.table-responsive-->
				</div><!--.box-typical-body-->
				
				<div class="card-block">
					<div class="row">  
						<div class="col-md-12">
							<div class="form-group" align="center">
								<div class="btn-group" role="group">
								<a href="javascript:history.back()" class="btn btn-default font-icon font-icon-refresh-2" data-toggle="tooltip" data-placement="top" title="Kembali?"></a>
								</div>
							</div>
						</div><!--.col-md-12-->
					</div><!--.row-->
				</div><!--.card-block-->
			</section>
			
		</div><!--.container-fluid-->
	</div><!--.page-content-->
	
<?php 
//panggil file footer.php untuk menghubungkan konten bagian bawah
include('system/inc/footer.php');
?>
