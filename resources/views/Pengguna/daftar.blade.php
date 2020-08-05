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
  width: 750px;
  height: 620px;
  padding: 0 50;
  margin: auto;
}

.main{
    width:150px;
    float:left;
}

.sidebar{
    width :500px;
    float:right;
}

</style>
<script>
</script>
<title>Daftar</title>
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
<img src="{{ asset('img/daftar.png') }}"  style="display: block; margin: auto" width="100px" heigth="100px" >
<h1 style="font-size:40px; margin-top:20px;" >Daftar</h1>

	<form class="form-inline my-3 my-lg-0" method="POST" action="{{ url('/daftar/storedaftar') }}">
    <input type="hidden" name="_token" value="{{csrf_token()}}">
        {{ csrf_field() }}
		<div class ="main">
			<span for="name">Nama Lengkap</span>
        </div>
        <div class ="sidebar">
            <input id="name" name="name" class="form-control" size="50px" type="text" placeholder="" required autofocus/>
            @if ($errors->has('name'))
                <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('name') }}</strong>
                </span>
            @endif
         </div>
        <div class ="main">
            <br>
		    <span for="no_hp" class="label-input100">Nomor Handphone</span>
        </div>
        <div class ="sidebar">
            <br>
		<input id="no_hp" name="no_hp" class="form-control" size="50px" type="text" placeholder=""  required/>
		    @if ($errors->has('no_hp'))
                <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('no_hp') }}</strong>
                </span>
            @endif
        </div>
        <div class ="main">
            <br>
		    <span for="email" class="label-input100">Email</span>
        </div>
        <div class ="sidebar">
            <br>
		<input id="email" name="email" class="form-control mr-sm-1" size="50px" type="email" placeholder=""  required/>
		    @if ($errors->has('email'))
                <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('email') }}</strong>
                </span>
            @endif
        </div>
        <div class ="main">
            <br>
		    <span for="password" class="label-input100">Kata Sandi</label>
        </div>
        <div class ="sidebar">
            <br>
		<input id="password" name="password" class="form-control mr-sm-1" size="50px" type="password" placeholder=""  required/>
            @if ($errors->has('password'))
                <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('password') }}</strong>
                </span>
            @endif
        </div>
        <div class ="main">
            <br>
		    <span for="password_confirmation" class="label-input100">Ulangi Kata Sandi</span>
        </div>
        <div class ="sidebar">
            <br>
		<input id="password_confirmation" name="password_confirmation" class="form-control mr-sm-1" size="50px" type="password" placeholder="" required/>
        </div>
        
        <button class="btn btn-primary" type="submit" style="margin-top:20px">Daftar</button>
	</form>
      	<p class="message">Dengan melakukan registrasi, Anda menyetujui <a href="/syaratdanketentuan">Syarat dan Ketentuan </a><b>KIOSTAS</b>.</p>
</div>
</div>
</body>
</html>
@extends('footer')
