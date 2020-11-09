<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateManufacturesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('manufactures', function (Blueprint $table) {
            $table->uuid('id');
            $table->uuid('sales_order')->nullable();
            $table->string('order_ref');
            $table->date('expected_finish');
            $table->uuid('status_id');
            $table->uuid('warehouse_id');
            $table->uuid('created_by');
            $table->uuid('approved_by')->nullable();
            $table->uuid('process_by')->nullable();
            $table->uuid('end_by')->nullable();
            $table->datetime('start_production');
            $table->datetime('end_production')->nullable();
            $table->integer('quantity_plan');
            $table->integer('quantity_result')->nullable();
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
        Schema::dropIfExists('manufactures');
    }
}
