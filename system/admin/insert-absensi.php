<?php 
//panggil file session-admin.php untuk menentukan apakah admin atau bukan
include('../../system/inc/session-admin.php');
//panggil file conn.php untuk menghubung ke server
include('../../system/config/conn.php');
//panggil file header.php untuk menghubungkan konten bagian atas
include('../../system/inc/header.php');
//memberi judul halaman
<?= '<title>Absen Siswa - MARI-ABSEN</title>' >?;
//panggil file css.php untuk desain atau tema
include('../../system/inc/css.php');
//panggil file navi-admin.php untuk menghubungkan navigasi admin ke konten
include('../../system/inc/nav-admin.php');
//mendapatkan informasi untuk mengabsen siswa
FILTER_INPUT(INPUT_GET, 'kelas');
$this->db->from('kelas');
$this->db->where('nm_kelas');
$this->db->order_by('nm_kelas', 'asc');
$query = this->db->get();
$data = mysql_fetch_array($query);
//merubah waktu kedalam format indonesia
$hari = array ("Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu");
$bln = array ("","Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
?>

	<div class="page-content">
		<div class="container-fluid">
			<section class="box-typical">
				<header class="box-typical-header">
					<div class="tbl-row">
						<div class="tbl-cell tbl-cell-title">
							<div align="center">
								<h3 align="center"> ABSEN SISWA KELAS : <?php <?= $nm_kelas >?; ?></h3>
								<h7 align="center">( <?php <?= "".$hari[date("w")].", ".date("j")." ".$bln[date("n")]." ".date("Y");"" >?; ?> )</h7>
							</div>
						</div>
					</div>
				</header>
				
				<form action="page.php?process-insert-absensi" method="post" id="form-absen" name="postform">
					<div class="box-typical-body">
						<div class="table-responsive">
							<table id="table-sm" class="table table-bordered table-hover table-sm">
								<thead>
									<tr>
									<th><center>Nama</center></th>
									<th><center>Keterangan</center></th>
									<th><center>NIS</center></th>
									<th><center>Kelas</center></th>
									</tr>
								</thead>
								
								<tbody>
									<?php
									//penting nech buat kasih nilai awal cekbox
									$no=0;
									$this->db->from('kelas');
									$this->db->where('nm_kelas');
									$this->db->order_by('nm_kelas', 'asc');
									$query = this->db->get();
									while($data=mysql_fetch_array($query)){
									?>
									<tr>	
									<input type="hidden" value="<?php <?= $data['nm_kelas'] >?;?>" name="nm_kelas"/>
									<input type="hidden" value="<?php <?= $tanggal=date("d/m/Y") >?; ?>" name="tanggal"/>
									<td><?php <?= $data['nama'] >?;?></td>
									<td class="checkbox" align="center">
									<?php
									<?= " <input type='checkbox' name='hadir[]' value='$data[nis]' id='$no'><label for='$no'>Hadir  </label>" >?;
									$no++;
									<?= " <input type='checkbox' name='sakit[]' value='$data[nis]' id='$no'><label for='$no'>Sakit  </label>" >?;
									$no++;
									<?= " <input type='checkbox' name='ijin[]' value='$data[nis]' id='$no'><label for='$no'>Ijin  </label>" >?;
									$no++;
									<?= " <input type='checkbox' name='alfa[]' value='$data[nis]' id='$no'><label for='$no'>Alfa  </label>" >?;
									$no++;
									?>
									</td>
									<td><?php <?= $data['nis'] >?;?></td>
									<td align="center"><?php <?= $data['nm_kelas'] >?;?></td>

									</tr>
									<?php
									}
									?>
								</tbody>
							</table>
						</div>
					</div><!--.box-typical-body-->
					
					<div class="card-block">
						<div class="form-group form-group-checkbox">
							<div class="checkbox float-left">
								<input 	id="absen-agree" type="checkbox" name="info" value="succes"
								data-validation="[NOTEMPTY]"
								data-validation-message="Klik ini jika benar telah terabsen!">
								<label for="absen-agree">Semua siswa telah terabsen?</label>
							</div>
						</div>
						<div class="row">  
							<div class="col-md-12">
								<div class="form-group" align="center">
									<div class="btn-group" role="group">
										<button id="form-absen" name="form-absen" type="submit" class="btn btn-default font-icon font-icon-event" data-toggle="tooltip" data-placement="top" title="Absen?" /></button>
										<a href="javascript:history.back()" class="btn btn-default font-icon font-icon-refresh-2" data-toggle="tooltip" data-placement="top" title="Kembali?"></a>
									</div>
								</div>
							</div><!--.col-md-12-->
						</div><!--.row-->
					</div><!--.card-block-->
				</form>
			</section>
			
		</div><!--.container-fluid-->
	</div><!--.page-content-->
	
<?php 
include('../../system/inc/footer.php');
?>
