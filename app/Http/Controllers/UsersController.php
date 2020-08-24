<?php

namespace App\Http\Controllers;

use App\Profile_model;
use App\Cart_model;
use App\User;
use App\Orders_model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class UsersController extends Controller
{
    public function index(){
        return view('users.login_register');
    }
    public function register(Request $request){
        $this->validate($request,[
           'name'=>'required|string|max:255',
            'email'=>'required|string|email|unique:users,email',
            'password'=>'required|min:6|confirmed',
        ]);
        $input_data=$request->all();
        $input_data['password']=Hash::make($input_data['password']);
        User::create($input_data);
        return back()->with('message','Akun Berhasil Terdaftar!');
    }
    public function account(){
        $user_login=User::where('id',Auth::id())->first();
        $orders_user=Orders_model::where([['users_id', $user_login->id]])->get();
        return view('users.account',compact('user_login', 'orders_user'));
    }

    public function login(Request $request){
        $input_data=$request->all();
        if(Auth::attempt(['email'=>$input_data['email'],'password'=>$input_data['password']])){
            Session::put('frontSession',$input_data['email']);
            return redirect('/');
        }else{
            return back()->with('message','Data Akun Tidak Valid');
        }
    }
    public function logout(){
        Auth::logout();
        Session::forget('frontSession');
        return redirect('/');
    }
    
    public function updateprofile(Request $request,$id){
        $this->validate($request,[
            'address'=>'required',
            'city'=>'required',
            'province'=>'required',
            'mobile'=>'required',
        ]);
        $input_data=$request->all();
        DB::table('users')->where('id',$id)->update(['name'=>$input_data['name'],
            'address'=>$input_data['address'],
            'city'=>$input_data['city'],
            'province'=>$input_data['province'],
            'country'=>$input_data['country'],
            'postal_code'=>$input_data['postal_code'],
            'toko'=>$input_data['toko'],
            'nomor_hp'=>$input_data['nomor_hp'],
            'Alamat_usaha'=>$input_data['Alamat_usaha'],
            'Deskripsi_usaha'=>$input_data['Deskripsi_usaha'],
            'mobile'=>$input_data['mobile']]);
        return back()->with('message','Akun Profil Berhasil Diupdate!');

    }
    public function updatepassword(Request $request,$id){
        $oldPassword=User::where('id',$id)->first();
        $input_data=$request->all();
        if(Hash::check($input_data['password'],$oldPassword->password)){
            $this->validate($request,[
               'newPassword'=>'required|min:6|max:12|confirmed'
            ]);
            $new_pass=Hash::make($input_data['newPassword']);
            User::where('id',$id)->update(['password'=>$new_pass]);
            return back()->with('message','Update Password Already!');
        }else{
            return back()->with('oldpassword','Old Password is Inconrrect!');
        }
    }
}
