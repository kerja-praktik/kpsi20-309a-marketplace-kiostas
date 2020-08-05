<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTokoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('toko', function (Blueprint $table) {
            $table->id();
            $table->string('nama');
            $table->string('telepon');
            $table->string('email')->unique();
            $table->string('kategori_produk');
            $table->time('tahun_berdiri');
            $table->string('motto/slogan');
            $table->string('alamat');
            $table->string('foto');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('toko');
    }
}
