<!doctype html>
<html lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel Ecommerce Example</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat%7CRoboto:300,400,700" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- Styles -->
        <link rel="stylesheet" href="{{ asset('css/app.css') }}">
        <link rel="stylesheet" href="{{ asset('css/responsive.css') }}">

    </head>
    <body>
        <div id="app">
        <header class="with-background">
            <div class="top-nav container">
            <div class="top-nav-left">
                <div class="logo">Ecommerce</div>
                {{ menu('main', 'partials.menus.main')}}
                </div> <!-- end top-nav -->
                <div class="top-nav-right">
                @include('partials.menus.main-right')
            </div>
            </div>
            
                <div class="hero container">
                    <div class="hero-copy">
                        <h1>Laravel Ecommerce Demo</h1>
                        <p>Includes multiple products, categories, a shopping cart and a checkout system with Stripe integration.</p>
                        <div class="hero-buttons">
                            <a href="https://www.youtube.com/playlist?list=PLEhEHUEU3x5oPTli631ZX9cxl6cU_sDaR" class="button button-white">Screencasts</a>
                            <a href="https://github.com/drehimself/laravel-ecommerce-example" class="button button-white">GitHub</a>
                        </div>
                    </div> <!-- end hero-copy -->

                    <div class="hero-image">
                        <img src="img/macbook-pro-laravel.png" alt="hero image">
                    </div> <!-- end hero-image -->
                </div> <!-- end hero -->
            </header>

            <div class="featured-section">

                <div class="container">
                    <h1 class="text-center">Laravel Ecommerce</h1>

                    <p class="section-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore vitae nisi, consequuntur illum dolores cumque pariatur quis provident deleniti nesciunt officia est reprehenderit sunt aliquid possimus temporibus enim eum hic lorem.</p>

                    <div class="text-center button-container">
                        <a href="#" class="button">Featured</a>
                        <a href="#" class="button">On Sale</a>
                    </div>

                    {{-- <div class="tabs">
                        <div class="tab">
                            
                        </div>
                        <div class="tab">
                        
                        </div>
                    </div> --}}

                    <div class="products text-center">
                       @foreach($products as $product )
                            <div class="product">
                                <a href="{{ route('shop.show' , $product->slug)}}"><img src="{{ Voyager::image($product->image) }}" alt="product"></a>
                                <a href="{{ route('shop.show' , $product->slug)}}"><div class="product-name">{{ $product->name }} </div></a>
                                <div class="product-price">{{ your_money_format($product->price) }}</div>
                            </div>
                       @endforeach

                    </div> <!-- end products -->

                    <div class="text-center button-container">
                        <a href="" class="button">View more products</a>
                    </div>

                </div> <!-- end container -->



            </div> <!-- end featured-section -->

            <blog-posts></blog-posts>

            @include('partials.footer')

        </div> <!-- end #app -->
        <script src="js/app.js"></script>
    </body>
</html>