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
        <img src="{{ asset('img/pengiriman.png') }}"  style="display: block; margin: auto" width="500px" heigth="550px" >
        <h3 style ="text-align:center; margin-top:50px">Pengiriman</h3>
        <h6 style ="margin-top:15px">KIOSTAS menggunakan jasa pihak ke-3(ekspedisi) untuk melakukan pengiriman produk/paket diantaranya:</h6>
        <img src="{{ asset('img/ninja.jpg') }}" id="showgambar" style="max-width:100px;max-height:100px;"/>  
        <img src="{{ asset('img/JNE.png') }}" id="showgambar" style="max-width:100px;max-height:100px;"/> 
        <img src="{{ asset('img/jnt.JPG') }}" id="showgambar" style="max-width:100px;max-height:100px;"/> 
        <h3 style ="text-align:center; margin-top:50px">Kondisi dan Jadwal Pengiriman </h3>
        <h6 style ="margin-top:15px">1. <b>Pengiriman paket dilakukan / diberikan</b> secara besar-besaran setiap hari ke JNE di atas pukul 18:00 pada hari Senin-Jumat. Hari Sabtu, Minggu dan Hari Libur Nasional tidak ada pengiriman.</h6>
        <h6 style ="margin-top:15px">2. <b>Kami mengirimkan bukti pengiriman Anda pada hari kerja berikutnya (H + 1).</b></h6>
        <h6 style ="margin-top:15px">3. <b>Biaya pengiriman aktual </b>mengacu pada tanda terima setelah mengirim produk.</h6>
        <h6 style ="margin-top:15px">4. Keterlambatan dan masalah pada saat proses pengiriman sepenuhnya merupakan <b> tanggung jawab pihak ketiga.</b></h6>

         </div>
         <div class="sidebar">
         @include('frontEnd.Bantuan.sidebar')
         </div>
    </div>
    </div>
</body>
</html>
@extends('frontEnd.layouts.footer')
