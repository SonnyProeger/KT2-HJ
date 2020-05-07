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
            $table->unsignedBigInteger("bestellingen_id");
            $table->unsignedBigInteger('products_id');
            $table->integer('aantal');
            $table->timestamps();
            $table->foreign('bestellingen_id')->references('id')->on('bestellingen')->onDelete('cascade');;
            $table->foreign('products_id')->references('id')->on('products')->onDelete('cascade');;
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('bestelregels');
    }
}
