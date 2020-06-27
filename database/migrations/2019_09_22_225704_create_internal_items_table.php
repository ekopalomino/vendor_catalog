<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInternalItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('internal_items', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('mutasi_id')->unsigned();
            $table->string('product_name');
            $table->decimal('quantity',50,2);
            $table->uuid('uom_id');
            $table->foreign('mutasi_id')->references('id')->on('internal_transfers')->onUpdate('cascade')->onDelete('cascade');
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
        Schema::dropIfExists('internal_items');
    }
}
