<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDeliveriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('deliveries', function (Blueprint $table) {
            $table->uuid('id');
            $table->string('do_ref');
            $table->string('order_ref');
            $table->integer('del_service_id');
            $table->decimal('delivery_cost',50,2)->nullable();
            $table->string('receipt');
            $table->uuid('status_id')->default('c2fdba02-e765-4ee8-8c8c-3073209ddd26');
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
        Schema::dropIfExists('deliveries');
    }
}
