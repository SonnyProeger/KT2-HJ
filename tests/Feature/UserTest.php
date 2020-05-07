<?php

namespace Tests\Feature;

use App\User;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class UserTest extends TestCase
{

    use WithFaker;

    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_save_user_in_database()
    {
        $user = factory(User::class)->make();

        $response = $this->json('POST', '/register', [
            'voornaam' => $user->voornaam,
            'tussenvoegsel' => $user->tussenvoegsel,
            'achternaam' => $user->achternaam,
            'email' => $user->email,
            'adres' => $user->adres,
            'postcode' => $user->postcode,
            'woonplaats' => $user->woonplaats,
            'password' => 'aasdasdasdasd',
            'password_confirmation' => 'aasdasdasdasd',
        ]);
        $response->assertRedirect();
        $this->assertDatabaseHas('users', [
            'voornaam' => $user->voornaam,
            'tussenvoegsel' => $user->tussenvoegsel,
            'achternaam' => $user->achternaam,
            'email' => $user->email,
            'adres' => $user->adres,
            'postcode' => $user->postcode,
            'woonplaats' => $user->woonplaats,
        ]);
    }

    public function test_show_user_in_browser()
    {
        $user = factory(User::class)->create();

        $response = $this->get('/user/' . $user->getKey());

        $response->assertStatus(200);
    }

    public function test_show_non_existing_user_in_browser_returns_error()
    {
        $user = factory(User::class)->create();

        $response = $this->get('/users/123456789' . $user->getKey());

        $response->assertStatus(404);
    }

}
