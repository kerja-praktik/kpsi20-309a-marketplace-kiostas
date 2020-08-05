<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name'      => 'Maria Manullang',
            'no_hp'     => '087715150148',
            'email'     => 'mariamanullang@gmail.com',
            'password'  =>  Hash::make('baru1308'),
            
        ]);
    }
}
