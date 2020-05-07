<?php

namespace App\Http\Controllers;

use App\Bestelling;
use Illuminate\Contracts\View\Factory;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class BestellingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Factory|View
     */
    public function index()
    {
        $user = Auth::user();
        $bestellingen = Bestelling::query()->where('id', $user->id)->get();

        return view('bestellingen.index', [
            'bestellingen' => $bestellingen,
        ]);
    }


    /**
     * Display the specified resource.
     *
     * @param Bestelling $bestellingen
     * @return \Illuminate\Http\Response
     */
    public function show(Bestelling $bestelling)
    {
        return view('bestellingen.show');
    }

}
