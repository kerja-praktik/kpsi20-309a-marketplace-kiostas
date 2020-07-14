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

Route::get('/', function () {
    return view('welcome');
});
Route::get('daftarakun', function(){
    return view('daftarakun');
});
Route::get('alamatpengiriman', function(){
    return view('alamatpengiriman');
});
Route::get('profilpelanggan', function(){
    return view('profilpelanggan');
});
