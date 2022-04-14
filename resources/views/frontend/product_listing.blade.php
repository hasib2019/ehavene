@extends('frontend.layouts.app')
@section('title')
    @if(isset($category_id))
       {{ \App\Models\Category::find($category_id)->name }} | Product Listing
    @endif
    @if(isset($subcategory_id))
        {{ \App\Models\SubCategory::find($subcategory_id)->name }} | Product Listing
    @endif
    @if(isset($subsubcategory_id))
        {{ \App\Models\SubSubCategory::find($subsubcategory_id)->name }} | Product Listing
    @endif

@stop
@section('content')
    @php
    $brands = array();
    @endphp
    @if(isset($subsubcategory_id))
    @php
        foreach (json_decode(\App\Models\SubSubCategory::find($subsubcategory_id)->brands) as $brand) {
            if(!in_array($brand, $brands)){
                array_push($brands, $brand);
            }
        }
    @endphp
    @elseif(isset($subcategory_id))
    @foreach (\App\Models\SubCategory::find($subcategory_id)->subsubcategories as $key => $subsubcategory)
        @php
            foreach (json_decode($subsubcategory->brands) as $brand) {
                if(!in_array($brand, $brands)){
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
                    if(!in_array($brand, $brands)){
                        array_push($brands, $brand);
                    }
                }
            @endphp
        @endforeach
    @endforeach
    @else
    @php
        foreach (\App\Models\Brand::all() as $key => $brand){
            if(!in_array($brand->id, $brands)){
                array_push($brands, $brand->id);
            }
        }
    @endphp
    @endif
{{-- <section class="shopCategories border-top py-2">
    <div class="container d-flex justify-content-center align-items-center">
        <div class="cat">
            <a href="#" class="mobileViewCategory">Categories<i class="facl facl-angle-down"></i></a>
            <ul class="mainCategories">
                <li class=""><a class="" href="">Accessories</a></li>
                <li class=""><a class="" href="">Bottom</a></li>
                <li class=""><a class="" href="">Denim</a></li>
                <li class=""><a class="" href="">Dress</a></li>
                <li class=""><a class="" href="">Jackets</a></li>
                <li class=""><a class="" href="">Jewellery</a></li>
                <li class=""><a class="" href="">Men</a></li>
                <li class=""><a class="" href="">Shoes</a></li>
                <li class=""><a class="" href="">T-Shirt</a></li>
                <li class=""><a class="" href="">Tops</a></li>
                <li class=""><a class="" href="">Women</a></li>
            </ul>
        </div>
    </div>
</section> --}}



<section class="py-5" @if(isset($category_id))
style="background-image: url('{{ asset(\App\Models\Category::find($category_id)->banner)}}');" @else
style="background-color:#EE3324;"
@endif >
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2 class="mb-0" style="color: #ffffff; background-color: #999999; opacity: 90%;">
                    @if(isset($category_id))
                    {{ \App\Models\Category::find($category_id)->name }} | Product Listing
                 @elseif(isset($subcategory_id))
                     {{ \App\Models\SubCategory::find($subcategory_id)->name }} | Product Listing
                 @elseif(isset($subsubcategory_id))
                     {{ \App\Models\SubSubCategory::find($subsubcategory_id)->name }} | Product Listing
                     @else
                     Product Listing
                 @endif
                </h2>
              
            </div>
        </div>
    </div>
</section>

<section>
    <div class="container">
         <form class="" id="search-form" action="{{ route('search') }}" method="GET">
        <div class="row pt-3">
           
                @isset($category_id)
                    <input type="hidden" name="category_id" value="{{ $category_id }}">
                @endisset
                @isset($subcategory_id)
                    <input type="hidden" name="subcategory_id" value="{{ $subcategory_id }}">
                @endisset
                @isset($subsubcategory_id)
                    <input type="hidden" name="subsubcategory_id" value="{{ $subsubcategory_id }}">
                @endisset

                    <div class="col-md-5 col-sm-12 pb-2">
                        <div class="search-widget">
                            <input class="form-control input-lg" type="text" name="q" placeholder="{{__('Search products')}}" @isset($query) value="{{ $query }}" @endisset>
                            <button type="submit" class="btn-inner" style="margin-top: -8px;">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>
                    </div>

                    <div class="col-xs-6 pl-3 pr-4">
                        <select name="" id="" class="form-control sorting sortSelect" data-minimum-results-for-search="Infinity" name="sort_by" onchange="filter()">
                            <option value="">--Select Feature--</option>
                            <option value="1" @isset($sort_by) @if ($sort_by == '1') selected @endif @endisset>{{__('Newest')}}</option>
                            <option value="2" @isset($sort_by) @if ($sort_by == '2') selected @endif @endisset>{{__('Oldest')}}</option>
                            <option value="3" @isset($sort_by) @if ($sort_by == '3') selected @endif @endisset>{{__('Price low to high')}}</option>
                            <option value="4" @isset($sort_by) @if ($sort_by == '4') selected @endif @endisset>{{__('Price high to low')}}</option>

                        </select>
                    </div>

                    <div class="col-xs-6">
                        <select name="" id="" class="form-control sorting sortSelect" data-placeholder="{{__('All Brands')}}" name="brand_id" onchange="filter()">
                            <option value="">{{__('All Brands')}}</option>
                            @foreach ($brands as $key => $id)
                                @if (\App\Models\Brand::find($id) != null)
                                    <option value="{{ $id }}" @isset($brand_id) @if ($brand_id == $id) selected @endif @endisset>{{ \App\Models\Brand::find($id)->name }}</option>
                                @endif
                            @endforeach

                        </select>
                    </div>


                <input type="hidden" name="min_price" value="">
                <input type="hidden" name="max_price" value="">
            </form>
        </div>
    </div>
</section>

<section class="productFeatured py-2">
    <div class="container">
        <div class="row productView">
        @foreach ($products as $key => $product)

            <div class="productDesign">
                <div class="productContainer">
                    @if (strtotime($product->created_at) > strtotime('-10 day'))
                    <div class="proBadge">
                            {{__('New')}}
                    </div>
                    @endif
                    <a href="{{ route('product', $product->slug) }}">
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
                        <a href="{{ route('product', $product->slug) }}">
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
                        <a class="" href="{{ route('product', $product->slug) }}">{{ __($product->name) }}
                        </a>
                    </h6>
                    <span class="price" style="margin-top: -30px;">
                        @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                            {{-- <span class="old-product-price strong-300"></span> --}}
                            <del>{{ home_base_price($product->id) }}</del>
                        @endif

                        <ins class="pl-2">{{ home_discounted_base_price($product->id) }}</ins>
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
        <hr>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-xs-4">
                    
                </div>
                <div class="col-md-4 col-xs-4">
                    {{ $products->links() }}
                </div>
                <div class="col-md-4 col-xs-4">
                    
                </div>
                </div>
        </div>
    </div>
</section>
<section class="py-4 border-top">
     <div class="container">
  <p class="mb-0">
                    @if(isset($category_id))
                    {!! \App\Models\Category::find($category_id)->description !!}
                 @elseif(isset($subcategory_id))
                     {!! \App\Models\SubCategory::find($subcategory_id)->description !!}
                 @elseif(isset($subsubcategory_id))
                     {!! \App\Models\SubSubCategory::find($subsubcategory_id)->description !!}
                     @else
                     Category Products Hare
                 @endif
                </p>
                </div>
 </section> 

 {{-- <section class="py-4 border-top">
     <div class="container">
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
              <li class="page-item disabled">
                <a class="page-link border-0 text-dark" href="#" tabindex="-1">Previous</a>
              </li>
              <li class="page-item"><a class="page-link border-0 text-dark" href="#">1</a></li>
              <li class="page-item"><a class="page-link border-0 text-dark" href="#">2</a></li>
              <li class="page-item"><a class="page-link border-0 text-dark" href="#">3</a></li>
              <li class="page-item">
                <a class="page-link border-0 text-dark" href="#">Next</a>
              </li>
            </ul>
          </nav>
     </div>
 </section> --}}

@endsection

@section('script')
    <script type="text/javascript">
        function filter(){
            $('#search-form').submit();
        }
        function rangefilter(arg){
            $('input[name=min_price]').val(arg[0]);
            $('input[name=max_price]').val(arg[1]);
            filter();
        }
    </script>
@endsection
