<!doctype html>
@extends('navbar')
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Detail Produk</title>
<!-- Scripts -->
<script src="{{ asset('js/app.js')}}" defer></script>

<!-- Styles -->
<link href="{{ asset('css/app.css') }}" rel="stylesheet">

<html>
  <head>
    <style>
      .template {
        width: 120px;
        height: 1500px;
        padding:auto;
        /* padding: 0 0; */
      }

    .main{
      width: 750px;
      float: left;
    }

    .sidebar{
      width : 250px;
      float :right;
    }

    .main h6{
      fot-sixe:18px;
    }
    </style>
    </head>
    <body>
      <!-- Content -->
<div class="container-fluid" style="margin-top:120px">
<div class="container-fluid" style="margin-left:15px">
 <div class="detail produk">
   <img src="lackShirt.jpg" style="display: block; margin: auto" width="100px" heigth="100px">
   <h4 style="font-size:30px; margin-top:15px;">Black Shirt</h4>
   <form class="form-inline my-3 my-lg-0">
     <div class="main">
       <span>ID : F01</span>
  </div>
  <div class="sidebar">
  </div>
  <div class="main">
    <br>
    <span class="label-input100"> Kategori : Fashion</span>
  </div>
  <div class="sidebar">
    <br>
  </div>
  <div class ="main">
    <br>
    <span class="label-input100">Kode Produk : CA321</span>
  </div>
  <div class="sidebar">
    <br>
  </div>
  <div class ="main">
    <br>
    <span class="label-input100">Harga  : Rp.125.000</span>
  </div>
</div>
</body>

<button type="button" class="btn btn-success col-md-1 row-md-3" >kembali</button>
<div class=" " style="margin-top:150px">
   <!-- footer -->
   @extends('footer')
</html>