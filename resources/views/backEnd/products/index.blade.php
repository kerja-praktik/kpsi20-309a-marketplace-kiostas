@extends('backEnd.layouts.master')
@section('title','Daftar Produk')
@section('content')
    <div id="breadcrumb"> <a href="{{url('/admin')}}" title="Kembali ke Beranda" class="tip-bottom"><i class="icon-home"></i> Beranda</a> <a href="{{route('product.index')}}" class="current">Produk</a></div>
    <div class="container-fluid">
        @if(Session::has('message'))
            <div class="alert alert-success text-center" role="alert">
                <strong>Berhasil Ditambahkan!</strong>
            </div>
        @endif
        <div class="widget-box">
            <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
                <h5>Daftar Produk</h5>
            </div>
            <div class="widget-content nopadding">
                <table class="table table-bordered data-table">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Gambar</th>
                        <th>Nama Produk</th>
                        <th>Kategori</th>
                        <th>Kode Produk</th>
                        <th>Varian Produk</th>
                        <th>Harga</th>
                        <th>Tambah Gambar</th>
                        <th>Tambah atribut</th>
                        <th>Aksi</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($products as $product)
                        <?php $i++; ?>
                        <tr class="gradeC">
                            <td>{{$i}}</td>
                            <td style="text-align: center;"><img src="{{url('products/small',$product->image)}}" alt="" width="50"></td>
                            <td style="vertical-align: middle;">{{$product->p_name}}</td>
                            <td style="vertical-align: middle;">{{$product->category->name}}</td>
                            <td style="vertical-align: middle;">{{$product->p_code}}</td>
                            <td style="vertical-align: middle;">{{$product->p_color}}</td>
                            <td style="vertical-align: middle;">Rp {{number_format($product->price, 0, ".", ".")}}</td>
                            <td style="vertical-align: middle;text-align: center;"><a href="{{route('image-gallery.show',$product->id)}}" class="btn btn-success btn-mini">Tambah Gambar</a></td>
                            <td style="vertical-align: middle;text-align: center;"><a href="{{route('product_attr.show',$product->id)}}" class="btn btn-success btn-mini">Tambah Atribut</a></td>
                            <td style="text-align: center; vertical-align: middle;">
                                <a href="#myModal{{$product->id}}" data-toggle="modal" class="btn btn-info btn-mini">Tampil</a>
                                <a href="{{route('product.edit',$product->id)}}" class="btn btn-primary btn-mini">Edit</a>
                                <a href="javascript:" rel="{{$product->id}}" rel1="delete-product" class="btn btn-danger btn-mini deleteRecord">Hapus</a>
                            </td>
                        </tr>
                        {{--Pop Up Model for View Product--}}
                        <div id="myModal{{$product->id}}" class="modal hide">
                            <div class="modal-header">
                                <button data-dismiss="modal" class="close" type="button">×</button>
                                <h3>{{$product->p_name}}</h3>
                            </div>
                            <div class="modal-body">
                                <div class="text-center"><img src="{{url('products/small',$product->image)}}" width="100" alt="{{$product->p_code}}"></div>
                                <p class="text-center">{{$product->description}}</p>
                            </div>
                        </div>
                        {{--Pop Up Model for View Product--}}
                    @endforeach
                    </tbody>
                </table>
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
             title:'Apakah anda yakin?',
                text:"Data akan permanen diubah!",
                type:'Peringatan!',
                showCancelButton:true,
                confirmButtonColor:'#3085d6',
                cancelButtonColor:'#d33',
                confirmButtonText:'Ya, hapus saja!',
                cancelButtonText:'Tidak, batalkan!',
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
