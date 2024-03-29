<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ListOrders_model extends Model
{
    protected $table='orders';
    protected $primaryKey='id';
    protected $fillable=['users_id','users_email','mobile', 'province', 'order_status','payment_method','grand_total','created_at'];

}
