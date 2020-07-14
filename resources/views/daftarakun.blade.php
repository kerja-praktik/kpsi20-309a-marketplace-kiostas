<!doctype html>
<html>
<head>
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
</body>
<div class=" " style="margin-top:150px">
<!-- footer -->
@extends('footer')
</html>
