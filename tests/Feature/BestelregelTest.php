<?php

namespace Tests\Feature;

use App\Bestelling;
use App\Bestelregel;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class BestelregelTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_save_bestelregel_in_database()
    {

        $bestelregel = factory(Bestelregel::class)->create();

        $this->assertDatabaseHas('bestelregels', [
            'bestellingen_id' => $bestelregel->bestellingen_id,
            'products_id' => $bestelregel->products_id,
            'aantal' => $bestelregel->aantal,

        ]);

    }
}
