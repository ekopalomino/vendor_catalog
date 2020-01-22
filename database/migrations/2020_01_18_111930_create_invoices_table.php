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
            $table->string('reference_id');
            $table->string('order_ref');
            $table->string('customer_code');
            $table->integer('pay_method');
            $table->integer('pay_term');
            $table->integer('terms_no');
            $table->string('tax_id');
            $table->decimal('tax_amount',50,2);
            $table->decimal('sales_amount',50,2);
            $table->decimal('invoice_amount',50,2);
            $table->decimal('invoice_remaining',50,2);
            $table->uuid('status_id');
            $table->string('created_by');
            $table->string('updated_by');
            $table->datetime('payment_made');
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
