<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Vestiging extends Model
{
    protected $table = "vestigingen";
    protected $fillable = [
        'omschrijving', 'adres', 'postcode', 'plaats'
    ];

    public function Medewerker()
    {
        return $this->hasMany(Medewerker::class);
    }

    public function Bestelling()
    {
        return $this->hasMany(Bestelling::class);
    }
}
