@php
    $generalsetting = \App\Models\GeneralSetting::first();
@endphp
<section class="header">
    <div style="width: 95%; margin: 0 auto;">
        <div class="header-portion">

                <div class="brand">
                    <a href="{{ route('home') }}">
                        @if($generalsetting->logo != null)
                        <img src="{{ asset($generalsetting->logo) }}" class="" alt="Apon Health">
                        @else
                            <img src="{{asset('frontend/images/logo.png')}}" class="" alt="Apon Health">
                        @endif
                    </a>
                    {{-- <div class="mobile-menu-icon cat-mobile" onclick="collapsMenu()">
                        <span class="iconify" data-icon="gg:menu" data-inline="false"></span>
                    </div> --}}

                </div>

                <div class="search-box flex-grow-1">
                    <form action="{{ route('search') }}" method="GET">
                        <div class="d-flex position-relative mt-3">
                            {{-- <div class="d-lg-none search-box-back">
                                <button class="" type="button"><i class="la la-long-arrow-left"></i></button>
                            </div> --}}
                            <div class="w-100">
                                <input type="text" aria-label="Search" id="search" name="q" class="w-100" placeholder="{{ __('I am shopping for...') }}" autocomplete="off">
                            </div>
                            <div class="form-group category-select d-xl-block">
                                <select class="form-control selectpicker select-normal" name="category_id">
                                    <option value="">{{__('All Categories')}}</option>
                                    @foreach (\App\Models\Category::all() as $key => $category)
                                    <option value="{{ $category->id }}"
                                        @isset($category_id)
                                            @if ($category_id == $category->id)
                                                selected
                                            @endif
                                        @endisset
                                        >{{ __($category->name) }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <button class="d-lg-block" type="submit">
                                <i class="la la-search la-flip-horizontal"></i>
                            </button>
                            <div class="typed-search-box d-none">
                                <div class="search-preloader">
                                    <div class="loader"><div></div><div></div><div></div></div>
                                </div>
                                <div class="search-nothing d-none">

                                </div>
                                <div id="search-content">

                                </div>
                            </div>
                        </div>
                    </form>
                </div>

            <div class="buttons_link">
              <a href="{{ route('upload-prescription') }}"><img src="{{asset('frontend/images/images/upload.png')}}" class="img-fluid"></a>
              @Auth
               {{-- <a href="{{ route('logout') }}"><span class="iconify" data-icon="la:sign-out-alt"
                data-inline="false"></span> SIGN OUT</a> --}}
               @else
               <a href="{{ route('user.registration') }}"><img src="{{asset('frontend/images/images/member.jpg')}}" class="img-fluid"></a>
               @endauth

               @auth
               <a href="{{ route('dashboard') }}"><img src="{{asset('frontend/images/images/dashboard.png')}}" class="img-fluid"></a>
               @else
               <a href="{{ route('user.login') }}"><img src="{{asset('frontend/images/images/Screenshot_1.png')}}"></a>
               @endauth
               {{-- <a href="{{route('compare')}}"><img src="{{asset('frontend/images/images/discount_home.png')}}"></a> --}}
            </div>
            <div class="links">

                {{-- cart start  --}}

                <div class="d-lg-inline-block mobilecart" data-hover="dropdown">
                    <div class="nav-cart-box dropdown" id="cart_items">
                        <a href="" class="nav-box-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="{{asset('frontend/images/images/shopping-cart.png')}}">
                            @if(Session::has('cart'))
                            <div class="cartitem">
                                {{ count(Session::get('cart'))}}
                             </div>

                            @else
                            <div class="cartitem">
                                0
                             </div>
                            @endif
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right px-0">
                            <li>
                                <div class="dropdown-cart px-0">
                                    @if(Session::has('cart'))
                                        @if(count($cart = Session::get('cart')) > 0)
                                            <div class="dc-header">
                                                <h3 class="heading heading-6 strong-700">{{__('Cart Items')}}</h3>
                                            </div>
                                            <div class="dropdown-cart-items c-scrollbar">
                                                @php
                                                    $total = 0;
                                                @endphp
                                                @foreach($cart as $key => $cartItem)
                                                    @php
                                                        $product = \App\Models\Product::find($cartItem['id']);
                                                        $total = $total + $cartItem['price']*$cartItem['quantity'];
                                                    @endphp
                                                    <div class="dc-item">
                                                        <div class="d-flex align-items-center">
                                                            <div class="dc-image">
                                                                <a href="{{ route('product', $product->slug) }}">
                                                                    <img src="{{ asset($product->thumbnail_img) }}" class="img-fluid" alt="">
                                                                </a>
                                                            </div>
                                                            <div class="dc-content">
                                                                <span class="d-block dc-product-name text-capitalize strong-600 mb-1">
                                                                    <a href="{{ route('product', $product->slug) }}">
                                                                        {{ __($product->name) }}
                                                                    </a>
                                                                </span>

                                                                <span class="dc-quantity">x{{ $cartItem['quantity'] }}</span>
                                                                <span class="dc-price">{{ single_price($cartItem['price']*$cartItem['quantity']) }}</span>
                                                            </div>
                                                            <div class="dc-actions">
                                                                <button onclick="removeFromCart({{ $key }})">
                                                                    <i class="la la-close"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                            <div class="dc-item py-3">
                                                <span class="subtotal-text">{{__('Subtotal')}}</span>
                                                <span class="subtotal-amount">{{ single_price($total) }}</span>
                                            </div>
                                            <div class="py-2 text-center dc-btn">
                                                <ul class="inline-links inline-links--style-3">
                                                    <li class="pr-3">
                                                        <a href="{{ route('cart') }}" class="link link--style-1 text-capitalize btn btn-base-1 px-3 py-1">
                                                            <i class="la la-shopping-cart"></i> {{__('View cart')}}
                                                        </a>
                                                    </li>
                                                    <li>
                                                    @if(Auth::check())
                                                    <a href="{{ route('checkout.shipping_info') }}" class="link link--style-1 text-capitalize btn btn-base-1 px-3 py-1 light-text"><i class="la la-mail-forward"></i> {{__('Checkout')}}</a>
                                                    @else
                                                    <a href="{{ route('cart.login') }}" class="link link--style-1 text-capitalize btn btn-base-1 px-3 py-1 light-text"><i class="la la-mail-forward"></i> {{__('Checkout')}}</a>
                                                    @endif
                                                    </li>
                                                </ul>
                                            </div>
                                        @else
                                            <div class="dc-header">
                                                <h3 class="heading heading-6 strong-700">{{__('Your Cart is empty')}}</h3>
                                            </div>
                                        @endif
                                    @else
                                        <div class="dc-header">
                                            <h3 class="heading heading-6 strong-700">{{__('Your Cart is empty')}}</h3>
                                        </div>
                                    @endif
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                {{-- cart end  --}}
            </div>
        </div>
    </div>
</section>


{{-- <section class="mobileSearch">
    <div class="container">
        <div class="mobileSearchArea">

            <div class="mobile-menu-icon" onclick="collapsMenu()">
                <span class="iconify" data-icon="gg:menu" data-inline="false"></span>
            </div>

            <div class="menu-content" id='mobileMenu'>
                <div class="profile">
                    @if(!empty(Auth::user()->avatar_original))
                    <img src="{{asset(Auth::user()->avatar_original)}}" class="image" alt="">
                    @else
                    <img src="{{asset('frontend/images/images/user.png')}}" class="image" alt="">
                    @endif
                    @if(!empty(Auth::user()->name))
                    <h6>{{ Auth::user()->name }}</h6>
                    @endif
                </div>
                <div class="cash">
                    @if(!empty(Auth::user()->balance))
                    <p>
                        Cash: {{Auth::user()->balance}} Tk <br>
                        Pending : 1200 Tk
                    </p>
                    @else
                    <p>
                        Cash: 0 Tk <br>
                        Pending : 0 Tk
                    </p>
                    @endif

                </div>

                <div class="menuItems">
                    <ul>
                        @Auth
                        <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                        <li><a href="{{ route('purchase_history.index') }}">Purchase History</a></li>
                        <li><a href="{{ route('wishlists.index') }}">Wishlist</a></li>
                        <li><a href="{{ route('profile') }}">Manage Profile</a></li>
                        <li><a href="{{ route('wallet.index') }}">My Wallet</a></li>
                        <li><a href="{{ route('prescription.index') }}">Upload Prescription</a></li>
                        <li><a href="{{ route('message.index') }}">Request Message</a></li>

                        <li> @if(!empty(\App\Models\Medication::where('user_id', '=', Auth::user()->id)->first()->user_id))
                            <a href="{{ route('usermedication.view') }}">Medication View</a>
                            @else
                            <a href="{{ route('usermedication.index') }}">Add Medication</a>
                            @endif
                        </li>
                        <li><a href="{{ route('changepassword') }}">Change Password</a></li>
                        <li><a href="{{ route('logout') }}">Logout</a></li>
                        @else
                        <li><a href="{{ route('user.registration') }}">Register</a></li>
                        <li><a href="{{ route('user.login') }}">Login</a></li>
                        @endauth
                    </ul>
                </div>
                <div class="close" onclick="closeMenu()"><span class="iconify" data-icon="eva:close-circle-fill"
                        data-inline="false"></span></div>
            </div>
        </div>

    </div>
</section> --}}
