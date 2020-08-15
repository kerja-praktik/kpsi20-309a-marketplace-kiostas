@extends('frontEnd.layouts.master')
@section('title','Review Order Page')

@section('content')
    <div class="container">
        <div id ="demoFontCOD">
            <h3 class="text-center">PESANAN ANDA SUDAH DITERIMA</h3>
            <p class="text-center">Thanks for your Order that use Options on Cash On Delivery</p>
            <p class="text-center">We will contact you by Your Email (<b>{{$user_order->users_email}}</b>) or Your Phone Number (<b>{{$user_order->mobile}}</b>)</p>
        </div>
    </div>
    <div style="margin-bottom: 20px;"></div>
@endsection