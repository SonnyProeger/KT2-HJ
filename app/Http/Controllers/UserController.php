<?php

namespace App\Http\Controllers;

use App\Bestelling;
use App\Medewerker;
use App\Product;
use App\Status;
use App\User;
use App\Vestiging;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $users = User::all();

        return view('user.index', ['users' => $users]);
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


}
