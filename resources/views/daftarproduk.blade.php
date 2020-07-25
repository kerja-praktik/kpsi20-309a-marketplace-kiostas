<!doctype html>
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
 @extends('navbarumkm')
 <body>
<!-- Content -->
<div class="container-fluid" style="margin-top:120px">
<div class="container-fluid" style="margin-left:15px">

  <h1>Daftar Produk dan Jasa</h1>
  &nbsp;
<form>
	<div class="form-group row">
		<label for="nama" class="col-sm-2 col-form-label">Nama</label>
		<div class="col-sm-5">
			<input type="nama" class="form-control" id="nama" placeholder=" ">
		</div>
	</div>
    <div class="form-group row">
		<label for="kode" class="col-sm-2 col-form-label">Kode Produk atau Jasa</label>
		<div class="col-sm-5">
			<input type="kode" class="form-control" id="kode" placeholder=" ">
            <small id="kode" class="form-text text-muted">Contoh : B01</small>
		</div>
	</div>
  <div class="form-group row">
		<label for="kategori" class="col-sm-2 col-form-label">Kategori</label>
		<div class="col-sm-5">
      <select class="form-control" id="jk">
        <option>Sembako</option>
        <option>Sayur & Buah</option>
        <option>Laki-laki</option>
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
    </div>
  <div class="form-group row">
		<label for="harga" class="col-sm-2 col-form-label">Harga</label>
		<div class="col-sm-5">
			<input type="harga" class="form-control" id="harga" placeholder=" ">
		</div>
	</div>
  <div class="form-group row">
		<label for="stok" class="col-sm-2 col-form-label">Stok</label>
		<div class="col-sm-5">
			<input type="stok" class="form-control" id="stok" placeholder=" ">
		</div>
	</div>
    <div class="form-group row">
		<label for="satuan" class="col-sm-2 col-form-label">Satuan</label>
		<div class="col-sm-5">
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
    </div>
  <div class="form-group row">
		<label for="deskripsi" class="col-sm-2 col-form-label">Deskripsi</label>
		<div class="col-sm-5">
		<textarea class="form-control" id="deskripsi" rows="3" placeholder="  "></textarea>
	</div>
	</div>
            <div class="form-group row">
		<label for="foto" class="col-sm-2 col-form-label">Foto</label>
		<div class="col-sm-5">
            <div class="custom-file">
      <input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
    <label class="custom-file-label" for="inputGroupFile01">Pilih foto</label>
    </div>
    </div>
  </div>
  &nbsp;
	<div class="btn-block ">
	<button type="button" class="btn btn-primary col-md-1" >Daftar</button> &nbsp;
    </div>
	</div>
  </form>
  </div>
</body>
<div class=" " style="margin-top:150px">
   <!-- footer -->
   @extends('footer')
</html>
