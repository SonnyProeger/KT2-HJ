@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">{{ __('Register') }}</div>

                    <div class="card-body">
                        <form method="POST" action="{{ route('register') }}">
                            @csrf

                            <div class="form-group row">
                                <label for="voornaam"
                                       class="col-md-4 col-form-label text-md-right">{{ __('Voornaam') }}</label>

                                <div class="col-md-6">
                                    <input id="voornaam" type="text"
                                           class="form-control @error('voornaam') is-invalid @enderror" name="voornaam"
                                           value="{{ old('voornaam') }}" required autocomplete="name" autofocus>

                                    @error('voornaam')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="tussenvoegsel"
                                       class="col-md-4 col-form-label text-md-right">{{ __('Tussenvoegsel') }}</label>

                                <div class="col-md-6">
                                    <input id="tussenvoegsel" type="text" class="form-control" name="tussenvoegsel">

                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="achternaam"
                                       class="col-md-4 col-form-label text-md-right">{{ __('Achternaam') }}</label>

                                <div class="col-md-6">
                                    <input id="achternaam" type="text"
                                           class="form-control @error('achternaam') is-invalid @enderror"
                                           name="achternaam" value="{{ old('achternaam') }}" required
                                           autocomplete="achternaam" autofocus>

                                    @error('achternaam')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="adres"
                                       class="col-md-4 col-form-label text-md-right">{{ __('Adres') }}</label>

                                <div class="col-md-6">
                                    <input id="adres" type="text"
                                           class="form-control @error('adres') is-invalid @enderror" name="adres"
                                           value="{{ old('adres') }}" required autocomplete="adres" autofocus>

                                    @error('adres')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="postcode"
                                       class="col-md-4 col-form-label text-md-right">{{ __('Postcode') }}</label>

                                <div class="col-md-6">
                                    <input id="postcode" type="text"
                                           class="form-control @error('postcode') is-invalid @enderror" name="postcode"
                                           value="{{ old('postcode') }}" required autocomplete="postcode" autofocus>

                                    @error('postcode')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="woonplaats"
                                       class="col-md-4 col-form-label text-md-right">{{ __('Woonplaats') }}</label>

                                <div class="col-md-6">
                                    <input id="woonplaats" type="text"
                                           class="form-control @error('woonplaats') is-invalid @enderror"
                                           name="woonplaats" value="{{ old('woonplaats') }}" required
                                           autocomplete="woonplaats" autofocus>

                                    @error('woonplaats')
                                    <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="email"
                                       class="col-md-4 col-form-label text-md-right">{{ __('E-Mail') }}</label>

                                <div class="col-md-6">
                                    <input id="email" type="email"
                                           class="form-control @error('email') is-invalid @enderror" name="email"
                                           value="{{ old('email') }}" required autocomplete="email">

                                    @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="password"
                                       class="col-md-4 col-form-label text-md-right">{{ __('Wachtwoord') }}</label>

                                <div class="col-md-6">
                                    <input id="password" type="password"
                                           class="form-control @error('password') is-invalid @enderror" name="password"
                                           required autocomplete="new-password">

                                    @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="password-confirm"
                                       class="col-md-4 col-form-label text-md-right">{{ __('Watchwoord verifieren') }}</label>

                                <div class="col-md-6">
                                    <input id="password-confirm" type="password" class="form-control"
                                           name="password_confirmation" required autocomplete="new-password">
                                </div>
                            </div>

                            <div class="form-group row mb-0">
                                <div class="col-md-6 offset-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Register') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
