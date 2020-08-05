<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Session;

class UserController extends Controller
{
    // function store(Request $request){
    //     if($request->kata_sandi != $request->konfirmasi_sandi){
    //         Session::flash('error', 'Kata Sandi tidak sama!');
    //         return redirect('pengguna.daftar');
    //     }
        
    //     $data = [
    //         'nama'->$request->nama,
    //         'no_hp'->$request->no_hp,
    //         'email'->$request->email,
    //         'kata_sandi'->$request->kata_sandi
    //     ];

    //     User::create($data);
    //     return redirect('pengguna.masuk');
    }
}
