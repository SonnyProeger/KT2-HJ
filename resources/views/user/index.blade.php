@extends('layouts.app')
@section('content')
    <div>
        <table class="table">
            <tr>
                <th>Name</th>
                <th>E-mail</th>

            </tr>
            @foreach($users as $user)
                <tr>
                    <td>{{$user->voornaam}} {{$user->achternaam}}</td>

                    <td>{{$user->email}}</td>
                </tr>
            @endforeach
        </table>
    </div>

@endsection
