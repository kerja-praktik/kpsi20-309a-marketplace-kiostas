<!doctype html>
@extends('frontEnd.layouts.navbar')
@section('content')
   <!-- Scripts -->
   <script src="{{ asset('js/app.js') }}" defer></script>
    
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
<html>
<head>
<title>Bantuan</title>
<style>
.template{
  width: 1200px;
  height: 1500px;
  padding:20px;
  margin:auto;
  /* padding: 0 0; */
 
}

.main{
  width: 750px;
  float: left;
}

.sidebar{
    width :250px;
    float:right;
}

.main h6{
  font-size:18px;
}
</style>
</head>
<body>
    <div class="container-fluid" style="margin-top:120px">
    <div class ="template">
        <div class="main">
         <img src="{{ asset('img/daftarr.png') }}"  style="display: block; margin: auto" width="450px" heigth="450px" >

         <h4 style="margin-top:50px">Langkah 1</h4>
         <img src="{{ asset('img/akun.png') }}"  style="display: block; margin: auto" width="300px" heigth="200px" >
         <h3>Pilih menu daftar.</h3>
         <h6>Buka tampilan beranda dan pilih menu Akun kemudian akan tampil pilihan untuk mendaftar.</h6>
         <br>
         <h4>Langkah 2</h4>
         <br>
         <img src="{{ asset('img/formulir.png') }}"  style="display: block; margin: auto" width="400px" heigth="300px" >
         <h3 style="margin-top:20px">Isilah data diri anda dengan data yang sebenarnya.</h3>
         <h6>Masukkan data diri anda berupa Nama Lengkap, Nomor Handphone dan Email.</h6>
         <br>
         <h4>Langkah 3</h4>
         <h3>Selesai Mendaftar.</h3>
         <h6>Atur kata sandi yang terdiri dari angka dan huruf lalu ulangi kata sandi tersebut dan tekan tombol daftar. Selamat! Anda telah memiliki akun KIOSTAS. </h6>
         
         <h6></h6>
         <h6></h6>

         </div>
         <div class="sidebar">
         @include('frontEnd.Bantuan.sidebar')
         </div>
    </div>
    </div>
</body>
</html>
@extends('frontEnd.layouts.footer')
