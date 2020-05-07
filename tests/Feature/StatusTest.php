<?php

namespace Tests\Feature;

use App\Status;
use App\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class StatusTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_save_status_in_database()
    {
        $status = factory(Status::class)->make();


        $this->assertDatabaseHas('statuses', [
            'status' => $status->status,

        ]);
    }

}
