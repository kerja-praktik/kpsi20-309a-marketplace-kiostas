<<<<<<< HEAD
<!doctype html>
@extends('header')
   <!-- Scripts -->
   <script src="{{ asset('js/app.js') }}" defer></script>
    
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
<html>
<head>
<title>Beranda</title>
<style>
.page {
  width: 750px;
  height: 600px;
  padding: 0 50;
  /* margin: auto; */
}
</style>
</head>
<body>
<div class="container-fluid" style="margin-top:120px">
<div class="page">
<!-- @if(isset(Auth::user()->email))
  <div class="alert alert-danger success-block" >
    <strong>Welcome {{ Auth::user()->email }}</strong>
    <br>
    <a href="{{ url('/masuk/keluar') }}">Keluar</a>
  </div>
else
  <script>window.location = "/masuk/successmasuk";</script>
@endif -->
<h1 style="font-size:40px" >Beranda</h1>



</div>
</div>
</body>
</html>
@extends('footer')
=======
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    {{ __('You are logged in!') }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
>>>>>>> 3243b13aedbdde5529552884aeba48f7b2fd2901
