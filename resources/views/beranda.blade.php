<!doctype html>
@extends('navbar')
   <!-- Scripts -->
   <script src="{{ asset('js/app.js') }}" defer></script>
    
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
<html>
<head>
<title>Beranda</title>
<style>
.page {
  width: 750px;
  height: 600px;
  padding: 0 50;
  /* margin: auto; */
}
</style>
</head>
<body>
<div class="container-fluid" style="margin-top:120px">
<div class="page">
<!-- @if(isset(Auth::user()->email))
  <div class="alert alert-danger success-block" >
    <strong>Welcome {{ Auth::user()->email }}</strong>
    <br>
    <a href="{{ url('/masuk/keluar') }}">Keluar</a>
  </div>
else
  <script>window.location = "/masuk/successmasuk";</script>
@endif -->
<h1 style="font-size:40px" >Beranda</h1>

<a href="{{ url('/masuk/keluar') }}">Keluar</a>

</div>
</div>
</body>
</html>
@extends('footer')