@extends('layout')

@section('title', 'Products')

@section('extra-css')
    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
@endsection

@section('content')

@component('components.breadcrumbs')
        <a href="{{ route('landing-page') }}">Home</a>
        <i class="fa fa-chevron-right breadcrumb-separator"></i>
        <span><a href="{{ route('shop.index') }}">Shop</a></span>
        <i class="fa fa-chevron-right breadcrumb-separator"></i>
        
    @endcomponent

  <!--  <div class="container">
        
            <div class="alert alert-success">
               
            </div>
        

       
            <div class="alert alert-danger">
                <ul>
                   
                        <li></li>
                    
                </ul>
            </div>
       
    </div> -->

    <div class="products-section container">
        <div class="sidebar">
            <h3>By Category</h3>
            <ul>
               @foreach($categories as $category)
                    <li class="{{ setStateActive($category->slug) }}"><a href="{{ route('shop.index' , ['category' => $category->slug ]) }} ">{{ $category->name }}</a></li>
               @endforeach 
            </ul>
        </div> <!-- end sidebar -->
        <div>
            <div class="products-header">
                <h1 class="stylish-heading">{{ $categoryName }}</h1>
                <div>
                    <strong>Price: </strong>
                    <a href="{{ route('shop.index' , ['category' => request()->category , 'sort' => 'lowToHigh']) }}">Low to High</a> |
                    <a href="{{ route('shop.index' , ['category' => request()->category , 'sort' => 'highToLow']) }}">High to Low</a>

                </div>
            </div>

            <div class="products text-center"> 

                @forelse ($products as $product) 
                    <div class="product">
                        <a href="{{ route('shop.show', $product->slug) }}"> <img src="{{ Voyager::image($product->image) }}" alt="product"></a>
                        <a href="{{ route('shop.show', $product->slug) }}"><div class="product-name">{{ $product->name }}</div></a>
                        <div class="product-price">{{ $product->your_money_format($product->price) }}</div>
                    </div>
                @empty
                    <div>no items found</div>
                @endforelse

            </div> <!-- end products -->
            
            <div class="spacer"></div>
            
            {{ $products->appends(request()->input())->links() }}

        </div>
    </div>

@endsection

@section('extra-js')
    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection
