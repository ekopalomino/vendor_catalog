<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInvoicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('invoices', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('order_ref');
            $table->string('sales_id');
            $table->uuid('status_id')->default('8083f49e-f0aa-4094-894f-f64cd2e9e4e9');
            $table->uuid('created_by');
            $table->uuid('updated_by')->nullable();
            $table->date('payment_received')->nullable();
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
        Schema::dropIfExists('invoices');
    }
}
