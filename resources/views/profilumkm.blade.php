<!doctype html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Profil UMKM</title>
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
<!-- Content  -->
<div class="container-fluid" style="margin-top:120px">
<div class="container-fluid" style="margin-left:15px">
  <h1>Edit Profil </h1>
  &nbsp;
<form>
	<div class="form-group row">
		<label for="nama" class="col-sm-2 col-form-label">Nama</label>
		<div class="col-sm-5">
			<input type="nama" class="form-control" id="nama" placeholder=" ">
		</div>
	</div>
    <div class="form-group row">
		<label for="tanggal lahir" class="col-sm-2 col-form-label">Tanggal Lahir</label>
        <div class="col-sm-5">
        <input id="datepicker" type="tanggal lahir" class="form-control"  placeholder=" ">
        </div>
	</div>
    <script>
        $('#datepicker').datepicker({
            uiLibrary: 'bootstrap4'
        });
    </script>
  <div class="form-group row">
		<label for="jenis kelamin" class="col-sm-2 col-form-label">Jenis Kelamin</label>
		<div class="col-sm-5">
      <select class="form-control" id="jk">
        <option>Laki-laki</option>
        <option>Perempuan</option>
      </select>
    </div>
    </div>
  <div class="form-group row">
		<label for="nomor telepon" class="col-sm-2 col-form-label">Nomor Telepon</label>
		<div class="col-sm-5">
			<input type="nomor telepon" class="form-control" id="nomor telepon" placeholder=" ">
		</div>
	</div>
  <div class="form-group row">
		<label for="email" class="col-sm-2 col-form-label">Email</label>
		<div class="col-sm-5">
			<input type="email" class="form-control" id="email" placeholder=" ">
		</div>
	</div>
  <div class="form-group row">
		<label for="alamat" class="col-sm-2 col-form-label">Alamat</label>
		<div class="col-sm-5">
		<textarea class="form-control" id="alamat" rows="3" placeholder="  "></textarea>
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