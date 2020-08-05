<?php

use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', function(){
    return view('beranda');
});
<<<<<<< HEAD

Route::get('/daftar','MainController@daftar')->name('daftar');
Route::post('/daftar/storedaftar','MainController@storedaftar');

=======
>>>>>>> 3243b13aedbdde5529552884aeba48f7b2fd2901
Route::get('/masuk','MainController@index');
Route::post('/masuk/checkmasuk', 'MainController@checkmasuk');
Route::get('/masuk/successmasuk', 'MainController@successmasuk');
Route::get('/masuk/keluar', 'MainController@keluar');

<<<<<<< HEAD
Route::get('/daftarproduk', function(){
    return view('frontEnd/daftarproduk');
=======
// Route::get('/daftar', 'AuthController@getDaftar');
// Route::post('/daftar', 'AuthController@postDaftar')->name('Daftar');
// Route::get('/masuk', 'AuthController@getMasuk');
// Route::post('/masuk', 'AuthController@postMasuk')->name('Masuk');

Route::get('/daftar', function(){
    return view('Pengguna/daftar');
>>>>>>> 3243b13aedbdde5529552884aeba48f7b2fd2901
});

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
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
