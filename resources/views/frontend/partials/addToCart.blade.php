<div class="modal-body p-4">
    <div class="row no-gutters cols-xs-space cols-sm-space cols-md-space">
        <div class="col-lg-6">
            <div class="product-gal d-flex flex-row-reverse">
                <div class="product-gal-img">
                    <img class="xzoom img-fluid" src="{{ asset(json_decode($product->photos)[0]) }}" xoriginal="{{ asset(json_decode($product->photos)[0]) }}" />
                </div>
                <div class="product-gal-thumb">
                    <div class="xzoom-thumbs">
                        @foreach (json_decode($product->photos) as $key => $photo)
                            <a href="{{ asset($photo) }}">
                                <img class="xzoom-gallery" width="80" src="{{ asset($photo) }}"  @if($key == 0) xpreview="{{ asset($photo) }}" @endif>
                            </a>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-6">
            <!-- Product description -->
            <div class="product-description-wrapper">
                <!-- Product title -->
                <h2 class="product-title">
                    {{ __($product->name) }}
                </h2>

                <div class="row no-gutters mt-4">
                    <div class="col-4">
                        <div class="product-description-label">{{__('Price')}}:</div>
                    </div>
                    <div class="col-8">
                        <div class="product-price-old">
                            <del>
                                {{ home_price($product->id) }}
                                 @if(!@empty($product->unit))
                                    <span>/{{ $product->unit }}</span>
                                    @endif
                            </del>
                        </div>
                    </div>
                </div>
                <div class="row no-gutters mt-3">
                    <div class="col-4">
                        <div class="product-description-label">{{__('Discount Price')}}:</div>
                    </div>
                    <div class="col-8">
                        <div class="product-price">
                            <strong>
                                {{ home_discounted_price($product->id) }}
                            </strong>
                             @if(!@empty($product->unit))
                                    <span class="piece">/{{ $product->unit }}</span>
                                    @endif
                           
                        </div>
                    </div>
                </div>

                <hr>

                <form id="option-choice-form">
                    @csrf
                    <input type="hidden" name="id" value="{{ $product->id }}">              

                      @if (count(json_decode($product->colors)) > 0)
                            <small class="font-weight-bold text-uppercase text-dark"> Color:
                                <span id="colorName" class="text-capitalize"></span>
                            </small>
                            <div class="variationSec my-2">
                                <!-- color 1 -->
                                @foreach (json_decode($product->colors) as $key => $color)
                                    <input type="radio" class="variation"
                                        id="{{ $product->id }}-color-{{ $key }}" name="color"
                                        value="{{ $color }}">
                                    <label for="{{ $product->id }}-color-{{ $key }}" title="grey"
                                        style="background: {{ $color }};">
                                        <div class="setColor" style="background: {{ $color }};"
                                            onclick="catchColor(event);"></div>
                                    </label>
                                @endforeach

                            </div>
                        @endif

                        @foreach (json_decode($product->choice_options) as $key => $choice)
                            <small class="font-weight-bold text-uppercase text-dark">
                                {{ $choice->title }}:
                                {{-- <span id="sizeName" class="text-capitalize"></span> --}}
                            </small>
                            <br>
                            <div class="variationSize my-2">
                                <!-- color 1 -->
                                @foreach ($choice->options as $key => $option)
                                    <input type="radio" class="variation"
                                        id="{{ $choice->name }}-{{ $option }}" name="{{ $choice->name }}"
                                        value="{{ $option }}">
                                    <label for="{{ $choice->name }}-{{ $option }}" title="small">
                                        <div class="setValue" onclick="catchSize(event);">{{ $option }}</div>
                                    </label>
                                @endforeach
                                <br>
                            </div>
                        @endforeach
                        @php
                        echo $product->short_description
                        @endphp
                       
                    <hr>
                    

                    <!-- Quantity + Add to cart -->
                    <div class="row no-gutters">
                        <div class="col-4">
                            <div class="product-description-label mt-2">{{__('Quantity')}}:</div>
                        </div>
                        <div class="col-8">
                            <div class="product-quantity d-flex align-items-center">
                                <div class="input-group input-group--style-2 pr-3" style="width: 160px;">
                                    <span class="input-group-btn">
                                        <button class="btn btn-number" type="button" data-type="minus" data-field="quantity" disabled="disabled">
                                            <i class="la la-minus"></i>
                                        </button>
                                    </span>
                                    <input type="text" name="quantity" class="form-control input-number text-center" placeholder="1" value="1" min="1" max="100">
                                    <span class="input-group-btn">
                                        <button class="btn btn-number" type="button" data-type="plus" data-field="quantity">
                                            <i class="la la-plus"></i>
                                        </button>
                                    </span>
                                </div>
                                {{-- <div class="avialable-amount">(1298 pc available)</div> --}}
                            </div>
                        </div>
                    </div>

                    <hr>

                    <div class="row no-gutters pb-3 d-none" id="chosen_price_div">
                        <div class="col-2">
                            <div class="product-description-label">{{__('Total Price')}}:</div>
                        </div>
                        <div class="col-10">
                            <div class="product-price">
                                <strong id="chosen_price">

                                </strong>
                            </div>
                        </div>
                    </div>

                </form>

                <div class="d-table mt-3">
                    <div class="d-table-cell">
                        <!-- Add to cart button -->
                        <button type="button" class="addCartBtn btn-lg mb-2" onclick="addToCart()">
                            <i class="icon ion-bag"></i> {{__('Add to cart')}}
                        </button>
                         <!-- Add to cart button -->
                         {{-- <button type="button" class="btn btn-base-2 btn-sm  btn-icon-left" onclick="addToCart()">
                            <i class="icon ion-bag"></i> {{__('Add to cart')}}
                        </button>

                         <button type="button" class="btn btn-base-3 btn-sm  btn-icon-left" onclick="addToCart()">
                            <i class="icon ion-bag"></i> {{__('Add to cart')}}
                        </button> --}}
                    
                            <!-- Add to wishlist button -->
                      <button type="button" class="btn btn-outline btn-sm btn-base-1 btn-icon-left" onclick="addToWishList({{ $product->id }})">
                        <i class="la la-heart-o"></i>
                        <span class="d-md-inline-block"> {{__('Add to wishlist')}}</span>
                    </button>
                     <!-- Add to compare button -->
                     <button type="button" class="btn btn-outline btn-base-1 btn-sm n-icon-left" onclick="addToCompare({{ $product->id }})">
                        <i class="la la-refresh"></i>
                        <span class="d-md-inline-block"> {{__('Add to compare')}}</span>
                    </button>
                   
                    </div>
                    
                </div>
                

            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    cartQuantityInitialize();
    $('#option-choice-form input').on('change', function(){
        getVariantPrice();
    });
</script>
