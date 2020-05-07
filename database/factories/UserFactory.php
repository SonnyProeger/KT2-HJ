<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\User;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(User::class, function (Faker $faker) {
    return [
        'voornaam' => $faker->name,
        'tussenvoegsel' => "de",
        'achternaam' => $faker->lastName,
        'adres' => $faker->streetAddress,
        'postcode' => "1234AB",
        'woonplaats' => $faker->city,
        'email' => $faker->unique()->email,
        'email_verified_at' => now(),
        'password' => bcrypt('password'), // password
        'remember_token' => Str::random(10),
    ];
});
