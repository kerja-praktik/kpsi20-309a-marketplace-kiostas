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
  <h1>Tambah Alamat Pengiriman</h1>
  &nbsp;
<form>
	<div class="form-group row">
		<label for="label alamat" class="col-sm-2 col-form-label">Label Alamat</label>
		<div class="col-sm-5">
			<input type="label alamat" class="form-control" id="nama" placeholder="Tulis nama alamat">
      <small id="label alamat" class="form-text text-muted">Contoh : Rumah, Kantor, Apartemen</small>
		</div>
	</div>
  <div class="form-group row">
		<label for="nama penerima" class="col-sm-2 col-form-label">Nama Penerima</label>
		<div class="col-sm-5">
			<input type="nama penerima" class="form-control" id="nama" placeholder="Isikan nama lengkap dan jelas">
		</div>
	</div>
  <div class="form-group row">
		<label for="nomor telepon" class="col-sm-2 col-form-label">Nomor Telepon</label>
		<div class="col-sm-5">
			<input type="nomor telepon" class="form-control" id="nama" placeholder=" ">
      <small id="nomor telepon" class="form-text text-muted">Contoh : 081234567890 </small>
		</div>
	</div>
  <div class="form-group row">
		<label for="kota atau kecamatan" class="col-sm-2 col-form-label">Kota atau Kecamatan</label>
		<div class="col-sm-5">
			<input type="kota atau kecamatan" class="form-control" id="kota atau kecamatan" placeholder="Tulis nama alamat / kota / kecamatan tujuan pengiriman ">
		</div>
	</div>
  <div class="form-group row">
		<label for="kode pos" class="col-sm-2 col-form-label">Kode Pos</label>
		<div class="col-sm-5">
			<input type="kode pos" class="form-control" id="kode pos" placeholder=" ">
		</div>
	</div>
  <div class="form-group row">
		<label for="alamat" class="col-sm-2 col-form-label">Alamat</label>
		<div class="col-sm-5">
		<textarea class="form-control" id="alamat" rows="3" placeholder="Isi dengan nama jalan, nomor rumah, nomor kompleks, nama gedung, lantai atau nomor unit "></textarea>
	</div>
	</div>
	<div class="btn-block btn float-right">
	<button type="button" class="btn btn-primary col-md-1" >Edit</button> &nbsp;
    <button type="button" class="btn btn-success col-md-1" >Simpan</button>
    </div>
	</div>
  </form>
  </div>
</body>
<div class=" " style="margin-top:150px">
   <!-- footer -->
   @extends('footer')
</html>
