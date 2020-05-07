<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bestelregel extends Model
{
    protected $table = "bestelregels";
    protected $fillable = ["bestellingen_id", 'products_id', 'aantal'];

    public function product()
    {
        return $this->belongsTo(Product::class, 'products_id');
    }

    public function bestelling()
    {
        return $this->hasMany(Bestelling::class);
    }

}
