<!doctype html>
@extends('frontEnd.layouts.layout')
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
  font-size:20px;
}

.main h3{
    font-size:30px;
}
</style>
</head>
<body>
    <div class="container-fluid">
    <div class ="template">
        <div class="main">
        <img src="{{ asset('img/beli.png') }}"  style="display: block; margin: auto" width="500px" heigth="480px" >
         <h3 style ="text-align:center; margin-top:30px">Syarat dan Ketentuan</h3>
         <h6  style="margin-top:20px">1. Transaksi yang dilakukan secara online, pembayaran bisa dilakukan via Transfer Bank (BRI, BNI dan BCA).</h6>
         <h6>2. Setelah melakukan pembayaran, pelanggan wajib melakukan konfirmasi pembayaran dan akan mendapat konfirmasi balik dari kami bahwa dana telah masuk.</h6>
         <h6>3. Pesanan yang telah diproses tidak dapat di cancel dengan alasan apapun.</h6>
         <h6>4. Pesanan baru dapat diproses setelah adanya konfirmasi pembayaran.</h6>
         <h6>5. Pengiriman paket dilakukan dengan menggunakan jasa kurir (pihak ketiga) seperti JNE.</h6>
         <h6>6. Jika biaya pengiriman kurang, pelanggan wajib membayar selisih harga yang tertagih.</h6>
         <h6>7. Konfirmasi pembayaran kami terima paling lambat 24 jam dimulai dari waktu pemesanan produk dan atau jasa.</h6>
         <h6>8. Request warna, tipe, ukuran dsb wajib untuk dicantumkan di keterangan pesanan. Jika tidak, maka pesanan produk akan diproses dan dikirim secara random/acak.</h6>
         <h6>9. Barang rusak dalam pengiriman diluar tanggung jawab KIOSTAS sebagai marketplace.</h6>
         <h6>10. Cek kondisi saat terima produk, komplain dapat diterima oleh pihak UMKM melalui kontak yang tertera.</h6>
         </div>
         <div class="sidebar">
         @include('frontEnd.Bantuan.sidebar')
         </div>
    </div>
    </div>
</body>
</html>
@endsection
