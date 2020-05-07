<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bestelregel extends Model
{
    protected $table = "bestelregels";
    protected $fillable = ["bestelnummer", 'productnummer', 'aantal'];

    public function Product()
    {
        return $this->hasMany(Product::class);
    }

    public function Bestelling()
    {
        return $this->hasMany(Bestelling::class);
    }

}
