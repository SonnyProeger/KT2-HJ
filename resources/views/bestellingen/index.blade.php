@extends('layouts.app')
@section('content')
    <div class="container-md">
        <div class="text-leftc">
            <b>Besteloverzicht</b><br>
            Klantnummer<br>
            Adres<br>
            Tel.
        </div>
    </div>
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
                    <td class="d-md-table-cell"><a href="/bestellingen/">{{$bestelling->id}}</a></td>
                    <td class="d-md-table-cell">{{$bestelling->vestiging}}</td>
                    <td class="d-md-table-cell">{{$bestelling->bestelregel}}</td>
                    <td class="d-md-table-cell">{{$bestelling->status}}</td>
                    <td class="d-md-table-cell">{{$bestelling->besteldatum}}</td>
                </tr>
            @endforeach
        </table>
    </div>

@endsection
