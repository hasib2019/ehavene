@extends('frontend.layouts.app')
@section('title')
    @if (isset($category_id))
        {{ \App\Models\Category::find($category_id)->name }}
    @elseif(isset($subcategory_id))
        {{ \App\Models\SubCategory::find($subcategory_id)->name }}
    @elseif(isset($subsubcategory_id))
        {{ \App\Models\SubSubCategory::find($subsubcategory_id)->name }}
    @elseif(isset($brand_id))
        {{ \App\Models\Brand::find($brand_id)->name }}
    @else
        Shop
    @endif

@stop
@section('content')

    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col">
                    <ul class="breadcrumb">
                        <li><a href="{{ route('home') }}">{{ __('Home') }}</a></li>
                        <li><a href="{{ route('products') }}">{{ __('All Categories') }}</a></li>
                        @if (isset($category_id))
                            <li class="active"><a
                                    href="{{ route('products.category', $category_id) }}">{{ \App\Models\Category::find($category_id)->name }}</a>
                            </li>
                        @endif
                        @if (isset($subcategory_id))
                            <li><a
                                    href="{{ route('products.category', \App\Models\SubCategory::find($subcategory_id)->category->id) }}">{{ \App\Models\SubCategory::find($subcategory_id)->category->name }}</a>
                            </li>
                            <li class="active"><a
                                    href="{{ route('products.subcategory', $subcategory_id) }}">{{ \App\Models\SubCategory::find($subcategory_id)->name }}</a>
                            </li>
                        @endif
                        @if (isset($subsubcategory_id))
                            <li><a
                                    href="{{ route('products.category', \App\Models\SubSubCategory::find($subsubcategory_id)->subcategory->category->id) }}">{{ \App\Models\SubSubCategory::find($subsubcategory_id)->subcategory->category->name }}</a>
                            </li>
                            <li><a
                                    href="{{ route('products.subcategory', \App\Models\SubsubCategory::find($subsubcategory_id)->subcategory->id) }}">{{ \App\Models\SubsubCategory::find($subsubcategory_id)->subcategory->name }}</a>
                            </li>
                            <li class="active"><a
                                    href="{{ route('products.subsubcategory', $subsubcategory_id) }}">{{ \App\Models\SubSubCategory::find($subsubcategory_id)->name }}</a>
                            </li>
                        @endif
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <section class="py-5"
        @if (isset($category_id)) style="background-image: url('{{ asset(\App\Models\Category::find($category_id)->banner) }}');"
        @elseif (isset($subcategory_id)) style="background-image: url('{{ asset('frontend/images/Banner-2.jpg') }}');"
        @elseif (isset($subsubcategory_id)) style="background-image: url('{{ asset('frontend/images/Banner-3.jpg') }}');"
        @elseif (isset($brand_id)) style="background-image: url('{{ asset('frontend/images/Banner-4.jpg') }}');"
        @else  style="background-image: url('{{ asset('frontend/images/Shop-Banner.jpg') }}');" @endif>
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">

                        @if (isset($category_id))
                        <h2 class="mb-0" style="color: #EE3324;">
                            {{ \App\Models\Category::find($category_id)->name }}
                        </h2>
                        @elseif(isset($subcategory_id))
                        <h2 class="mb-0" style="color: #EE3324;">
                            {{ \App\Models\SubCategory::find($subcategory_id)->name }}
                        </h2>
                        @elseif(isset($subsubcategory_id))
                        <h2 class="mb-0" style="color: #EE3324;">
                            {{ \App\Models\SubSubCategory::find($subsubcategory_id)->name }}
                        </h2>
                        @elseif(isset($brand_id))
                        <h2 class="mb-0" style="color: #ffff;">
                            {{ \App\Models\Brand::find($brand_id)->name }}
                        </h2>
                        @else
                        <h2 class="mb-0" style="color: #ffff;">
                            Shop
                        </h2>
                        @endif




                </div>
            </div>
        </div>
    </section>

    <section class="gry-bg py-4">
        <div style="width: 90%; margin: 0 auto;">
            <div class="row">
                <div class="col-xl-3 d-none d-xl-block">

                    <div class="bg-white sidebar-box mb-3">
                        <div class="box-title text-center">
                            {{ __('Categories') }}
                        </div>
                        <div class="box-content">
                            <div class="category-accordion">
                                @foreach (\App\Models\Category::all() as $key => $category)
                                    <div class="single-category">
                                        <button class="btn w-100 category-name collapsed" type="button"
                                            data-toggle="collapse" data-target="#category-{{ $key }}"
                                            aria-expanded="true">
                                            {{ __($category->name) }}
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
                    <div class="bg-white sidebar-box mb-3">
                        <div class="box-title text-center">
                            {{ __('Price range') }}
                        </div>
                        <div class="box-content">
                            <div class="range-slider-wrapper mt-3">
                                <!-- Range slider container -->
                                <div id="input-slider-range"
                                    data-range-value-min="{{ filter_products(\App\Models\Product::all())->min('unit_price') }}"
                                    data-range-value-max="{{ filter_products(\App\Models\Product::all())->max('unit_price') }}">
                                </div>

                                <!-- Range slider values -->
                                <div class="row">
                                    <div class="col-6">
                                        <span class="range-slider-value value-low"
                                            @if (isset($min_price)) data-range-value-low="{{ $min_price }}"
                                        @elseif($products->min('unit_price') > 0)
                                            data-range-value-low="{{ $products->min('unit_price') }}"
                                        @else
                                            data-range-value-low="0" @endif
                                            id="input-slider-range-value-low">
                                    </div>

                                    <div class="col-6 text-right">
                                        <span class="range-slider-value value-high"
                                            @if (isset($max_price)) data-range-value-high="{{ $max_price }}"
                                        @elseif($products->max('unit_price') > 0)
                                            data-range-value-high="{{ $products->max('unit_price') }}"
                                        @else
                                            data-range-value-high="0" @endif
                                            id="input-slider-range-value-high">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {{-- brands  --}}
                    <div class="bg-white sidebar-box mb-3">
                        <div class="box-title text-center">
                            {{ __('Brands') }}
                        </div>
                        <div class="box-content">
                            <div class="row m-1">
                                @php
                                $brands = [];
                                @endphp
                                @if (isset($subsubcategory_id))
                                    @php
                                        foreach (json_decode(\App\Models\SubSubCategory::find($subsubcategory_id)->brands) as $brand) {
                                            if (!in_array($brand, $brands)) {
                                                array_push($brands, $brand);
                                            }
                                        }
                                    @endphp
                                @elseif(isset($subcategory_id))
                                    @foreach (\App\Models\SubCategory::find($subcategory_id)->subsubcategories as $key => $subsubcategory)
                                        @php
                                            foreach (json_decode($subsubcategory->brands) as $brand) {
                                                if (!in_array($brand, $brands)) {
                                                    array_push($brands, $brand);
                                                }
                                            }
                                        @endphp
                                    @endforeach
                                @elseif(isset($category_id))
                                    @foreach (\App\Models\Category::find($category_id)->subcategories as $key => $subcategory)
                                        @foreach ($subcategory->subsubcategories as $key => $subsubcategory)
                                            @php
                                                foreach (json_decode($subsubcategory->brands) as $brand) {
                                                    if (!in_array($brand, $brands)) {
                                                        array_push($brands, $brand);
                                                    }
                                                }
                                            @endphp
                                        @endforeach
                                    @endforeach
                                @else
                                    @php
                                        foreach (\App\Models\Brand::all() as $key => $brand) {
                                            if (!in_array($brand->id, $brands)) {
                                                array_push($brands, $brand->id);
                                            }
                                        }
                                    @endphp
                                @endif

                                @foreach ($brands as $key => $id)
                                    @if (\App\Models\Brand::find($id) != null)
                                        <div class="col-6 border"><a href="{{ route('products.brand', $id) }}"><img src="{{ asset(\App\Models\Brand::find($id)->logo) }}" alt="" class="img-fluid"></a></div>
                                    @endif
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9">
                    <!-- <div class="bg-white"> -->
                    <div class="brands-bar row no-gutters pb-3 bg-white p-3 d-lg-none">
                        <div class="col-12">
                            <div class="brands-collapse-box" id="brands-collapse-box">
                                <ul class="inline-links">
                                    @php
                                        $brands = [];
                                    @endphp
                                    @if (isset($subsubcategory_id))
                                        @php
                                            foreach (json_decode(\App\Models\SubSubCategory::find($subsubcategory_id)->brands) as $brand) {
                                                if (!in_array($brand, $brands)) {
                                                    array_push($brands, $brand);
                                                }
                                            }
                                        @endphp
                                    @elseif(isset($subcategory_id))
                                        @foreach (\App\Models\SubCategory::find($subcategory_id)->subsubcategories as $key => $subsubcategory)
                                            @php
                                                foreach (json_decode($subsubcategory->brands) as $brand) {
                                                    if (!in_array($brand, $brands)) {
                                                        array_push($brands, $brand);
                                                    }
                                                }
                                            @endphp
                                        @endforeach
                                    @elseif(isset($category_id))
                                        @foreach (\App\Models\Category::find($category_id)->subcategories as $key => $subcategory)
                                            @foreach ($subcategory->subsubcategories as $key => $subsubcategory)
                                                @php
                                                    foreach (json_decode($subsubcategory->brands) as $brand) {
                                                        if (!in_array($brand, $brands)) {
                                                            array_push($brands, $brand);
                                                        }
                                                    }
                                                @endphp
                                            @endforeach
                                        @endforeach
                                    @else
                                        @php
                                            foreach (\App\Models\Brand::all() as $key => $brand) {
                                                if (!in_array($brand->id, $brands)) {
                                                    array_push($brands, $brand->id);
                                                }
                                            }
                                        @endphp
                                    @endif

                                    @foreach ($brands as $key => $id)
                                        @if (\App\Models\Brand::find($id) != null)
                                            <li><a href="{{ route('products.brand', $id) }}"><img
                                                        src="{{ asset(\App\Models\Brand::find($id)->logo) }}"
                                                        alt="" class="img-fluid"></a></li>
                                        @endif
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                        <div class="col-12">
                            <button type="button" name="button" onclick="morebrands(this)" class="more-brands-btn">
                                <i class="fa fa-plus"></i>
                                <span class="d-none d-md-inline-block">{{ __('More') }}</span>
                            </button>
                        </div>
                    </div>
                    <form class="" id="search-form" action="{{ route('search') }}" method="GET">
                                        @isset($category_id)
                                            <input type="hidden" name="category_id" value="{{ $category_id }}">
                                        @endisset
                                        @isset($subcategory_id)
                                            <input type="hidden" name="subcategory_id" value="{{ $subcategory_id }}">
                                        @endisset
                                        @isset($subsubcategory_id)
                                            <input type="hidden" name="subsubcategory_id" value="{{ $subsubcategory_id }}">
                                        @endisset

                                        <div class="sort-by-bar row no-gutters bg-white mb-3 px-3">
                                            <div class="col-lg-6 col-md-5">
                                                <div class="sort-by-box">
                                                    <div class="form-group">
                                                        <label>{{ __('Search') }}</label>
                                                        <div class="search-widget">
                                                            <input class="form-control input-lg" type="text" name="q"
                                                                placeholder="{{ __('Search products') }}"
                                                                @isset($query) value="{{ $query }}" @endisset>
                                                            <button type="submit" class="btn-inner">
                                                                <i class="fa fa-search"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="row no-gutters">
                                                    <div class="col-lg-6">
                                                        <div class="sort-by-box px-1">
                                                            <div class="form-group">
                                                                <label>{{ __('Sort by') }}</label>
                                                                <select class="form-control"
                                                                    data-minimum-results-for-search="Infinity" name="sort_by"
                                                                    onchange="filter()">
                                                                    <option value="1"
                                                                        @isset($sort_by) @if ($sort_by == '1') selected @endif
                                                                    @endisset>{{ __('Newest') }}</option>
                                                                <option value="2"
                                                                    @isset($sort_by) @if ($sort_by == '2') selected @endif
                                                                @endisset>{{ __('Oldest') }}</option>
                                                            <option value="3"
                                                                @isset($sort_by) @if ($sort_by == '3') selected @endif
                                                            @endisset>{{ __('Price low to high') }}</option>
                                                        <option value="4"
                                                            @isset($sort_by) @if ($sort_by == '4') selected @endif
                                                        @endisset>{{ __('Price high to low') }}</option>
                                                </select>
                                            </div>
                                        </div>
                                            </div>
                                            <div class="col-lg-6">
                                            <div class="sort-by-box px-1">
                                            <div class="form-group">
                                                <label>{{ __('Brands') }}</label>
                                                <select class="form-control"
                                                    data-placeholder="{{ __('All Brands') }}" name="brand_id"
                                                    onchange="filter()">
                                                    <option value="">{{ __('All Brands') }}</option>
                                                    @foreach ($brands as $key => $id)
                                                        @if (\App\Models\Brand::find($id) != null)
                                                            <option value="{{ $id }}"
                                                                @isset($brand_id) @if ($brand_id == $id) selected @endif
                                                            @endisset>{{ \App\Models\Brand::find($id)->name }}
                                                        </option>
                                                    @endif
                                                @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" name="min_price" value="">
                            <input type="hidden" name="max_price" value="">
                    </form>
<!-- <hr class=""> -->

<section class="productFeatured py-2">
    <div class="container">
        <div class="row productView">
        @foreach ($products as $key => $product)
        <div class="col-md-3 col-xl-3 col-lg-3 col-sm-6" style="padding: 5px !important">
            <div class="productDesign bg-white">
                <div class="productContainer">
                    <div class="productBadge">
                        @if ($product->todays_deal == 1)
                        <div class="proBadgePer">
                            New
                        </div>
                        @else
                        @endif
                        @if (percentage($product->id) > 0)
                            <div class="proBadge">
                                -{{ percentage($product->id) }}%
                            </div>
                        @endif
                    </div>
                    <a href="{{ route('product', strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $product->slug)))) }}">
                        <img class="img-fluid product-photo" src="{{ asset($product->thumbnail_img) }}" alt="" />
                    </a>

                    <div class="inner">
                        {{-- <a href="single-product.html" class="btn-invisible"><span class="iconify"
                        data-icon="clarity:eye-show-solid"></span> <article class="d-inline">Quick View</article></a> --}}
                        <button class="btn-invisible" onclick="showAddToCartModal({{ $product->id }})">
                            <span class="iconify"
                            data-icon="clarity:eye-show-solid"></span> <article class="d-inline">Quick View</article>
                        </button>
                        {{-- <button class="btn-invisible" onclick="addToWishList({$product->id}})">
                            <span class="iconify" data-icon="clarity:shopping-cart-line"></span> <article class="d-inline">Add To Wishlist</article>
                        </button> --}}
                        <a href="{{ route('product', strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $product->slug)))) }}">
                            <button class="btn-invisible">
                                <span class="iconify"
                                data-icon="ei:cart"></span> <article class="d-inline">Details View</article>
                            </button>
                        </a>



                        {{-- <button class="paction add-wishlis btn-invisiblet" title="Add to Wishlist" onclick="addToWishList({{ $product->id }})">
                            <span class="iconify"
                        data-icon="clarity:eye-show-solid"></span> <article class="d-inline">Quick View</article>
                        </button>
                        <button class="paction add-wishlist" title="Add to Wishlist" title="Add to Wishlist" onclick="addToWishList({$product->id}})">
                            <span class="iconify" data-icon="clarity:shopping-cart-line"></span>
                        </button> --}}

                    </div>
                </div>

                <div class="product-info">
                    <h6 class="product-title">
                        <a class="" href="{{ route('product', strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $product->slug)))) }}">{{ __($product->name) }}
                        </a>
                    </h6>
                    <span class="price" style="margin-top: -30px;">
                        @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                            {{-- <span class="old-product-price strong-300"></span> --}}
                            <del class="pl-3">{{ home_base_price($product->id) }}</del>
                        @endif

                        <ins class="pl-3">{{ home_discounted_base_price($product->id) }}</ins>
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
        </div>
        @endforeach

        </div>
        <hr>
        <div class="container">
            <div class="row">

               {{-- Pagination --}}
        <div class="d-flex" style="margin: 0 auto;">
                    {{-- {{ $products->links() }} --}}
                    {!! $products->links() !!}
                </div>

                </div>
        </div>
    </div>
</section>

<!-- </div> -->
</div>
</div>
</div>
</section>

@if (isset($category_id))
<?php
$category = \App\Models\Category::find($category_id);
?>
@if (isset($category->description))
<section class="gry-bg py-4">
<div class="container">
<div class="products-box-bar p-3 bg-white">
    <p>
        {!! $category->description !!}
    </p>
</div>
</div>
</section>
@endif
@endif

@if (isset($subcategory_id))
<?php
$category = \App\Models\SubCategory::find($subcategory_id);

?>
@if (isset($category->description))
<section class="gry-bg py-4">
<div class="container">
<div class="products-box-bar p-3 bg-white">
    <p>
        {!! $category->description !!}
    </p>
</div>
</div>
</section>
@endif
@endif

@if (isset($subsubcategory_id))
<?php
$category = \App\Models\SubSubCategory::find($subsubcategory_id);
?>
@if (isset($category->description))
<section class="gry-bg py-4">
<div class="container">
<div class="products-box-bar p-3 bg-white">
    <p>
        {!! $category->description !!}
    </p>
</div>
</div>
</section>
@endif
@endif

@endsection

@section('script')
<script type="text/javascript">
    function filter() {
        $('#search-form').submit();
    }

    function rangefilter(arg) {
        $('input[name=min_price]').val(arg[0]);
        $('input[name=max_price]').val(arg[1]);
        filter();
    }
</script>
@endsection
