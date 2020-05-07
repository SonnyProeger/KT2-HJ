<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Vestiging;
use Faker\Generator as Faker;

$factory->define(Vestiging::class, function (Faker $faker) {
    return [
        'omschrijving' => $faker->company,
        'adres' => $faker->address,
        'postcode' => "1234ab",
        'plaats' => $faker->city,
    ];
});
