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
            $table->string('product_sku');
            $table->integer('product_barcode');
            $table->string('name');
            $table->bigInteger('category_id');
            $table->integer('uom_id');
            $table->string('image')->nullable();
            $table->uuid('supplier_id');
            $table->uuid('warehouse_id');
            $table->decimal('min_stock',50,2);
            $table->decimal('base_price',50,2);
            $table->decimal('sale_price',50,2);
            $table->uuid('active')->default('2b643e21-a94c-4713-93f1-f1cbde6ad633');
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
