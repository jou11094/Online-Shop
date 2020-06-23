@extends('layout')

@section('title', 'Shopping Cart')

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
    

    <div class="cart-section container">
        <div>
            @if(session()->has('success_message'))
                <div class="alert alert-success">
                    {{ session()->get('success_message')}}
                </div>
            @endif
            @if(count($errors) > 0 )
                <div class="alert alert-danger">
                    <ul>
                        @foreach($errors as $error)
                            <li>{{ $error}}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

           @if( Cart::count() > 0 )

            <h2> {{ Cart::count() }}item(s) in the Shopping Cart</h2>

            <div class="cart-table">
             @foreach(Cart::content() as $item)
                <div class="cart-table-row">
                    <div class="cart-table-row-left">
                        <a href="{{ route('shop.show', $item->model->slug )}}"><img src="{{ Voyager::image($item->model->image) }}" alt="item" class="cart-table-img"></a>
                        <div class="cart-item-details">
                            <div class="cart-table-item"><a href="{{ route('shop.show', $item->model->slug )}}">{{ $item->model->name }}</a></div>
                            <div class="cart-table-description">{{ $item->model->details }}</div>
                        </div>
                    </div>
                    <div class="cart-table-row-right">
                        <div class="cart-table-actions">
                            <form action="{{ route('cart.destroy', $item->rowId ) }}" method="POST">
                                {{ csrf_field() }}
                                {{ method_field('DELETE')}}
                                <button type="submit" class="cart-options">Remove</button>
                            </form>

                            <form action="{{ route('cart.switchToSaveForLater', $item->rowId )}}" method="POST">
                                {{ csrf_field()}}

                                <button type="submit" class="cart-options">Save for Later</button>
                            </form>
                        </div>
                        <div>
                            <select class="quantity" data-id="{{$item->rowId}}" data-productQuantity="{{ $item->model->quantity }}">
                                    @for ($i = 1; $i < 5 +1 ; $i++)
                                        <option {{ $item->qty == $i ? 'selected' : ''}} >{{ $i }}</option>
                                    @endfor 
                            </select>
                        </div>
                        <div></div>
                    </div>
                </div> <!-- end cart-table-row -->
                @endforeach
                
            </div> <!-- end cart-table -->
             <a href="#" class="have-code">Have a Code?</a>
                    <div class="have-code-container">
                    <form action="{{ route('coupon.store')}}" method="POST">
                        {{ csrf_field() }}
                        <input type="text" name="coupon_code" id="coupon_code">
                        <button type="submit" class="button button-plain">Apply</button>
                    </form>
                </div> <!-- end have-code-container -->
            <div class="cart-totals">
                <div class="cart-totals-left">
                    Shipping is free because we’re awesome like that. Also because that’s additional stuff I don’t feel like figuring out :).
                </div>

                <div class="cart-totals-right">
                    <div>
                         Subtotal<br>
                       
                         @if(session()->has('coupon'))
                         Discount({{ session()->get('coupon')['code'] }})
                         <form action="{{ route('coupon.delete')}}" method="POST" style="">
                            {{ csrf_field()}}
                            {{ method_field('delete')}}
                            <button type="submit">remove</button>
                        </form>
                         @endif
                         new subtotal<br>
                         tax<br>
                         
                         <span class="cart-totals-total">Total</span>
                    </div>
                    <div class="cart-totals-subtotal">
                       {{ your_money_format(Cart::subtotal())}}<br>
                       
                       @if(session()->has('coupon'))
                       {{ your_money_format($discount) }}<br><br>
                        {{ your_money_format($newSubtotal) }}<br>
                        {{ your_money_format($newTax) }}
                        @else
                        {{  your_money_format(Cart::tax()) }}
                        @endif
                        <br>
                        
                        
                        
                        <span class="cart-totals-total">{{your_money_format($newTotal)}}</span>
                    </div>
                </div>
            </div> <!-- end cart-totals -->
            
            <div class="cart-buttons">
                <a href="{{ route('shop.index')}}" class="button">Continue Shopping</a>
                <a href="{{ route('checkout.index')}}" class="button-primary">Proceed to Checkout</a>
            </div>

            @else
            

                <h3>No items in Cart!</h3>
                <div class="spacer"></div>
                <a href="{{ route('shop.index')}}" class="button">Continue Shopping</a>
                <div class="spacer"></div>

            
                @endif
            

            @if(Cart::instance('saveForLater')->count() > 0)

            <h2> {{ Cart::instance('saveForLater')->count()}} item(s) in the Save For Later Cart</h2>

            <div class="saved-for-later cart-table">
                @foreach(Cart::instance('saveForLater')->content() as $item)
                <div class="cart-table-row">
                    <div class="cart-table-row-left">
                        <a href="{{ route('shop.show' , $item->rowId )}}"><img src="{{ asset('img/products/'. $item->model->slug . '.jpg' )}}" alt="item" class="cart-table-img"></a>
                        <div class="cart-item-details">
                            <div class="cart-table-item"><a href="{{ route('shop.show' , $item->rowId )}}">{{ $item->model->name }}</a></div>
                            <div class="cart-table-description">{{ $item->model->details}}</div>
                        </div>
                    </div>
                    <div class="cart-table-row-right">
                        <div class="cart-table-actions">
                            <form action="{{route('saveForLater.destroy', $item->rowId)}}" method="POST">
                                {{ csrf_field() }}
                                {{ method_field('DELETE')}}
                                <button type="submit" class="cart-options">Remove</button>
                            </form>

                            <form action="{{ route('saveForLater.switchToCart' , $item->rowId)}}" method="POST">
                                {{ csrf_field()}}

                                <button type="submit" class="cart-options">Move to Cart</button>
                            </form>
                        </div>
                       
                        <div>{{  your_money_format($item->price)}}</div>
                    </div>
                </div> <!-- end cart-table-row -->
                
                @endforeach
                </div> <!-- end cart-table-row -->
     

            </div> <!-- end saved-for-later -->

          @else

            <h3>You have no items Saved for Later.</h3>

            @endif

        </div>

    </div> <!-- end cart-section -->

    @include('partials.might-like')

    


@endsection

@section('extra-js')
    <script src="{{ asset('js/app.js') }}"></script>
    <script>
     (function(){
            const classname = document.querySelectorAll('.quantity');

            Array.from(classname).forEach(function(element) {
                element.addEventListener('change', function(){
                    const id = element.getAttribute('data-id');
                    const proQuantity = element.getAttribute('data-productQuantity');
                    axios.patch(`./cart/${id}`, {
                        quantity: this.value,
                        proQuantity : proQuantity
                    })
                  .then(function (response) {
                    //console.log(response);
                    window.location.href= '{{ route('cart.index')}}'
                  })
                  .catch(function (error) {
                    //console.log(error);
                    window.location.href= '{{ route('cart.index')}}'

                  });
                });
            });
     })();
    </script>

    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection


<!-- 
(function(){
            const classname = document.querySelectorAll('.quantity')

            Array.from(classname).forEach(function(element) {
                element.addEventListener('change', function() {
                    const id = element.getAttribute('data-id')
                    const productQuantity = element.getAttribute('data-productQuantity')

                    axios.patch(`/cart/${id}`, {
                        quantity: this.value,
                        productQuantity: productQuantity
                    })
                    .then(function (response) {
                        // console.log(response);
                        window.location.href = '{{ route('cart.index') }}'
                    })
                    .catch(function (error) {
                        // console.log(error);
                        window.location.href = '{{ route('cart.index') }}'
                    });
                })
            })
        })();
        Include AlgoliaSearch JS Client and autocomplete.js library 
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
-->