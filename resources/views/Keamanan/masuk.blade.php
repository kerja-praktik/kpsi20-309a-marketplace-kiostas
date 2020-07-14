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
  height: 403px;
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
				<form class="form">
					<div  data-validate="Username is required">
						<span class="label-input100">Email/Nomor Handphone</span>
						<br>
					<input class="form-control mr-sm-2"  size="50px" type="text" placeholder="" required autofocus/>
					</div>
				</form>
				<form class="form">
			<div  data-validate = "Password is required">
				<span class="label-input100">Password</span>
				<br>
					<input class="form-control mr-sm-1"  size="50px" type="password" placeholder="" required />
					</div>
					</form>
					<form class="form-inline my-2 my-lg-0">
						<button class="btn btn-primary" type="submit">Masuk</button>
					</form>
      	<p class="message">Tidak punya akun? <a href="/daftar">Buat Akun.</a></p>
		</form>
		</div>
        </div>
</body>
@extends('footer')
</html>
