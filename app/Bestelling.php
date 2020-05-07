<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bestelling extends Model
{
    protected $table = "bestellingen";
    protected $guarded = ['id'];
    protected $fillable = [
        'besteldatum', 'status_id', 'medewerkers_id', 'vestigingen_id', 'users_id',
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'users_id');
    }

    public function medewerker()
    {
        return $this->belongsTo(Medewerker::class);
    }

    public function vestiging()
    {
        return $this->belongsTo(Vestiging::class, 'vestigingen_id');
    }

    public function status()
    {
        return $this->belongsTo(Status::class);
    }

    public function bestelregel()
    {
        return $this->hasMany(Bestelregel::class, 'bestellingen_id');
    }

    public function totalPrice()
    {
        $totalPrice = 0;
        foreach ($this->bestelregel as $bestelRegel) {
            $totalPrice = $totalPrice + ($bestelRegel->aantal * $bestelRegel->product->prijs);
        }

        return $totalPrice;
    }
}
