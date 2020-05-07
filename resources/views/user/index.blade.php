@extends('layouts.app')
@section('content')
    <div class="container-md">
        <div class="row">

            @if(session()->has('message'))
                <div class="alert alert-info">
                    {{session('message')}}
                </div>
            @endif
        </div>

        <table class="table">
            <tr>
                <th>Name</th>
                <th>E-mail</th>
                <th>Aantal bestellingen</th>
                @can('delete-customer')
                    <th>Delete</th>
                @endcan
            </tr>
            @foreach($users as $user)
                <tr>
                    <td>{{$user->voornaam}} {{$user->achternaam}}</td>

                    <td>{{$user->email}}</td>
                    <td>{{$user->orders->count()}}</td>
                    @can('delete-customer')

                        @if($user->hasOrders() === false)
                            <td>
                                <form method="post" action="{{route('user.destroy', $user)}}">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger btn-block">Verwijderen</button>
                                </form>
                            </td>
                        @else
                            <td>
                                <div class="alert alert-warning">
                                    Gebruiker heeft nog bestelling
                                </div>
                            </td>
                        @endif

                    @endcan
                </tr>
            @endforeach
        </table>
    </div>

@endsection
