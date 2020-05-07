<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Bestelling;
use App\Bestelregel;
use App\Product;
use Faker\Generator as Faker;

$factory->define(Bestelregel::class, function (Faker $faker) {
    return [
        'bestelnummer' => factory(Bestelling::class)->create(),
        'productnummer' => factory(Product::class)->create(),
        'aantal' => '3',
    ];
});
