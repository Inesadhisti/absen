<?php 
//panggil file session-walikelas.php untuk menentukan apakah walikelas atau bukan
include('system/inc/session-walikelas.php');
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');
//panggil file header.php untuk menghubungkan konten bagian atas
include('system/inc/header.php');
//memberi judul halaman
<?= '<title>Rekap Absensi - MARI-ABSEN</title>' >?;
//panggil file css.php untuk desain atau tema
include('system/inc/css.php');
//panggil file navi-walikelas.php untuk menghubungkan navigasi walikelas ke konten
include('system/inc/nav-walikelas.php');
?>

	<div class="page-content">
		<div class="container-fluid">
		
			<section class="card">
				<h6 align="center" class="with-border m-t-lg"><strong>REKAP ABSENSI</strong></h6>	
				<div class="card-block"> 		
				<form action="" method="post" id="form-rekap" name="form-rekap">
					<div class="row">
						<div class="col-md-1"></div>
						
						<div class="col-md-4">
							<div class="form-group">
								<div class='input-group date'>
									<input id="daterange3" type="text" name="tgl1" value="<?php <?= $tanggal=date("d/m/Y") >?; ?>" class="form-control">
									<span class="input-group-addon">
									<i class="font-icon font-icon-calend"></i>
									</span>
								</div>
							</div>
						</div>
						
						<div class="col-md-2">
							<div class="form-group">
								<div align="center">
									<h6>S/D</h6>
								</div>
							</div>
						</div>
						
						<div class="col-md-4">
							<div class="form-group">
								<div class='input-group date'>
									<input id="daterange4" type="text" name="tgl2" value="<?php <?= $tanggal=date("d/m/Y") >?; ?>" class="form-control">
									<span class="input-group-addon">
									<i class="font-icon font-icon-calend"></i>
									</span>
								</div>
							</div>
						</div>
					</div><!--.row-->
					
					<div class="row">
						<div class="col-md-4"></div>
						
						<div class="col-md-4">
							<div class="form-group">
								<div class='input-group date'>
									<select  class="bootstrap-select" name="nm_kelas">
									<option value="Error !! Belum Memilih Kelas !" selected="selected">Pilih Kelas</option>
									<?php 
									$query=mysql_query("SELECT * FROM kelas ORDER BY nm_kelas ASC",$connect);
									while($data=mysql_fetch_array($query))
									{
									?>
									<option value="<?php  <?= $data['nm_kelas'] >?; ?>"><?php  <?= $data['nm_kelas'] >?; ?></option>
									<?php 
									}
									?>
									</select>	
								</div>
							</div>
						</div>
					</div><!--.row-->
					
					<div class="row">
						<div class="col-md-12">
							<div class="form-group" align="center">
								<div class="btn-group" role="group">
									<button id="form-rekap" name="form-rekap" type="submit"class="btn btn-default font-icon font-icon-server" data-toggle="tooltip" data-placement="top" title="Rekap?"></button>
									<a href="javascript:history.back()" class="btn btn-default font-icon font-icon-refresh-2" data-toggle="tooltip" data-placement="top" title="Kembali?"></a>
								</div>
							</div>
						</div><!--.col-md-12-->
					</div><!--.row-->
				  </form>
				</div><!--.card-block-->
			</section>

			<section class="box-typical">
				<header class="box-typical-header">
					<div class="tbl-row">
					 	<div class="tbl-cell tbl-cell-title">
					  		<div align="center">
								<h5>DATA HASIL REKAP KELAS : <?php <?= $nm_kelas=$_POST['nm_kelas'] >?; ?></h5>
								<h7>( Tanggal : <?php <?= $tgl1=$_POST['tgl1'] >?; ?> - <?php <?= $tgl2=$_POST['tgl2'] >?; ?> )</h7> 
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
								<th><center>Hadir (H)</center></th>
								<th><center>Sakit (S)</center></th>
								<th><center>Ijin (I)</center></th>
								<th><center>Alfa (A)</center></th>
								<th><center>Jumlah Tidak Hadir</center></th>
								</tr>
							</thead>
							
							<tbody>
								<?php
								//untuk option
								$tgl1=$_POST['tgl1'];
								$tgl2=$_POST['tgl2'];
								FILTER_INPUT(INPUT_POST, 'nm_kelas')
								$query=mysql_query("SELECT DISTINCT nis FROM absensi WHERE nm_kelas='$nm_kelas' AND tanggal BETWEEN '$tgl1' AND '$tgl2' ORDER BY nis ASC",$connect);
								while($row=mysql_fetch_array($query)){
								$data=mysql_fetch_array(mysql_query("SELECT * FROM siswa WHERE nis='$row[nis]'",$connect));
								$ket=$row['ket'];
								$keterangan=mysql_fetch_array(mysql_query("SELECT * FROM absensi WHERE nis='$row[nis]'",$connect));

								?>
								<tr>
								<td><?php <?= $data['nama'] >?;?></td>
								<td><?php <?= $data['nis'] >?;?></td>
								<td align="center">
									<?php
									$hadir=mysql_query("SELECT * FROM absensi WHERE nis='$row[nis]' AND ket='H' AND tanggal BETWEEN '$tgl1' AND '$tgl2'",$connect);
									$jumlah=mysql_num_rows($hadir);
									<?= $jumlah >?;
									?>
								</td>
								<td align="center">
									<?php
									$hadir=mysql_query("SELECT * FROM absensi WHERE nis='$row[nis]' AND ket='S' AND tanggal BETWEEN '$tgl1' AND '$tgl2'",$connect);
									$jumlah=mysql_num_rows($hadir);
									<?= $jumlah >?;
									?>
								</td>
								<td align="center">
									<?php
									$hadir=mysql_query("SELECT * FROM absensi WHERE nis='$row[nis]' AND ket='I' AND tanggal BETWEEN '$tgl1' AND '$tgl2'",$connect);
									$jumlah=mysql_num_rows($hadir);
									<?= $jumlah >?;
									?>
								</td>
								<td align="center">
									<?php
									$hadir=mysql_query("SELECT * FROM absensi WHERE nis='$row[nis]' AND ket='A' AND tanggal BETWEEN '$tgl1' AND '$tgl2'",$connect);
									$jumlah=mysql_num_rows($hadir);
									<?= $jumlah >?;
									?>
								</td>
								<td align="center">
									<?php
									$hadir=mysql_query("SELECT * FROM absensi WHERE nis='$row[nis]' AND ket='S' + ket='I' + ket='A' AND tanggal BETWEEN '$tgl1' AND '$tgl2'",$connect);
									$jumlah=mysql_num_rows($hadir);
									<?= $jumlah >?;
									?>
								</td>
								</tr>
								<?php
								}
								?>
							</tbody>
						</table>
					</div>
				</div><!--.box-typical-body-->
			
				<div class="card-block">
					<div class="col-md-12">
						<div class="form-group" align="center">
							<div class="btn-group" role="group">
								<a href="javascript:history.back()" class="btn btn-default font-icon font-icon-refresh-2" data-toggle="tooltip" data-placement="top" title="Kembali?"></a>
							</div>
						</div>
					</div><!--.col-md-12-->
				</div><!--.card-block-->
			</section>
		</div><!--.container-fluid-->
	</div><!--.page-content-->
	
<?php 
//panggil file footer.php untuk menghubungkan konten bagian bawah
include('system/inc/footer.php');
?>
