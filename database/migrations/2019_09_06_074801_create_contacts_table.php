<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateContactsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contacts', function (Blueprint $table) {
            $table->uuid('id');
            $table->string('ref_id');
            $table->integer('type_id');
            $table->string('name');
            $table->string('company')->nullable();
            $table->string('phone')->nullable();
            $table->string('mobile');
            $table->string('email');
            $table->text('billing_address');
            $table->text('shipping_address');
            $table->integer('payment_method');
            $table->integer('payment_terms');
            $table->integer('tax');
            $table->string('tax_no')->nullable();
            $table->uuid('created_by');
            $table->uuid('updated_by')->nullable();
            $table->uuid('active')->default('2b643e21-a94c-4713-93f1-f1cbde6ad633');
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
        Schema::dropIfExists('contacts');
    }
}
