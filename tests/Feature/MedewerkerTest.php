<?php

namespace Tests\Feature;

use App\Medewerker;
use App\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class MedewerkerTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_save_medewerker_in_database()
    {
        $medewerker = factory(Medewerker::class)->create();

        $this->assertDatabaseHas('medewerkers', [
            'voornaam' => $medewerker->voornaam,
            'tussenvoegsel' => $medewerker->tussenvoegsel,
            'achternaam' => $medewerker->achternaam,
            'vestigingen_id' => $medewerker->vestigingen_id,
        ]);
    }

}
