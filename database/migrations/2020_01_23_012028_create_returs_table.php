<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRetursTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('returs', function (Blueprint $table) {
            $table->uuid('id');
            $table->string('sales_order');
            $table->string('delivery_order')->nullable();
            $table->uuid('status_id');
            $table->uuid('created_by');
            $table->uuid('approve_by')->nullable();
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
        Schema::dropIfExists('returs');
    }
}
