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
            $table->string('reference_id');
            $table->smallInteger('type_id');
            $table->string('sales_order')->nullable();
            $table->string('purchase_order')->nullable();
            $table->decimal('purchase_amount',50,2)->nullable();
            $table->string('purchase_invoice')->nullable();
            $table->uuid('status_id')->default('3da32f6e-494f-4b61-b010-7ccc0e006fb3');
            $table->uuid('created_by');
            $table->uuid('updated_by')->nullable();
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
