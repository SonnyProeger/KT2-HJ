<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Product;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    return [
        'omschrijving' => $faker->text,
        'prijs' => $faker->numberBetween(0, 100),

    ];
});
