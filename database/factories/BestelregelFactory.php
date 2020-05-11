<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Bestelling;
use App\Bestelregel;
use App\Product;
use Faker\Generator as Faker;

$factory->define(Bestelregel::class, function (Faker $faker) {
    $bestelling = factory(Bestelling::class)->create();

    return [
        'bestellingen_id' => $bestelling->getKey(),
        'products_id' => rand(1, 3),
        'aantal' => rand(1, 7),
    ];
});
