<?php

namespace App\Http\Controllers;

use App\Bestelregel;
use Illuminate\Http\Request;

class BestelregelController extends Controller
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
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Bestelregel $bestelregel
     * @return \Illuminate\Http\Response
     */
    public function show(Bestelregel $bestelregel)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Bestelregel $bestelregel
     * @return \Illuminate\Http\Response
     */
    public function edit(Bestelregel $bestelregel)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Bestelregel $bestelregel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Bestelregel $bestelregel)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Bestelregel $bestelregel
     * @return \Illuminate\Http\Response
     */
    public function destroy(Bestelregel $bestelregel)
    {
        //
    }
}
