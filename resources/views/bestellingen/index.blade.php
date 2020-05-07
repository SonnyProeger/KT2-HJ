@extends('layouts.app')
@section('content')
    @if(Auth::user()->can('view-all-orders') === false)
        <div class="container-md">
            <div class="text-leftc">
                <b>Besteloverzicht</b><br>
                Klantnummer: {{Auth::user()->id}}<br>
                Adres: {{Auth::user()->adres}}, {{Auth::user()->postcode}}, {{Auth::user()->woonplaats}}<br>
                Email: {{Auth::user()->email}}
            </div>
        </div>
    @endif
    <div class="container-md">
        <table class="table">
            <tr class="d-md-table-row">
                <th class="thead-light">Bestelnummmer</th>
                <th class="thead-light">Vestiging</th>
                <th class="thead-light">Totaalprijs(inc BTW)</th>
                <th class="thead-light">Status</th>
                <th class="thead-light">Besteldatum</th>
            </tr>

            @foreach($bestellingen as $bestelling)
                <tr class="d-md-table-row">
                    <td class="d-md-table-cell">
                        <a href="{{route('bestelling.show', $bestelling)}}">Bestelling bekijken</a>
                    </td>
                    <td class="d-md-table-cell">{{$bestelling->vestiging->omschrijving}}</td>

                    <td class="d-md-table-cell">{{$bestelling->totalPrice()}}</td>
                    <td class="d-md-table-cell">{{$bestelling->status->status}}</td>
                    <td class="d-md-table-cell">{{$bestelling->besteldatum}}</td>
                </tr>
            @endforeach
        </table>
    </div>

@endsection
