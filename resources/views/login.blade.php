<!DOCTYPE html>
<html>
	<head>
	
	<link rel="stylesheet" href="./css/styles.css">
	</head>
	
	<body>
		<!-- Navigation bar -->
		@extends('navbar')
		
		<!-- body content -->
		<div class="container">
			<div class="container-title">
		  <h3>Login to PoPay</h3>
			</div>
		  <section class="container-body" >
			
			<form action="login" method="POST" action="{{ route('login') }}"> 
			{{ csrf_field() }} 
			  <p>
				<input type="text" id="inputEmail" name="email" placeholder="Enter your username" required>
			  </p>
			  <p>
				<input type="password" id="inputPIN" name="pin" placeholder="Enter your PIN" required>
			  </p>
			  @csrf
			  <p>
			  <input type="submit" class="button" value="Login">
			</p>
			</form>
			
			<p style="text-align:center;width:50%">
			  Don't have account?
			</p>
			  <p>
			  <button  onclick="window.location.href='signup'" class="button" >Sign Up</button>
			</p>
	
			</section>
		
		<!-- body content -->
		
		</div>
		</body>
		
		<!-- footer -->
	@extends('footbar')
	</html>
