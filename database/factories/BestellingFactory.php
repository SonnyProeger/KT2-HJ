<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Bestelling;
use App\Medewerker;
use App\Status;
use App\User;
use App\Vestiging;
use Faker\Generator as Faker;

$factory->define(Bestelling::class, function (Faker $faker) {
    $mdw = factory(Medewerker::class)->create();
    return [
        'besteldatum' => $faker->dateTime(),
        'users_id' => factory(User::class)->create(),
        'status_id' => rand(1, 3),
        'vestigingen_id' => rand(1, 2),
        'medewerkers_id' => $mdw->getKey()
    ];
});
