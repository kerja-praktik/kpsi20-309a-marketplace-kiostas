<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use validator;
use Auth;
use Illuminate\Support\Facades\Hash;

class MainController extends Controller
{
    function index(){
        return view ('pengguna.masuk');
    }

    public function daftar(){
        return view ('pengguna.daftar');
    }

    public function storedaftar(Request $request){
        $this->validate($request, [
            'name'=>'required|string|max:255',
            'email'=>'required|string|email|unique:users,email',
            'no_hp' =>'required',
            'password'  => 'required|alphaNum|min:6'
        ]);

        $input_data=$request->all();
        $input_data['password']=Hash::make($input_data['password']);
        User::create($input_data);
        return view('pengguna.masuk');

    }

        /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
     protected function validator(array $data)
     {
         return Validator::make($data, [
            'name'=>'required|string|max:255',
            'email'=>'required|string|email|unique:users,email',
            'no_hp' =>'required',
            'password'  => 'required|alphaNum|min:6'
         ]);
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
        return view ('home');
    }

    function keluar(){
        Auth::logout();
        return redirect('masuk');
    }
}
