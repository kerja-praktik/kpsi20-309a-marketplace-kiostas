<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Orders_model extends Model
{
    protected $table='orders';
    protected $primaryKey='id';
    protected $fillable=['users_id',
        'users_email','name','address','city','province','postal_code','country','mobile','shipping_charges','order_status','payment_method','grand_total','delivery_cost','nomor_hp','order_status', 
        'products_id'];
}
