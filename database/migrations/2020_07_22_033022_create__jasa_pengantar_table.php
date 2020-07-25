<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJasaPengantarTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('_jasa_pengantar', function (Blueprint $table) {
            $table->id();
            $table->foreignId('pelanggan_id')->unique();
            $table->foreignId('pengiriman_id')->unique();
            $table->string('nama');
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
        Schema::dropIfExists('_jasa_pengantar');
    }
}
