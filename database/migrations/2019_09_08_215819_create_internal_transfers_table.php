<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInternalTransfersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('internal_transfers', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->uuid('product_id');
            $table->uuid('from_id');
            $table->uuid('to_id');
            $table->decimal('amount',50,2);
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
        Schema::dropIfExists('internal_transfers');
    }
}
