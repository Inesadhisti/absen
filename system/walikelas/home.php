<?php 
//panggil file session-walikelas.php untuk menentukan apakah walikelas atau bukan
include('system/inc/session-walikelas.php');
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');
//panggil file header.php untuk menghubungkan konten bagian atas
include('system/inc/header.php');
//memberi judul halaman
echo '<title>walikelas Piket - MARI-ABSEN</title>';
//panggil file css.php untuk desain atau tema
include('system/inc/css.php');
//panggil file navi-walikelas.php untuk menghubungkan navigasi walikelas ke konten
include('system/inc/nav-walikelas.php');
//merubah waktu kedalam format indonesia
$hari = array ("Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu");
$bln = array ("","Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
?>


	<div class="page-content">
		<div class="container-fluid">
				
			<div class="row">
				<div class="col-lg-12 col-md-12">
				<?php 
                //kode php ini kita gunakan untuk menampilkan pesan Selamat datang user!
				if (!empty($_GET['sign-in']) && $_GET['sign-in'] == 'succes') {
				echo '<div class="alert alert-success alert-fill alert-close alert-dismissible fade in" role="alert">
			  	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			  	<span aria-hidden="true">&times;</span>
			  	</button>
			  	Assalamualaikum <strong>'.$_SESSION['nama'].' ! </strong>
				Selamat Datang Di MARI-ABSEN </div>';
				}
				//kode php ini kita gunakan untuk menampilkan pesan Edit sukses
				else if (!empty($_GET['message']) && $_GET['message'] == 'edit-success') {
				echo '<div class="alert alert-success alert-fill alert-close alert-dismissible fade in" role="alert">
			  	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			  	<span aria-hidden="true">&times;</span>
			 	</button>
			  	SUCCESS !! - Data Profil Berhasil Di Edit ! [ <a href="page.php?w-detail-profil&id='.$_SESSION['id_user'].'">Lihat Perubahan Disini !</a> ]
				</div>';
				}
				?>
				</div>
			</div>			

			<section class="box-typical">
				<header class="box-typical-header">
					<div class="tbl-row">
						<div class="tbl-cell tbl-cell-title">
							<h3>LIHAT ABSENSI SISWA</h3>
						</div>
						<div class="tbl-cell tbl-cell-icon-right col-lg-6">
						</div>
						<form  id="form-insert" name="form-insert" method="get" action="search/w-siswa.php">
						<div class="tbl-cell tbl-cell-action col-lg-4" align="right">
							<div class="form-control-wrapper">
							<input  type="text" 
									class="form-control form-control-rounded" 
									name="q" 
									id="form-q" 
									placeholder="Masukan NIS atau Nama Siswa" 
									data-validation="[L>=1]"
									data-validation-message="Tidak boleh kosong!"/>
							</div>
						</div>
						<div class="tbl-cell tbl-cell-icon-right col-lg-1" align="center">
							<button type="submit" class="btn btn-rounded btn-primary font-icon font-icon-search"> </button>
						</div>
						</form>
					</div>
				</header>
				<div class="box-typical-body">
					<div class="table-responsive">
					<table id="table-sm" class="table table-bordered table-hover table-sm">
					<thead>
						<tr>
						
						<th><center>Nama Kelas</center></th>
						<th><center>Hari / Tanggal</center></th>
						<th><center>Jumlah Siswa</center></th>
						<th><center><i class="font-icon glyphicon glyphicon-cog"></i> </center></th>
						</tr>
					</thead>
					<tbody>
						<?php 
						$kelas=mysql_query("select * from kelas order by nm_kelas asc",$connect);
						while($row=mysql_fetch_array($kelas)){
						//mencari jumlah siswa di masing-masing kelas
						$siswa=mysql_query("select * from siswa where nm_kelas='$row[nm_kelas]'",$connect);
						$jumlah=mysql_num_rows($siswa);
						?>
						<tr>
						
						<td align="center"><?php echo $row['nm_kelas']; ?></td>
						<td align="center"><?php echo "".$hari[date("w")].", ".date("j")." ".$bln[date("n")]." ".date("Y");""; ?></td>
						<td align="center"><?php echo $jumlah;?></td>
						<td align="center">
							<div class="btn-group btn-group-sm" role="group" aria-label="Basic example">
							<a href="page.php?w-data-absensi&kelas=<?php  echo $row['nm_kelas']; ?>&tanggal=<?php echo $tanggal=date("d/m/Y"); ?>" class="btn btn-default font-icon font-icon-eye" data-toggle="tooltip" data-placement="top" title="Lihat?"></a>
							</div>
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
					<div class="col-md-6">
						<br>
  						<span class="label label-success">Info! </span> Total
						<?php 
						$query=mysql_query("select * from kelas order by nm_kelas");
          				$jmlh_kelas=mysql_num_rows($query);
    					?>
  						<span class="label label-primary">Kelas : <?php echo "$jmlh_kelas";?> </span>
						<?php 
						$query=mysql_query("select * from siswa order by id_siswa");
          				$jmlh_siswa=mysql_num_rows($query);
    					?>
						<span class="label label-primary">Siswa : <?php echo "$jmlh_siswa";?> </span>
					</div>
					
					<div class="col-md-6" align="right">
						<nav>
							<ul class="pagination">
								<li class="page-item disabled">
								<a class="page-link" href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span>
								</a>
								</li>
								
								<li class="page-item active">
								<a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
								</li>
								
								<li class="page-item disabled">
								<a class="page-link" href="#" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
								<span class="sr-only">Next</span>
								</a>
								</li>
							</ul>
						</nav>
					</div>
				</div><!--.card-block-->
			</section>
			
		</div><!--.container-fluid-->
	</div><!--.page-content-->

<?php 
//panggil file footer.php untuk menghubungkan konten bagian bawah
include('system/inc/footer.php');
?>