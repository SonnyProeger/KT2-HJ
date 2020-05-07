<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBestellingTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bestellingen', function (Blueprint $table) {
            $table->id();
            $table->dateTime('besteldatum');
            $table->unsignedBigInteger('klantnummer');
            $table->unsignedBigInteger('status');
            $table->unsignedBigInteger('medewerkernummer');
            $table->unsignedBigInteger('vestiging');
            $table->timestamps();

            $table->foreign('medewerkernummer')->references('id')->on('medewerkers')->onDelete('cascade');;
            $table->foreign('status')->references('id')->on('statuses')->onDelete('cascade');;
            $table->foreign('klantnummer')->references('id')->on('users')->onDelete('cascade');;
            $table->foreign('vestiging')->references('id')->on('vestigingen')->onDelete('cascade');;
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('bestelling');
    }
}
