<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\Request;
use Illuminate\View\View;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Factory|View
     */

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $products = Product::query();
        $direction = $request->input('direction', 'DESC');

        if ($request->has('sort') && in_array($request->input('sort'), ['id', 'omschrijving'])) {
            $products->orderBy($request->input('sort'), $direction);
        }

        if ($direction === 'ASC') {
            $direction = 'DESC';
        } else {
            $direction = 'ASC';
        }

        $products = $products->get();

        return view('producten.index', compact('products', 'direction'));
    }


    /**
     * Display the specified resource.
     *
     * @param Product $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return \view('producten.show', ['product' => $product]);
    }


}
