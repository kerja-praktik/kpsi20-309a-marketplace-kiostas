@extends('frontEnd.layouts.master')
@section('title','My Account Page')
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
            <div class="col-sm-4 col-sm-offset-1">
                <div class="login-form"><!--login form-->
                    <form action="{{url('/update-profile',$user_login->id)}}" method="post" class="form-horizontal">
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                        {{method_field('PUT')}}
                        <legend>Profil Akun</legend>
                        <div class="form-group {{$errors->has('name')?'has-error':''}}">
                            <input type="text" class="form-control" name="name" id="name" value="{{$user_login->name}}" placeholder="Nama">
                            <span class="text-danger">{{$errors->first('name')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('address')?'has-error':''}}">
                            <input type="text" class="form-control" value="{{$user_login->address}}" name="address" id="address" placeholder="Alamat">
                            <span class="text-danger">{{$errors->first('address')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('city')?'has-error':''}}">
                            <input type="text" class="form-control" name="city" value="{{$user_login->city}}" id="city" placeholder="Kota">
                            <span class="text-danger">{{$errors->first('city')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('state')?'has-error':''}}">
                            <input type="text" class="form-control" name="state" value="{{$user_login->state}}" id="state" placeholder="Provinsi">
                            <span class="text-danger">{{$errors->first('state')}}</span>
                        </div>
                        <div class="form-group">
                            <select name="country" id="country" class="form-control">
                                @foreach($countries as $country)
                                    <option value="{{$country->country_name}}" {{$user_login->country==$country->country_name?' selected':''}}>{{$country->country_name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group {{$errors->has('postal_code')?'has-error':''}}">
                            <input type="text" class="form-control" name="postal_code" value="{{$user_login->postal_code}}" id="postal_code" placeholder="Kode POS">
                            <span class="text-danger">{{$errors->first('postal_code')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('mobile')?'has-error':''}}">
                            <input type="text" class="form-control" name="mobile" value="{{$user_login->mobile}}" id="mobile" placeholder="Nomor Telepon">
                            <span class="text-danger">{{$errors->first('mobile')}}</span>
                        </div>
                        <button type="submit" class="btn btn-primary" style="float: right;">Update Profil</button>
                    </form>
                </div><!--/login form-->
            </div>
          
        </div>
    </div>
    <div style="margin-bottom: 20px;"></div>
@endsection