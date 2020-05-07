@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row py-3">

            <div class="col order-2" id="main">
                <div class="row">
                    @foreach($products as $product)
                        <div class="card mb-2">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <strong>Productnummer:</strong> {{$product->getKey()}}<br/>
                                        <strong>Omschrijving:</strong><br/> {{$product->omschrijving}}
                                    </div>
                                    <div class="col-md-6">
                                        <img src="{{asset($product->image_path)}}" class="img-fluid mb-1"
                                             alt="landbouw img">
                                        <a class="btn btn-primary btn-block" href="{{route('product.show', $product)}}">Bestel</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="w-100"></div>
                    @endforeach
                </div>
            </div>
            <div class="col-3" id="sticky-sidebar">
                <div class="sticky-top">
                    Sorteren op <br>
                    <a href="{{route('product.index', ['sort' => 'omschrijving', 'direction' => $direction])}}"
                       class="nav-link">Omschrijving</a>
                    <a href="{{route('product.index', ['sort' => 'id', 'direction' => $direction])}}" class="nav-link">Productnummer</a>
                </div>
            </div>
        </div>
    </div>

@endsection
