<?php 
//panggil file session-walikelas.php untuk menentukan apakah walikelas atau bukan
include('system/inc/session-walikelas.php');
//panggil file conn.php untuk menghubung ke server
include('system/config/conn.php');
//panggil file header.php untuk menghubungkan konten bagian atas
include('system/inc/header.php');
//memberi judul halaman
echo '<title>Edit User - MARI-ABSEN</title>';
//panggil file css.php untuk desain atau tema
include('system/inc/css.php');
//panggil file navi-walikelas.php untuk menghubungkan navigasi walikelas ke konten
include('system/inc/nav-walikelas.php');
//mendapatkan informasi untuk mengedit data
$id_user = $_GET['id'];
$query = mysql_query("SELECT * FROM user WHERE id_user='$id_user'") or die(mysql_error());
$data = mysql_fetch_array($query);
?>

	<div class="page-content">
		<div class="container-fluid">
		
			<section class="card">
				<h6 align="center" class="with-border m-t-lg"><strong>EDIT USER</strong></h6>	
				<div class="card-block"> 
					<div class="row">
						<form id="form-insert" name="form-insert" action="page.php?w-process-edit-profil" enctype="multipart/form-data" method="POST">
							<input type="hidden" name="id_user" value="<?php echo $id_user; ?>" />
							<div class="col-md-6">
								<div class="form-group">
									<label class="form-label" for="insert-nama"><i class="font-icon font-icon-post"></i> Nama</label>
									<div class="form-control-wrapper">
										<input id="insert-nama" class="form-control" name="nama" value="<?php echo $data['nama']; ?>" placeholder="Nama User" type="text"
										data-validation="[L>=1]"
										data-validation-message="Nama User Tidak Boleh Kosong">
									</div>
								</div>
								
								<div class="form-group">
									<label class="form-label" for="insert-user"><i class="font-icon font-icon-user"></i> Username</label>
									<div class="form-control-wrapper">
										<input id="insert-user" class="form-control" name="user" value="<?php echo $data['user']; ?>" placeholder="Username" type="text"
										data-validation="[L>=1]"
										data-validation-message="Username Tidak Boleh Kosong">
									</div>
								</div>
							
								<div class="form-group">
									<label class="form-label" for="insert-pass"><i class="font-icon glyphicon glyphicon-lock"></i> Password Baru</label>
									<div class="form-control-wrapper">
										<input id="insert-pass"	class="form-control" name="pass" placeholder="******" type="password" 
										data-validation="[L>=6]"
										data-validation-message="$word harus lebih dari 6 karakter!">
									</div>
								</div>
								
								<div class="form-group">
									<label class="form-label" for="insert-pass-confirm"><i class="font-icon font-icon-question"></i> Confirm Password Baru</label>
									<div class="form-control-wrapper">
										<input id="insert-pass-confirm" class="form-control" name="confirm" placeholder="******" type="password" 
										data-validation="[V==pass]"
										data-validation-message="$ password tidak sama!">
									</div>
								</div>
							</div><!--.col-md-6-->
						
							<div class="col-md-6">
								<div class="form-group">
									<label class="form-label" for="insert-level"><i class="font-icon font-icon-users"></i> Level</label>
									<div class="form-control-wrapper">
										<select class="bootstrap-select" name="level" >
										<option value="<?php echo $data['level']; ?>"  selected/ ><?php echo $data['level']; ?></option>
										</select>
									</div>
								</div>
							</div><!--.col-md-6-->
							
							<div class="col-md-12 m-t-lg">
								<div class="form-group" align="center">
									<div class="btn-group" role="group">
										<button type="submit" class="btn btn-default font-icon font-icon-pencil" data-toggle="tooltip" data-placement="top" title="Edit?"></button>
										<a href="javascript:history.back()" class="btn btn-default font-icon font-icon-refresh-2" data-toggle="tooltip" data-placement="top" title="Kembali?"></a>
									</div>
								</div>
							</div><!--.col-md-12-->
						</form>
					</div><!--.row-->
				</div><!--.card-block-->
			</section>
		
		</div><!--.container-fluid-->
	</div><!--.page-content-->	

<?php 
//panggil file footer.php untuk menghubungkan konten bagian bawah
include('system/inc/footer.php');
?>