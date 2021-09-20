<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateContactDocumentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contact_documents', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->uuid('contact_id');
            $table->smallInteger('document_type');
            $table->string('documents');
            $table->foreign('contact_id')->references('id')->on('contacts')->onUpdate('cascade')->onDelete('cascade');
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
        Schema::dropIfExists('contact_documents');
    }
}
