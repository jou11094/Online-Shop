@extends('layout')

@section('title', 'Products')

@section('extra-css')
    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
@endsection

@section('content')

@component('components.breadcrumbs')
        <a href="{{ route('landing-page') }}">Home</a>
        <i class="fa fa-chevron-right breadcrumb-separator"></i>
        <span>My Profile</span>
        
    @endcomponent

  <div class="container">
        @if(session()->has('success_message'))
            <div class="alert alert-success">
               {{ session()->get('success_message') }}
            </div>
        @endif

        @if(count($errors) > 0)
            <div class="alert alert-danger">
                <ul>
                   @foreach($errors as $error)
                        <li>{{$error}}</li>
                    @endforeach
                </ul>
            </div>
       @endif
    </div> 

    <div class="products-section container">
        <div class="sidebar">
            <h3>Options</h3>
            <ul>
               
                    <li class="active"><a href="{{ route('user-edit') }} ">My Profile</a></li>
                    <li class=""><a href="{{ route('order-index') }}">My Orders</a></li>
                
            </ul>
        </div> <!-- end sidebar -->
        <div class="my-profile">
            <div class="products-header">
                <h1 class="stylish-heading">My profile</h1>
            </div>

            <div class=""> 
                <form action="{{ route('user-update') }}" method="POST">
                        @method('patch')
                        {{ csrf_field() }}
                        <div class="form-control">
                            <input id="name" type="text" name="name" value="{{auth()->user()->name }}" placeholder="Name" required>
                        </div>
                        <div class="form-control">
                            <input id="email" type="email" name="email" value="{{ auth()->user()->email }}" placeholder="Email" required>
                        </div>
                        <div class="form-control">
                            <input id="password" type="password" name="password" placeholder="Password">
                            <div>Leave password blank to keep current password</div>
                        </div>
                        <div class="form-control">
                            <input id="password-confirm" type="password" name="password_confirmation" placeholder="Confirm Password">
                        </div>
                        <div>
                            <button type="submit" class="my-profile-button">Update Profile</button>
                        </div>
                    </form>
            </div>
            <div class="spacer"></div>
      </div>
    </div>
@endsection

@section('extra-js')
    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection
