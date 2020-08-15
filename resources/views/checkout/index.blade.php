@extends('frontEnd.layouts.master')
@section('title','checkOut Page')
@section('slider')
@endsection
@section('content')
    <div class="container">
        @if(Session::has('message'))
            <div class="alert alert-success text-center" role="alert">
                {{Session::get('message')}}
            </div>
        @endif
        <div class="row">
            <form action="{{url('/submit-checkout')}}" method="post" class="form-horizontal">
                <div class="col-sm-4 col-sm-offset-1">
                    <div class="login-form"><!--login form-->
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                        <legend>Tagihan Pembayaran ke</legend>
                        <div class="form-group {{$errors->has('billing_name')?'has-error':''}}">
                            <input type="text" class="form-control" name="billing_name" id="billing_name" value="{{$user_login->name}}" placeholder="Nama Pengirim">
                            <span class="text-danger">{{$errors->first('billing_name')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('billing_address')?'has-error':''}}">
                            <input type="text" class="form-control" value="{{$user_login->address}}" name="billing_address" id="billing_address" placeholder="Alamat Pengirim">
                            <span class="text-danger">{{$errors->first('billing_address')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('billing_city')?'has-error':''}}">
                            <input type="text" class="form-control" name="billing_city" value="{{$user_login->city}}" id="billing_city" placeholder="Kota Pengirim">
                            <span class="text-danger">{{$errors->first('billing_city')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('billing_state')?'has-error':''}}">
                            <input type="text" class="form-control" name="billing_state" value="{{$user_login->state}}" id="billing_state" placeholder="Provinsi Pengirim">
                            <span class="text-danger">{{$errors->first('billing_state')}}</span>
                        </div>
                        <div class="form-group">
                            <select name="billing_country" id="billing_country" class="form-control">
                                @foreach($countries as $country)
                                    <option value="{{$country->country_name}}" {{$user_login->country==$country->country_name?' selected':''}}>{{$country->country_name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group {{$errors->has('billing_postal_code')?'has-error':''}}">
                            <input type="text" class="form-control" name="billing_postal_code" value="{{$user_login->postal_code}}" id="billing_postal_code" placeholder=" Billing postal code">
                            <span class="text-danger">{{$errors->first('billing_postal_code')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('billing_mobile')?'has-error':''}}">
                            <input type="text" class="form-control" name="billing_mobile" value="{{$user_login->mobile}}" id="billing_mobile" placeholder="Nomor Handphone Pengirim">
                            <span class="text-danger">{{$errors->first('billing_mobile')}}</span>
                        </div>
                    </div><!--/login form-->
                </div>
                <div class="col-sm-1">

                </div>
                <div class="col-sm-4">
                    <div class="signup-form"><!--sign up form-->
                        <legend>Dikirimkan ke</legend>
                        <div class="form-group {{$errors->has('shipping_name')?'has-error':''}}">
                            <input type="text" class="form-control" name="shipping_name" id="shipping_name" value="" placeholder="Nama Penerima">
                            <span class="text-danger">{{$errors->first('shipping_name')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('shipping_address')?'has-error':''}}">
                            <input type="text" class="form-control" value="" name="shipping_address" id="shipping_address" placeholder="Alamat Penerima">
                            <span class="text-danger">{{$errors->first('shipping_address')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('shipping_city')?'has-error':''}}">
                            <input type="text" class="form-control" name="shipping_city" value="" id="shipping_city" placeholder="Kota Penerima">
                            <span class="text-danger">{{$errors->first('shipping_city')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('shipping_state')?'has-error':''}}">
                            <input type="text" class="form-control" name="shipping_state" value="" id="shipping_state" placeholder="Provinsi Penerima ">
                            <span class="text-danger">{{$errors->first('shipping_state')}}</span>
                        </div>
                        <div class="form-group">
                            <select name="shipping_country" id="shipping_country" class="form-control">
                                @foreach($countries as $country)
                                    <option value="{{$country->country_name}}">{{$country->country_name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group {{$errors->has('shipping_postal_code')?'has-error':''}}">
                            <input type="text" class="form-control" name="shipping_postal_code" value="{{$user_login->postal_code}}" id="shipping_postal_code" placeholder="Shipping postal code">
                            <span class="text-danger">{{$errors->first('shipping_postal_code')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('shipping_mobile')?'has-error':''}}">
                            <input type="text" class="form-control" name="shipping_mobile" value="" id="shipping_mobile" placeholder="Nomor Telepon Penerima">
                            <span class="text-danger">{{$errors->first('shipping_mobile')}}</span>
                        </div>
                        <button type="submit" class="btn btn-primary" style="float: right;">Beli</button>
                    </div><!--/sign up form-->
                </div>
            </form>
        </div>
    </div>
    <div style="margin-bottom: 20px;"></div>
@endsection