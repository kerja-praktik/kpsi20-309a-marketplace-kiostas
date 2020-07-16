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
        <img src="{{ asset('img/pembayaran.png') }}"  style="display: block; margin: auto" width="420px" heigth="400px" >
        <h2 style ="text-align:center; margin-top:50px">Metode Pembayaran</h2>
        <br>
        <h3>Pembelian melalui Toko</h3>
        <h4 style="margin-top:20px">CASH</h4><img src="https://upload.wikimedia.org/wikipedia/commons/6/6a/Indonesia_2004_100000r_o.jpg" id="showgambar" style="max-width:170px;max-height:120px;" />

        <h4 style="margin-top:15px">TRANSFER</h4>
        <img src="{{ asset('img/iconfinder_BCA_2425807.svg') }}" id="showgambar" style="max-width:100px;max-height:100px;"/>  
        <img src="{{ asset('img/iconfinder_BNI_2425812.svg') }}" id="showgambar" style="max-width:100px;max-height:100px;"/>  
        <img src="{{ asset('img/iconfinder_BRI_2425806.svg') }}" id="showgambar" style="max-width:100px;max-height:100px;"/>  
        <img src="{{ asset('img/iconfinder_Mandiri_2425804.svg') }}" id="showgambar" style="max-width:100px;max-height:100px;"/>  
        <h6 style="margin-top:15px">Untuk konfirmasi pembayaran, pelanggan dapat mengirimkan bukti pembayaran melalui kontak WA yang tertera pada Toko UMKM.</h6>
        <br>
        <h3 style="margin-top:25px">Pembelian melalui marketplace KIOSTAS</h3>
        <h4 style="margin-top:20px">TRANSFER</h4>
        <img src="{{ asset('img/iconfinder_BCA_2425807.svg') }}" id="showgambar" style="max-width:100px;max-height:100px;"/>  
        <img src="{{ asset('img/iconfinder_BNI_2425812.svg') }}" id="showgambar" style="max-width:100px;max-height:100px;"/>  
        <img src="{{ asset('img/iconfinder_BRI_2425806.svg') }}" id="showgambar" style="max-width:100px;max-height:100px;"/>  
        <img src="{{ asset('img/iconfinder_Mandiri_2425804.svg') }}" id="showgambar" style="max-width:100px;max-height:100px;"/>  
        <h6 style="margin-top:15px">Untuk konfirmasi pembayaran, pelanggan dapat mengirimkan bukti pembayaran melalui kontak WA dan email berikut ini.</h6>
        <h6style="margin-top:5px" ><img src="{{ asset('img/logo-whatsapp-png-46044.png') }}" id="showgambar" style="max-width:30px;max-height:30px;"/> 087715150148</h6> 
        <h6><img src="{{ asset('img/email-logo-png-1114.png') }}" id="showgambar" style="max-width:30px;max-height:30px;"/> kioskitasemua.kiostas@gmail.com</h6> 
        
         </div>
         <div class="sidebar">
         @include('frontEnd.Bantuan.sidebar')
         </div>
    </div>
    </div>
</body>
</html>
@extends('frontEnd.layouts.footer')
