@extends('frontEnd.layouts.master')
@section('title','My Account Page')
@section('content')

<div class="greyBg">
    <div class="container">
		<div class="wrapper">
            <div class="panel itemBox">
                <div class="panel-header"><h2 align="center">{{Auth::user()->name}}</h2></div>
                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    @if(isset($link))
                    <div class="myContent">

                      <ul class="nav nav-tabs">
                        
                        @if($link=="update-profile")
                        <li><a href="#update-profile" data-toggle="tab">Profil Akun</a></li>
                        <li><a href="#myorders" data-toggle="tab">Pesanan Saya</a></li>

                        @elseif($link=="myorders")
                        <li ><a href="#update-profile" data-toggle="tab">Profil Akun</a></li>
                        <li class="active"><a href="#myorders" data-toggle="tab">Pesanan Saya</a></li>

                        something else
                        @endif
                      </ul>

                      <div class="tab-content col-md-6">
                        <div id="update-profile" class="tab-pane fade">
                        your {{$link}} data
                        </div>
                        <div id="myorders" class="tab-pane fade in" >
                          myorders tab
                        </div>
                      </div>

                    </div>
                    @else
                  <div class="myContent">

                    <ul class="nav nav-tabs">

                      <li class="active"><a href="#update-profile" data-toggle="tab">Profil Akun</a></li>
                      <li><a href="#myorders" data-toggle="tab">Pesanan Saya</a></li>

                    </ul>

                    <div class="tab-content">
                      <div id="update-profile" class="tab-pane fade in active">
                      
                      <form action="{{url('/update-profile',$user_login->id)}}" method="post" class="form-horizontal">
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                        {{method_field('PUT')}}
                        <legend> </legend>
                        <div class="form-group {{$errors->has('name')?'has-error':''}}">
                            <input type="text" class="form-control" name="name" id="name" value="{{$user_login->name}}" placeholder="Nama Lengkap">
                            <span class="text-danger">{{$errors->first('name')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('address')?'has-error':''}}">
                            <input type="text" class="form-control" value="{{$user_login->address}}" name="address" id="address" placeholder="Alamat Lengkap">
                            <span class="text-danger">{{$errors->first('address')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('city')?'has-error':''}}">
                            <input type="text" class="form-control" name="city" value="{{$user_login->city}}" id="city" placeholder="Kota">
                            <span class="text-danger">{{$errors->first('city')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('province')?'has-error':''}}">
                            <input type="text" class="form-control" name="province" value="{{$user_login->province}}" id="province" placeholder="Provinsi">
                            <span class="text-danger">{{$errors->first('province')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('country')?'has-error':''}}">
                            <input type="text" class="form-control" name="country" value="{{$user_login->country}}" id="country" placeholder="Negara">
                            <span class="text-danger">{{$errors->first('country')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('postal_code')?'has-error':''}}">
                            <input type="text" class="form-control" name="postal_code" value="{{$user_login->postal_code}}" id="postal_code" placeholder="Kode POS">
                            <span class="text-danger">{{$errors->first('postal_code')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('mobile')?'has-error':''}}">
                            <input type="text" class="form-control" name="mobile" value="{{$user_login->mobile}}" id="mobile" placeholder="Nomor Telepon">
                            <span class="text-danger">{{$errors->first('mobile')}}</span>
                        </div>

                        <legend>Data Mitra UMKM</legend>
                        <div class="form-group {{$errors->has('toko')?'has-error':''}}">
                            <input type="text" class="form-control" name="toko" value="{{$user_login->toko}}" id="toko" placeholder="Nama Usaha">
                            <span class="text-danger">{{$errors->first('toko')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('nomor_hp')?'has-error':''}}">
                            <input type="text" class="form-control" name="nomor_hp" value="{{$user_login->nomor_hp}}" id="nomor_hp" placeholder="Nomor Telepon Usaha">
                            <span class="text-danger">{{$errors->first('nomor_hp')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('Alamat_usaha')?'has-error':''}}">
                            <input type="text" class="form-control" name="Alamat_usaha" value="{{$user_login->Alamat_usaha}}" id="Alamat_usaha" placeholder="Alamat Usaha">
                            <span class="text-danger">{{$errors->first('Alamat_usaha')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('Deskripsi_usaha')?'has-error':''}}">
                            <input type="text" class="form-control" name="Deskripsi_usaha" value="{{$user_login->Deskripsi_usaha}}" id="Deskripsi_usaha" placeholder="Deskripsi Usaha">
                            <span class="text-danger">{{$errors->first('Deskripsi_usaha')}}</span>
                        </div>

                        <button type="submit" class="btn btn-primary" style="float: right;">Update Profil</button>
                    </form>
                      
					  </div>

                      <div id="myorders" class="tab-pane fade in" style="height:400px; overflow-x:scroll">
					     
                      <table class="table table-bordered data-table">
                    <thead>
                    <div class="col-sm-5">

                    <ul class="thumbnails" style="margin-left: -10px;">
                </ul>

                <div class="table-responsive cart_info">
                        <table id="customer">
                     </tr>   
                        <th  width="100px">ID Pesanan</th>
                        <th width="250px">Penerima</th>
                        <th width="100px">Produk</th>
                        <th width="200px">Metode Pembayaran</th>
                        <th width="150px">Total Biaya</th>
                        <th width="150px" >Status</th>
                        <th width="200px">Tanggal Pemesanan</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($orders_user as $order_user)
                    <td >{{$order_user->id}}</td>
                    <td >{{$order_user->name}}</td>
                    <td >{{$order_user->products_id}}</td>
                    <td >{{$order_user->payment_method}}</td>
                    <td >Rp {{number_format($order_user->grand_total, 0, ".", ".")}}</td>
                    <td >{{$order_user->order_status}}</td>
                    <td >{{$order_user->created_at}}</td>
                    
                    </tr>
                    @endforeach
                    </tbody>
                </table>
             
                </div>
                  </div>
                  @endif

                </div>
            </div>
        </div>
    </div>
  </div>
</div>
@endsection

@section('jsblock')
    <script src="{{asset('js/jquery.min.js')}}"></script>
    <script src="{{asset('js/jquery.ui.custom.js')}}"></script>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <script src="{{asset('js/jquery.uniform.js')}}"></script>
    <script src="{{asset('js/select2.min.js')}}"></script>
    <script src="{{asset('js/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('js/matrix.js')}}"></script>
    <script src="{{asset('js/matrix.tables.js')}}"></script>
    <script src="{{asset('js/matrix.popover.js')}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <script>
      $(".deleteRecord").click(function () {
            var id=$(this).attr('rel');
            var deleteFunction=$(this).attr('rel1');
            swal({
                title:'Are you sure?',
                text:"You won't be able to revert this!",
                type:'warning',
                showCancelButton:true,
                confirmButtonColor:'#3085d6',
                cancelButtonColor:'#d33',
                confirmButtonText:'Yes, delete it!',
                cancelButtonText:'No, cancel!',
                confirmButtonClass:'btn btn-success',
                cancelButtonClass:'btn btn-danger',
                buttonsStyling:false,
                reverseButtons:true
            },function () {
                window.location.href="/admin/"+deleteFunction+"/"+id;
            });
        });
    </script>
@endsection
