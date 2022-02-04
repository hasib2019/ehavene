@php
$generalsetting = \App\Models\GeneralSetting::first();
@endphp
<div class="">
    <div class="topBar d-none d-md-block sticky">
        <div class="row" style="margin: 0 auto; width: 86%;">
            <div class="col-md-2">
                <div class="header-text">
                    <a class="navbar-brand" href="{{ route('home') }}">
                        @if ($generalsetting->logo != null)
                            <img src="{{ asset($generalsetting->logo) }}" width="150px" class="img-fluid"
                                alt="Ehevene">
                        @else
                            <img src="{{ asset('frontend/images/logo.png') }}" width="150px" class="img-fluid"
                                alt="Ehevene">
                        @endif
                    </a>
                </div>
            </div>

            <div class="col-md-6" style="margin: 15px 11px 0px 58px; text-align: center;">
                    <a style="padding: 0.5rem 1rem;" href="{{ route('products') }}">Shop</a>
                {{-- <li class="nav-item"> <a class="nav-link " href="#">Product</a> </li>
        <li class="nav-item"> <a class="nav-link " href="#">Sale</a> </li>
        <li class="nav-item"> <a class="nav-link " href="#">Portfolio</a> </li> --}}
                <a style="padding: 0.5rem 1rem;" href="{{ route('aboutus') }}">About us</a>
                <a style="padding: 0.5rem 1rem;" href="{{ route('contactus') }}">Contact
                    Us</a><a style="padding: 0.5rem 1rem;" href="{{ route('faq') }}">FAQ</a>
            </div>

            <div class="col-md-3">
                {{-- <span class="iconify" data-icon="akar-icons:phone"></span>
                @if ($generalsetting->phone != null)
                    <a class="cg" href="tel:{{ $generalsetting->phone }}">

                        {{ $generalsetting->phone }}
                    </a>
                @else
                    <a class="cg" href="#">
                        013000000000
                    </a>
                @endif
                <span class="iconify" data-icon="carbon:email"></span>
                @if ($generalsetting->email != null)
                    <a class="cg" href="mailto:{{ $generalsetting->email }}">

                        {{ $generalsetting->email }}
                    </a>
                @else
                    <a class="cg" href="#">
                        contact@company.com
                    </a>
                @endif
                </a> --}}
                <div class="form-inline my-2 my-lg-0 userActivities">
                    {{-- computer view serch --}}
                    <span class="iconify mx-2" data-toggle="modal" data-target="#searchbar"
                data-icon="clarity:search-line"></span>

                    @auth
                        <a href="{{ route('dashboard') }}"><span class="iconify mx-2" data-icon="ph:user-thin"
                                data-toggle="modal"></span></a>
                    @else
                        <span class="iconify mx-2" data-icon="ph:user-thin" data-toggle="modal"
                            data-target="#userLogin"></span>
                    @endauth
                    <a href="{{route('compare')}}" class="mx-2 mt-2"><span class="iconify" data-icon="emojione-monotone:yellow-heart"></span></a>
                    {{-- ================================== --}}
                    <div class="">
                        <div style="float: left">
                            <span class="iconify mr-4 mt-2 text-dark" data-icon="ei:cart" data-toggle="modal" data-target="#cart"></span>
                            <span class="cartno">
                                <div id="cartNumberTaka">
                                    @if (Session::has('cart'))
                                        <div class="cartitemsf">
                                            {{ count(Session::get('cart')) }}
                                        </div> 
                                    @else
                                        <div class="cartitemsg">
                                            0
                                        </div>
                                    @endif
                                </div>
                            </span>
                        </div>
                        
                        {{-- ////////////////////////////////////////////////////////////// --}}
                        <div style="position: relative; left: -11px; top: 8px; float: right;">
                            <div id="cartThakUpdate">
                                @if (Session::has('cart'))
                                @php
                                $total = 0;
                                @endphp
                                @foreach (Session::get('cart') as $key => $cartItem)
                                    @php
                                        $product = \App\Models\Product::find($cartItem['id']);
                                        $total = $total + $cartItem['price'] * $cartItem['quantity'];
        
                                    @endphp
                                @endforeach
                                <span >{{ single_price($total) }}</span>
                                @endif
                            </div>
                        </div>
                       
                       
                       
                    </div>
                    {{-- ============================================ --}}

                </div>
            </div>
            {{-- fixed cart item  --}}
            <div class="cartIcon" style="position: fixed; bottom: 20px; right: 20px; z-index: 99999; background: #081621; border: 1px solid rgba(255, 255, 255, 0.2); color: #fff; text-align: center; font-weight: 400; font-size: 10px; text-transform: uppercase; cursor: pointer; width: 59px; height: 59px; box-shadow: 0 0 15px rgba(0, 0, 0, 0.1), -5px 5px 10px rgba(0, 0, 0, 0.1); border-radius: 4px;">
                <i class='fa fa-shopping-basket' style='font-size:48px;color:#EE3324' data-toggle="modal"
                    data-target="#cart"></i>
                <!--<span class="iconify mx-2" data-icon="ei:cart" data-toggle="modal" data-target="#cart"></span>-->
                <!--<span class="cartNumber">-->
                <div id="cartNumber" style='font-size:30px; margin: -47px;'>
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
                <!--</span>-->
            </div>


        </div>
    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-light bg-white px-2 py-0 sticky">
    <div class="container-fluid">
        <h4 class="categoryMobile">
            <span class="iconify" style="position: relative; font-size: 40px; top: 10px; left: 5px;"
                data-toggle="modal" data-target="#mobileMenu" data-icon="ci:menu-alt-03"></span>
        </h4>
        <div class="header-text lglogo">
            <a class="navbar-brand" href="{{ route('home') }}">
                @if ($generalsetting->logo != null)
                    <img src="{{ asset($generalsetting->logo) }}" width="140px" class="img-fluid" alt="Ehevene">
                @else
                    <img src="{{ asset('frontend/images/logo.png') }}" width="140px" class="img-fluid"
                        alt="Ehevene">
                @endif
            </a>
        </div>

        <div class=" userActivitiesMobile">
            <span class="iconify mx-2" data-toggle="modal" data-target="#searchbar"
            data-icon="clarity:search-line"></span>
          
            <span class="iconify mr-4 text-dark" data-icon="ei:cart" data-toggle="modal" data-target="#cart"></span>
            <span class="cartNumberMobileTop">
                <div id="cartNumberTMobile">
                    @if (Session::has('cart'))
                        <div class="cartitemsf">
                            {{ count(Session::get('cart')) }}
                        </div>
                        
                    @else
                        <div class="cartitemsg">
                            0
                        </div>
                    @endif
                </div>
            </span>
           
        </div>
     
        <nav class="menuBar bg-white sticky">
            <div class="container-fluid">
                <ul id="nav">
                    @foreach (\App\Models\Category::get() as $key => $category)
                        <li><a
                                href="{{ route('products.category', $category->id) }}">{{ __($category->name) }}</a>
                            <ul>
                                @foreach ($category->subcategories as $key2 => $subcategory)
                                    <li><a
                                            href="{{ route('products.subcategory', $subcategory->id) }}">{{ __($subcategory->name) }}</a>
                                        <ul style="padding-left: 80px;">
                                            @foreach ($subcategory->subsubcategories as $key3 => $subsubcategory)
                                                <li ><a href="{{ route('products.subsubcategory', $subsubcategory->id) }}">{{ __($subsubcategory->name) }}</a>

                                            @endforeach
                                        </ul>
                                    </li>
                                @endforeach
                            </ul>
                        </li>
                    @endforeach
                </ul>
            </div>
        </nav>


    </div>

</nav>
<!-- modal for mobile menu -->
<div class="modal " id="mobileMenu" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog custom forMobile" role="document">
        <div class="modal-content h-100">
            <div class="modal-body">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#menu" role="tab"
                            aria-controls="menu" aria-selected="true">Menu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="categories-tab" data-toggle="tab" href="#categories" role="tab"
                            aria-controls="categories" aria-selected="false">Categories</a>
                    </li>

                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" style="overflow-y: auto; max-height: 100vh;" id="menu"
                        role="tabpanel" aria-labelledby="menu-tab">
                        <ul class="list-group list-group-flush">
                            {{-- <li class="list-group-item"><a href="">Demo</a> </li> --}}
                            <li class="list-group-item"> <a href="{{ route('products') }}">Shop</a></li>
                            {{-- <li class="list-group-item"><a href="">Product</a></li>
                            <li class="list-group-item"><a href="">Sales</a></li> --}}
                            <li class="list-group-item"><a href="{{ route('aboutus') }}">About us</a></li>
                            <li class="list-group-item"><a href="{{ route('contactus') }}">Contact Us</a></li>
                            <li class="list-group-item"><a href="{{ route('faq') }}">FAQ</a></li>
                        </ul>
                    </div>
                    <div class="tab-pane fade" style="overflow-y: auto; max-height: 100vh;" id="categories"
                        role="tabpanel" aria-labelledby="categories-tab">
                        <div class="box-content">
                            <div class="category-accordion">
                                @foreach (\App\Models\Category::all() as $key => $category)
                                    <div class="single-category">
                                        <button class="btn w-100 category-name collapsed" type="button"
                                            data-toggle="collapse" data-target="#category-{{ $key }}"
                                            aria-expanded="true">
                                            <a href="{{ route('products.category', $category->id) }}">
                                                {{ __($category->name) }}</a>
                                        </button>

                                        <div id="category-{{ $key }}" class="collapse">
                                            @foreach ($category->subcategories as $key2 => $subcategory)
                                                <div class="single-sub-category">
                                                    <button class="btn w-100 sub-category-name" type="button"
                                                        data-toggle="collapse"
                                                        data-target="#subCategory-{{ $key }}-{{ $key2 }}"
                                                        aria-expanded="true">
                                                        {{ __($subcategory->name) }}
                                                    </button>
                                                    <div id="subCategory-{{ $key }}-{{ $key2 }}"
                                                        class="collapse">
                                                        <ul class="sub-sub-category-list">
                                                            @foreach ($subcategory->subsubcategories as $key3 => $subsubcategory)
                                                                <li><a
                                                                        href="{{ route('products.subsubcategory', $subsubcategory->id) }}">{{ __($subsubcategory->name) }}</a>
                                                                </li>
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- modal for search -->
<div class="modal " id="searchbar" tabindex="-1" role="dialog" aria-hidden="true">
    
    <div class="modal-dialog custom" role="document">
        <div class="modal-content h-100">
            <div class="modal-header">
                <h5 class="modal-title text-black" id="exampleModalLabel">SEARCH OUR SITE</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                {{-- <select name="product_type" class=" rounded form-control">
                    <option value="*">All Categories</option>
                    <option value="Accessories">Accessories</option>
                    
                </select>
                <input class="form-control rounded  my-3" type="text" placeholder="Search for products">

                    <div class="productListContainer ">
                        <div class="productCartList border-bottom pb-3 my-2">
                            <div class="items">
                                <img src="https://cdn.shopify.com/s/files/1/0332/6420/5963/products/acndb3127517966_q1_2-0_120x.jpg?v=1606354275"
                                    class="img-fluid" alt="">
                            </div>
                            <div class="items">
                                <a href="" class="pname lead">
                                    <h6>producct Name</h6>
                                </a>
                                <div class="type">Grey / S</div>
                                <div class="price">$15</div>
                            </div>
                        </div>
                        <div class="productCartList border-bottom pb-3 my-2">
                            <div class="items">
                                <img src="https://cdn.shopify.com/s/files/1/0332/6420/5963/products/acndb3127517966_q1_2-0_120x.jpg?v=1606354275"
                                    class="img-fluid" alt="">
                            </div>
                            <div class="items">
                                <a href="" class="pname lead">
                                    <h6>producct Name</h6>
                                </a>
                                <div class="type">Grey / S</div>
                                <div class="price">$15</div>
                            </div>
                        </div>
                        <div class="productCartList border-bottom pb-3 my-2">
                            <div class="items">
                                <img src="https://cdn.shopify.com/s/files/1/0332/6420/5963/products/acndb3127517966_q1_2-0_120x.jpg?v=1606354275"
                                    class="img-fluid" alt="">
                            </div>
                            <div class="items">
                                <a href="" class="pname lead">
                                    <h6>producct Name</h6>
                                </a>
                                <div class="type">Grey / S</div>
                                <div class="price">$15</div>
                            </div>
                        </div>
                        <div class="productCartList border-bottom pb-3 my-2">
                            <div class="items">
                                <img src="https://cdn.shopify.com/s/files/1/0332/6420/5963/products/acndb3127517966_q1_2-0_120x.jpg?v=1606354275"
                                    class="img-fluid" alt="">
                            </div>
                            <div class="items">
                                <a href="" class="pname lead">
                                    <h6>producct Name</h6>
                                </a>
                                <div class="type">Grey / S</div>
                                <div class="price">$15</div>
                            </div>
                        </div>
                    </div>
                    <a class="py-2 shadow-sm my-3 text-center d-block text-dark" href="">View All</a> --}}
                    <form action="{{ route('search') }}" method="GET">
                        <div class="position-relative mt-3">
                            {{-- <div class="d-lg-none search-box-back">
                                <button class="" type="button"><i class="la la-long-arrow-left"></i></button>
                            </div> --}}
                            <select name="category_id" class=" rounded form-control">
                                <option value="*">All Categories</option>
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
                            {{-- /////////////////////// --}}
                            {{-- <div class="form-group category-select d-xl-block">
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
                            </div> --}}
                            <input type="text" aria-label="Search" id="search" name="q" class="form-control rounded  my-3" placeholder="{{ __('I am shopping for...') }}" autocomplete="off">
                            <button class="mb-2 shadow-sm text-center btn btn-success w-100 text-dark" type="submit">
                                <i class="la la-search la-flip-horizontal"></i> View All
                            </button>
                            {{-- <input type="submit" class="py-2 shadow-sm my-3 text-center d-block text-dark btn btn-success" value="View All"> --}}
                            {{-- <a type="submit" class="py-2 shadow-sm my-3 text-center d-block text-dark" href="">View All</a> --}}
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
        </div>
    </div>
</div>
<!-- modal for user -->
<div class="modal" id="userLogin" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog custom" role="document">
        <div class="modal-content h-100">
            <div class="modal-header">
                <h5 class="modal-title text-black" id="exampleModalLabel">LOGIN</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="{{ route('user.login.submit') }}" method="POST">
                    @csrf
                    <div class="col-lg-12">
                        @if ($errors->has('email'))
                            <p style="color: rgb(155, 37, 37)">These credentials do not match our records.</p>
                        @elseif($errors->has('password'))
                            <p style="color: rgb(155, 37, 37)">These credentials do not match our records.</p>
                        @elseif($errors->has('account'))
                            <p style="color: rgb(155, 37, 37)">Sorry! Account Not Found</p>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <input type="phone" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}"
                            value="{{ old('phone') }}" placeholder="{{ __('Phone') }}" name="email" id="email"
                            required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Password</label>
                        <input type="password"
                            class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}"
                            placeholder="{{ __('Password') }}" name="password" id="password" required>
                    </div>
                    <input id="demo-form-checkbox" class="magic-checkbox" type="checkbox" name="remember" id="remember"
                        checked readonly hidden>
                    <button type="submit" class="btn btn-primary btn-lg btn-block">Login</button>
                </form>
                <p class="my-2">New customer?
                    <a href="#userRegister" data-icon="ph:user-thin" data-toggle="modal" data-target="#userRegister"
                        class="link">Create your account</a>
                    {{-- <span  data-icon="ph:user-thin" data-toggle="modal" data-target="#userRegister">Create your account</span> --}}
                </p>
            </div>
        </div>
    </div>
</div>
<!-- modal for user Registration -->
<div class="modal" id="userRegister" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog custom" role="document">
        <div class="modal-content h-100">
            <div class="modal-header">
                <h5 class="modal-title text-black" id="exampleModalLabelReg">USER REGISTRATION</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="form-default" role="form" action="{{ route('user.register') }}" method="POST">
                    @csrf
                    {{-- <div class="col-lg-12">
                            @if ($errors->has('email'))
                                <p style="color: rgb(155, 37, 37)">These credentials do not match our records.</p>
                            @elseif($errors->has('password'))
                                <p style="color: rgb(155, 37, 37)">These credentials do not match our records.</p>
                            @elseif($errors->has('account'))
                                <p style="color: rgb(155, 37, 37)">Sorry! Account Not Found</p>
                            @endif
                        </div> --}}
                    <div class="form-group">
                        <label for="exampleInputEmail1">Name</label>
                        <input type="text" class="form-control {{ $errors->has('name') ? ' is-invalid' : '' }}"
                            value="{{ old('name') }}" placeholder="{{ __('Name') }}" name="name" id="name"
                            required>
                        @error('name')
                            <span class="invalid-feedback">
                                <strong>{{ $errors->first('name') }}</strong>
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Phone</label>
                        <input id="emailreg" type="text" class="form-control @error('error') is-invalid @enderror"
                            value="{{ old('email') }}" placeholder="{{ __('Phone') }}" name="email" required
                            autocomplete="email">
                        @error('email')
                            <span class="invalid-feedback">
                                <strong>{{ $errors->first('email') }}</strong>
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                        <span id="error_email"></span>
                    </div>
                    {{-- password --}}
                    <div class="form-group">
                        <label for="exampleInputEmail1">Password</label>
                        <input type="pasword" class="form-control" placeholder="{{ __('Password') }}"
                            name="password" id="password" pattern="{6,}"
                            title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters"
                            required>
                    </div>
                    {{-- confirm password --}}
                    <div class="form-group">
                        <label for="exampleInputEmail1">Confirm Password</label>
                        <input type="pasword" class="form-control" placeholder="{{ __('Password') }}"
                            name="password_confirmation" id="password_confirmation" required>
                    </div>
                    {{-- password validation --}}
                    <div class="row">
                        <div class="col-12">
                            <div id="message">
                                <p><span id='messagev'></span></p>
                            </div>
                        </div>
                    </div>
                    {{-- password validation --}}
                    <input class="magic-checkbox" type="checkbox" name="checkbox_example_1" id="checkboxExample_1a"
                        required checked>
                    <button type="submit" name="register" id="register" class="btn btn-primary btn-lg btn-block">Create
                        Account</button>
                </form>
                {{ csrf_field() }}
                <p class="my-2"> Already have a acoount?
                    <a href="#userLogin" data-icon="ph:user-thin" data-toggle="modal" data-target="#userLogin"
                        class="link"> Login</a>
                </p>
            </div>
        </div>
    </div>
</div>
<!-- modal for cart -->
<div class="modal " id="cart" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog custom" role="document" id="cart_items">
        <div class="modal-content h-100">
            <div class="modal-header">
                <h5 class="modal-title text-black" id="exampleModalLabel">SHOPPING CART</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                @if (Session::has('cart'))
                    @if (count($cart = Session::get('cart')) > 0)

                        <div class="productListContaineR">
                            @php
                                $total = 0;
                            @endphp
                            @foreach ($cart as $key => $cartItem)
                                @php
                                    $product = \App\Models\Product::find($cartItem['id']);
                                    $total = $total + $cartItem['price'] * $cartItem['quantity'];

                                @endphp
                                <div class="productCartList border-bottom my-2">
                                    <div class="items">
                                        <a href="{{ route('product', $product->slug) }}">
                                            <img src="{{ asset($product->thumbnail_img) }}" class="img-fluid"
                                                alt="">
                                        </a>
                                    </div>
                                    <div class="items">
                                        <a href="" class="pname lead">
                                            <h6><a href="{{ route('product', $product->slug) }}">
                                                    {{ __($product->name) }}
                                                </a></h6>
                                        </a>
                                        <div class="price">x{{ $cartItem['quantity'] }}
                                            {{ single_price($cartItem['price'] * $cartItem['quantity']) }}</div>

                                        <div class="modify ml-1">
                                            <a href="{{ route('cart') }}"><span class="iconify mr-1"
                                                    data-icon="bi:pencil-square"></span></a>
                                            <span onclick="removeFromCart({{ $key }})" class="iconify"
                                                data-icon="carbon:trash-can"></span>
                                        </div>

                                    </div>
                                </div>
                            @endforeach

                        </div>
                        <div class="bottomTotal">
                            <div class="row text-black">
                                <div class="col-md-6">
                                    <h4>Subtotal:</h4>
                                </div>
                                <div class="col-md-6">
                                    <h4>{{ single_price($total) }}</h4>

                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="checkbox" name="" id="chk">
                                        <label for="chk">I agree with the terms and conditions.</label>
                                    </div>
                                </div>
                                <div
                                    class="col-md-12 text-center d-flex flex-column justify-content-center align-item-center">
                                    <a href="{{ route('cart') }}" class="text-center mb-2 btn btn-primary rounded">
                                        View Cart</a>
                                    @if (Auth::check())
                                        <a href="{{ route('checkout.shipping_info') }}"
                                            class="text-center btn btn-info rounded"> Checkout</a>
                                    @else
                                        <a href="{{ route('cart.login') }}"
                                            class="text-center btn btn-info rounded"> Checkout</a>
                                    @endif
                                </div>
                            </div>
                        </div>
                    @else
                        <div class="shadow-sm py-2 px-1 text-center border-bottom"> Free Shipping for all orders
                            over $100.00</div>
                        <div class="emptyProduct d-flex flex-column align-items-center justify-content-center">
                            <span class="iconify" data-icon="clarity:shopping-bag-line"></span>
                            <span class="py-2">Your cart is empty.</span>
                            <a href="{{ route('products') }}" class="btn btn-primary px-3 rounded">Return To
                                Shop</a>
                        </div>

                    @endif
                @else
                    <div class="shadow-sm py-2 px-1 text-center border-bottom"> Free Shipping for all orders over
                        $100.00</div>
                    <div class="emptyProduct d-flex flex-column align-items-center justify-content-center">
                        <span class="iconify" data-icon="clarity:shopping-bag-line"></span>
                        <span class="py-2">Your cart is empty.</span>
                        <a href="{{ route('products') }}" class="btn btn-primary px-3 rounded">Return To
                            Shop</a>
                    </div>
                @endif

            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('#emailreg').keyup(function() {
            var error_email = '';
            var email = $('#emailreg').val();
            var _token = $('input[name="_token"]').val();
            var filter = /(^(01){1}[3456789]{1}(\d){8})$/;
            if (!filter.test(email)) {
                $('#error_email').html('<label class="text-danger">Invalid Phone Number</label>');
                $('#emailreg').addClass('has-error');
                $('#register').attr('disabled', 'disabled');
            } else if (email.length > 11) {
                $('#error_email').html('<label class="text-danger">Invalid Phone Number</label>');
                $('#emailreg').addClass('has-error');
                $('#register').attr('disabled', 'disabled');
            } else {
                $.ajax({
                    url: "{{ route('email_available.check') }}",
                    method: "POST",
                    data: {
                        email: email,
                        _token: _token
                    },
                    success: function(result) {
                        if (result == 'unique') {
                            $('#error_email').html(
                                '<label class="text-success">Phone Available</label>');
                            $('#emailreg').removeClass('has-error');
                            $('#register').attr('disabled', false);
                        } else {
                            $('#error_email').html(
                                '<label class="text-danger">Already have a Account</label>'
                            );
                            $('#emailreg').addClass('has-error');
                            $('#register').attr('disabled', 'disabled');
                        }
                    }
                })
            }
        });

    });
</script>

<script>
    $('#password_confirmation').on('keyup', function() {
        if ($('#password').val() == $('#password_confirmation').val()) {
            $('#messagev').html('Password Match').css('color', 'green');
            $('#messagev').addClass('valid');
            $('#messagev').removeClass('invalid');
            $('#register').attr('disabled', false);
        } else {
            $('#messagev').html('Password doesn\'t Match').css('color', 'red');
            $('#messagev').addClass('invalid');
            $('#messagev').removeClass('valid')
            $('#register').attr('disabled', 'disabled');
        }
    });
</script>