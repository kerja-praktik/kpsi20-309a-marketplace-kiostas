<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAlamatPengirimanTablee extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('_alamat_pengiriman_tablee', function (Blueprint $table) {
            $table->id();
            $table->foreignID('pesanan_id')->unique();
            $table->string('label');
            $table->string('nama_penerima');
            $table->string('nomor_telepon');
            $table->string('alamat');
            $table->string('kode_pos');
            $table->string('provinsi');
            $table->string('kota/kecamatan');
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
        Schema::dropIfExists('_alamat_pengiriman_tablee');
    }
}
