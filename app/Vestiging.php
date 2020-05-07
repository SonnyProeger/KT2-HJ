<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Vestiging extends Model
{
    protected $table = "vestigingen";
    protected $fillable = [
        'omschrijving', 'adres', 'postcode', 'plaats'
    ];

    public function medewerker()
    {
        return $this->hasMany(Medewerker::class);
    }

    public function bestelling()
    {
        return $this->hasMany(Bestelling::class);
    }
}
