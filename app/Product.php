<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';
    protected $fillable = [
        'omschrijving', 'prijs',
    ];

    public function Bestelregel()
    {
        return $this->hasOne(Bestelregel::class);
    }
}
