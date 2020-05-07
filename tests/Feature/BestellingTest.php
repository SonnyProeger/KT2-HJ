<?php

namespace Tests\Feature;

use App\Bestelling;
use Tests\TestCase;

class BestellingTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_save_bestelling_in_database()
    {

        $bestelling = factory(Bestelling::class)->create();

        $this->assertDatabaseHas('bestellingen', [
            'besteldatum' => $bestelling->besteldatum,
            'users_id' => $bestelling->users_id,
            'status_id' => $bestelling->status_id,
            'vestigingen_id' => $bestelling->vestigingen_id,
            'medewerkers_id' => $bestelling->medewerkers_id,
        ]);

    }

//    public function test_show_bestelling_index_in_browser()
//    {
//        $bestelling = factory(Bestelling::class)->create();
//        $response = $this->get('/bestellingen');
//
//        $response->assertStatus(200);
//    }
//
//
//    public function test_show_bestelling_detail_in_browser()
//    {
//        $bestelling = factory(Bestelling::class)->create();
//        $response = $this->get('/bestellingen/' . $bestelling->id);
//
//        $response->assertStatus(200);
//    }
}
