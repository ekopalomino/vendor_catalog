<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSalesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sales', function (Blueprint $table) {
            $table->uuid('id');
            $table->string('order_ref');
            $table->string('customer_po');
            $table->string('client_id');
            $table->text('billing_address');
            $table->text('shipping_address');
            $table->date('delivery_date');
            $table->decimal('quantity',50,2)->nullable();
            $table->decimal('total',50,2)->nullable();
            $table->decimal('tax',50,2)->nullable();
            $table->decimal('discount',50,2)->nullable();
            $table->text('description')->nullable();
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
        Schema::dropIfExists('sales');
    }
}
