<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Bestelling;
use App\Medewerker;
use App\Status;
use App\User;
use App\Vestiging;
use Faker\Generator as Faker;

$factory->define(Bestelling::class, function (Faker $faker) {
    return [
        'besteldatum' => $faker->dateTime(),
        'klantnummer' => factory(User::class)->create(),
        'status' => factory(Status::class)->create(),
        'vestiging' => factory(Vestiging::class)->create(),
        'medewerkernummer' => factory(Medewerker::class)->create(),
    ];
});
