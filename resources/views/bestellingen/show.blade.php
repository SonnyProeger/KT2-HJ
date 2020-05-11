@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="text-body">
            <b>Overzicht Bestelling</b><br>
            Bestelnummer: {{$bestelling->getKey()}}<br>
            Datum bestelling: {{$bestelling->besteldatum}}<br>
            {{$bestelling->vestiging->omschrijving}}<br>
            {{$bestelling->vestiging->adres}}<br>
            {{$bestelling->vestiging->postcode}}<br><br>

            Klant / Afleveradres <br>

            {{$bestelling->user->voornaam}}{{$bestelling->user->achternaam}}<br>
            {{$bestelling->user->adres}}<br>
            {{$bestelling->user->postcode}} {{$bestelling->user->woonplaats}}
        </div>
        <table class="table">
            <thead>
            <tr class="d-md-table-row">
                <th class="thead-light">Productnummer</th>
                <th class="thead-light">Omschrijving</th>
                <th class="thead-light">Aantal</th>
                <th class="thead-light">Prijs per stuk</th>
                <th class="thead-light">Prijs</th>
            </tr>
            </thead>
            <tbody>
            @foreach($bestelling->bestelregel as $orderLines)
                <tr>
                    <td class="d-md-table-cell">{{$orderLines->product->id }}</td>
                    <td class="d-md-table-cell">{{ $orderLines->product->omschrijving }}</td>
                    <td class="d-md-table-cell">{{$orderLines->aantal}}</td>
                    <td class="d-md-table-cell">&euro;{{ $orderLines->product->prijs }}</td>
                    <td class="d-md-table-cell">&euro;{{$orderLines->aantal * $orderLines->product->prijs}}</td>
                </tr>
            @endforeach
            </tbody>


        </table>
    </div>
@endsection
