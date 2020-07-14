<!DOCTYPE html>
<html lang="en">
<head>
  <title>Header</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous"></head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<body>
<nav class="navbar navbar-expand-sm bg-orange navbar-light fixed-top">
  <!-- Brand/logo -->
<a class="navbar-brand" href="/">
<img src="{{ asset('img/Kiosta.jpeg') }}" width="200px" heigth="200px" >	
</a>
<!-- Links header -->
<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div id="navbarSupportedContent" class="collapse navbar-collapse">
<ul class="navbar-nav mr-auto">
     <!-- Dropdown Caregory -->
    <li class="nav-item dropdown active">
                <a href="#" class="nav-link dropdown-toggle" id = "navbarDropdown" role = "button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-list-alt"></i> Kategori</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a href="#" class="dropdown-item">Sembako</a>
                    <a href="#" class="dropdown-item">Sayur & Buah</a>
                    <a href="#" class="dropdown-item">Ikan & Daging</a>
                    <a href="#" class="dropdown-item">Minuman</a>
                    <a href="#" class="dropdown-item">Makanan</a>
                    <a href="#" class="dropdown-item">Fashion</a>
                    <a href="#" class="dropdown-item">Rempah</a>
                    <a href="#" class="dropdown-item">Produk Kesehatan</a>
                    <a href="#" class="dropdown-item">Produk Kreatif</a>
                    <a href="#" class="dropdown-item">Industri</a>
                    <a href="#" class="dropdown-item">Aneka Jasa</a>
                    <a href="#" class="dropdown-item">Lainnya</a>
                </div>
            </li>
            <style>
            .dropdown:hover>.dropdown-menu{
              display:block;
            }
            </style>
    <!--Navbar Forms and Buttons-->
  <form class="form-inline my-2 my-lg-0" action="/action_page.php">
    <input class="form-control mr-sm-2" type="text" placeholder="Cari Produk & Jasa">
    <button class="btn btn-success" type="submit">Cari</button>
  </form>
  </ul>
  <!--Link Align Right-->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div id="navbarSupportedContent" class="collapse navbar-collapse">
<ul class="navbar-nav ml-auto">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#"><i class="fas fa-question-circle"></i> Bantuan </a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#"><i class="fas fa-balance-scale"></i> Bandingkan</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#"><i class="fa fa-shopping-cart"></i> Keranjang</a>
      </li>
      <!-- Dropdown Account -->
      <li class="nav-item dropdown active">
                <a href="#" class="nav-link dropdown-toggle" id = "navbarDropdown" role = "button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-user"></i> Akun</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a href="/masuk" class="dropdown-item">Masuk</a>
                    <a href="/daftar" class="dropdown-item">Daftar</a>
          </body>
          </html> 
