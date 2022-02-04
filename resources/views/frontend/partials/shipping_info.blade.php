@extends('frontend.layouts.app')
@section('title')
    Checkout
@stop
@section('content')
    <div id="page-content">
        <section class="slice-xs sct-color-2 border-bottom">
            <div class="container container-sm">
                <div class="row cols-delimited">
                    <div class="col-4">
                        <div class="icon-block icon-block--style-1-v5 text-center">
                            <div class="block-icon mb-0">
                                <i class="icon-hotel-restaurant-105"></i>
                            </div>
                            <div class="block-content d-none d-md-block">
                                <h3 class="heading heading-sm strong-300 c-gray-light text-capitalize">1. {{__('My Cart')}}</h3>
                            </div>
                        </div>
                    </div>

                    <div class="col-4">
                        <div class="icon-block icon-block--style-1-v5 text-center active">
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

        <section class="py-4 gry-bg">
            <div class="container">
                <div class="row cols-xs-space cols-sm-space cols-md-space">
                    <div class="col-lg-8">
                        @if(Auth::check())
                        @if(Auth::user()->shipping_address) 
                            <form class="form-default" data-toggle="validator" role="form" id="shipping_form" enctype="multipart/form-data">
                                @csrf
                                <div class="card">
                                    @php
                                    $user = \App\Models\ShippingAddess::where('id', Auth::user()->shipping_address)->first();
                                    @endphp
                                    <div class="col-md-12">
                                        <div class="m-1">
                                            <a class="float-right btn btn-sm btn-success" href="{{route('change.shipping.address')}}"><i class="fa fa-exchange"></i>  Change shipping address</a>
                                        </div><div class="m-1">
                                           <a class="float-right btn btn-sm btn-primary mr-2" href="{{route('add.new.shipping')}}"><i class="fa fa-plus"></i>  Add New Shipping address</a>
                                        </div>
                                    </div>
                                    <div class="card-body">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">{{__('Name')}}</label>
                                                    <input type="text" class="form-control" id="name" name="name" value="{{ $user->name }}" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">{{__('Email')}}</label>
                                                    <input type="email" class="form-control" name="email" id="email" value="{{ $user->email }}" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">{{__('Phone')}}</label>
                                                    <input type="text" class="form-control" name="phone" id="phone" value="{{ $user->phone }}" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">{{__('Address')}}</label>
                                         <textarea class="form-control textarea-autogrow mb-3" id="address" placeholder="Your Address" rows="4" name="address" readonly>{{ $user->address }}</textarea>
                                                </div>
                                            </div>
                                        </div>
                                       {{-- @php
                                            $region = \App\Models\Division::where('id', '=', $user->region)->first()->name;
                                            $city = \App\Models\District::where('id', '=', $user->city)->first()->name;
                                            $area = \App\Models\Upazila::where('id', '=', $user->area)->first()->name;
                                        @endphp--}}
                                     {{--     <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group has-feedback">
                                                    <label class="control-label">{{__('Region')}}</label>
                                                    <input type="text" class="form-control" value="{{$region}}" name="region" id="region" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group has-feedback">
                                                    <label class="control-label">{{__('City')}}</label>
                                                    <input type="text" class="form-control" id="city" value="{{ $city }}" name="city" readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group has-feedback">
                                                    <label class="control-label">{{__('Area')}}</label>
                                                    <input type="text" class="form-control" id="area" value="{{ $area }}" name="area" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group has-feedback">
                                                    <label class="control-label">{{__('Post Code')}}</label>
                                                    <input type="text" class="form-control" id="post_code" value="{{ $user->post_code }}" name="post_code" readonly>
                                                </div>
                                            </div>--}}
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="ermsg">

                                                </div>
                                            </div>
                                        </div>
                                        {{-- prescription  --}}
                                        {{-- <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">{{__('Upload Your Prescription')}}</label> <br>
                                                    <label for="photos"><img style="cursor:pointer" src="{{ asset('images/icon/image-upload24x24.png') }}" alt="" title="Upload Prescription">
                                                    </label>
                                                    <input id="photos" multiple="" max="5" accept="image/gif, image/jpeg, image/jpg, image/png" name="photos[]" type="file">
                                                </div>
                                            </div>
                                        </div> --}}
                                        {{-- @php
                                        $pres = 0;
                                        @endphp
                                        @foreach (Session::get('cart') as $key => $cartItem) --}}
                                        {{-- {{$cartItem['prescribed']}} --}}
                                        {{-- @if($cartItem['prescribed']=='1')
                                        @php
                                            $pres = 1;
                                        @endphp
                                        @endif

                                        @endforeach
                                        <input type="hidden" class="form-control" id="prescribed" value="{{ $pres }}" name="prescribed"> --}}
                                        {{-- <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input type="checkbox" value="1" name="psubmit" id="psubmit">
                                                    <label class="control-label">{{__('Yes, I Have already submited prescription')}}</label>
                                                </div>
                                            </div>
                                        </div> --}}

                                        <input type="hidden" class="form-control" value="{{ $user->shipping_cost }}" name="shipping" id="shippingcost" readonly>
                                        <input type="hidden" name="checkout_type" value="logged">
  <div class="row">
                                    <div class="col-6">
                                        <a href="{{ route('products') }}" class="link link--style-3">
                                            <i class="la la-mail-reply"></i>
                                            {{__('Return to home')}}
                                        </a>
                                    </div>
                                    <div class="col-6 text-right">
                                        @if(Auth::check())
                                        @if(Auth::user()->shipping_address)
                                            <button type="button" class="btn btn-styled btn-base-1" onclick="getPaymentInfo()" >{{__('Continue to Payment')}}</button>

                                        @endif
                                        @else
                                        <button type="button" class="btn btn-styled btn-base-1"  >{{__('Continue to Payment')}}</button>
                                        @endif
                                    </div>
                                </div>
                                    </div>
                                      
                                
                            
                            </form>
                        @else
                        <?php
                            $region = \App\Models\Division::all();
                            $districts = \App\Models\District::all();
                            $upazilas = \App\Models\Upazila::all();
                            ?>
                            <div class="card-body">
                                <form class="" action="{{ route('customer.shipping.address') }}" method="POST">
                                    @csrf
                                    <div class="form-box bg-white mt-4">
                                        <div class="form-box-title px-3 py-2">
                                            {{__('Shipping info')}}
                                        </div>
                                        <div class="form-box-content p-3">

                                            <div class="row">
                                                <div class="col-md-2">
                                                    <label>{{__('Full Name')}}</label>
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control mb-3" placeholder="Your Name" name="name" required>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-2">
                                                    <label>{{__('Email')}}</label>
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="email" class="form-control mb-3" placeholder="Your Email Address" name="email" required>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-2">
                                                    <label>{{__('Phone Number')}}</label>
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control mb-3" placeholder="Your Phone Number" name="phone" required>
                                                </div>
                                            </div>
                                             <div class="row">
                                                <div class="col-md-2">
                                                    <label>{{__('Shipping Cost')}}</label>
                                                </div>
                                                <div class="col-md-10">
                                                    <select class="form-control mb-3" data-placeholder="Select shipping Cost " id="shipping" name="shipping_cost" required>
                                                        <option value="">Select Shipping cost</option>
                                                <option value="50">Inside Dhaka</option>
                                                <option value="100">Outside Dhaka</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-2">
                                                    <label>{{__('Address')}}</label>
                                                </div>
                                                <div class="col-md-10">
                                                    <textarea class="form-control textarea-autogrow mb-3" placeholder="Your Address" rows="4" name="address" required></textarea>
                                                </div>
                                            </div>

                                           {{-- <div class="row">
                                                <div class="col-md-2">
                                                    <label>{{__('Region')}}</label>
                                                </div>
                                                <div class="col-md-10">
                                                    <select class="form-control mb-3" data-placeholder="Select your region" id="division" name="region" required>
                                                        <option value="">---select Region---</option>
                                                        @foreach ($region as $division)
                                                            <option value="{{ $division->id }}" >{{ $division->name }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-2">
                                                    <label>{{__('City')}}</label>
                                                </div>
                                                <div class="col-md-10">
                                                    <select class="form-control mb-3" data-placeholder="Select your City" id="district" name="city" required>
                                                        <option>---Select City---</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-2">
                                                    <label>{{__('Area')}}</label>
                                                </div>
                                                <div class="col-md-10">
                                                    <select class="form-control mb-3" data-placeholder="Select your Area" id="upazila" name="area" required>
                                                        <option>---Select Area---</option>
                                                    </select>
                                                </div>
                                            </div>--}}

                                           

                                            {{--<div class="row">
                                                <div class="col-md-2">
                                                    <label>{{__('Post Code')}}</label>
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control mb-3" placeholder="Post Code" name="post_code" required>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-2">
                                                    <label>{{__('Label')}}</label>
                                                </div>
                                                <div class="col-md-10">
                                                    <select class="form-control mb-3" data-placeholder="Select your region" name="label" required>
                                                            <option value="Office" >Office</option>
                                                            <option value="Home" >Home</option>
                                                    </select>
                                                </div>
                                            </div>--}}

                                        </div>
                                    </div>
                                    <input type="text" name="checkout" value="checkout" hidden readonly>
                                    <div class="text-right mt-4">
                                        <button type="submit" class="btn btn-styled btn-base-1" id="save">{{__('Add Address')}}</button>
                                    </div>
                                </form>
                            </div>

                        @endif
                        @else 
                            @if($gust==1)
                            <form class="form-default" data-toggle="validator" role="form" id="shipping_form">
                                @csrf
                                <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="control-label">{{__('Name')}}</label>
                                            <input type="text" class="form-control" name="name" placeholder="{{__('Name')}}" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="control-label">{{__('Email')}}</label>
                                            <input type="text" class="form-control" name="email" placeholder="{{__('Email')}}" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                     <div class="col-md-6">
                                        <div class="form-group has-feedback">
                                            <label class="control-label">{{__('Phone')}}</label>
                                            <input type="text" class="form-control" placeholder="{{__('Phone')}}" name="phone" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">{{__('Shipping Method')}}</label>
                                            <select class="form-control custome-control" data-live-search="true" name="shipping" required>
                                                <option value="">Select Shipping cost</option>
                                                <option value="50">Inside Dhaka</option>
                                                <option value="100">Outside Dhaka</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="control-label">{{__('Address')}}</label>
                                              <textarea class="form-control textarea-autogrow mb-3" placeholder="Your Full Address" rows="4" name="address" required></textarea>
                                        </div>
                                    </div>
                                </div>

                            {{--    <div class="row">
                                    <div class="col-md-6" hidden>
                                        <div class="form-group">
                                            <label class="control-label">{{__('Select your country')}}</label>
                                            <select class="form-control custome-control" data-live-search="true" name="country">
                                                @foreach (\App\Models\Country::all() as $key => $country)
                                                    <option value="{{ $country->name }}" <?php if($country->code == 'BD') echo "selected"; ?>>{{ $country->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group has-feedback">
                                            <label class="control-label">{{__('City')}}</label>
                                            <input type="text" class="form-control" placeholder="{{__('City')}}" name="city" required>
                                        </div>
                                    </div>--}}
                                    {{--<div class="col-md-6">
                                        <div class="form-group has-feedback">
                                            <label class="control-label">{{__('Postal code')}}</label>
                                            <input type="text" class="form-control" placeholder="{{__('Postal code')}}" name="postal_code" required>
                                        </div>
                                    </div>--}}
                                </div>


                                   


                                <input type="hidden" name="checkout_type" value="guest">
                            <div class="row align-items-center pt-4 shophide">
                                <div class="col-6">
                                    <a href="{{ route('products') }}" class="link link--style-3">
                                        <i class="ion-android-arrow-back"></i>
                                        {{__('Return to shop')}}
                                    </a>
                                </div>
                                <div class="col-6 text-right">
                                    <button type="button" class="btn btn-styled btn-base-1" onclick="getPaymentInfo()">{{__('Continue to Payment')}}</button>
                                </div>
                            </div>
                        </div>
                        </form>
                            @endif
                        @endif
                    </div>

                <div class="col-lg-4 ml-lg-auto">
                    @include('frontend.partials.cart_summary')
                </div>
            </div>
        </div>
    </section>
</div>

@endsection

@section('script')
    {{-- <script type="text/javascript">

    function getPaymentInfo(){
        var isValid = true;
        $('.card-body input').each(function() {
            if ( this.value == '' ){
                isValid = false;
            }
        });

        if(isValid){
            // console.log($('#shipping_form').serialize());
             $.ajax({
                type:"POST",
                url:'{{ route('checkout.payment_info') }}',
                data: $('#shipping_form').serialize(),
                success: function(data){
                    alart(data);
                    $('#page-content').html(data);
                }
            });
        }
        else{
            alert('Please fill all the fileds');
        }
    }
    </script> --}}

    <script type="text/javascript">
        function getPaymentInfo(){
            var isValid = true;
            $('.card-body input').each(function() {
                if ( this.value == '' ){
                    isValid = false;
                }
            });

            if(isValid){
                 $.ajax({
                    type:"POST",
                    url:'{{ route('checkout.payment_info') }}',
                    data: $('#shipping_form').serialize(),
                    success: function(data){
                        $('#page-content').html(data);
                    }
                });
            }
            else{
                alert('Please fill all the fileds');
            }
        }

    // var storedFiles = [];
    // header for csrf-token is must in laravel
    // $.ajaxSetup({ headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') } });
    //
    // var url = "{{URL::to('/checkout/payment_info')}}";
    // $("#submit").click(function(){

    //         var form_data = new FormData();
    //         for(var i=0, len=storedFiles.length; i<len; i++) {
    //             form_data.append('photos[]', storedFiles[i]);
    //         }
    //         form_data.append("name", $("#name").val());
    //         form_data.append("email", $("#email").val());
    //         form_data.append("phone", $("#phone").val());
    //         form_data.append("address", $("#address").val());
    //         form_data.append("region", $("#region").val());
    //         form_data.append("city", $("#city").val());
    //         form_data.append("area", $("#area").val());
    //         form_data.append("post_code", $("#post_code").val());
    //         form_data.append("checkout_type", $("#checkout_type").val());
    //         form_data.append("shipping", $("#shippingcost").val());
    //         form_data.append("psubmit", $("#psubmit").val());
    //         form_data.append("prescribed", $("#prescribed").val());

    //         var pid = $("#prescribed").val();
    //         var chk = $('#psubmit').prop('checked');
    //         var file = $("#photos").prop("files").length;

    //         if((pid == 1) && ((file == 0) && (chk == false))){

    //             message ="<div class='alert alert-warning'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><b>You have selected prescribed item. Please upload your prescription or if you already upload it, Please click the checkbox.</b></div>";
    //             $(".ermsg").html(message);
    //             exit;
    //         }
    //         $.ajax({
    //             url: url,
    //             method: "POST",
    //             contentType: false,
    //             processData: false,
    //             data:form_data,
    //             success: function(d){
    //                 $('#page-content').html(d);
    //             }
    //         });

    // });
    // $(document).on('change','#photos',function(){
    //         len_files = $("#photos").prop("files").length;
    //         for (var i = 0; i < len_files; i++) {
    //             var file_data = $("#photos").prop("files")[i];
    //             storedFiles.push(file_data);
    //         }
    //     });



// drop down select section
    $("#division").on('change',function(e){
      e.preventDefault();
      var ddlDistrict=$("#district");
      $.ajaxSetup({
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
      });
      $.ajax({
        type:'POST',
        url: "{{url('/district-by-division')}}",
        data:{_token:$('input[name=_token]').val(),division:$(this).val()},
        success:function(response){
            // var jsonData=JSON.parse(response);
            $('option', ddlDistrict).remove();
            $('#district').append('<option value="">---Select City---</option>');
            $.each(response, function(){
              $('<option/>', {
                'value': this.id,
                'text': this.name
              }).appendTo('#district');
            });
          }

      });
    });

    $("#district").on('change',function(e){
      e.preventDefault();
      var ddlthana=$("#upazila");
      $.ajaxSetup({
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
      });
      $.ajax({
        type:'POST',
        url: "{{url('/thana-by-district')}}",
        data:{_token:$('input[name=_token]').val(),districts:$(this).val()},
        success:function(response){
            // var jsonData=JSON.parse(response);
            $('option', ddlthana).remove();
            $('#upazila').append('<option value="">---Select Area---</option>');
            $.each(response, function(){
              $('<option/>', {
                'value': this.id,
                'text': this.name
              }).appendTo('#upazila');
            });
          }
        });
    });

    $("#upazila").on('change',function(e){
      e.preventDefault();
      var ddlship=$("#shipping");
      $.ajaxSetup({
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
      });
      $.ajax({
        type:'POST',
        url: "{{url('/ship-by-thana')}}",
        data:{_token:$('input[name=_token]').val(),upazilas:$(this).val()},
        success:function(response){
            $('option', ddlship).remove();
            $.each(response, function(){
              $('<option/>', {
                'value': this.shipping_cost,
                'text': this.shipping_cost
              }).appendTo('#shipping');
            });
          }
        });
    });

  </script>
@endsection