<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReturItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('retur_items', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->uuid('retur_id');
            $table->string('product_name');
            $table->bigInteger('sales_qty');
            $table->bigInteger('retur_qty');
            $table->string('retur_reason');
            $table->text('notes')->nullable();
            $table->foreign('retur_id')->references('id')->on('returs')->onUpdate('cascade')->onDelete('cascade');
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
        Schema::dropIfExists('retur_items');
    }
}
