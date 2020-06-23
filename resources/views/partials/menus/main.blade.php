<ul>
    @foreach($items as $menu_item)
        <li><a href="{{ $menu_item->link() }}">
        
        {{ $menu_item->title }}
        @if($menu_item->title == 'Cart')
            @if( Cart::instance('default')->count() > 0)
                <span class="cart-count">{{ Cart::instance('default')->count() }}</span>
            @endif
        @endif
        </a></li>
        
    @endforeach
</ul>