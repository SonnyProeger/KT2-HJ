<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Medewerker extends Model
{
    protected $table = "Medewerkers";
    protected $fillable = [
        'voornaam', 'tussenvoegsel', 'achternaam', 'vestigingen_id',
    ];

    public function bestelling()
    {
        return $this->hasMany(Bestelling::class);
    }

    public function vestiging()
    {
        return $this->belongsTo(Vestiging::class);
    }
}
