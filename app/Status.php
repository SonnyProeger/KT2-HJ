<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
    protected $table = "statuses";
    protected $fillable = [
        'Status',
    ];

    public function bestelling()
    {
        return $this->hasMany(Bestelling::class);
    }
}
