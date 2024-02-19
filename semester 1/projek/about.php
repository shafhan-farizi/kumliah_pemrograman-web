<?php
	session_start();
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<title>Tentang Kami - eRuang</title>
		<!-- Google Font: Source Sans Pro -->
		<link
			rel="stylesheet"
			href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"
		/>
		<!-- Font Awesome -->
		<link
			rel="stylesheet"
			href="assets/plugins/fontawesome-free/css/all.min.css"
		/>
		<!-- icheck bootstrap -->
		<link
			rel="stylesheet"
			href="assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css"
		/>
		<!-- Theme style -->
		<link rel="stylesheet" href="assets/css/adminlte.min.css" />
		<link rel="icon" href="assets/img/logo.png" type="image/x-icon">
		<style>
			.image-profile {
				border: 3px solid #adb5bd;
				border-radius: 50%;
				margin: 0 auto;
				padding: 3px;
				width: 100px;
				height: 100px;
			}
			@media screen and (max-width: 1199px) {
				.col-xl-4.col-md-12 {
					margin-top: 18px;
				}
				.col-lg-3.col-md-4.ml-auto {
					margin-bottom: 15px;
				}
			}
			@media screen and (max-width: 575px) {
				.col-lg-1.col-md-2.col-sm-4 {
					margin-bottom: 15px;
				}
			}
			@media screen and (max-width: 991px) {
				.order-lg-1.order-sm-0.col-lg-4.col-sm-12 {
					margin-bottom: 20px;
				}
			}
		</style>
	</head>
	<body>
		<div class="container-fluid">
			<h1 class="text-center mt-3">
				eRuang - Sistem Peminjaman Ruangan Nurul Fikri
			</h1>
			<div class="row">
				<div class="col-lg-8 col-md-12">
					<nav style="--bs-breadcrumb-divider: '|'" aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.php">Home</a></li>
							<li class="breadcrumb-item"><a href="fasilitas.php">Fasilitas</a></li>
							<li class="breadcrumb-item"><a href="booking.php">Booking</a></li>
							<li class="breadcrumb-item"><a href="daftar_ruang.php">Ruangan</a></li>
							<li class="breadcrumb-item"><a href="about.php" style="color: #6c757d;">Tentang Kami</a></li>
						</ol>
					</nav>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-8 ml-auto">
					<div class="input-group input-group-lg">
						<input
							type="search"
							class="form-control form-control-lg"
							placeholder="Type your keywords here"
						/>
						<div class="input-group-append">
							<button type="submit" class="btn btn-lg btn-default">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
				</div>
				<?php if(!isset($_SESSION['login'])) { ?>
				<div class="col-lg-1 col-md-2 col-sm-4">
					<a href="login.html" class="btn btn-block btn-success btn-lg">
						Login
					</a>
				</div>
				<?php } else { ?>
				<div class="col-lg-1 col-md-2 col-sm-4">
					<a href="php/logout.php" class="btn btn-block btn-danger btn-lg">
						Logout
					</a>
				</div>
				<?php } ?>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="border rounded">
							<div class="row">
								<div class="col-12">
									<nav
										style="--bs-breadcrumb-divider: '>'"
										aria-label="breadcrumb" class="float-right"
									>
										<ol class="breadcrumb float-sm-right">
										<li class="breadcrumb-item"><a href="index.php">Home</a></li>
										<li class="breadcrumb-item active">Tentang Kami</li>
										</ol>
									</nav>
								</div>
							</div>
							<div class="p-3">
                                <div class="about text-justify">
                                    <h2>Tentang Kami</h2>
                                    <p style="text-indent: 40px;">Selamat datang di website <b>eRuang - Sistem Peminjaman Ruangan Nurul Fikri</b> kami yang didedikasikan untuk melayani kebutuhan Anda dalam menyewa ruangan. Kami adalah tim yang berkomitmen untuk memberikan pengalaman sewa ruangan yang terbaik dan memastikan setiap acara Anda menjadi tak terlupakan. Kami percaya bahwa setiap ruangan memiliki cerita sendiri, dan itulah yang membuat setiap acara begitu istimewa. Dengan pengalaman bertahun-tahun di industri penyewaan ruangan, kami memahami betul betapa pentingnya setiap detail dalam menciptakan momen yang berkesan. Kami menawarkan berbagai pilihan ruangan yang dapat disesuaikan dengan kebutuhan acara Anda, mulai dari rapat bisnis hingga perayaan pribadi. Keahlian tim kami tidak hanya terletak pada menyediakan ruangan yang nyaman, tetapi juga dalam memberikan layanan yang ramah dan profesional.</p>
                                    <p>Berdiri di balik visi kami untuk menjadi mitra terpercaya dalam setiap kesempatan, kami berkomitmen untuk terus meningkatkan dan menyempurnakan layanan kami. Dengan kami, Anda bukan hanya menyewa ruangan, tetapi juga mendapatkan pengalaman penuh perhatian dan dedikasi. Terima kasih telah memilih kami sebagai bagian dari momen-momen berharga Anda. Bersama-sama, mari ciptakan acara yang tak terlupakan di ruangan yang sempurna.</p>
                                </div>
                                <div class="our-team mt-5">
                                    <h2 class="text-center mb-5">Tim Kami</h2>
                                    <div class="row">
                                        <div class="col-lg-3 col-md-6">
                                            <div class="col-12">
                                                <div class="card card-primary card-outline">
                                                    <div class="card-body box-profile">
                                                      <div class="text-center">
                                                        <img class="image-profile" src="assets/img/shafhan-photo.png" width="200px" height="200px" alt="User profile picture">
                                                      </div>
                                      
                                                      <h3 class="profile-username text-center">Shafhan Farizi - Ketua</h3>
                                                      <p class="text-center text-muted">NIM 0110223019</p>
                                                      <h4 class="text-center">
                                                        Tugas
                                                      </h4>
                                                      <p class="text-justify">Mengerjakan 3 halaman website HTML, menyatukan semua halaman website dan membuat form yang terintegrasi dengan bahasa pemrograman PHP</p>
                                                    </div>
                                                    <!-- /.card-body -->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6">
                                            <div class="col-12">
                                                <div class="card card-primary card-outline">
                                                    <div class="card-body box-profile">
                                                      <div class="text-center">
                                                        <img class="image-profile" src="assets/img/galang-photo.jpg" alt="User profile picture">
                                                      </div>
                                      
                                                      <h3 class="profile-username text-center">Galang Saputra</h3>
                                                      <p class="text-center text-muted">NIM 0110223036</p>
                                                      <h4 class="text-center">
                                                        Tugas
                                                      </h4>
                                                      <p class="text-justify">Mengerjakan 2 halaman website HTML, dan mengedit video presentasi</p>
                                                    </div>
                                                    <!-- /.card-body -->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6">
                                            <div class="col-12">
                                                <div class="card card-primary card-outline">
                                                    <div class="card-body box-profile">
                                                      <div class="text-center">
                                                        <img class="image-profile" src="assets/img/nicky-photo.jpeg" alt="User profile picture">
                                                      </div>
                                      
                                                      <h3 class="profile-username text-center">Nicky Fajaelani</h3>
                                                      <p class="text-center text-muted">NIM 0110223045</p>
                                                      <h4 class="text-center">
                                                        Tugas
                                                      </h4>
                                                      <p class="text-justify">Mengerjakan 2 halaman website HTML</p>
                                                    </div>
                                                    <!-- /.card-body -->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6">
                                            <div class="col-12">
                                                <div class="card card-primary card-outline">
                                                    <div class="card-body box-profile">
                                                      <div class="text-center">
                                                        <img class="image-profile" src="assets/img/nurmayanti-photo.jpeg" alt="User profile picture">
                                                      </div>
                                      
                                                      <h3 class="profile-username text-center">Nurmayanti</h3>
                                                      <p class="text-center text-muted">NIM 0110223296</p>
                                                      <h4 class="text-center">
                                                        Tugas
                                                      </h4>
                                                      <p class="text-justify">Mengerjakan 2 halaman website HTML</p>
                                                    </div>
                                                    <!-- /.card-body -->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6">
                                            <div class="col-12">
                                                <div class="card card-primary card-outline">
                                                    <div class="card-body box-profile">
                                                      <div class="text-center">
                                                        <img class="image-profile" src="assets/img/rijal-photo.jpeg" alt="User profile picture">
                                                      </div>
                                      
                                                      <h3 class="profile-username text-center">M rizal fauzi</h3>
                                                      <p class="text-center text-muted">NIM 0110223046</p>
                                                      <h4 class="text-center">
                                                        Tugas
                                                      </h4>
                                                      <p class="text-justify">Penanggung jawab video presentasi</p>
                                                    </div>
                                                    <!-- /.card-body -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer>
				<hr class="border">
				<p>Developed By Mahasiswa STT-NF &copy;2023</p>
			</footer>
		</div>
		<script src="assets/plugins/jquery/jquery.min.js"></script>
		<!-- Bootstrap 4 -->
		<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- AdminLTE App -->
		<script src="assets/js/adminlte.min.js"></script>
	</body>
</html>
