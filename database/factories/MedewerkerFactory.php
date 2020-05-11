<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Medewerker;
use Faker\Generator as Faker;

$factory->define(Medewerker::class, function (Faker $faker) {
    return [
        'voornaam' => $faker->name,
        'tussenvoegsel' => " ",
        'achternaam' => $faker->lastName,
        'vestigingen_id' => rand(1, 2)
    ];
});
