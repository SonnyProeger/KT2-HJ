<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBestelregelTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bestelregels', function (Blueprint $table) {
            $table->unsignedBigInteger("bestelnummer");
            $table->unsignedBigInteger('productnummer');
            $table->integer('aantal');
            $table->timestamps();
            $table->foreign('bestelnummer')->references('id')->on('bestellingen')->onDelete('cascade');;
            $table->foreign('productnummer')->references('id')->on('products')->onDelete('cascade');;
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('bestelregels');
    }
}
