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
        <img src="{{ asset('img/syarat.png') }}"  style="display: block; margin: auto" width="450px" heigth="450px" >
        <h3 style ="text-align:center; margin-top:50px">Syarat dan Ketentuan</h3>
        <h6 style ="margin-top:20px">Terima kasih telah memilih KIOSTAS sebagai platform pembelanjaan online anda untuk mencari produk dan jasa UMKM.</h6>
        <h6 style ="margin-top:15px">Dengan menggunakan informsi yang terdapat di website kiostas, pelanggan diwajibkan untuk membaca, memahami dan menyetujui Syarat dan Ketentuan yang berlaku di KIOSTAS sebelum menggunakan website KIOSTAS maupun berbelanja di Toko UMKM. </h6>
        <h6 style ="margin-top:15px">Syarat dan Ketentuan ini dapat berubah sewakt-waktu tanpa ada pemberitahuan terlebih dahulu sehingga pelanggan harus membaca kembali halaman syarat dan ketentuan ini sebelum menggunakan website KIOSTAS maupun berbelanja di Toko UMKM. </h6>
        <h6 style ="margin-top:15px">1. Produk yang sudah dibeli melalui Toko UMKM dan sesuai informasi yang tertera, tidak dapat ditukar atau dikembalikan.</h6>
        <h6 style ="margin-top:15px">2. KIOSTAS sebagai salah satu marketplace yang berperan sebagai pihak penyedia platform untuk membantu pelanggan mendapatkan produk yang di inginkan. KIOSTAS bukan Produsen maupun Distributor dari produk- produk yang dijual sehingga segala informasi dan kebijakan tentang produk adalah hak dari masing- masing vendor maupun Toko UMKM. </h6>
        <h6 style ="margin-top:15px">3. Beberapa gambar produk, kemasan, dan ilustrasi dapat berubah sewaktu-waktu dengan tanpa mengurangi kualitas yang ditawarkan seiring pergantian stock dari distributor. Pelanggan dapat meminta informasi lebih lanjut kepada pihak UMKM. </h6>
        <h6 style ="margin-top:15px">4. Operasional dan jam Kerja KIOSTAS adalah Senin s/d Sabtu mulai pukul 08:00 WIB s/d 17:30 WIB (Tanggal merah dan hari libur nasional tutup) . Pemesanan melalui Online kami proses pada hari yang sama jika konfirmasi pembayaran sudah kami terima selambat-lambatnya pukul 17:00 WIB. Konfirmasi pembayaran setelah pukul 17:00 WIB akan kami proses ke-esokan harinya.</h6>
        <h6 style ="margin-top:15px">5. KIOSTAS menggunakan jasa pihak ke-3(ekspedisi) untuk melakukan pengiriman barang/ paket. Lama paket tiba di tujuan tergantung ketepatan dari masing- masing ekspedisi. </h6>
        <h6 style ="margin-top:15px">6. Setiap transaksi yang dilakukan harus melalui prosedur pembelian yang sah dan pembeli tunduk kepada hukum dan Undang Undang yang berlaku di Negara Republik Indonesia.</h6>
        <h6 style ="margin-top:15px">7. Keluhan pelanggan atas layanan dari KIOSTAS dan saran silahkan mengirimkan email kioskitasemua.kiostas@gmail.com</h6>
        <h6 style ="margin-top:15px">8. Silahkan hubungi kami melalui kontak yang tertera jika ada pertanyaan dan bantuan.</h6>


         </div>
         <div class="sidebar">
         @include('frontEnd.Bantuan.sidebar')
         </div>
    </div>
    </div>
</body>
</html>
@extends('frontEnd.layouts.footer')
