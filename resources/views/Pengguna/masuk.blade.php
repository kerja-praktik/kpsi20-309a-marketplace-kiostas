<!-- Navigation bar -->
@extends('layouts.header')
   <!-- Scripts -->
	 <script src="{{ asset('js/app.js') }}" defer></script>
    
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
<!doctype html>
<html>
<head>
<style>
.login-page {
  width: 360px;
  height: 602px;
  padding: 0 0;
  margin: auto;
}
</style>
<title>Masuk</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous"></head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid" style="margin-top:120px">
<div class="login-page">
<h1 style="font-size:40px" >Masuk</h1>

@if(isset(Auth::user()->email))
	<script>window.location="/masuk/successmasuk";</script>
@endif

@if ($message = Session::get('error'))
<div class="alert alert-danger alert-block">
<button type="button" class="close" data-dismiss="alert">x</button>
<strong>{{ $message }}</strong>
</div>
@endif

@if(count($errors)>0)
	<div class="alert alert-danger"> 
		<ul>
		@foreach($errors->all() as $error)
			<li> {{ $error }} </li>
		@endforeach
		</ul>
	</div>

@endif
				<form method="POST" action="{{ url('/masuk/checkmasuk') }}">
				{{ csrf_field() }}
				<div class="form-group">
				<label>Email</label>
				<input type="email" name="email" class="form-control" size="50px" type="email" required autofocus/>
				</div>
				
				<div class="form-group">
				<label>Kata Sandi</label>
				<input type="password" name="password" class="form-control" size="50px" type="password" required autofocus/>
				</div>

				<div class="form-group">
				<button type="submit" name="masuk" class="btn btn-primary" value="Masuk">Masuk</button>
				</div>
      	<p class="message">Tidak punya akun? <a href="/daftar">Buat Akun.</a></p>
		</form>
		</div>
        </div>
</body>
@extends('footer')
</html>
