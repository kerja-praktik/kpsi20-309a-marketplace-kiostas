<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Daftar Produk</title>
   <!-- Scripts -->
   <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
   
</head>
<!-- Navigation bar -->
@extends('frontEnd.layouts.navbarumkm')
<style>
.template{
  width: 750px;
  height: 750px;
  padding: 0 50;
  margin: auto;
}
</style>
<body>
<div class="container-fluid" style="margin-top:120px">
<div class="template">
  <h1>Daftar Produk dan Jasa</h1>
  <form method="POST" >
    <div class="form-group">
      <label>Nama</label>
      <input type="text" name="nama" class="form-control" placeholder=" ">
    </div>
    <div class="form-group">
      <label>Kode</label>
      <input type="text" name="kode" class="form-control" placeholder=" ">
      <small id="kode" class="form-text text-muted">Contoh : B01</small>
    </div>
    <div class="form-group">
      <label>Kategori</label>
      <select class="form-control" id="jk">
        <option>Sembako</option>
        <option>Sayur & Buah</option>
        <option>Ikan & Daging</option>
        <option>Minuman</option>
        <option>Makanan</option>
        <option>Fashion</option>
        <option>Rempah</option>
        <option>Produk Kesehatan</option>
        <option>Produk Kreatif</option>
        <option>Produk Industri</option>
        <option>Aneka Jasa</option>
        <option>Lainnya</option>
      </select>
    </div>
    <div class="form-group">
      <label>Harga</label>
      <input type="text" name="harga" class="form-control" placeholder=" ">
    </div>
    <div class="form-group">
      <label>Satuan</label>
      <select class="form-control" id="jk">
        <option>Biji</option>
        <option>Botol</option>
        <option>Buah</option>
        <option>Bungkus</option>
        <option>Butir</option>
        <option>Ekor</option>
        <option>Gram</option>
        <option>Ikat</option>
        <option>Kemasan</option>
        <option>Kg</option>
        <option>Paket</option>
        <option>Plastik</option>
        <option>Ton</option>
        <option>Unit</option>
      </select>
    </div>
    <div class="form-group">
      <label>Stok</label>
      <input type="text" name="stok" class="form-control" placeholder=" ">
    </div>
    <div class="form-group">
      <label>Deskripsi</label>
      <textarea class="form-control" id="deskripsi" rows="3" placeholder="  "></textarea>
    </div>
    <div class="form-group">
      <label>Foto</label>
      <input type="file" name="foto" class="form-control">
    </div>
    <div class="form-group">
      <button class="btn btn-primary  upload-image" type="submit">Daftar</button>
    </div>
  </form>
</div>
</body>
<div class=" " style="margin-top:150px">
</div>
</div>
</html>
 <!-- footer -->
@extends('footer')