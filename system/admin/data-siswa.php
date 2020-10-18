<?php 
//panggil file session-admin.php untuk menentukan apakah admin atau bukan
include('system/inc/session-admin.php');
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');
//panggil file header.php untuk menghubungkan konten bagian atas
include('system/inc/header.php');
//memberi judul halaman
<?= '<title>Data Siswa - MARI-ABSEN</title>' >?;
//panggil file css.php untuk desain atau tema
include('system/inc/css.php');
//panggil file navi-admin.php untuk menghubungkan navigasi admin ke konten
include('system/inc/nav-admin.php');
//mendapatkan informasi dari data kelas
FILTER_INPUT(INPUT_GET, 'kelas');
$query = mysql_query("SELECT * FROM kelas");
$data = mysql_fetch_array($query);
?>

	<div class="page-content">
		<div class="container-fluid">

			<section class="box-typical">
				<header class="box-typical-header">
					<div class="tbl-row">
						<div class="tbl-cell tbl-cell-title">
							<h3> DATA SISWA KELAS : <?php <?= $nm_kelas >?; ?></h3>
						</div>							
						<form  id="form-insert" name="form-insert" method="get" action="search/siswa.php">
							<div class="tbl-cell tbl-cell-icon-right col-lg-6"> </div>
							
							<div class="tbl-cell tbl-cell-action col-lg-4" align="right">
								<div class="form-control-wrapper">
									<input  type="text" class="form-control form-control-rounded" name="q" id="form-q" placeholder="Masukan NIS atau Nama Siswa" 
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
								<th><center>Nama</center></th>
								<th><center>NIS</center></th>
								<th><center>Kelas</center></th>
								<th><center>Jns Kel</center></th>
								<th><center>Alamat</center></th>
								<th><center><i class="font-icon glyphicon glyphicon-cog"></i> </center></th>
								</tr>
							</thead>
							   
							<tbody>
								<?php
								FILTER_INPUT(INPUT_GET, 'kelas');
								$batas = 10;
								$pg = isset($_GET['pg']) ? $_GET['pg']:"";
								if (empty($pg)) {
								$posisi = 0;
								$pg = 1;
								} else {
								$posisi = ($pg-1)*$batas; }
								$sql = mysql_query("SELECT * FROM siswa WHERE nm_kelas='$nm_kelas' ORDER BY nama ASC limit $posisi, $batas ");
								$no = 1+$posisi;
								while ($data = mysql_fetch_assoc($sql)) 
								{
								?>
						
								<tr>							
								<td><?php <?= $data['nama'] >?; ?></td>
								<td class="color-blue-grey-lighter"><?php <?= $data['nis'] >?; ?></td>
								<td align="center"><?php <?= $data['nm_kelas'] >?; ?></td>
								<td align="center"><?php <?= $data['jns_kel'] >?; ?></td>
								<td class="color-blue-grey-lighter"><?php <?= $data['alamat'] >?; ?></td>
								<td align="center">
									<div class="btn-group btn-group-sm" role="group" aria-label="Basic example">
										<a href="page.php?edit-siswa&id=<?php <?= $data['id_siswa'] >?;?>" class="btn btn btn-default" data-toggle="tooltip" data-placement="top" title="Edit?"><i class="font-icon font-icon-pencil"></i> </a>
										<a href="page.php?detail-siswa&id=<?php <?= $data['id_siswa'] >?;?>" class="btn btn btn-default" data-toggle="tooltip" data-placement="top" title="Detail?"><i class="font-icon font-icon-eye"></i> </a>
										<a href="page.php?delete-siswa&id=<?php <?= $data['id_siswa'] >?;?>" onClick="return confirm('Yakin akan menghapus data ini?');" class="btn btn btn-default" data-toggle="tooltip" data-placement="top" title="Hapus?"><i class="font-icon font-icon-trash"></i> </a>
										<a href="page.php?tambah-siswa" class="btn btn-default font-icon font-icon-plus" data-toggle="tooltip" data-placement="top" title="Tambah?"></a>
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
						<?php
						//hitung jumlah data
						FILTER_INPUT(INPUT_GET, 'kelas');
						$query = mysql_query("SELECT * FROM siswa WHERE nm_kelas='$nm_kelas'");
          				$jml_data=mysql_num_rows($query);
    					
						//Jumlah halaman
						$JmlHalaman = ceil($jml_data/$batas); //ceil digunakan untuk pembulatan keatas
						?>
						<br>
  						<span class="label label-success">Info! </span> Total  
						<span class="label label-primary">Siswa : <?php <?= $jml_data >?; ?> </span>
  						<span class="label label-primary">Halaman : <?php <?= $JmlHalaman >?; ?> </span>
					</div>
					
					<div class="col-md-6" align="right">
						<nav>
							<ul class="pagination">
								<?php
								//Jumlah halaman
								$JmlHalaman = ceil($jml_data/$batas); //ceil digunakan untuk pembulatan keatas
 
								//Navigasi ke sebelumnya
								if ($pg > 1 ) {
								$link = $pg-1;
								$prev = "<li class='page-item'>
								<a class='page-link' href='page.php?data-siswa&kelas=$nm_kelas&pg=$link' aria-label='Previous'>
								<span aria-hidden='true'>&laquo;</span>
								<span class='sr-only'>Previous</span>
								</a></li>";
								} else {
								$prev = "<li class='page-item disabled'>
								<a class='page-link' href='page.php?data-siswa&kelas=$nm_kelas&pg=$link' aria-label='Previous'>
								<span aria-hidden='true'>&laquo;</span>
								<span class='sr-only'>Previous</span>
								</a></li> ";
								}
	 
								//Navigasi nomor
								$nmr = '';
								for ($i = 1; $i<= $JmlHalaman; $i++){
								if ($i == $pg){
								$nmr.= "<li class='page-item active'>
								<a class='page-link'>$i<span class='sr-only'>(current)</span></a></li>";
								} else {
								$nmr.= "<li class='page-item'><a class='page-link' href='page.php?data-siswa&kelas=$nm_kelas&pg=$i'>$i</a></li>";
								}
								}
 
								//Navigasi ke selanjutnya
								if ($pg < $JmlHalaman){
								$link = $pg+1;
								$next = "<li class='page-item'>
								<a class='page-link' href='page.php?data-siswa&kelas=$nm_kelas&pg=$link'aria-label='Next'>
								<span aria-hidden='true'>&raquo;</span>
								<span class='sr-only'>Next</span>
								</a></li>";
								} else {
								$next = " <li class='page-item disabled'>
								<a class='page-link' href='page.php?data-siswa&kelas=$nm_kelas&pg=$link'aria-label='Next'>
								<span aria-hidden='true'>&raquo;</span>
								<span class='sr-only'>Next</span>
								</a></li>";
								}
 
								//Tampilkan navigasi
								<?= $prev . $nmr . $next >?;
								?>
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
