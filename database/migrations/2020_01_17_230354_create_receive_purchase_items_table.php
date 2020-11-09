<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReceivePurchaseItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('receive_purchase_items', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->uuid('receive_id');
            $table->string('product_name');
            $table->bigInteger('orders');
            $table->bigInteger('received');
            $table->bigInteger('damaged');
            $table->integer('uom_id');
            $table->bigInteger('subtotal')->nullable();
            $table->foreign('receive_id')->references('id')->on('receive_purchases')->onUpdate('cascade')->onDelete('cascade');
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
        Schema::dropIfExists('receive_purchase_items');
    }
}
