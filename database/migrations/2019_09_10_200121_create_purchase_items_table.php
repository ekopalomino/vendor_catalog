<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePurchaseItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('purchase_items', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->uuid('purchase_id');
            $table->string('product_name');
            $table->decimal('quantity',10,2);
            $table->uuid('uom_id');
            $table->decimal('discount',50,2)->nullable();
            $table->decimal('purchase_price',50,2);
            $table->decimal('sub_total',50,2);
            $table->foreign('purchase_id')->references('id')->on('purchases')->onUpdate('cascade')->onDelete('cascade');
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
        Schema::dropIfExists('purchase_items');
    }
}
