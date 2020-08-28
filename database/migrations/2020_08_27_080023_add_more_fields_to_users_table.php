<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddMoreFieldsToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->text('address')->nullable();
            $table->string('city')->nullable();
            $table->string('province')->nullable();
            $table->string('country')->nullable();
            $table->string('postal_code')->nullable();
            $table->string('toko')->nullable();
            $table->string('mobile')->nullable();
            $table->string('nomor_hp')->nullable();
            $table->string('Alamat_usaha')->nullable();
            $table->string('Deskripsi_usaha')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn(['address','city','province','country','postal_code','mobile','toko','nomor_hp','Alamat_usaha', 'Deskripsi_usaha']);
        });
    }
}
