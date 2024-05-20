<?php
  require_once('database/dbkoneksi.php');

  $sql = "SELECT paramedik.id AS id, paramedik.nama AS paramedik, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja.id AS unit_kerja_id, unit_kerja.nama AS unit_kerja FROM paramedik JOIN unit_kerja ON unit_kerja.id  = paramedik.unit_kerja_id WHERE paramedik.id =" . $_GET['id'];
  $stmt = $dbh->query($sql);
  $doctors = $stmt->fetch();

  $sql2 = "SELECT * FROM unit_kerja";
  $unit_kerja = $dbh->query($sql2);
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="src/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="src/assets/img/clinic's logo.png">
  <title>
    Puski | Doctor Information
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Nucleo Icons -->
  <link href="src/assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="src/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="src/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="src/assets/css/soft-ui-dashboard.css?v=1.0.7" rel="stylesheet" />
  <!-- Nepcha Analytics (nepcha.com) -->
  <!-- Nepcha is a easy-to-use web analytics. No cookies and fully compliant with GDPR, CCPA and PECR. -->
  <script defer data-site="YOUR_DOMAIN_HERE" src="https://api.nepcha.com/js/nepcha-analytics.js"></script>
</head>

<body class="g-sidenav-show  bg-gray-100">
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <div class="container-fluid py-4">
      <div class="row mt-4">
        <div class="col-lg-8 mx-auto mb-lg-0 mb-4">
          <div class="card z-index-2">
            <div class="card-body p-3">
              <div class="card">
              <form id="form" action="database/proses_paramedik.php?proses=edit&id=<?= $doctors['id'] ?>" method="post">
                <div class="form-group">
                    <label for="nama" class="col-form-label">Name:</label>
                    <input type="text" class="form-control" value="<?= $doctors['paramedik'] ?>" name="nama" id="nama">
                </div>
                <div class="form-group">
                    <label for="gender" class="col-form-label">Unit Kerja</label>
                    <select class="form-control" name="unit_kerja_id" id="unit_kerja">
                    <?php while($row2 = $unit_kerja->fetch()): ?>
                    <option value="<?= $row2['id'] ?>" <?= $row2['id'] == $doctors['unit_kerja_id'] ? 'selected' : '' ?>><?= $row2['nama'] ?></option>
                    <?php endwhile; ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="gender" class="col-form-label">Gender</label>
                    <select class="form-control" name="gender" id="gender">
                    <option value="L" <?= $doctors['gender'] == 'L' ? 'selected' : '' ?>>L</option>
                    <option value="P" <?= $doctors['gender'] == 'P' ? 'selected' : '' ?>>P</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="tmp_lahir" class="col-form-label">Place of birth:</label>
                    <input type="text" class="form-control" value="<?= $doctors['tmp_lahir'] ?>" name="tmp_lahir" id="tmp_lahir">
                </div>
                <div class="form-group">
                    <label for="tgl_lahir" class="col-form-label">Date of Birth</label>
                    <input class="form-control" type="date" value="<?= $doctors['tgl_lahir'] ?>" name="tgl_lahir" id="tgl_lahir">
                </div>
                <div class="form-group">
                    <label for="kategori" class="col-form-label">Category</label>
                    <select class="form-control" name="kategori" id="kategori">
                    <option <?= $doctors['kategori'] == 'Miskin' ? 'selected' : '' ?>>Miskin</option>
                    <option <?= $doctors['kategori'] == 'Menengah' ? 'selected' : '' ?>>Menengah</option>
                    <option <?= $doctors['kategori'] == 'Kaya' ? 'selected' : '' ?>>Kaya</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="telpon" class="col-form-label">Phone:</label>
                    <input type="text" class="form-control" value="<?= $doctors['telpon'] ?>" name="telpon" id="telpon">
                </div>
                <div class="form-group">
                    <label for="alamat" class="col-form-label">Address:</label>
                    <textarea class="form-control" name="alamat" id="alamat"><?= $doctors['alamat'] ?></textarea>
                </div>
                <div class="form-group" style="text-align: right;">
                    <a href="doctor-information.php" class="btn bg-gradient-danger btn-lg active ms-auto" role="button" aria-pressed="true">Cancel</a>
                    <button class="btn bg-gradient-warning btn-lg active" role="button" aria-pressed="true">Edit</button>
                </div>
            </form>
            </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <footer class="footer pt-3  ">
        <div class="container-fluid">
          <div class="row align-items-center justify-content-lg-between">
            <div class="col-lg-6 mb-lg-0 mb-4">
              <div class="copyright text-center text-sm text-muted text-lg-start">
                © <script>
                  document.write(new Date().getFullYear())
                </script>,
                made with <i class="fa fa-heart"></i> by
                <a href="https://www.creative-tim.com" class="font-weight-bold" target="_blank">Creative Tim</a>
                for a better web.
              </div>
            </div>
            <div class="col-lg-6">
              <ul class="nav nav-footer justify-content-center justify-content-lg-end">
                <li class="nav-item">
                  <a href="https://www.creative-tim.com" class="nav-link text-muted" target="_blank">Creative Tim</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/presentation" class="nav-link text-muted" target="_blank">About Us</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/blog" class="nav-link text-muted" target="_blank">Blog</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/license" class="nav-link pe-0 text-muted" target="_blank">License</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </main>
  <!--   Core JS Files   -->
  <script src="src/assets/js/core/popper.min.js"></script>
  <script src="src/assets/js/core/bootstrap.min.js"></script>
  <script src="src/assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="src/assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="src/assets/js/plugins/chartjs.min.js"></script>
  <script>
    var ctx = document.getElementById("chart-bars").getContext("2d");

    new Chart(ctx, {
      type: "bar",
      data: {
        labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        datasets: [{
          label: "Sales",
          tension: 0.4,
          borderWidth: 0,
          borderRadius: 4,
          borderSkipped: false,
          backgroundColor: "#fff",
          data: [450, 200, 100, 220, 500, 100, 400, 230, 500],
          maxBarThickness: 6
        }, ],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false,
            },
            ticks: {
              suggestedMin: 0,
              suggestedMax: 500,
              beginAtZero: true,
              padding: 15,
              font: {
                size: 14,
                family: "Open Sans",
                style: 'normal',
                lineHeight: 2
              },
              color: "#fff"
            },
          },
          x: {
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false
            },
            ticks: {
              display: false
            },
          },
        },
      },
    });


    var ctx2 = document.getElementById("chart-line").getContext("2d");

    var gradientStroke1 = ctx2.createLinearGradient(0, 230, 0, 50);

    gradientStroke1.addColorStop(1, 'rgba(203,12,159,0.2)');
    gradientStroke1.addColorStop(0.2, 'rgba(72,72,176,0.0)');
    gradientStroke1.addColorStop(0, 'rgba(203,12,159,0)'); //purple colors

    var gradientStroke2 = ctx2.createLinearGradient(0, 230, 0, 50);

    gradientStroke2.addColorStop(1, 'rgba(20,23,39,0.2)');
    gradientStroke2.addColorStop(0.2, 'rgba(72,72,176,0.0)');
    gradientStroke2.addColorStop(0, 'rgba(20,23,39,0)'); //purple colors

    new Chart(ctx2, {
      type: "line",
      data: {
        labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        datasets: [{
            label: "Mobile apps",
            tension: 0.4,
            borderWidth: 0,
            pointRadius: 0,
            borderColor: "#cb0c9f",
            borderWidth: 3,
            backgroundColor: gradientStroke1,
            fill: true,
            data: [50, 40, 300, 220, 500, 250, 400, 230, 500],
            maxBarThickness: 6

          },
          {
            label: "Websites",
            tension: 0.4,
            borderWidth: 0,
            pointRadius: 0,
            borderColor: "#3A416F",
            borderWidth: 3,
            backgroundColor: gradientStroke2,
            fill: true,
            data: [30, 90, 40, 140, 290, 290, 340, 230, 400],
            maxBarThickness: 6
          },
        ],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5]
            },
            ticks: {
              display: true,
              padding: 10,
              color: '#b2b9bf',
              font: {
                size: 11,
                family: "Open Sans",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
          x: {
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false,
              borderDash: [5, 5]
            },
            ticks: {
              display: true,
              color: '#b2b9bf',
              padding: 20,
              font: {
                size: 11,
                family: "Open Sans",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });
  </script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="src/assets/js/soft-ui-dashboard.min.js?v=1.0.7"></script>
</body>

</html>