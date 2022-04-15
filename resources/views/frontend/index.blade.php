@extends('frontend.layouts.app')
@section('title')
    Ehavene Online shopping house
@stop
@section('css')

    <style>
        .cat_space_item {
            margin-left: 10px;
            margin-right: 10px;
            margin-bottom: 20px;
        }
        .nt_bg_lz {
            display: block;
            width: 100%;
            height: 100%;
            position: relative;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>

@endsection
@section('content')

    <!-- Slider main container -->
    <div class="swiper-container">
        <!-- Additional required wrapper -->
        <!-- If we need navigation buttons -->
        <!--<div class="control">-->
        <!--    <div class="swiper-button-prev"></div>-->
        <!--    <div class="swiper-button-next"></div>-->
        <!--</div>-->
        <div class="swiper-wrapper">
            <!-- Slides -->
            @foreach (\App\Models\Slider::where('published', 1)->get() as $key => $slider)
                <div class="swiper-slide">
                    <img src="{{ asset($slider->photo) }}" alt="" class="img-fluid h-100" style="width: 100%">
                </div>
            @endforeach
        </div>
        <!-- If we need pagination -->
        <div class="swiper-pagination"></div>
    </div>
    {{-- //////////////////////////////////////////////////////////////////////////////// --}}
    {{-- featureCategories --}}
    <section class="featureCategories mt-3">
        <div class="container containerNo">
            <div class="inner">
                @php
                    $fastCategory = \App\Models\Category::where('id', 25)->first();
                    $secendCategory = \App\Models\Category::where('id', 26)->first();
                    $therdCategory = \App\Models\Category::where('id', 29)->first();
                    $fourthCategory = \App\Models\Category::where('id', 30)->first();
                    // dd($fastCategory);
                @endphp
                <div class="catCol cat_space_item">
                    <a href="{{ route('products.category', $fastCategory->id) }}">
                        <img class="categoriImgone" src="{{ asset($fastCategory->banner) }}" class="img-fluid">
                    </a>
                    <a href="" class="catButton">
                        {{ $fastCategory->name }}
                    </a>
                </div>
                <div class="catCol">
                    <div class="subInner">
                        <div class="items">
                            <div class="content cat_space_item">
                                <a href="{{ route('products.category', $secendCategory->id) }}">
                                    <img class="categoryImgeLeft" src="{{ asset($secendCategory->banner) }}"
                                        class="img-fluid">

                                </a>
                                <a href="{{ route('products.category', $secendCategory->id) }}" class="catButton">
                                    {{ $secendCategory->name }}
                                </a>
                            </div>
                            <div class="content cat_space_item">
                                <a href="{{ route('products.category', $therdCategory->id) }}">
                                    <img class="categoryImgeLeft" src="{{ asset($therdCategory->banner) }}"
                                        class="img-fluid">
                                </a>
                                <a href="{{ route('products.category', $therdCategory->id) }}" class="catButton">
                                    {{ $therdCategory->name }}
                                </a>
                            </div>
                        </div>
                        <div class="items">
                            <div class="content cat_space_item">
                                <a href="{{ route('products.category', $fourthCategory->id) }}">
                                    <img class="categoryImgeRight" src="{{ asset($fourthCategory->banner) }}"
                                        class="img-fluid">
                                </a>
                                <a href="{{ route('products.category', $fourthCategory->id) }}" class="catButton">
                                    {{ $fourthCategory->name }}
                                </a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    {{-- /////////////////////////////////////////////////////// --}}
    {{-- category section  start --}}
    <style>
        .cat-items-wrap {
            display: flex;
            flex-wrap: wrap;
            margin: 0 -5px;
        }

        .cat-item {
            flex: 0 0 12.33%;
            padding: 0 5px;
            margin-bottom: 20px;
            text-align: center;
        }

        .cat-item .cat-icon {
            display: inline-block;
            /* padding: 15px; */
            padding-bottom: 10px
        }
        .cat-item .cat-item-inner {
            display: block;
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0px 0px 7px 0px rgb(0 0 0 / 10%);
            padding: 15px 0 5px 0;
        }
        .cat-item a:hover {
            color: red
        }

    </style>

   {{-- <section>
        <div class="container">
            <div class="cat-items-wrap">
                @foreach (\App\Models\Category::inRandomOrder()->get()
                as $category)
                <div class="cat-item">
                    <a href="{{ route('products.category', $category->id) }}" class="cat-item-inner">
                        <span class="cat-icon"><img
                                src="{{ asset($category->banner) }}"
                                alt="All Laptop" width="100" height="100"></span>
                        <p>{{ $category->name }}</p>
                    </a>
                </div>
                @endforeach
            </div>
        </div>

    </section> --}}
    {{-- category section  end --}}
    {{-- product section --}}
    <section class="productFeatured productFetRem">
        @foreach (\App\Models\Category::where('featured', 1)->get() as $key => $category)
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center my-2">
                        <h4 class="mb-0 titlePro"><a
                                href="{{ route('products.category', $category->id) }}">{{ $category->name }}</a></h4>
                        <!--<h6 class="mb-0"><i>Top view in this week</i></h6>-->
                    </div>
                </div>
                <div class="row productView mx-lg-auto">
                    @foreach (filter_products(\App\Models\Product::inRandomOrder()->where('category_id', $category->id))->limit(8)->get()
        as $key => $related_product)
                        <div class="productDesign">
                            <div class="productContainer">
                                @if ($related_product->todays_deal == 1)
                                    <div class="proBadge">
                                        New
                                    </div>
                                @else
                                @endif
                                @if (percentage($related_product->id) > 0)
                                    <div class="proBadgePer">
                                        -{{ percentage($related_product->id) }}%
                                    </div>
                                @endif
                                <a href="{{ route('product', $related_product->slug) }}">
                                    <img class="img-fluid product-photo"
                                        src="{{ asset($related_product->thumbnail_img) }}" alt="" />
                                </a>
                                <div class="inner">
                                    <button class="btn-invisible"
                                        onclick="showAddToCartModal({{ $related_product->id }})">
                                        <span class="iconify" data-icon="clarity:eye-show-solid"></span>
                                        <article class="d-inline">Quick View</article>
                                    </button>
                                    {{-- <a href="single-product.html" class="btn-invisible"><span class="iconify"
                            data-icon="clarity:plus"></span> <article class="d-inline">Add To Cart</article></a> --}}
                                    {{-- <button class="btn-invisible" onclick="showAddToCartModalshop({{ $related_product->id }})">
                                <span class="iconify"
                                data-icon="clarity:add-line"></span> <article class="d-inline">Add to cart</article>
                            </button> --}}
                                    <a href="{{ route('product', $related_product->slug) }}">
                                        <button class="btn-invisible">
                                            <span class="iconify" data-icon="ei:cart"></span>
                                            <article class="d-inline">Details View</article>
                                        </button>
                                    </a>
                                </div>
                            </div>

                            <div class="product-info mb-2">
                                <h6 class="product-title">
                                    <a class=""
                                        href="{{ route('product', $related_product->slug) }}">{{ __($related_product->name) }}</a>
                                </h6>
                                <span class="price p-2">
                                    @if (home_discounted_base_price($related_product->id) != home_price($related_product->id))
                                        <del class="pl-2">{{ home_price($related_product->id) }}</del>
                                    @endif

                                    <ins
                                        class="pl-2">{{ home_discounted_base_price($related_product->id) }}</ins>
                                </span>
                                {{-- <div class="variationSec">
                            <!-- color 1 -->
                            <input type="radio" id="grey" class="variation" name="variation" value="1">
                            <label for="grey" title="grey">
                                <div class="setColor grey"></div>
                            </label>
                            <!-- color2 -->
                            <input type="radio" id="pink" class="variation" name="variation" value="2">
                            <label for="pink" title="pink">
                                <div class="setColor pink"></div>
                            </label>
                            <!-- color 3 -->
                            <input type="radio" id="black" class="variation" name="variation" value="2">
                            <label for="black" title="black">
                                <div class="setColor black"></div>
                            </label>
                        </div> --}}

                            </div>
                        </div>
                    @endforeach
                </div>

                <div class="col-md-12 text-center mt-2">
                    <button class="btn-visible"><a href="{{ route('products.category', $category->id) }}"> Load More
                            Product </a></button>
                </div>
            </div>
        @endforeach
    </section>



    <section class="newSale py-3">
        <div class="container">
            <div class="row">
                @foreach (\App\Models\Banner::all() as $key => $banner)
                    <div class="col-md-6 mb-4">
                        <div class="innerSale">
                            <img src="{{ asset($banner->photo) }}" class="img-fluid">
                            <a href="" class="info">
                                <h3 class="mb-0">LOOKBOOK 2021</h3>
                                <h4 class="mb-0">MAKE LOVE THIS LOOK</h4>
                            </a>
                        </div>
                    </div>
                @endforeach
                {{-- <div class="col-md-6">
                <div class="innerSale">
                    <img src="{{asset('frontend/images/images/bn-05.jpg')}}" class="img-fluid">
                    <a href="" class="info">
                        <h3 class="mb-0">LOOKBOOK 2021</h3>
                        <h4 class="mb-0">MAKE LOVE THIS LOOK</h4>
                    </a>
                </div>
            </div> --}}

            </div>
        </div>
    </section>




    <section class="py-1">
        <div class="container-fluid">
            <div class="col-md-12 text-center mb-5">
                <h4 class="mb-0 titlePro ">Our Most Popular Brand</h4>
                {{-- <h6 class="mb-0"><i>Top view in this week</i></h6> --}}
            </div>
            <div class="slider slider-nav px-3" id="brand">
                @foreach (\App\Models\Brand::latest()->get()
        as $brand)
                    <a href="{{ route('products.brand', $brand->id) }}">
                        <div class="d-flex justify-content-center ml-1 mr-2" >
                            <img src="{{ asset($brand->logo) }}" class="img-fluid" style="border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgb(0 0 0 / 20%);">
                        </div>
                    </a>
                @endforeach
            </div>
        </div>
    </section>
    {{-- shipping system --}}
    <section class="delivery  py-3 ">
        <div class="container">
            <div class="row">
                <div class="col-md-3 d-flex">
                    <div> <i class="iconify mr-3" data-icon="fluent:vehicle-car-48-regular"></i></div>
                    <div class="content">
                        <h6 class="title mb-0 text-dark font-weight-bold">FREE SHIPPING</h6>
                        <p class="">Free shipping on all US order or order above 100</p>
                    </div>
                </div>
                <div class="col-md-3 d-flex">
                    <div> <span class="iconify mr-3" data-icon="heroicons-outline:support"></span></div>
                    <div class="content">
                        <h6 class="title mb-0 text-dark font-weight-bold">SUPPORT 24/7</h6>
                        <p class="">Free shipping on all US order or order above 100</p>
                    </div>
                </div>
                <div class="col-md-3 d-flex">
                    <div><span class="iconify mr-3" data-icon="bi:arrow-return-left"></span> </div>
                    <div class="content">
                        <h6 class="title mb-0 text-dark font-weight-bold">30 DAYS RETURN</h6>
                        <p class="">Free shipping on all US order or order above 100</p>
                    </div>
                </div>
                <div class="col-md-3 d-flex">
                    <div><span class="iconify mr-3" data-icon="grommet-icons:secure"></span></div>
                    <div class="content">
                        <h6 class="title mb-0 text-dark font-weight-bold">100% PAYMENT SECURE</h6>
                        <p class="">Free shipping on all US order or order above 100</p>
                    </div>
                </div>

            </div>
        </div>
    </section>
     <section class="py-5 ">
    <div class="container">
        <div class="row">
           @php
$generalsetting = \App\Models\GeneralSetting::first();
@endphp

 {!! $generalsetting->home_description !!}

        </div>

    </div>
</section>
@endsection
@section('script')
    <script>
        const swiper = new Swiper('.swiper-container', {
            // Optional parameters
            direction: 'horizontal',
            autoplay: {
                delay: 5000,
            },
            loop: true,
            effect: 'fade',
            // If we need pagination
            pagination: {
                el: '.swiper-pagination',
                type: 'bullets',
                clickable: true

            },
            // Navigation arrows
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });

        $('.slider').slick({
            arrows: true,
            infinite: true,
            slidesToShow: 3,
            accessibility: true,
            autoplay: false,
            autoplaySpeed: 3000,
            prevArrow: "<span class='arrow prev'><i class='fa fa-angle-left'></i></span>",
            nextArrow: "<span class='arrow next'><i class='fa fa-angle-right'></i></span>",
            customPaging: function(slider, i) {
                /* ADDING CUSTOM PAGING
                     Example
                     return  return '<li>Something you want to insert</li>';
             */
            },
            responsive: [{
                    breakpoint: 1920,
                    settings: {
                        slidesToShow: 6,
                        slidesToScroll: 1,
                        infinite: true,
                        // dots: true
                    }
                },
                {
                    breakpoint: 1440,
                    settings: {
                        slidesToShow: 6,
                        slidesToScroll: 1,
                        infinite: true,
                        // dots: true
                    }
                },
                {
                    breakpoint: 1025,
                    settings: {
                        slidesToShow: 4,
                        slidesToScroll: 1,
                        infinite: true,
                        // dots: true
                    }
                },
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                },
                {
                    breakpoint: 425,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                },
                {
                    breakpoint: 375,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                },

            ]
        });
    </script>
    <script type="text/javascript">
        cartQuantityInitialize();
        $('#option-choice-form input').on('change', function() {
            getVariantPrice();
        });
    </script>
@endsection
