<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSaleItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sale_items', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->uuid('sales_id');
            $table->uuid('product_id');
            $table->decimal('quantity',50,2);
            $table->decimal('discount',50,2)->nullable();
            $table->decimal('sale_price',50,2);
            $table->decimal('sub_total',50,2);
            $table->decimal('shipping',50,2);
            $table->foreign('sales_id')->references('id')->on('sales')->onUpdate('cascade')->onDelete('cascade');
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
        Schema::dropIfExists('sale_items');
    }
}
