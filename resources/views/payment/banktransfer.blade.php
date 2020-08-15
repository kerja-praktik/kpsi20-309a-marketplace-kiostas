@extends('frontEnd.layouts.master')
@section('title','Review Order Page')

@section('content')
    <div class="container">
        <div id ="demoFontCOD">
        <h1 class="text-center">PESANAN ANDA SUDAH DITERIMA</h3>
        <p class="text-center">Thanks for your Order that use Options on Bank Transafer</p>
        <p class="text-center">Please make a payment to your Virtual Number : 
        <span class ="text-danger"> <b>0868 {{$user_order->phone_number}}</b> </span></p>
        <p class="text-center">Go to <a href = "/bantuan">Bantuan </a> for more info</p>

        </div>
    </div>
    <div style="margin-bottom: 400px;"></div>
@endsection