<!doctype html>
<html>
<head>
meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Daftar Akun</title>
<style>
.template{
  height:380px;
}
</style>
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
 <!-- Navigation bar -->
 @extends('navbar')
<body>
<!-- Content  -->
<div class="container-fluid" style="margin-top:120px">
<div class = "template">
  <h1>Daftar Akun di KIOSTA</h1>
    &nbsp;
  <p>Daftarkan akun Anda sebagai</p>
    &nbsp;

<!-- Radio Button -->
<!-- Default inline 1-->
<div class="custom-control custom-radio custom-control-inline">
  <input type="radio" class="custom-control-input" id="defaultInline1" name="inlineDefaultRadiosExample">
  <label class="custom-control-label" for="defaultInline1">Pelanggan</label>
</div>

<!-- Default inline 2-->
<div class="custom-control custom-radio custom-control-inline">
  <input type="radio" class="custom-control-input" id="defaultInline2" name="inlineDefaultRadiosExample">
  <label class="custom-control-label" for="defaultInline2">Mitra  UMKM</label>
</div>
</div>
  </div>
</body>
<div class=" " style="margin-top:150px">
<!-- footer -->
@extends('footer')
</html>
