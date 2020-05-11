<?php

use Illuminate\Database\Seeder;

class RolesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        App\Status::query()->firstOrCreate([
            'status' => 'in behandeling'
        ]);
        App\Status::query()->firstOrCreate([
            'status' => 'gereed'
        ]);

        App\Status::query()->firstOrCreate([
            'status' => 'afgeleverd'
        ]);
        App\Product::query()->firstOrCreate([
            'omschrijving' => 'Artisto veevoer',
            'prijs' => 67,
            'image_path' => 'images/veevoer.jpg'
        ]);
        App\Product::query()->firstOrCreate([
            'omschrijving' => 'Schroeven 5mm / 2 kg',
            'prijs' => 11,
            'image_path' => 'images/schroeven.jpg'
        ]);
        App\Product::query()->firstOrCreate([
            'omschrijving' => 'Sojavlokken',
            'prijs' => 35,
            'image_path' => 'images/sojavlokken.jpg'
        ]);
        App\Product::query()->firstOrCreate([
            'omschrijving' => 'Snacks gevogelte',
            'prijs' => 55,
            'image_path' => 'images/gevogelte.jpg'
        ]);

        App\Vestiging::query()->firstOrCreate([
            'omschrijving' => 'Handig joh Groningen',
            'adres' => 'Overschiestraat 22',
            'postcode' => '4499 RK',
            'plaats' => 'Groningen'
        ]);

        App\Vestiging::query()->firstOrCreate([
            'omschrijving' => 'Handig joh Friesland',
            'adres' => 'underschiestraat 22',
            'postcode' => '5599 RK',
            'plaats' => 'Friesland'
        ]);


        /** @var \Spatie\Permission\Models\Role $adminRole */
        \Spatie\Permission\Models\Role::query()->firstOrCreate([
            'name' => 'admin'
        ]);
        \Spatie\Permission\Models\Permission::query()->firstOrCreate(['name' => 'delete-customer']);
        \Spatie\Permission\Models\Permission::query()->firstOrCreate(['name' => 'view-all-orders']);
        \Spatie\Permission\Models\Permission::query()->firstOrCreate(['name' => 'view-all-customers']);

        factory(\App\User::class)->create([
            'email' => 'sonny-admin@live.nl',
            'voornaam' => 'Sonny',
            'tussenvoegsel' => 'admin',
            'achternaam' => 'proeger'])->assignRole('admin');

        /** @var \App\User $user */
        $user = factory(\App\User::class)->create([
            'email' => 'sonny-delete-users@live.nl',
            'voornaam' => 'Sonny',
            'tussenvoegsel' => 'view and delete',
            'achternaam' => 'proeger']);
        $user->givePermissionTo('delete-customer');
        $user->givePermissionTo('view-all-customers');

        /** @var \App\User $user */
        $user = factory(\App\User::class)->create([
            'email' => 'sonny-view-users@live.nl',
            'voornaam' => 'Sonny',
            'tussenvoegsel' => 'view',
            'achternaam' => 'proeger']);
        $user->givePermissionTo('view-all-customers');

        factory(\App\User::class, 10)->create()->each(function (\App\User $user) {
            factory(\App\Bestelregel::class, random_int(1, 10))->create([

            ]);
        });
    }
}
