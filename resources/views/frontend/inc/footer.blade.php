@php
$generalsetting = \App\Models\GeneralSetting::first();
@endphp
<style>
    ul {
    list-style:none;
}
</style>
<footer class="py-3 mt-4" style="background: #F6F6F8 !important;">
    <div class="container">
        <div class="my-4">
            <div class="row justify-content-lg-between">
                <div class="col-lg-3 col-md-3 col-sm-6">
                    <h5 onclick="mobileViewActive('logos');" class="text-secondary d-flex justify-content-between">
                    <span class="getfooter">GET IN TOUCH</span>
                        <span class="iconify clickableIcon" data-icon="akar-icons:plus"></span>
                    </h5>
                    <!-- Nav Link -->
                    <ul class="flex-column  visualcolumn" id="colOne">
                        <li class=""></i>@if ($generalsetting->logo != null)
                            <img src="{{ asset($generalsetting->logo) }}" class="img-fluid"
                                alt="Ehevene" style="width:160px;">
                        @else
                            <img src="{{ asset('frontend/images/logo.png') }}" width="150px" class="img-fluid"
                                alt="Ehevene">
                        @endif
                        </li>
                        <li class=""><i class="fa fa-map-marker"> </i>
                        @if ($generalsetting->address != null)
                            {{ $generalsetting->address }}
                        @else
                            Add Address here from Backend
                        @endif
                        </li>
                        <li class=""><i class="fa fa-envelope"> </i>
                            @if ($generalsetting->email != null)
                                <a class="cg" href="mailto:{{ $generalsetting->email }}">
                                    {{ $generalsetting->email }}
                                </a>
                            @else
                                <a class="cg" href="#">
                                    contact@creativeitbari.com
                                </a>
                            @endif
                        </li>
                        <li class=""><i class="fa fa-mobile" aria-hidden="true"> </i>
                            @if ($generalsetting->phone != null)
                                <a class="cg" href="tel:{{ $generalsetting->phone }}">

                                    {{ $generalsetting->phone }}
                                </a>
                            @else
                                <a class="cg" href="#">
                                    01738356180
                                </a>
                            @endif
                        </li>

                    </ul>
                    <!-- End Nav Link -->
                </div>

                <div class="col-lg-2 col-md-2 col-sm-6">
                    <h5 onclick="mobileViewActive('info');" class="text-secondary d-flex justify-content-between">
                        <span>TOP CATEGORIES</span>
                        <span class="iconify clickableIcon" data-icon="akar-icons:plus"></span>
                    </h5>
                    <!-- Nav Link -->
                    <ul class=" flex-column  visualcolumn" id="colTwo">
                        @foreach (\App\Models\Category::where('featured', 1)->limit(5)->get()
    as $key => $category)
                            <li class=""> <a href="{{ route('products.category', $category->id) }}"
                                    class="text-secondary">{{ __($category->name) }}</a></li>
                        @endforeach
                    </ul>
                    <!-- End Nav Link -->
                </div>
                <div class="col-lg-2 col-md-2 col-sm-6">
                    <h5 onclick="mobileViewActive('link');" class="text-secondary d-flex justify-content-between">
                        <span>USEFULL LINK</span>
                        <span class="iconify clickableIcon" data-icon="akar-icons:plus"></span>
                    </h5>

                    <!-- Nav Link -->
                    <ul class="flex-column visualcolumn" id="colThree">
                        <li class="n"><a class="text-secondary" href="{{ route('aboutus') }}">About
                                us</a></li>
                        <li class=""><a class="text-secondary" href="{{ route('contactus') }}">Contact
                                Us</a></li>
                        <li class=""><a class="text-secondary"
                                href="{{ route('privacypolicy') }}">Privacy</a></li>
                        <li class=""><a class="text-secondary"
                                href="{{ route('returnpolicy') }}">Returns Policy</a></li>
                        <li class="n"><a class="text-secondary" href="{{ route('faq') }}">FAQ</a></li>
                    </ul>
                    <!-- End Nav Link -->
                </div>
                <div class="col-lg-2 col-md-2 col-sm-6">
                    <!-- End Nav Link -->
                    <div id="contact">
                        <h5 onclick="mobileViewActive('contact');"
                            class="text-secondary d-flex justify-content-between">
                            <span>CONTACT US</span>
                            <span class="iconify clickableIcon" data-icon="akar-icons:plus"></span>
                        </h5>
                        <div class="text-secondary visualcolumn" id="colFour">
                            <i class="la la-phone-square"></i>
                            @if ($generalsetting->phone != null)
                                <a class="cg" href="tel:{{ $generalsetting->phone }}">

                                    {{ $generalsetting->phone }}
                                </a>
                            @else
                                <a class="cg" href="#">
                                    01738356180
                                </a>
                            @endif
                        </div>
                        <ul class="list-inline mb-0 mt-3 social-sites visualcolumn">
                            <li class="list-inline-item">

                                @if ($generalsetting->facebook != null)
                                    <a class="text-secondary" href="{{ $generalsetting->facebook }}">
                                        <span class="iconify" data-icon="ant-design:facebook-filled"
                                            data-inline="false"></span>
                                    </a>
                                @else
                                    <a class="text-secondary" href="#">
                                        <span class="iconify" data-icon="ant-design:facebook-filled"
                                            data-inline="false"></span>
                                    </a>
                                @endif
                            </li>
                            <li class="list-inline-item">
                                @if ($generalsetting->youtube != null)
                                    <a class="text-secondary" href="{{ $generalsetting->youtube }}">
                                        <span class="iconify" data-icon="fa-brands:youtube"
                                            data-inline="false"></span>
                                    </a>
                                @else
                                    <a class="text-secondary" href="#">
                                        <span class="iconify" data-icon="fa-brands:youtube"
                                            data-inline="false"></span>
                                    </a>
                                @endif


                            </li>
                            <li class="list-inline-item">
                                @if ($generalsetting->twitter != null)
                                    <a class="text-secondary" href="{{ $generalsetting->twitter }}">
                                        <span class="iconify" data-icon="fa-brands:twitter-square"
                                            data-inline="false"></span>
                                    </a>
                                @else
                                    <a class="text-secondary" href="">
                                        <span class="iconify" data-icon="fa-brands:twitter-square"
                                            data-inline="false"></span>
                                    </a>
                                @endif

                            </li>
                            <li class="list-inline-item">
                                @if ($generalsetting->instagram != null)
                                    <a class="text-secondary" href="{{ $generalsetting->instagram }}">
                                        <span class="iconify" data-icon="fa-brands:instagram-square"
                                            data-inline="false"></span>
                                    </a>
                                @else
                                    <a class="text-secondary" href="">
                                        <span class="iconify" data-icon="fa-brands:instagram-square"
                                            data-inline="false"></span>
                                    </a>
                                @endif

                            </li>
                            <!-- End Social Networks -->
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6">
                    <h5 onclick="mobileViewActive('apps');" class="text-secondary d-flex justify-content-between">
                        <span>NEWSLETTER SIGNUP</span>
                        <span class="iconify clickableIcon" data-icon="akar-icons:plus"></span>
                    </h5>
                    <!-- Nav Link -->
                    <ul class=" visualcolumn" id="colFive">
                        <li class="text-right">
                            Subscribe to our newsletter and get 10% off your first purchase
                        </li>
                        <li class="">
                            <a class="py-1 d-block app_download_link" href=" "><img class='img-fluid' loading="lazy"
                                    src="{{ asset('frontend/images/images/apple_store.png') }}"></a>
                        </li>
                    </ul>
                    <!-- End Nav Link -->
                </div>
            </div>
        </div>
        <hr class="my-4" style="background:rgba(255,255,255,0.5)">
        <div class="space-1">
            <div class="row">
                <div class="col-lg-7 col-md-7 col-sm-12 mb-2 my-2">
                    <!-- Copyright -->
                    <div class="text-center">
                        <p class="text-secondary small mobileHeightfooter">© Copyright <a href="https://www.ehavene.com/">Ehavene</a> 2021.
                            All rights reserved. Design & Development by <a
                                href="https://creativeitbari.com">CreativeITbari</a>.</p>
                    </div>
                    <!-- End Copyright -->
                </div>
                <div class="col-lg-5 col-md-5 col-sm-12  my-2">
                    <!-- Copyright -->
                    <div class="text-lg-right">
                        <p class="text-secondary small"></p>
                    </div>
                    <!-- End Copyright -->
                </div>
            </div>

        </div>
    </div>
</footer>
{{-- <div class="bottom-menu" id='bottom-menu'>
    <div class="links">
        <a data-icon="ei:cart" data-toggle="modal" data-target="#cart">
            <span class="cartNumberBottom">
                <div id="cartNumberNav">
                    @if (Session::has('cart'))
                        <div class="cartitem">
                            {{ count(Session::get('cart')) }}
                        </div>
                    @else
                        <div class="cartitem">
                            0
                        </div>
                    @endif
                </div>
            </span>
            <img src="{{ asset('frontend/images/images/shopping-cart.png') }}" height="20px">
            <span>cart</span>

        </a> --}}
        {{-- <span class="iconify mx-2" data-icon="ei:cart" data-toggle="modal" data-target="#cart"> --}}
        {{-- <a href="{{ route('wishlists.index') }}">
            <span class="iconify" data-icon="ant-design:heart-outlined"></span>
            <span>Wishlist</span>
        </a>
        <a href="{{ route('products') }}">
            <div class="middle-inner">
                <span class="iconify" data-icon="fluent:building-shop-24-regular"> </span>

            </div>
        </a>
        <a href="{{ route('dashboard') }}">
            <span class="iconify" data-icon="codicon:account"></span>
            <span>Profile</span>
        </a>
        <a href="{{ route('purchase_history.index') }}">
            <span class="iconify" data-icon="mdi:application-edit"></span>
            <span>My Order</span>
        </a>
    </div>
</div> --}}
<div class="bottom-menu" id="bottom-menu">
    <div class="links">
        <div class="nav-cart-box dropdown" id="cart_items1">
            <a href="{{ route('products') }}" class="nav-box-link">
                <span class="iconify" data-icon="lucide:layout-dashboard"></span>
                <span>Shop</span>
          </a>

        </div>
        <a href="{{ route('wishlists.index') }}">
            <span class="iconify" data-icon="ant-design:heart-outlined"></span>
            <span>Wishlist</span>
        </a>
        <a data-icon="ei:cart" data-toggle="modal" data-target="#cart">
            <span class="iconify" data-icon="clarity:shopping-cart-line"></span>
            <span>Cart</span>
            {{-- <span class="count">0</span> --}}
            <span class="cartNumberBottom">
                <div class="count" id="cartNumberNav">
                    @if (Session::has('cart'))
                        <div class="cartitem">
                            {{ count(Session::get('cart')) }}
                        </div>
                    @else
                        <div class="cartitem">
                            0
                        </div>
                    @endif
                </div>
            </span>
        </a>
        <a href="{{ route('dashboard') }}">
            <span class="iconify" data-icon="clarity:user-line"></span>
            <span>Account</span>
        </a>
        <span>
            <span class="iconify" data-icon="clarity:search-line" data-toggle="modal" data-target="#searchbar"></span>
            <span>Search</span>
        </span>
    </div>
</div>
