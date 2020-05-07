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
        'status_id' => factory(Status::class)->create(),
        'vestigingen_id' => factory(Vestiging::class)->create(),
        'medewerkers_id' => $mdw->getKey()
    ];
});
