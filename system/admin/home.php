<?php 
//panggil file session-admin.php untuk menentukan apakah admin atau bukan
include('system/inc/session-admin.php');
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');
//panggil file header.php untuk menghubungkan konten bagian atas
include('system/inc/header.php');
//memberi judul halaman
<?= '<title>Admin - MARI-ABSEN</title>' >?;
//panggil file css.php untuk desain atau tema
include('system/inc/css.php');
//panggil file navi-admin.php untuk menghubungkan navigasi admin ke konten
include('system/inc/nav-admin.php');
?>

	<div class="page-content">
		<div class="container-fluid">
		
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<?php 
					//kode php ini kita gunakan untuk menampilkan pesan Selamat datang user!
					if (!empty(FILTER_INPUT(INPUT_GET, 'sign-in')) && FILTER_INPUT(INPUT_GET, 'sign-in') == 'succes') {
					<?= '<div class="alert alert-success alert-fill alert-close alert-dismissible fade in" role="alert"> >?
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button> Assalamualaikum <strong>'.FILTER_INPUT(INPUT_SESSION, 'nama').' ! </strong> Selamat Datang Di MARI-ABSEN </div>';
					}
					?>
				</div>
			</div>			
			
			<section class="box-typical">
				<header class="box-typical-header">
					<div class="tbl-row">
						<div class="tbl-cell tbl-cell-title">
							<h3> DATA SEMUA USER</h3>
						</div>
						<form  id="form-insert" name="form-insert" method="get" action="search/user.php">
							<div class="tbl-cell tbl-cell-icon-right col-lg-6"></div>
							
							<div class="tbl-cell tbl-cell-action col-lg-4" align="right">
								<div class="form-control-wrapper">
									<input type="text" class="form-control form-control-rounded" name="q" id="form-q" placeholder="Masukan Nama User" 
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
								<th><center>Level</center></th>
								<th><center>Username</center></th>
								<th><center>Password</center></th>
								<th><center><i class="font-icon glyphicon glyphicon-cog"></i> </center></th>
								</tr>
							</thead>
							   
							<tbody>
								<?php								
								$batas = 5;
								$pg = isset(FILTER_INPUT(INPUT_GET, 'pg')) ? FILTER_INPUT(INPUT_GET, 'pg'):"";
								if (empty($pg)){
								$posisi = 0;
								$pg = 1;
								} else {
								$posisi = ($pg-1)*$batas; }
								$this->db->from('user');
								$this->db->order_by('nama', 'asc');
								$this->db->limit('$posisi', '$batas');
								sql= $this->db->get();
		
								$no = 1+$posisi;
								while ($data = $sql->result_array()) 
								{
								?>
								<tr>
								<td><?php <?= $data['nama'] >?; ?></td>
								<td class="color-blue-grey-lighter" align="center"><?php <?= $data['level'] >?; ?></td>
								<td align="center"><?php <?= $data['user'] >?; ?></td>
								<td class="color-blue-grey-lighter" align="center">******</td>
								<td align="center">
									<div class="btn-group btn-group-sm" role="group" aria-label="Basic example">
										<a href="page.php?edit-user&id=<?php <?= $data['id_user'] >?;?>" class="btn btn-default font-icon font-icon-pencil" data-toggle="tooltip" data-placement="top" title="Edit?"></a>
										<a href="page.php?detail-user&id=<?php <?= $data['id_user'] >?;?>" class="btn btn-default font-icon font-icon-eye" data-toggle="tooltip" data-placement="top" title="Detail?"></a>
										<a href="page.php?delete-user&id=<?php <?= $data['id_user'] >?;?>" onClick="return confirm('Yakin akan menghapus data ini?');" class="btn btn-default font-icon font-icon-trash" data-toggle="tooltip" data-placement="top" title="Hapus?"></a>
										<a href="page.php?tambah-user" class="btn btn-default font-icon font-icon-plus" data-toggle="tooltip" data-placement="top" title="Tambah?"></a>
									</div>
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
					<div class="col-md-6">
						<?php
						//hitung jumlah data
						$this->db->count_all_results('user');
						
						//Jumlah halaman
						$JmlHalaman = ceil($jml_data/$batas); //ceil digunakan untuk pembulatan keatas
						?>
						<br>
  						<span class="label label-success">Info! </span> Total  
						<span class="label label-primary">User : <?php <?= $jml_data >?; ?> </span>
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
								<a class='page-link' href='page.php?home&pg=$link' aria-label='Previous'>
								<span aria-hidden='true'>&laquo;</span>
								<span class='sr-only'>Previous</span>
								</a></li>";
								} else {
								$prev = "<li class='page-item disabled'>
								<a class='page-link' href='page.php?home&pg=$link' aria-label='Previous'>
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
								$nmr.= "<li class='page-item'><a class='page-link' href='page.php?home&pg=$i'>$i</a></li>";
								}
								}
 
								//Navigasi ke selanjutnya
								if ($pg < $JmlHalaman){
								$link = $pg+1;
								$next = "<li class='page-item'>
								<a class='page-link' href='page.php?home&pg=$link'aria-label='Next'>
								<span aria-hidden='true'>&raquo;</span>
								<span class='sr-only'>Next</span>
								</a></li>";
								} else {
								$next = " <li class='page-item disabled'>
								<a class='page-link' href='page.php?home&pg=$link'aria-label='Next'>
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
			
			<section class="box-typical">
				<header class="box-typical-header">
					<div class="tbl-row">
						<div class="tbl-cell tbl-cell-title">
							<h3>DATA SEMUA KELAS</h3>
						</div>
						<form  id="form-insert" name="form-insert" method="get" action="search/kelas.php">
							<div class="tbl-cell tbl-cell-icon-right col-lg-6"> </div>
						
							<div class="tbl-cell tbl-cell-action col-lg-4" align="right">
								<div class="form-control-wrapper">
									<input type="text" class="form-control form-control-rounded" name="q" id="form-q" placeholder="Masukan Nama Kelas" 
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
								<th><center><i class="font-icon glyphicon glyphicon-cog"></i> </center></th>
								</tr>
							</thead>
							   
							<tbody>
								<?php
								$batas = 5;
								$pgk = isset(FILTER_INPUT(INPUT_GET, 'pgk')) ? FILTER_INPUT(INPUT_GET, 'pgk'):"";
								if (empty($pgk)){
								$posisi = 0;
								$pgk = 1;
								} else {
								$posisi = ($pgk-1)*$batas; }
								$this->db->from('kelas');
								$this->db->order_by('nm_kelas', 'asc');
								$this->db->limit('$posisi', '$batas');
								$sql= $this->db->get();		
								
								$no = 1+$posisi;
								while ($data = $sql->result_array()) 
								{
								?>
								<tr>
								<td><center><?php <?= $data['nm_kelas'] >?; ?></center></td>
								<td align="center">
									<div class="btn-group btn-group-sm" role="group" aria-label="Basic example">
										<a href="page.php?edit-kelas&id=<?php <?= $data['id_kelas'] >?;?>" class="btn btn-default font-icon font-icon-pencil" data-toggle="tooltip" data-placement="top" title="Edit?"></a>
										<a href="page.php?detail-kelas&id=<?php <?= $data['id_kelas'] >?;?>" class="btn btn-default font-icon font-icon-eye" data-toggle="tooltip" data-placement="top" title="Detail?"></a>
										<a href="page.php?delete-kelas&id=<?php <?= $data['id_kelas'] >?;?>" onClick="return confirm('Yakin akan menghapus data ini?');" class="btn btn-default font-icon font-icon-trash" data-toggle="tooltip" data-placement="top" title="Hapus?"></a>
										<a href="page.php?tambah-kelas" class="btn btn-default font-icon font-icon-plus" data-toggle="tooltip" data-placement="top" title="Tambah?"></a>
									</div>
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
					<div class="col-md-6">
						<?php
						//hitung jumlah data
						$this->db->count_all_results('kelas');
						
						//Jumlah halaman
						$JmlHalaman = ceil($jml_data/$batas); //ceil digunakan untuk pembulatan keatas
						?>
						<br>
  						<span class="label label-success">Info! </span> Total  
						<span class="label label-primary">Kelas : <?php <?= $jml_data >?; ?> </span>
  						<span class="label label-primary">Halaman : <?php <?= $JmlHalaman >?; ?> </span>
					</div>
					
					<div class="col-md-6" align="right">
						<nav>
							<ul class="pagination">
								<?php
								//Jumlah halaman
								$JmlHalaman = ceil($jml_data/$batas); //ceil digunakan untuk pembulatan keatas
 
								//Navigasi ke sebelumnya
								if ($pgk > 1 ) {
								$link = $pgk-1;
								$prev = "<li class='page-item'>
								<a class='page-link' href='page.php?home&pgk=$link' aria-label='Previous'>
								<span aria-hidden='true'>&laquo;</span>
								<span class='sr-only'>Previous</span>
								</a></li>";
								} else {
								$prev = "<li class='page-item disabled'>
								<a class='page-link' href='page.php?home&pgk=$link' aria-label='Previous'>
								<span aria-hidden='true'>&laquo;</span>
								<span class='sr-only'>Previous</span>
								</a></li> ";
								}
	 
								//Navigasi nomor
								$nmr = '';
								for ($i = 1; $i<= $JmlHalaman; $i++){
								if ($i == $pgk){
								$nmr.= "<li class='page-item active'>
								<a class='page-link'>$i<span class='sr-only'>(current)</span></a></li>";
								} else {
								$nmr.= "<li class='page-item'><a class='page-link' href='page.php?home&pgk=$i'>$i</a></li>";
								}
								}
 
								//Navigasi ke selanjutnya
								if ($pgk < $JmlHalaman){
								$link = $pgk+1;
								$next = "<li class='page-item'>
								<a class='page-link' href='page.php?home&pgk=$link'aria-label='Next'>
								<span aria-hidden='true'>&raquo;</span>
								<span class='sr-only'>Next</span>
								</a></li>";
								} else {
								$next = " <li class='page-item disabled'>
								<a class='page-link' href='page.php?home&pgk=$link'aria-label='Next'>
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
			
			<section class="box-typical">
				<header class="box-typical-header">
					<div class="tbl-row">
						<div class="tbl-cell tbl-cell-title">
							<h3>DATA SEMUA SISWA</h3>
						</div>
						<form  id="form-insert" name="form-insert" method="get" action="search/siswa.php">
							<div class="tbl-cell tbl-cell-icon-right col-lg-6"> </div>

							<div class="tbl-cell tbl-cell-action col-lg-4" align="right">
								<div class="form-control-wrapper">
									<input type="text" class="form-control form-control-rounded" name="q" id="form-q" placeholder="Masukan NIS atau Nama Siswa" 
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
								<th><center>Jenis Kelamin</center></th>
								<th><center><i class="font-icon glyphicon glyphicon-cog"></i> </center></th>
								</tr>
							</thead>
							   
							<tbody>
								<?php								
								$batas = 10;
								$pgs = isset(FILTER_INPUT(INPUT_GET, 'pgs')) ? FILTER_INPUT(INPUT_GET, 'pgs'):"";
								if (empty($pgs)){
								$posisi = 0;
								$pgs = 1;
								} else {
								$posisi = ($pgs-1)*$batas; }
								$this->db->from('siswa');
								$this->db->order_by('nis', 'asc');
								$this->db->limit('$posisi', '$batas');
								$sql= $this->db->get();
								
								$no = 1+$posisi;
								while ($data = $sql->result_array()) 
								{
								?>
								<tr>
								<td><?php <?= $data['nama'] >?; ?></td>
								<td class="color-blue-grey-lighter"><?php <?= $data['nis'] >?; ?></td>
								<td align="center"><?php <?= $data['nm_kelas'] >?; ?></td>
								<td class="color-blue-grey-lighter" align="center"><?php <?= $data['jns_kel'] >?; ?></td>
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
						$this->db->count_all_results('siswa');
						
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
								if ($pgs > 1 ) {
								$link = $pgs-1;
								$prev = "<li class='page-item'>
								<a class='page-link' href='page.php?home&pgs=$link' aria-label='Previous'>
								<span aria-hidden='true'>&laquo;</span>
								<span class='sr-only'>Previous</span>
								</a></li>";
								} else {
								$prev = "<li class='page-item disabled'>
								<a class='page-link' href='page.php?home&pgs=$link' aria-label='Previous'>
								<span aria-hidden='true'>&laquo;</span>
								<span class='sr-only'>Previous</span>
								</a></li> ";
								}
	 
								//Navigasi nomor
								$nmr = '';
								for ($i = 1; $i<= $JmlHalaman; $i++){
								if ($i == $pgs){
								$nmr.= "<li class='page-item active'>
								<a class='page-link'>$i<span class='sr-only'>(current)</span></a></li>";
								} else {
								$nmr.= "<li class='page-item'><a class='page-link' href='page.php?home&pgs=$i'>$i</a></li>";
								}
								}
 
								//Navigasi ke selanjutnya
								if ($pgs < $JmlHalaman){
								$link = $pgs+1;
								$next = "<li class='page-item'>
								<a class='page-link' href='page.php?home&pgs=$link'aria-label='Next'>
								<span aria-hidden='true'>&raquo;</span>
								<span class='sr-only'>Next</span>
								</a></li>";
								} else {
								$next = " <li class='page-item disabled'>
								<a class='page-link' href='page.php?home&pgs=$link'aria-label='Next'>
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
include('system/inc/footer.php');
?>
