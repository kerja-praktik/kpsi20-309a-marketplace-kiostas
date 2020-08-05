<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePesananTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pesanan', function (Blueprint $table) {
            $table->id();
            $table->foreignId('AlamatPengiriman_id')->unique();
            $table->foreignId('Pembayaran_id')->unique();
            $table->foreignId('pengantar_id')->unique();
            $table->foreignId('produk_id')->unique();
            $table->foreignId('pelanggan_id')->unique();
            $table->date('tanggal_pemesanan');
            $table->double('total_harga');
            $table->integer('kuantitas');
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
        Schema::dropIfExists('pesanan');
    }
}
