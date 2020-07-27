<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    function daftar(){
        return view('pengguna.daftar');
    }
}
