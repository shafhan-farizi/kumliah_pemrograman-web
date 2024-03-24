<?php
session_start();
if(!isset($_SESSION['bunga'])) {
  header('Location: index.html');
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hasil Perhitungan Bunga Pinjaman Sederhana</title>
</head>
<body>
<link type="text/css" rel="stylesheet" href="https://cdn01.jotfor.ms/stylebuilder/static/form-common.css?v=d0f72cd
"/>
<style type="text/css">@media print{*{-webkit-print-color-adjust: exact !important;color-adjust: exact !important;}.form-section{display:inline!important}.form-pagebreak{display:none!important}.form-section-closed{height:auto!important}.page-section{position:initial!important}}</style>
<link id="custom-font" type="text/css" rel="stylesheet" href="//cdn.jotfor.ms/fonts/?family=Inter" />
<link type="text/css" rel="stylesheet" href="https://cdn02.jotfor.ms/themes/CSS/defaultV2.css?v=d0f72cd
"/>
<link type="text/css" rel="stylesheet" href="https://cdn03.jotfor.ms/themes/CSS/64012b8864323209265bec99.css?v=3.3.52628&themeRevisionID=65cc87cf6163330c83a920b6"/>
<link type="text/css" rel="stylesheet" href="https://cdn01.jotfor.ms/css/styles/payment/payment_styles.css?3.3.52628" />
<link type="text/css" rel="stylesheet" href="https://cdn02.jotfor.ms/css/styles/payment/payment_feature.css?3.3.52628" />
<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */
.form-label.form-label-auto {
        
        display: inline-block;
        float: left;
        text-align: left;
      
      }
    /* Injected CSS Code */
</style>
  <div id="formCoverLogo" style="margin-bottom:32px" class="form-cover-wrapper form-has-cover form-page-cover-image-align-center">
    <div class="form-page-cover-image-wrapper" style="max-width:752px"><img src="https://www.jotform.com/uploads/shafhanfa/form_files/kanna-chan-removebg-preview%20(1).65fee9157bd610.55106056.png" class="form-page-cover-image" width="140" aria-label="Form Logo" style="aspect-ratio:140/143" /></div>
  </div>
  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-large">
          <div class="header-text httal htvam">
            <h1 id="header_1" class="form-header" data-component="header">Jumlah Bunga Pinjaman Yang Harus Dibayar</h1>
            <div id="subHeader_1" class="form-subHeader">jumlah uang yang harus dibayar oleh nasabah kepada sang peminjam</div>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_58"><label class="form-label form-label-left form-label-auto" id="label_58" for="input_58" aria-hidden="false"> Jumlah Uang Dipinjam </label>
        <div id="cid_58" class="form-input" data-layout="half"> <input type="text" id="input_58" data-type="input-textbox" class="form-textbox validate[Numeric]" data-defaultvalue="" style="width:310px" size="310" data-component="textbox" aria-labelledby="label_58" value="<?= $_SESSION['bunga'][1] ?>" disabled/> </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_59"><label class="form-label form-label-left form-label-auto" id="label_59" for="input_59" aria-hidden="false"> Suku Bunga Per Tahun </label>
        <div id="cid_59" class="form-input" data-layout="half"> <input type="text" id="input_59" name="q59_sukuBunga" data-type="input-textbox" class="form-textbox validate[Numeric]" data-defaultvalue="" style="width:310px" size="310" data-component="textbox" aria-labelledby="label_59" value="<?= $_SESSION['bunga'][2] ?>" disabled/> </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_60"><label class="form-label form-label-left form-label-auto" id="label_60" for="input_60" aria-hidden="false"> Jangka Waktu </label>
        <div id="cid_60" class="form-input" data-layout="half"> <input type="text" id="input_60" name="q60_jumlahUang60" data-type="input-textbox" class="form-textbox validate[Numeric]" data-defaultvalue="" style="width:310px" size="310" data-component="textbox" aria-labelledby="label_60" value="<?= $_SESSION['bunga'][3] . ' ' . $_SESSION['bunga'][4] ?>" disabled/> </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_60"><label class="form-label form-label-left form-label-auto" id="label_60" for="input_60" aria-hidden="false">Total Bunga Yang Harus Dibayar </label>
        <div id="cid_60" class="form-input" data-layout="half"> <input type="text" id="input_60" name="q60_jumlahUang60" data-type="input-textbox" class="form-textbox validate[Numeric]" data-defaultvalue="" style="width:310px" size="310" data-component="textbox" aria-labelledby="label_60" value="<?= $_SESSION['bunga'][0] ?>" disabled/> </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_70">
        <div id="cid_70" class="form-input-wide" data-layout="full"> <div data-align="auto" class="form-buttons-wrapper form-buttons-auto jsTest-button-wrapperField"><a href="operation/reset.php"><button id="input_70" type="submit" class="form-submit-button form-submit-button-red-500 submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">Reset</button></a></div> </div> 
      </li>
    </ul>
  </div>
</body>
</html>