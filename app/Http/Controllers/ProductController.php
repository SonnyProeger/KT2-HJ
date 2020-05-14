<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use Illuminate\View\View;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Factory|View
     */

    protected $sortMap = [
        'binnen 4 weken', 'binnen 5-7 werkdagen', 'op voorraad'
    ];

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
        $builder = Product::query();
        $direction = $request->input('direction', 'DESC');


        if ($request->has('sort') && in_array($request->input('sort'), ['id', 'omschrijving'])) {
            $builder->orderBy($request->input('sort'), $direction);
        }

        $direction = ($direction === 'ASC') ? 'DESC' : 'ASC';

        /** @var Collection $products */
        $products = $builder->get()->map(function ($product) {
            $delivery = str_replace('-', '', str_replace(' ', '', strtolower($product->delivery)));
            $product->delivery_order = array_search($delivery, collect($this->sortMap)->map(function ($item) {
                return str_replace('-', '', str_replace(' ', '', strtolower($item)));
            })->toArray(), true);
            return $product;
        });

        if ($request->input('sort') === 'delivery') {
            $products = ($direction === 'ASC') ? $products->sortBy('delivery_order') : $products->sortByDesc('delivery_order');
        }


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
