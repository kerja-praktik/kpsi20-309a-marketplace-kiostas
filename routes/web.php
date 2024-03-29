<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
/* FrontEnd Location */
Route::get('/','IndexController@index');
Route::get('/admin_home','IndexController@admin_index');
Route::get('/list-products','IndexController@shop');
Route::get('/cat/{id}','IndexController@listByCat')->name('cats');
Route::get('/product-detail/{id}','IndexController@detialpro');

/*search*/
Route::any ('/search', function(Request $request){
    $search = $request->search;
    $products=Products_model::where('p_name','LIKE','%'.$search.'%')->orWhere('p_code', 'LIKE', '%'.$search.'%')->get();
    return view('frontEnd.index')->withDetails($products)->withQuery($search);
});

/*get Attribute*/
Route::get('/get-product-attr','IndexController@getAttrs');
///// Cart Area /////////
Route::post('/addToCart','CartController@addToCart')->name('addToCart');
Route::get('/viewcart','CartController@index');
Route::get('/cart/deleteItem/{id}','CartController@deleteItem');
Route::get('/cart/update-quantity/{id}/{quantity}','CartController@updateQuantity');

/*Simple User Login*/
Route::get('/login_page','UsersController@index');
Route::get('/register_page','UsersController@register_index');
Route::post('/register_user','UsersController@register');
Route::post('/user_login','UsersController@login');
Route::get('/logout','UsersController@logout');

/*User Authentications*/
Route::group(['middleware'=>'FrontLogin_middleware'],function (){
    Route::get('/myaccount','UsersController@account');
    Route::put('/update-profile/{id}','UsersController@updateprofile');
    Route::put('/update-password/{id}','UsersController@updatepassword');

    Route::get('/check-out','CheckOutController@index');
    Route::post('/submit-checkout','CheckOutController@submitcheckout');
    Route::get('/order-review','OrdersController@index');
    Route::post('/submit-order','OrdersController@order');
    Route::get('/cod','OrdersController@cod');
    Route::get('/bank-transfer','OrdersController@banktransfer');
});
///

/*Bantuan */
Route::get('/bantuan', function(){
    return view('frontEnd/Bantuan/bantuan');
});
Route::get('/caraberbelanja', function(){
    return view('frontEnd/Bantuan/caraberbelanja');
});
Route::get('/pembayaran', function(){
    return view('frontEnd/Bantuan/pembayaran');
});
Route::get('/pengiriman', function(){
    return view('frontEnd/Bantuan/pengiriman');
});
Route::get('/syaratdanketentuan', function(){
    return view('frontEnd/Bantuan/syaratdanketentuan');
});


Route::get('/index', 'AdminController@administrator');

/* Admin Location */
Auth::routes(['register'=>false]);
Route::get('/home', 'HomeController@index')->name('home');
Route::group(['prefix'=>'admin','middleware'=>['auth','admin']],function (){
    Route::get('/', 'AdminController@index')->name('admin_home');
    /// Setting Area
    Route::get('/settings', 'AdminController@settings');
    Route::get('/check-pwd','AdminController@chkPassword');
    Route::post('/update-pwd','AdminController@updatAdminPwd');
    /// Category Area
    Route::resource('/category','CategoryController');
    Route::get('delete-category/{id}','CategoryController@destroy');
    Route::get('/check_category_name','CategoryController@checkCateName');
    /// Products Area
    Route::resource('/product','ProductsController');
    Route::get('delete-product/{id}','ProductsController@destroy');
    Route::get('delete-image/{id}','ProductsController@deleteImage');
    /// Product Attribute
    Route::resource('/product_attr','ProductAtrrController');
    Route::get('delete-attribute/{id}','ProductAtrrController@deleteAttr');
    /// Product Images Gallery
    Route::resource('/image-gallery','ImagesController');
    Route::get('delete-imageGallery/{id}','ImagesController@destroy');
///

});
