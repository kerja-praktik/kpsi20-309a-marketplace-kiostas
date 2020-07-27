<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    function store(Request $request){
        if($request->kata_sandi != $request->konfirmasi_sandi){
            \Session::flash('error', 'Kata Sandi tidak sama!');

            return redirect('pengguna.daftar');
        }
        
        $data = [
            'nama'=>$request->nama,
            'email'=>$request->email,
            'no_hp'=>$request->no_hp,
            'kata_sandi'=>$request->kata_sandi
        ];

        User:create($data);

        return redirect('pengguna.masuk');
    }
}
