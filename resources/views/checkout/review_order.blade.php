@extends('frontEnd.layouts.master')
@section('title','Review Order Page')
@section('slider')
@endsection
@section('content')
    <div class="container">
        <div class="step-one">
            <h2 class="heading">PENERIMA</h2>
        </div>
        <div class="row">
            <form action="{{url('/submit-order')}}" method="post" class="form-order-review">
                <input type="hidden" name="_token" value="{{csrf_token()}}">

                <input type="hidden" name="users_id" value="{{$shipping_address->users_id}}">
                <input type="hidden" name="users_email" value="{{$shipping_address->users_email}}">
                <input type="hidden" name="name" value="{{$shipping_address->name}}">
                <input type="hidden" name="address" value="{{$shipping_address->address}}">
                <input type="hidden" name="city" value="{{$shipping_address->city}}">
                <input type="hidden" name="province" value="{{$shipping_address->province}}">
                <input type="hidden" name="postal_code" value="{{$shipping_address->postal_code}}">
                <input type="hidden" name="country" value="{{$shipping_address->country}}">
                <input type="hidden" name="mobile" value="{{$shipping_address->mobile}}">
                <input type="hidden" name="shipping_charges" value="30000">
                <input type="hidden" name="order_status" value="sukses">
                <input type="hidden" name="grand_total" value="{{$total_price}}">
                

                <div class="col-sm-12">
                    <div class="table-responsive cart_info">
                        <table class="table table-penerima">
                            <thead>
                            <tr>
                                <th>Nama</th>
                                <th>Alamat</th>
                                <th>Kota</th>
                                <th>Provinsi</th>
                                <th>Negara</th>
                                <th>Kode Pos</th>
                                <th>Nomor Telepon</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>{{$shipping_address->name}}</td>
                                <td>{{$shipping_address->address}}</td>
                                <td>{{$shipping_address->city}}</td>
                                <td>{{$shipping_address->province}}</td>
                                <td>{{$shipping_address->country}}</td>
                                <td>{{$shipping_address->postal_code}}</td>
                                <td>{{$shipping_address->mobile}}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <section id="cart_items">
                        <div class="review-payment">
                            <h2>Review & Pembayaran</h2>
                        </div>
                        
                        <div class="table-responsive cart_info">
                        <table class="table table-penerima">
                                <thead>
                                <tr class="cart_menu">
                                    <td class="image" width="180px">Item</td>
                                    <td class="description" width="250px">Deskripsi</td>
                                    <td class="price" width="180px">Harga</td>
                                    <td class="quantity" width="70px">Kuantitas</td>
                                    <td class="total" width="280px">Total</td>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($cart_datas as $cart_data)
                                    <?php
                                    $image_products=DB::table('products')->select('image')->where('id',$cart_data->products_id)->get();
                                    ?>
                                    <tr>
                                    <td class="cart_product">
                                        @foreach($image_products as $image_product)
                                            <a href=""><img src="{{url('products/small',$image_product->image)}}" alt="" style="width: 100px;"></a>
                                        @endforeach
                                    </td>
                                    <td class="cart_description">
                                        <h4><a href="">{{$cart_data->product_name}}</a></h4>
                                        <p>{{$cart_data->product_code}} | {{$cart_data->size}}</p>
                                    </td>
                                    <td class="cart_price">
                                        <p>Rp{{number_format($cart_data->price, 0, ".", ".")}}</p>
                                    </td>
                                    <td class="cart_quantity">
                                        <p>{{$cart_data->quantity}}</p>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price">Rp {{number_format($cart_data->price*$cart_data->quantity, 0, ".", ".")}}</p>
                                    </td>
                                </tr>
                                @endforeach
                                <tr>
                                    <td colspan="4">&nbsp;</td>
                                    <td colspan="2">
                                        <table class="table table-condensed total-result">
                                            <tr>
                                                <td>Sub Total</td>
                                                <td>Rp {{number_format($cart_data->price*$cart_data->quantity, 0, ".", ".")}}</td>
                                            </tr>
                                            <tr>
                                                <td>Ongkos Kirim</td>
                                                <td>Rp 30.000</td>
                                            </tr>
                                                <tr>
                                                    <td>Total</td>
                                                    <td><span>Rp {{number_format($total_price ,0,".",".")}}</span></td>
                                                </tr>
                                        </table>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="payment-options">
                            <span>Pilih Metode Pembayaran : </span>
                        <span>
                            <label><input type="radio" name="payment_method" value="COD" checked> Bayar di Tempat</label>
                        </span>
                        <span>
                            <label><input type="radio" name="payment_method" value="banktransfer"> Transfer Bank</label>
                        </span>
                            <button type="submit" class="btn btn-primary" style="float: right;">Pesan</button>
                        </div>
                    </section>

                </div>
            </form>
        </div>
    </div>
    <div style="margin-bottom: 20px;"></div>
@endsection
