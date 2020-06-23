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
        <form action="{{ route('login') }}" method="POST">
            {{ csrf_field() }}

            <input type="email" id="email" name="email" value="{{ old('email') }}" placeholder="Email" require autofocus>
            <input type="password" id="password" name="password" value="{{ old('password') }}" placeholder="Password" require autofocus>

            <div class="login-container">
                <button type="submit" class="auth-button"> Login </button>

                <label>
                    <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> remember me
                </label>
            </div>
            <div class="spacer"></div>
            <a href="{{route('password.request')}}"> Forget my passowrd </a>
        </form>
    </div>
    <div class="auth-rigth">
            <h2>New Customer</h2>
            <div class="spacer"></div>
            <p><strong>Save time now.</strong></p>
            <p>You don't need an account to checkout.</p>
            <div class="spacer"></div>
            <a href="{{ route('guestCheckout.index') }}" class="auth-button-hollow">Continue as Guest</a>
            <div class="spacer"></div>
            &nbsp;
            <div class="spacer"></div>
            <p><strong>Save time later.</strong></p>
            <p>Create an account for fast checkout and easy access to order history.</p>
            <div class="spacer"></div>
            <a href="{{ route('register') }}" class="auth-button-hollow">Create Account</a>

    </div>
    </div>


</div>
@endsection
