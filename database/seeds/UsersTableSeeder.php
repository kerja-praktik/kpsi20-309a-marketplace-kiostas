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
<<<<<<< HEAD
            'no_hp'     => '087715150148',
            'email'     => 'mariamanullang@gmail.com',
            'password'  =>  Hash::make('baru1308'),
=======
            'no_hp'     => '0878657899',
            'email'     => 'mariamanullag@gmail.com',
            'password'  =>  Hash::make('calalala'),
>>>>>>> 3243b13aedbdde5529552884aeba48f7b2fd2901
            
        ]);
    }
}
