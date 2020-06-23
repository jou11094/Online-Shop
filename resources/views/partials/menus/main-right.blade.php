<ul>
    @guest
    <li><a href="{{ route('register') }}">Sing Up</a></li>
    <li><a href="{{ route('login') }}" >Login </a></li>
    @else
    <li>
        <a class="dropdown-item" href="{{ route('user-edit') }}"> My Account </a>
    </li>
    <li>
        <a class="dropdown-item" href="{{ route('logout') }}"
            onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();">
            {{ __('Logout') }}
        </a>
    </li>
    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
        @csrf
    </form>
    @endguest
    <li><a href="{{ route('cart.index') }}">Cart
    @if(Cart::instance('default')->count() > 0 )
    <span class="cart-count">{{ Cart::instance('default')->count() }}</span>
    @endif
    </a></li>

</ul>