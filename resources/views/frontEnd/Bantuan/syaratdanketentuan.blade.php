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
         <h1 style="font-size:40px" >Syarat dan Ketentuan</h1>
         <h6 class="mt-4">Terima kasih telah memilih KIOSTAS sebagai platform pembelanjaan online anda untuk mencari produk dan jasa UMKM.</h6>

         </div>
         <div class="sidebar">
         @include('frontEnd.Bantuan.sidebar')
         </div>
    </div>
    </div>
</body>
</html>
@extends('frontEnd.layouts.footer')
