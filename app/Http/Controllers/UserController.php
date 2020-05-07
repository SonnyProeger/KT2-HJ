<?php

namespace App\Http\Controllers;

use App\Bestelling;
use App\Medewerker;
use App\Product;
use App\Status;
use App\User;
use App\Vestiging;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
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
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('view-all-customers');

        $users = User::all()->reject(function ($user) {
            return ($user->getKey() === Auth::user()->getKey());
        });

        return view('user.index', compact('users'));
    }

    /**
     * Display the specified resource.
     *
     * @param \App\User $user
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show(User $user)
    {

        return view('user.show');
    }

    /**
     * @param User $user
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     * @throws \Illuminate\Auth\Access\AuthorizationException
     */
    public function destroy(User $user)
    {
        $this->authorize('delete-customer');

        if ($user->hasOrders()) {
            return back()->with('message', 'Gebruikers met bestellingen kunnen niet worden verwijderd');
        }

        $user->delete();

        return back()->with('message', $user->voornaam . ' is successvol verwijderd');
    }
}


