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
            'no_hp'     => '0878657899',
            'email'     => 'mariamanullag@gmail.com',
            'password'  =>  Hash::make('calalala'),
            
        ]);
    }
}
