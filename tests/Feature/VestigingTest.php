<?php

namespace Tests\Feature;

use App\Medewerker;
use App\Vestiging;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class VestigingTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */

    public function test_save_vestiging_in_database()
    {
        $vestiging = factory(Vestiging::class)->create();

        $this->assertDatabaseHas('vestigingen', [
            'omschrijving' => $vestiging->omschrijving,
            'adres' => $vestiging->adres,
            'postcode' => $vestiging->postcode,
            'plaats' => $vestiging->plaats,
        ]);
    }
}
