<?php

namespace Tests\Feature;

use App\Product;
use Tests\TestCase;

class ProductTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_save_product_in_database()
    {
        $product = factory(Product::class)->create();

        $this->assertDatabaseHas('products', [
            'omschrijving' => $product->omschrijving,
            'prijs' => $product->prijs,
        ]);
    }

    public function test_show_product_index_in_browser()
    {
        $product = factory(Product::class)->create();
        $response = $this->get('/producten');

        $response->assertStatus(200);
    }


    public function test_show_product_detail_in_browser()
    {
        $product = factory(Product::class)->create();
        $response = $this->get('/producten/' . $product->id);

        $response->assertStatus(200);
    }
}
