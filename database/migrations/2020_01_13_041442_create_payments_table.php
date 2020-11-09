<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payments', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('reference_no');
            $table->smallInteger('type_id');
            $table->uuid('contact_id');
            $table->smallInteger('terms_no')->nullable();
            $table->string('sales_order')->nullable();
            $table->string('purchase_order')->nullable();
            $table->string('warehouse_ref');
            $table->bigInteger('subtotal');
            $table->bigInteger('amount');
            $table->bigInteger('tax_total')->nullable();
            $table->decimal('delivery_cost');
            $table->uuid('status_id');
            $table->uuid('created_by');
            $table->uuid('release_by')->nullable();
            $table->date('payment_received')->nullable();
            $table->date('payment_made')->nullable();
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
        Schema::dropIfExists('payments');
    }
}
