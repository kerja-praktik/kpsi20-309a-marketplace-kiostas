<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('users_id');
            $table->string('users_email',100);
            $table->string('name',100);
            $table->string('address');
            $table->string('city',100);
            $table->string('province',100);
            $table->string('postal_code',100);
            $table->string('country',100);
            $table->string('mobile',100);
            $table->string('products_name',100);
            $table->float('shipping_charges');
            $table->string('order_status',100);
            $table->string('payment_method',100);
            $table->string('grand_total',100);
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
        Schema::dropIfExists('orders');
    }
}
