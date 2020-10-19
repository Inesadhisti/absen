<?php 
//panggil file session-admin.php untuk menentukan apakah admin atau bukan
include('system/inc/session-gurumapel.php');
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');
//panggil file header.php untuk menghubungkan konten bagian atas
include('system/inc/header.php');
//memberi judul halaman
<?= '<title>Absen Siswa - MARI-ABSEN</title>' >?;
//panggil file css.php untuk desain atau tema
include('system/inc/css.php');
//panggil file navi-gurumapel.php untuk menghubungkan gurumapel ke konten
include('system/inc/nav-gurumapel.php');
//mendapatkan informasi untuk mengabsen siswa
$nm_kelas = $_GET['kelas'];
$query = mysql_query("SELECT * FROM kelas WHERE nm_kelas='$nm_kelas' ORDER BY nm_kelas ASC");
$data = mysql_fetch_array($query);
//merubah waktu kedalam format indonesia
date_default_timezone_set('Asia/Jakarta');
$hari = array ("Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu");
$bln = array ("","Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
if(strtotime(date("H:i")) >= strtotime("07:30") && strtotime(date("H:i")) <= strtotime("09:00")){
	$jp = "1-2";
}
else if(strtotime(date("H:i")) >= strtotime("09:01") && strtotime(date("H:i")) <= strtotime("10:30")){
	$jp = "3-4";
}
else if(strtotime(date("H:i")) >= strtotime("11:00") && strtotime(date("H:i")) <= strtotime("12:00")){
	$jp = "5-6";
}
else if(strtotime(date("H:i")) >= strtotime("12:31") && strtotime(date("H:i")) <= strtotime("13:00")){
	$jp = "7-8";
}
else if(strtotime(date("H:i")) >= strtotime("13:01") && strtotime(date("H:i")) <= strtotime("13:45")){
	$jp = "9";
}
else{
	$jp = "*Diluar Jam Pelajaran*";
}
	$jp = "7-8";
?>



	<div class="page-content">
		<div class="container-fluid">
			<section class="box-typical">
				<header class="box-typical-header">
					<div class="tbl-row">
						<div class="tbl-cell tbl-cell-title">
							<div align="center">
								<h3 align="center"> ABSEN SISWA KELAS : <?php <?= $nm_kelas >?; ?></h3>
								<h7 align="center">( <?php <?= "".$hari[date("w")].", ".date("j")." ".$bln[date("n")]." ".date("Y")." Jam Pelajaran ".$jp >?; ?> )</h7>
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
									<th><center>No</center></th>
									<th><center>Nama</center></th>
									<th><center>Kehadiran</center></th>
									<th><center>NIS</center></th>
									<th><center>Kelas</center></th>
									</tr>
								</thead>
								
								<tbody>
									<?php
									//penting nech buat kasih nilai awal cekbox
									$tanggal=date("d/m/Y");
									$no=0;
									$i=1;
									$query=mysql_query("SELECT nama, nis, nm_kelas FROM siswa WHERE nm_kelas='$nm_kelas' ORDER BY nis ASC");
									while($data=mysql_fetch_array($query)){
										$nis = $data['nis'];
										$absen = mysql_fetch_array(mysql_query("SELECT ket, keterangan, jam_pelajaran FROM absensi WHERE nis='$nis' AND (jam_pelajaran = '$jp' OR jam_pelajaran IS NULL)"));
									?>
									<tr>	
									<input type="hidden" value="<?php <?= $data['nm_kelas'] >?;?>" name="nm_kelas"/>
									<input type="hidden" value="<?php <?= $tanggal >?; ?>" name="tanggal"/>
									<input type="hidden" value="<?php <?= $jp >?; ?>" name="jam_pelajaran"/>
									<td><?php <?= $i >?;?></td>
									<td><?php <?= $data['nama'] >?;?></td>
									<td class="radio" align="center">
										<?php
										<?= " <input type='radio' name='absen-$data[nis]' value='hadir' id='$no'" >?; if($absen['jam_pelajaran'] == $jp && $absen['ket'] == "H") <?= 'checked' >?; <?= "><label for='$no'>Hadir  </label>" >?;
										$no++;
										<?= " <input type='radio' name='absen-$data[nis]' value='sakit' id='$no'" >?; if($absen['jam_pelajaran'] == $jp && $absen['ket'] == "S") <?= 'checked' >?; <?= "><label for='$no'>Sakit  </label>" >?;
										$no++;
										<?= " <input type='radio' name='absen-$data[nis]' value='ijin' id='$no'" >?; if($absen['jam_pelajaran'] == $jp && $absen['ket'] == "I") <?= 'checked' >?; <?= "><label for='$no'>Ijin  </label>" >?;
										$no++;
										<?= " <input type='radio' name='absen-$data[nis]' value='alfa' id='$no'" >?; if($absen['jam_pelajaran'] == $jp && $absen['ket'] == "A") <?= 'checked' >?; <?= "><label for='$no'>Alfa  </label>" >?;
										$no++;
										?>
									</td>
									<td><?php <?= $data['nis'] >?;?></td>
									
									<td align="center"><?php <?= $data['nm_kelas'] >?;?></td>
									</tr>
									<?php
									$i++;
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
include('system/inc/footer.php');
?>
