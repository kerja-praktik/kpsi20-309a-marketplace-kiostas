<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use validator;
use Auth;

class MainController extends Controller
{
    function index(){
        return view ('pengguna.masuk');
    }

    function checkmasuk(Request $request){
        $this->validate($request, [
            'email'     => 'required|email',
            'password'  => 'required|alphaNum|min:6'
        ]);

        $user_data = array(
            'email'     => $request->get('email'),
            'password'  => $request->get('password')
        );

        if(Auth::attempt($user_data))
        {
            return redirect('masuk/successmasuk');
        }
        else
        {
            return back()->with('error','Data Masuk Anda Tidak Valid!');
        }
    }

    function successmasuk(){
        return view ('beranda');
    }

    function keluar(){
        Auth::logout();
        return redirect('masuk');
    }
}
