<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class CheckOutController extends Controller
{
    public function index(){
        $countries=DB::table('countries')->get();
        $provinces=DB::table('provinces')->get();
        $user_login=User::where('id',Auth::id())->first();
        return view('checkout.index',compact('countries','provinces','user_login'));
    }
    public function submitcheckout(Request $request){
       $this->validate($request,[
           'billing_name'=>'required',
           'billing_address'=>'required',
           'billing_city'=>'required',
           'billing_province'=>'required',
           'billing_postal_code'=>'required',
           'billing_mobile'=>'required',
           'shipping_name'=>'required',
           'shipping_address'=>'required',
           'shipping_city'=>'required',
           'shipping_province'=>'required',
           'shipping_postal_code'=>'required',
           'shipping_mobile'=>'required',
       ]);
        $input_data=$request->all();
       $count_shippingaddress=DB::table('delivery_address')->where('users_id',Auth::id())->count();
       if($count_shippingaddress==1){
           DB::table('delivery_address')->where('users_id',Auth::id())->update(['name'=>$input_data['shipping_name'],
               'address'=>$input_data['shipping_address'],
               'city'=>$input_data['shipping_city'],
               'province'=>$input_data['shipping_province'],
               'country'=>$input_data['shipping_country'],
               'postal_code'=>$input_data['shipping_postal_code'],
               'mobile'=>$input_data['shipping_mobile']]);
       }else{
            DB::table('delivery_address')->insert(['users_id'=>Auth::id(),
                'users_email'=>Session::get('frontSession'),
                'name'=>$input_data['shipping_name'],
                'address'=>$input_data['shipping_address'],
                'city'=>$input_data['shipping_city'],
                'province'=>$input_data['shipping_province'],
                'country'=>$input_data['shipping_country'],
                'postal_code'=>$input_data['shipping_postal_code'],
                'mobile'=>$input_data['shipping_mobile'],]);
       }
        DB::table('users')->where('id',Auth::id())->update(['name'=>$input_data['billing_name'],
            'address'=>$input_data['billing_address'],
            'city'=>$input_data['billing_city'],
            'province'=>$input_data['billing_province'],
            'country'=>$input_data['billing_country'],
            'postal_code'=>$input_data['billing_postal_code'],
            'mobile'=>$input_data['billing_mobile']]);
       return redirect('/order-review');

    }
}
