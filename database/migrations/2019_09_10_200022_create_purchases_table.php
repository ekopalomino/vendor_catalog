<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePurchasesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('purchases', function (Blueprint $table) {
            $table->uuid('id');
            $table->string('order_ref');
            $table->uuid('supplier_id');
            $table->string('supplier_code');
            $table->text('billing_address');
            $table->text('shipping_address');
            $table->date('delivery_date');
            $table->decimal('quantity',10,2)->nullable();
            $table->decimal('total',10,2)->nullable();
            $table->uuid('status')->default('8083f49e-f0aa-4094-894f-f64cd2e9e4e9');
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
        Schema::dropIfExists('purchases');
    }
}
