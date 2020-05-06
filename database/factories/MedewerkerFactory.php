<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Medewerker;
use Faker\Generator as Faker;

$factory->define(Medewerker::class, function (Faker $faker) {
    return [
        'voornaam' => $faker->name,
        'tussenvoegsel' => " ",
        'achternaam' => $faker->lastName,
        'voornaam' => $faker->name,
        'vestigingsnummer' => factory(\App\Vestiging::class)->create()
    ];
});
