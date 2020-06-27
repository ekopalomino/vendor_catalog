<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInventoryMovementsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inventory_movements', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('inventory_id')->unsigned();
            $table->uuid('reference_id');
            $table->smallInteger('type');
            $table->string('product_name');
            $table->string('warehouse_name');
            $table->decimal('incoming',10,2)->nullable();
            $table->decimal('outgoing',10,2)->nullable();
            $table->decimal('remaining',10,2);
            $table->string('notes')->nullable();
            $table->foreign('inventory_id')->references('id')->on('inventories')->onUpdate('cascade')->onDelete('cascade');
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
        Schema::dropIfExists('inventory_movements');
    }
}
