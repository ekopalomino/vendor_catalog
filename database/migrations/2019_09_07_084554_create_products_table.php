<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->uuid('id');
            $table->string('product_barcode');
            $table->string('name');
            $table->integer('category_id');
            $table->integer('uom_id');
            $table->string('image')->nullable();
            $table->uuid('supplier_id');
            $table->decimal('min_stock',50,2);
            $table->decimal('base_price',50,2);
            $table->decimal('sale_price',50,2);
            $table->uuid('active');
            $table->tinyInteger('is_manufacture')->nullable();
            $table->tinyInteger('is_sale')->nullable();
            $table->uuid('created_by');
            $table->uuid('updated_by')->nullable();
            $table->primary('id');
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
        Schema::dropIfExists('products');
    }
}
