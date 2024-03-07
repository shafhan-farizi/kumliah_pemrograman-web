<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<form action="hasil.php" method="GET">
  <div class="form-group row">
    <label for="nama" class="col-4 col-form-label">Nama Lengkap</label> 
    <div class="col-8">
      <input id="nama" name="nama" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label class="col-4 col-form-label" for="matkul">Mata Kuliah</label> 
    <div class="col-8">
      <select id="matkul" name="matkul" class="custom-select">
        <option value="ddp">Dasar-Dasar Pemrograman</option>
        <option value="Jaringan Komunikasi">Jaringan Komunikasi</option>
        <option value="Basis Data">Basis Data</option>
      </select>
    </div>
  </div>
  <div class="form-group row">
    <label for="nuts" class="col-4 col-form-label">Nilai UTS</label> 
    <div class="col-8">
      <input id="nuts" name="nuts" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label for="nuas" class="col-4 col-form-label">Nilai UAS</label> 
    <div class="col-8">
      <input id="nuas" name="nuas" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label for="nugas" class="col-4 col-form-label">Nilai Tugas</label> 
    <div class="col-8">
      <input id="nugas" name="nugas" type="text" class="form-control">
    </div>
  </div> 
  <div class="form-group row">
    <div class="offset-4 col-8">
      <button name="proses" type="submit" value="simpan" class="btn btn-primary">Submit</button>
    </div>
  </div>
</form>
</body>
</html>