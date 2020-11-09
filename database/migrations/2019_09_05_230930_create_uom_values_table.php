<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUomValuesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('uom_values', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('type_id');
            $table->tinyInteger('is_parent')->nullable();
            $table->integer('parent_id')->nullable();
            $table->string('name');
            $table->decimal('value',10,2);
            $table->uuid('created_by');
            $table->uuid('updated_by')->nullable();
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
        Schema::dropIfExists('uom_values');
    }
}
