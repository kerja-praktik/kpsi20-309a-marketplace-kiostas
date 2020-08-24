@extends('frontEnd.layouts.master')
@section('title','Review Order Page')

@section('content')
    <div class="container">
        <div id ="demoFontCOD">
        <h3 class="text-center">PESANAN ANDA SEDANG KAMI PROSES</h3>
            <p class="text-center">Terima Kasih Telah Memesan Dengan Metode Pembayaran Transfer Bank</p>
            <p class="text-center">Kami akan menghubungi email anda (<b>{{$user_order->users_email}}</b>) atau nomor telepon anda (<b>{{$user_order->mobile}}</b>)</p>
            <p class="text-center">Silahkan lihat <a href = "/bantuan">Bantuan </a> untuk informasi lebih lanjut</p>

        </div>
    </div>
    <div style="margin-bottom: 400px;"></div>
@endsection
