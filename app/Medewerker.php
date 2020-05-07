<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Medewerker extends Model
{
    protected $table = "Medewerkers";
    protected $fillable = [
        'voornaam', 'tussenvoegsel', 'achternaam', 'vestigingsnummer',
    ];

    public function Bestelling()
    {
        return $this->hasMany(Bestelling::class);
    }

    public function Vestiging()
    {
        return $this->hasOne(Vestiging::class);
    }
}
