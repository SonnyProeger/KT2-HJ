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
            'klantnummer' => $bestelling->klantnummer,
            'status' => $bestelling->status,
            'vestiging' => $bestelling->vestiging,
            'medewerkernummer' => $bestelling->medewerkernummer,
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
