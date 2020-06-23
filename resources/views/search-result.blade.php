@extends('layout')

@section('title', )

@section('extra-css')
    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
@endsection

@section('content')


   
    @component('components.breadcrumbs')
        <a href="/">Home</a>
        <i class="fa fa-chevron-right breadcrumb-separator"></i>
        <span><a href="{{ route('shop.index') }}">Shop</a></span>
        <i class="fa fa-chevron-right breadcrumb-separator"></i>
        
    @endcomponent
   

    <div class="container">
        @if(session()->has('success_message'))
            <div class="alert alert-success">
               {{ $success_message }}
            </div>
       @endif   



        @if($errors)
        @foreach($errors as $error)
            <div class="alert alert-danger">
                <ul>
                        <li>{{ $error }}</li>
                </ul>
            </div>
        @endforeach
        @endif
      
    </div>

    <div class="search-results-container container">
    <h1>Search Result</h1>

    <h4 class="search-results-count"> {{ $products->count()}} result(s) for {{ request()->input('query')}}</h4>
    <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Details</th>
                    <th>Description</th>
                    <th>Price</th>  
                </tr>
            </thead>
            <tbody>
                @foreach ($products as $product)
                    <tr>
                        <th><a href="{{ route('shop.show' , $product->slug) }}">{{ $product->name }}</a></th>
                        <td>{{ $product->details }}</td>
                        <td>{{  substr(strip_tags($product->description), 80)}}...</td>
                        <td>{{ $product->price }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <div class="spacer"></div>
            <div>
            {{ $products->appends(request()->input())->links() }}

        </div>
    </div> <!-- end product-section -->
    

    

@endsection

@section('extra-js')
    <script>
        (function(){
            const currentImage = document.querySelector('#currentImage');
            const images = document.querySelectorAll('.product-section-thumbnail');

            images.forEach((element) => element.addEventListener('click', thumbnailClick));

            function thumbnailClick(e) {
                currentImage.classList.remove('active');

                currentImage.addEventListener('transitionend', () => {
                    currentImage.src = this.querySelector('img').src;
                    currentImage.classList.add('active');
                })

                images.forEach((element) => element.classList.remove('selected'));
                this.classList.add('selected');
            }

        })();
    </script>

    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>

@endsection
