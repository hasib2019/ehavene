@extends('frontend.layouts.app')
@section('title')
    Cart
@stop
@section('content')

    <section class="slice-xs sct-color-2 border-bottom">
        <div class="container container-sm">
            <div class="row cols-delimited">
                <div class="col-4">
                    <div class="icon-block icon-block--style-1-v5 text-center active">
                        <div class="block-icon mb-0">
                            <i class="icon-hotel-restaurant-105"></i>
                        </div>
                        <div class="block-content d-none d-md-block">
                            <h3 class="heading heading-sm strong-300 c-gray-light text-capitalize">1. {{__('My Cart')}}</h3>
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="icon-block icon-block--style-1-v5 text-center">
                        <div class="block-icon mb-0">
                            <i class="icon-finance-067"></i>
                        </div>
                        <div class="block-content d-none d-md-block">
                            <h3 class="heading heading-sm strong-300 c-gray-light text-capitalize">2. {{__('Shipping info')}}</h3>
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="icon-block icon-block--style-1-v5 text-center">
                        <div class="block-icon c-gray-light mb-0">
                            <i class="icon-finance-059"></i>
                        </div>
                        <div class="block-content d-none d-md-block">
                            <h3 class="heading heading-sm strong-300 c-gray-light text-capitalize">3. {{__('Payment')}}</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="py-4 gry-bg" id="cart-summary">
        <div class="container">
            @if(Session::has('cart'))
                <div class="row cols-xs-space cols-sm-space cols-md-space">
                <div class="col-xl-8">
                    <!-- <form class="form-default bg-white p-4" data-toggle="validator" role="form"> -->
                    <div class="form-default bg-white p-4">
                        <div class="">
                            <div class="">
                                <table class="table-cart border-bottom">
                                    <thead>
                                        <tr>
                                            <th class="product-image"></th>
                                            <th class="product-name">{{__('Product')}}</th>
                                            <th class="product-price d-none d-lg-table-cell">{{__('Price')}}</th>
                                            <th class="product-quanity d-none d-md-table-cell">{{__('Quantity')}}</th>
                                            <th class="product-total">{{__('Total')}}</th>
                                            <th class="product-remove"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php
                                        $total = 0;
                                        @endphp
                                        @foreach (Session::get('cart') as $key => $cartItem)
                                            @php
                                            $product = \App\Models\Product::find($cartItem['id']);
                                            $total = $total + $cartItem['price']*$cartItem['quantity'];
                                            $product_name_with_choice = $product->name;
                                            if(isset($cartItem['color'])){
                                                $product_name_with_choice .= ' - '.\App\Models\Color::where('code', $cartItem['color'])->first()->name;
                                            }
                                            foreach (json_decode($product->choice_options) as $choice){
                                                $str = $choice->name; // example $str =  choice_0
                                                $product_name_with_choice .= ' - '.$cartItem[$str];
                                            }
                                            @endphp
                                            <tr class="cart-item">
                                                <td class="product-image">
                                                    <a href="#" class="mr-3">
                                                        <img src="{{ asset($product->thumbnail_img) }}">
                                                    </a>
                                                </td>

                                                <td class="product-name">
                                                    <span class="pr-4 d-block">{{ $product_name_with_choice }}</span>
                                                </td>

                                                <td class="product-price d-none d-lg-table-cell">
                                                    <span class="pr-3 d-block">{{ single_price($cartItem['price']) }}</span>
                                                </td>

                                                <td class="product-quantity d-none d-md-table-cell">
                                                    <div class="input-group input-group--style-2 pr-4" style="width: 150px;">
                                                        <span class="input-group-btn">
                                                            <button class="btn btn-number" type="button" data-type="minus" data-field="quantity[{{ $key }}]">
                                                                <i class="la la-minus"></i>
                                                            </button>
                                                        </span>
                                                        <input type="text" name="quantity[{{ $key }}]" class="form-control input-number" placeholder="1" value="{{ $cartItem['quantity'] }}" min="1" max="100" onchange="updateQuantity({{ $key }}, this)">
                                                        <span class="input-group-btn">
                                                            <button class="btn btn-number" type="button" data-type="plus" data-field="quantity[{{ $key }}]">
                                                                <i class="la la-plus"></i>
                                                            </button>
                                                        </span>
                                                    </div>
                                                </td>
                                                <td class="product-total">
                                                    <span>{{ single_price($cartItem['price']*$cartItem['quantity']) }}</span>
                                                </td>
                                                <td class="product-remove">
                                                    <a href="#" onclick="removeFromCartView(event, {{ $key }})" class="text-right pl-4">
                                                        <i class="la la-trash"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        {{-- prescription upload start --}}
                        <div class="row align-items-center pt-4">
                            <div class="form-item">
                                <div class="preview2"></div>
                            </div>
                        </div>
                        {{-- prescription upload end --}}


                        <div class="row align-items-center pt-4">
                            <div class="col-6">
                                <a href="{{ route('home') }}" class="link link--style-3">
                                    <i class="la la-mail-reply"></i>
                                    {{__('Return to home')}}
                                </a>
                            </div>
                            <div class="col-6 text-right">
                                @if(Auth::check())
                                    <a href="{{ route('checkout.shipping_info') }}" class="btn btn-styled btn-base-1">{{__('Continue to Shipping')}}</a>
                                @else
                                    {{-- <button class="btn btn-styled btn-base-1" onclick="showCheckoutModal()">{{__('Continue to Shipping')}}</button> --}}
                                    <a href="{{ route('cart.login') }}" class="btn btn-styled btn-base-1">{{__('Continue to Shipping')}}</a>
                                @endif
                            </div>
                        </div>
                    </div>
                    <!-- </form> -->

                </div>

                <div class="col-xl-4 ml-lg-auto">
                    @include('frontend.partials.cart_summary')
                </div>
            </div>
            @else
                <div class="dc-header">
                    <h3 class="heading heading-6 strong-700">{{__('Your Cart is empty')}}</h3>
                </div>
            @endif
        </div>
    </section>
@endsection

@section('script')
    <script type="text/javascript">
    function removeFromCartView(e, key){
        e.preventDefault();
        removeFromCart(key);
    }

    function updateQuantity(key, element){
        $.post('{{ route('cart.updateQuantity') }}', { _token:'{{ csrf_token() }}', key:key, quantity: element.value}, function(data){
            updateNavCart();
            $('#cart-summary').html(data);
        });
    }

    function showCheckoutModal(){
        $('#GuestCheckout').modal();
    }
    </script>


    <script>

    $(document).ready(function(){

        var storedFiles2 = [];
            // upload prescription file view
            $(document).on('change','#image',function(){
                    len_files = $("#image").prop("files").length;
                    var construc = "<div class='row'>";
                    for (var i = 0; i < len_files; i++) {
                        var file_data2 = $("#image").prop("files")[i];
                        storedFiles2.push(file_data2);
                        construc += '<div class="col-3 singleImage my-3"><span data-file="'+file_data2.name+'" class="btn ' +
                            'btn-sm btn-danger imageremove2">&times;</span><img width="120px" height="auto" src="' +  window.URL.createObjectURL(file_data2) + '" alt="'  +  file_data2.name  + '" /></div>';
                    }
                    construc += "</div>";
                    $('.preview2').append(construc);
                });

                $(".preview2").on('click','span.imageremove2',function(){
                    var trash = $(this).data("file");
                    for(var i=0;i<storedFiles2.length;i++) {
                        if(storedFiles2[i].name === trash) {
                            storedFiles2.splice(i,1);
                            break;
                        }
                    }
                    $(this).parent().remove();
                });

                // upload prescription file view end
    });
    </script>
    <script>
        function shipping_cost() {
          $shippingcost = document.getElementById("shipping").value;
        //   document.getElementById("shippingcost").innerHTML = $shippingcost;
          document.getElementById("shippingcost").innerHTML = "৳"+$shippingcost+".00";
        }
        </script>
@endsection
