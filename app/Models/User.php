<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $fillable=['nama','email','no_hp','kata_sandi'];
}
