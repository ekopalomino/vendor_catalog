<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReceivePurchasesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('receive_purchases', function (Blueprint $table) {
            $table->uuid('id');
            $table->string('ref_no');
            $table->string('order_ref');
            $table->uuid('supplier_id');
            $table->string('warehouse');
            $table->uuid('status_id');
            $table->uuid('received_by')->nullable();
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
        Schema::dropIfExists('receive_purchases');
    }
}
