<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Bestelling;
use Faker\Generator as Faker;

$factory->define(Bestelling::class, function (Faker $faker) {
    return [
        'besteldatum' => $faker->dateTime,
        'klantnummer' => factory(\App\User::class)->create(),
        'status' => factory(\App\Status::class)->create(),
        'vestigingsnummer' => factory(\App\Vestiging::class)->create(),
        'medewerkernummer' => factory(\App\Medewerker::class)->create(),
    ];
});
