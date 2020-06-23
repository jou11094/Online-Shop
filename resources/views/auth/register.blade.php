@extends('layout')

@section('content')
<div class="container">

<div class="auth-pages">
    <div class="auth-left">
    @if(count($errors) > 0)
            <div class="spacer"></div>
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{!! $error !!}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        Returning Customers 
        <div class="spacer"></div>
        <form action="{{ route('register') }}" method="POST">
            {{ csrf_field() }}

            <input type="text" id="name" name="name" value="{{ old('name') }}" placeholder="Name" require autofocus>
            <input type="email" id="email" name="email" value="{{ old('email') }}" placeholder="Email" require autocomplete="email">
            <input id="password" type="password" class="form-control" name="password" placeholder="Password" placeholder="Password" required>

                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="Confirm Password"
                    required>
            <div class="login-container">
                <button type="submit" class="auth-button"> Register </button>
                <div class="already-have-container">
                        <p><strong>Already have an account?</strong></p>
                        <a href="{{ route('login') }}">Login</a>
                    </div>
            </div>
        </form>
    </div>
    <div class="auth-right">
            <h2>New Customer</h2>
            <div class="spacer"></div>
            <p><strong>Save time now.</strong></p>
            <p>Creating an account will allow you to checkout faster in the future, have easy access to order history and customize your experience to suit your preferences.</p>

            &nbsp;
            <div class="spacer"></div>
            <p><strong>Loyalty Program</strong></p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt debitis, amet magnam accusamus nisi distinctio eveniet ullam. Facere, cumque architecto.</p>
        </div>
    </div>
</div>
@endsection
