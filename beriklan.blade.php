<!doctype html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Beriklan</title>
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

  <h1 class="mt-3">Girl Fashion</h1>
  &nbsp;
  <h5>Daftar produk</h5>
<form>
<table class="table">
<thead class="thead-dark"></thead>
<tr>
<th scope="col">ID</th>
<th scope="col">Gambar</th>
<th scope="col">Nama Produk</th>
<th scope="col">Kategori</th>
<th scope="col">Kode Produk</th>
<th scope="col">Harga</th>
<th scope="col">Aksi</th>
</tr>
</thead>
<tbody>
<tr>
<th scope="row">F01</th>
<td></td>
<td>Black Shirt</td>
<td>Fashion</td>
<td>CA321</td>
<td>Rp.125.000</td>
<td>
<a href="" class="badge badge-success">lihat</a>
<a href="" class="badge badge-primary">edit</a>
<a href="" class="badge badge-danger">hapus</a>
</form>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
  </form>
  </div>
</body>
<div class=" " style="margin-top:150px">
   <!-- footer -->
   @extends('footer')
</html>
