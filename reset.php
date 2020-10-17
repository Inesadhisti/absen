<html>
<head lang="en">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>MARI-ABSEN</title>
	<link rel="shortcut icon" href="assets/img/logo-mob.png" type="image/x-icon">
	<link rel="stylesheet" href="assets/css/separate/pages/login.min.css">
    <link rel="stylesheet" href="assets/css/lib/font-awesome/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/lib/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/main.css">
</head>

<body> 
	<div class="page-center">
        <div class="page-center-in">
            <div class="container-fluid">
			
                <form class="sign-box" action="page.php?process-masuk" id="form-masuk" name="login" method="POST">
				<header class="sign-title"><strong>Ubah Kata Sandi</strong></header>
					<p>Silahkan Hubungi Admin Melalui Kontak Berikut :</p>
					<div class="table-responsive">
								<table id="table-sm" class="table table-bordered table-hover table-sm">
									<thead>
										<tr>
										<th colspan="3"><center>Kontak Admin</center></th>
										</tr>
									</thead>
									
									<tbody>
										<tr>
										<td align="right"><i class="font-icon font-icon-mail"></i> Email </td>
										<td align="center">:</td>
										<td align="left"><a href='mailto:mariabsen@gmail.com' onClick='_blank'>MARI-ABSEN@gmail.com</a></td>
										</tr> 
										
										<tr>
										<td align="right"><i class="font-icon font-icon-phone"></i> Phone </td>
										<td align="center">:</td>
										<td align="left"><a href='MARI-ABSEN?body=ORDER%20Lupa%20Kata%20Sandi%20Username' target='_blank'>MARI-ABSEN</a></td>
										</tr> 
										
										</tr> 
									</tbody>
								</table>
							</div>
					  	<br>
          			<p class="sign-note">Copyright &copy;  <?php echo "".date("Y");""; ?>  - <a href="page.php?masuk">MARI-ABSEN</a>  (Absensi Siswa Berbasis Web)</p>
				 </form>
				 
            </div><!--.container-fluid-->
        </div><!--.page-center-in-->
    </div><!--.page-center-->
	
<script src="assets/js/lib/jquery/jquery.min.js"></script>
<script src="assets/js/lib/tether/tether.min.js"></script>
<script src="assets/js/lib/bootstrap/bootstrap.min.js"></script>
<script src="assets/js/plugins.js"></script>
<script src="assets/js/lib/html5-form-validation/jquery.validation.min.js"></script>
<script type="text/javascript" src="assets/js/lib/match-height/jquery.matchHeight.min.js"></script>
    <script>
        $(function() {
            $('.page-center').matchHeight({
                target: $('html')
            });
            $(window).resize(function(){
                setTimeout(function(){
                    $('.page-center').matchHeight({ remove: true });
                    $('.page-center').matchHeight({
                        target: $('html')
                    });
                },100);
            });
        });
    </script>
<script src="assets/js/app.js"></script>
</body>
</html>