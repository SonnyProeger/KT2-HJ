<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bestelling extends Model
{
    protected $table = "bestellingen";
    protected $guarded = ['id'];
    protected $fillable = [
        'besteldatum', 'status', 'medewerkernummer', 'vestiging',
    ];

    public function User()
    {
        return $this->hasOne(User::class);
    }

    public function Medewerker()
    {
        return $this->hasOne(Medewerker::class);
    }

    public function Vestiging()
    {
        return $this->hasOne(Vestiging::class);
    }

    public function Status()
    {
        return $this->hasOne(Status::class);
    }

    public function Bestelregel()
    {
        return $this->hasOne(Bestelregel::class);
    }
}
