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
            $table->unsignedBigInteger('medewerkers_id');
            $table->unsignedBigInteger('status_id');
            $table->unsignedBigInteger('users_id');
            $table->unsignedBigInteger('vestigingen_id');
            $table->timestamps();

            $table->foreign('medewerkers_id')->references('id')->on('medewerkers')->onDelete('cascade');;
            $table->foreign('status_id')->references('id')->on('statuses')->onDelete('cascade');;
            $table->foreign('users_id')->references('id')->on('users')->onDelete('cascade');;
            $table->foreign('vestigingen_id')->references('id')->on('vestigingen')->onDelete('cascade');;
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('bestellingen');
    }
}
