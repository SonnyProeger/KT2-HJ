<?php

namespace App\Http\Controllers;

use App\Bestelling;
use App\Vestiging;
use http\Client\Request;
use Illuminate\Contracts\View\Factory;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class BestellingController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return Factory|View
     */
    public function index()
    {
        if (Auth::user()->can('view-all-orders')) {
            $bestellingen = Bestelling::query()->get();
        } else {
            $bestellingen = Bestelling::query()->where('users_id', Auth::user()->getKey())->get();
        }

        return view('bestellingen.index', [
            'bestellingen' => $bestellingen,
        ]);
    }


    /**
     * Display the specified resource.
     * @param Bestelling $bestelling
     * @return Factory|View
     */
    public function show(Bestelling $bestelling)
    {
        if (Auth::user()->can('view-all-orders') === false) {
            abort_if($bestelling->users_id !== Auth::user()->getKey(), 403, 'This action is unauthorized.');
        }

        return view('bestellingen.show', [
            "bestelling" => $bestelling,
        ]);
    }

}
