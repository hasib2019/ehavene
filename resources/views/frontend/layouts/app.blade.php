<!DOCTYPE html>
@if(\App\Models\Language::where('code', Session::get('locale', Config::get('app.locale')))->first()->rtl == 1)
    <html dir="rtl">
@else
    <html>
@endif
<head>
@php
    $seosetting = \App\Models\SeoSetting::first();
@endphp
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="robots" content="index, follow">

 <meta name="csrf-token" content="{{ csrf_token() }}" />
@if(!empty($seosetting->description))
<meta name="description" content="{{ $seosetting->description }}">
@endif

@if(!empty($seosetting->keyword))
<meta name="keywords" content="{{ $seosetting->keyword }}">
@endif

@if(!empty($seosetting->author))
<meta name="author" content="{{ $seosetting->author }}">
@endif

@if(!empty($seosetting->sitemap_link))
<meta name="sitemap_link" content="{{ $seosetting->sitemap_link }}">
@endif

@yield('meta')
<!-- Favicon -->
<link name="favicon" type="image/x-icon" href="{{ asset(\App\Models\GeneralSetting::first()->favicon) }}" rel="shortcut icon" />

<title>@yield('title')</title>
<!-- Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville:300,300i,400,400i,500,500i&display=swap" rel="stylesheet">
<!-- Bootstrap -->
<link rel="stylesheet" href="{{ asset('frontend/css/bootstrap.min.css') }}" type="text/css">
<!-- Icons -->
<link rel="stylesheet" href="{{ asset('frontend/css/font-awesome.min.css') }}" type="text/css">
<link rel="stylesheet" href="{{ asset('frontend/css/line-awesome.min.css') }}" type="text/css">
<link type="text/css" href="{{ asset('frontend/css/bootstrap-tagsinput.css') }}" rel="stylesheet">
<link type="text/css" href="{{ asset('frontend/css/jodit.min.css') }}" rel="stylesheet">
<link type="text/css" href="{{ asset('frontend/css/sweetalert2.min.css') }}" rel="stylesheet">
<link type="text/css" href="{{ asset('frontend/css/slick.css') }}" rel="stylesheet">
<link type="text/css" href="{{ asset('frontend/css/xzoom.css') }}" rel="stylesheet">
<link type="text/css" href="{{ asset('frontend/css/jquery.share.css') }}" rel="stylesheet">
<link type="text/css" href="{{ asset('frontend/css/animate.min.css') }}" rel="stylesheet">
<link type="text/css" href="{{ asset('frontend/icofont.min.css') }}" rel="stylesheet">
<!-- Global style (main) -->
<link type="text/css" href="{{ asset('frontend/css/active-shop.css') }}" rel="stylesheet" media="screen">
{{-- new css  --}}
<link type="text/css" href="{{ asset('frontend/css/app.css') }}" rel="stylesheet">
<link type="text/css" href="{{ asset('frontend/css/swiper-bundle.min.css') }}" rel="stylesheet">
<!--Spectrum Stylesheet [ REQUIRED ]-->
<link href="{{ asset('css/spectrum.css')}}" rel="stylesheet">

<!-- Custom style -->
<link type="text/css" href="{{ asset('frontend/css/custom-style.css') }}" rel="stylesheet">
<link type="text/css" href="{{ asset('frontend/css/custom-nav.css') }}" rel="stylesheet">
{{-- extra css add  --}}
@yield('css')

@if(\App\Models\Language::where('code', Session::get('locale', Config::get('app.locale')))->first()->rtl == 1)
     <!-- RTL -->
    <link type="text/css" href="{{ asset('frontend/css/active.rtl.css') }}" rel="stylesheet">

@endif
{{-- webmaster  --}}
<meta name="yandex-verification" content="b6b328dcbe4cc92a" />
{{-- serch console add  --}}
<meta name="google-site-verification" content="-fRrJFS_wfFvJoxRghPnoOdehBLbMYnvwG-CpX5WZD4" />
<meta name="google-site-verification" content="X0iUvCMcdm0zes5mzq2Y_0IBbqS4rKAF-9jBY7VR6s0" />
{{-- bing console added --}}
<meta name="msvalidate.01" content="2DA8E1841A9BA8557D45514335B6631C" />
<!-- Clarity tracking code for https://ehavene.com.bd/ -->
<script>
(function(c,l,a,r,i,t,y){        c[a]=c[a]||function(){(c[a].q=c[a].q||[]).push(arguments)};        t=l.createElement(r);t.async=1;t.src="https://www.clarity.ms/tag/"+i+"?ref=bwt";        y=l.getElementsByTagName(r)[0];y.parentNode.insertBefore(t,y);    })(window, document, "clarity", "script", "bhir5ela5h");
</script>
{{-- tag manager  --}}
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-NLJ5K3M');</script>
<!-- End Google Tag Manager -->
<!-- Facebook Chat style -->
{{-- <link href="{{ asset('frontend/css/fb-style.css')}}" rel="stylesheet"> --}}
<!--facebook pixel-->
<!-- Meta Pixel Code -->
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window, document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '707350517291111');
fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=707350517291111&ev=PageView&noscript=1"
/></noscript>
<!-- End Meta Pixel Code -->
<meta name="facebook-domain-verification" content="mtniwr0mfbfe31xubpy1vz0ixctdeh" />
<!-- color theme -->
<link href="{{ asset('frontend/css/colors/'.\App\Models\GeneralSetting::first()->frontend_color.'.css')}}" rel="stylesheet">
<style>
    #nav {
        
        margin: 0;
        padding: 0;
        text-align: center;
    }

    #nav li {
        display: block;
        position: relative;
        float: left;
        background: #ffffff;
        /* menu background color */
    }
  

    #nav li a {
        display: block;
        padding: 0;
        text-decoration: none;
        width: 120px;
        /* this is the width of the menu items */
        line-height: 50px;
        /* this is the hieght of the menu items */
        color: #0c0909;
        /* list item font color */
    }

    #nav li li a {
        font-size: 100%;
         display: block;
        padding: 0;
        text-decoration: none;
        width: 200px;
        /* this is the width of the menu items */
        line-height: 30px;
        /* this is the hieght of the menu items */
        color: #0c0909;
        /* list item font color */
    }
  

    /* smaller font size for sub menu items */

    #nav li li:hover {
        background: red;
    }

    /* highlights current hovered list item and the parent list items when hovering over sub menues */

    #nav ul {
        position: absolute;
        padding: 0;
        left: 0;
        display: none;
        /* hides sublists */
    }

    #nav li:hover ul ul {
        display: none;
    }

    /* hides sub-sublists */

    #nav li:hover ul {
        display: block;
    }

    /* shows sublist on hover */

    #nav li li:hover ul {
        display: block;
        /* shows sub-sublist on hover */
        margin-left: 120px;
        /* this should be the same width as the parent list item */
        margin-top: -35px;
        /* aligns top of sub menu with top of list item */
    }
    #nav1 li:hover ul {
        display: block;
        /* shows sub-sublist on hover */
        margin-right: 330px;
        /* this should be the same width as the parent list item */
        margin-top: -35px;
        /* aligns top of sub menu with top of list item */
    }
  
    /* Medium devices (landscape tablets, 768px and up) */
@media only screen and (min-width: 768px) {
   div.lglogo {
             display: none;
        } 
} 
    @media only screen and (max-width: 768px) {
  /* For mobile phones: */
  
    nav.menuBar {
    display: none;
  }
      .mbl{
            border-radius: 40px;
            font-size: 14px;
            font-weight: 600;
            min-height: 40px;
            cursor: pointer; 
            width: 55%;
            display: inline;
                       }
                         .hr{
                               margin-top: 1rem!important;
    margin-bottom: 1rem;
    border: 0;
        border-top: 1px solid rgba(0,0,0,.1)!important;

                       }
                       .ml{
                           margin-left: 55px;
                       }
                     
}
</style>

<!-- jQuery -->
<script src="{{ asset('frontend/js/vendor/jquery.min.js') }}"></script>


<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/624432c62abe5b455fc25e8e/1fvd6cmhj';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->

</head>
<body>


<!-- MAIN WRAPPER -->
{{-- <div class="body-wrap shop-default shop-cards shop-tech"> --}}

    <!-- Header -->
    @include('frontend.inc.nav')

    @yield('content')

    @include('frontend.inc.footer')

    @include('frontend.partials.modal')

    {{-- tag manager  body side --}}
    {{-- analysis  --}}
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-H10T636DR8"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-H10T636DR8');
</script>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NLJ5K3M"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
    {{-- tag manager end  --}}

    <div class="modal fade" id="addToCart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-zoom product-modal" id="modal-size" role="document">
            <div class="modal-content position-relative">
                <div class="c-preloader">
                    <i class="fa fa-spin fa-spinner"></i>
                </div>
                <button type="button" class="close absolute-close-btn" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <div id="addToCart-modal-body">

                </div>
            </div>
        </div>
    </div>

    {{-- @if (\App\Models\BusinessSetting::where('type', 'facebook_chat')->first()->value == 1)
        <div class="fb-customerchat fb_invisible_flow"
            page_id="{{ env('FACEBOOK_PAGE_ID') }}"
            theme_color="#459645"
            logged_in_greeting="Hi! How can we help you?"
            logged_out_greeting="GoodBye!... Hope to see you soon."
            minimized="true">
        </div>
    @endif --}}

{{-- </div><!-- END: body-wrap --> --}}
<!-- SCRIPTS -->
<a href="#" class="back-to-top btn-back-to-top"></a>
{{-- ssl stop  --}}
 {{-- <script src="{{ asset('js/app.js') }}"></script>  --}}

<!-- Core -->
<script src="{{ asset('frontend/js/vendor/popper.min.js') }}"></script>
<script src="{{ asset('frontend/js/vendor/bootstrap.min.js') }}"></script>

<!-- Plugins: Sorted A-Z -->
<script src="{{ asset('frontend/js/jquery.countdown.min.js') }}"></script>
<script src="{{ asset('frontend/js/select2.min.js') }}"></script>
<script src="{{ asset('frontend/js/nouislider.min.js') }}"></script>

<script src="{{ asset('frontend/js/sweetalert2.min.js') }}"></script>
<script src="{{ asset('frontend/js/slick.min.js') }}"></script>
<script src="https://code.iconify.design/2/2.0.1/iconify.min.js"></script>
<script src="{{ asset('frontend/js/jquery.share.js') }}"></script>
<script src="{{ asset('frontend/js/app.js') }}"></script>


<!-- Global site tag (gtag.js) - Google Analytics -->
{{-- <script async src="https://www.googletagmanager.com/gtag/js?id=UA-142342900-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-142342900-1');
</script> --}}

<script type="text/javascript">
    function showFrontendAlert(type, message){
        swal({
            position: 'top-end',
            type: type,
            title: message,
            showConfirmButton: false,
            timer: 4000
        });
    }
</script>

@foreach (session('flash_notification', collect())->toArray() as $message)
    <script type="text/javascript">
        showFrontendAlert('{{ $message['level'] }}', '{{ $message['message'] }}');
    </script>
@endforeach

<script>

    $(document).ready(function() {
        if ($('#lang-change').length > 0) {
            $('#lang-change .dropdown-item a').each(function() {
                $(this).on('click', function(e){
                    e.preventDefault();
                    var $this = $(this);
                    var locale = $this.data('flag');
                    $.post('{{ route('language.change') }}',{_token:'{{ csrf_token() }}', locale:locale}, function(data){
                        location.reload();
                    });

                });
            });
        }

        if ($('#currency-change').length > 0) {
            $('#currency-change .dropdown-item a').each(function() {
                $(this).on('click', function(e){
                    e.preventDefault();
                    var $this = $(this);
                    var currency_code = $this.data('currency');
                    $.post('{{ route('currency.change') }}',{_token:'{{ csrf_token() }}', currency_code:currency_code}, function(data){
                        location.reload();
                    });

                });
            });
        }
    });

    $('#search').on('keyup', function(){
        search();
    });

    $('#search').on('focus', function(){
        search();
    });

    function search(){
        var search = $('#search').val();
        if(search.length > 0){
            $('body').addClass("typed-search-box-shown");

            $('.typed-search-box').removeClass('d-none');
            $('.search-preloader').removeClass('d-none');
            $.post('{{ route('search.ajax') }}', { _token: '{{ @csrf_token() }}', search:search}, function(data){
                if(data == '0'){
                    // $('.typed-search-box').addClass('d-none');
                    $('#search-content').html(null);
                    $('.typed-search-box .search-nothing').removeClass('d-none').html('Sorry, nothing found for <strong>"'+search+'"</strong>');
                    $('.search-preloader').addClass('d-none');

                }
                else{
                    $('.typed-search-box .search-nothing').addClass('d-none').html(null);
                    $('#search-content').html(data);
                    $('.search-preloader').addClass('d-none');
                }
            });
        }
        else {
            $('.typed-search-box').addClass('d-none');
            $('body').removeClass("typed-search-box-shown");
        }
    }

    function updateNavCart(){
        $.post('{{ route('cart.nav_cart') }}', {_token:'{{ csrf_token() }}'}, function(data){
            $('#cart_items').html(data);                        
        });
        $.post('{{ route('cart.nav_cartNumber') }}', {_token:'{{ csrf_token() }}'}, function(data){
            $('#cartNumber').html(data);
            $('#cartNumberNav').html(data);
            $('#cartNumberTMobile').html(data);
            $('#cartNumberTaka').html(data);
        });
        $.post('{{ route('cart.nav_Taka') }}', {_token:'{{ csrf_token() }}'}, function(data){
            $('#cartThakUpdate').html(data);
        });
    }
    
    function removeFromCart(key){
        $.post('{{ route('cart.removeFromCart') }}', {_token:'{{ csrf_token() }}', key:key}, function(data){
            updateNavCart();
            $('#cart-summary').html(data);
            showFrontendAlert('success', 'Item has been removed from cart');
            $('#cart_items_sidenav').html(parseInt($('#cart_items_sidenav').html())-1);
        });
    }

    function addToCompare(id){
        // @if (Auth::check())
        //     $.post('{{ route('compare.addToCompare') }}', {_token:'{{ csrf_token() }}', id:id}, function(data){
        //         $('#compare').html(data);
        //         showFrontendAlert('success', 'Item has been added to compare list');
        //         $('#compare_items_sidenav').html(parseInt($('#compare_items_sidenav').html())+1);
        //     });
        // @else
        //     showFrontendAlert('warning', 'Please login first');
        // @endif

        $.post('{{ route('compare.addToCompare') }}', {_token:'{{ csrf_token() }}', id:id}, function(data){
                $('#compare').html(data);
                showFrontendAlert('success', 'Item has been added to compare list');
                $('#compare_items_sidenav').html(parseInt($('#compare_items_sidenav').html())+1);
            });
    }

    function addToWishList(id){
        @if (Auth::check())
            $.post('{{ route('wishlists.store') }}', {_token:'{{ csrf_token() }}', id:id}, function(data){
                if(data != 0){
                    $('#wishlist').html(data);
                    showFrontendAlert('success', 'Item has been added to wishlist');
                }
                else{
                    showFrontendAlert('warning', 'Please login first');
                }
            });
        @else
            showFrontendAlert('warning', 'Please login first');
        @endif
    }

    function showAddToCartModal(id){
        if(!$('#modal-size').hasClass('modal-lg')){
            $('#modal-size').addClass('modal-lg');
        }
        $('#addToCart-modal-body').html(null);
        $('#addToCart').modal();
        $('.c-preloader').show();
        $.post('{{ route('cart.showCartModal') }}', {_token:'{{ csrf_token() }}', id:id}, function(data){
            $('.c-preloader').hide();
            $('#addToCart-modal-body').html(data);
            $('.xzoom, .xzoom-gallery').xzoom({
                Xoffset: 20,
                bg: true,
                tint: '#000',
                defaultScale: -1
            });
        });
    }

    function showAddToCartModalshop(id){
        if(!$('#modal-size').hasClass('modal-md')){
            $('#modal-size').addClass('modal-md');
        }
        $('#addToCart-modal-body').html(null);
        $('#addToCart').modal();
        $('.c-preloader').show();
        $.post('{{ route('cart.showCartModalshop') }}', {_token:'{{ csrf_token() }}', id:id}, function(data){
            $('.c-preloader').hide();
            $('#addToCart-modal-body').html(data);
            $('.xzoom, .xzoom-gallery').xzoom({
                Xoffset: 20,
                bg: true,
                tint: '#000',
                defaultScale: -1
            });
        });
    }

    $('#option-choice-form input').on('change', function(){
        getVariantPrice();
    });

    function getVariantPrice(){
        if($('#option-choice-form input[name=quantity]').val() > 0 && checkAddToCartValidity()){
            $.ajax({
               type:"POST",
               url: '{{ route('products.variant_price') }}',
               data: $('#option-choice-form').serializeArray(),
               success: function(data){
                   $('#option-choice-form #chosen_price_div').removeClass('d-none');
                   $('#option-choice-form #chosen_price_div #chosen_price').html(data);
               }
           });
        }
    }

    function checkAddToCartValidity(){
        var names = {};
        $('#option-choice-form input:radio').each(function() { // find unique names
              names[$(this).attr('name')] = true;
        });
        var count = 0;
        $.each(names, function() { // then count them
              count++;
        });
        if($('input:radio:checked').length == count){
            return true;
        }
        return false;
    }

    function addToCart(){
        if(checkAddToCartValidity()) {
            $('#addToCart').modal();
            $('.c-preloader').show();
            $.ajax({
               type:"POST",
               url: '{{ route('cart.addToCart') }}',
               data: $('#option-choice-form').serializeArray(),
               
               success: function(data){
                   $('#addToCart-modal-body').html(null);
                   $('.c-preloader').hide();
                   $('#modal-size').removeClass('modal-lg');
                   $('#addToCart-modal-body').html(data);
                   updateNavCart();
                //    updateNumber();
                   $('#cart_items_sidenav').html(parseInt($('#cart_items_sidenav').html())+1);
               }
           });
           
        }
        else{
            showFrontendAlert('warning', 'Please choose all the options');
        }
        console.log("my data",data);
    }

    function show_purchase_history_details(order_id)
    {
        $('#order-details-modal-body').html(null);

        if(!$('#modal-size').hasClass('modal-lg')){
            $('#modal-size').addClass('modal-lg');
        }

        $.post('{{ route('purchase_history.details') }}', { _token : '{{ @csrf_token() }}', order_id : order_id}, function(data){
            $('#order-details-modal-body').html(data);
            $('#order_details').modal();
            $('.c-preloader').hide();
        });
    }

    function show_order_details(order_id)
    {
        $('#order-details-modal-body').html(null);

        if(!$('#modal-size').hasClass('modal-lg')){
            $('#modal-size').addClass('modal-lg');
        }

        $.post('{{ route('orders.details') }}', { _token : '{{ @csrf_token() }}', order_id : order_id}, function(data){
            $('#order-details-modal-body').html(data);
            $('#order_details').modal();
            $('.c-preloader').hide();
        });
    }

    function cartQuantityInitialize(){
        $('.btn-number').click(function(e) {
            e.preventDefault();

            fieldName = $(this).attr('data-field');
            type = $(this).attr('data-type');
            var input = $("input[name='" + fieldName + "']");
            var currentVal = parseInt(input.val());

            if (!isNaN(currentVal)) {
                if (type == 'minus') {

                    if (currentVal > input.attr('min')) {
                        input.val(currentVal - 1).change();
                    }
                    if (parseInt(input.val()) == input.attr('min')) {
                        $(this).attr('disabled', true);
                    }

                } else if (type == 'plus') {

                    if (currentVal < input.attr('max')) {
                        input.val(currentVal + 1).change();
                    }
                    if (parseInt(input.val()) == input.attr('max')) {
                        $(this).attr('disabled', true);
                    }

                }
            } else {
                input.val(0);
            }
        });

        $('.input-number').focusin(function() {
            $(this).data('oldValue', $(this).val());
        });

        $('.input-number').change(function() {

            minValue = parseInt($(this).attr('min'));
            maxValue = parseInt($(this).attr('max'));
            valueCurrent = parseInt($(this).val());

            name = $(this).attr('name');
            if (valueCurrent >= minValue) {
                $(".btn-number[data-type='minus'][data-field='" + name + "']").removeAttr('disabled')
            } else {
                alert('Sorry, the minimum value was reached');
                $(this).val($(this).data('oldValue'));
            }
            if (valueCurrent <= maxValue) {
                $(".btn-number[data-type='plus'][data-field='" + name + "']").removeAttr('disabled')
            } else {
                alert('Sorry, the maximum value was reached');
                $(this).val($(this).data('oldValue'));
            }


        });
        $(".input-number").keydown(function(e) {
            // Allow: backspace, delete, tab, escape, enter and .
            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== -1 ||
                // Allow: Ctrl+A
                (e.keyCode == 65 && e.ctrlKey === true) ||
                // Allow: home, end, left, right
                (e.keyCode >= 35 && e.keyCode <= 39)) {
                // let it happen, don't do anything
                return;
            }
            // Ensure that it is a number and stop the keypress
            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                e.preventDefault();
            }
        });
    }

     function imageInputInitialize(){
         $('.custom-input-file').each(function() {
             var $input = $(this),
                 $label = $input.next('label'),
                 labelVal = $label.html();

             $input.on('change', function(e) {
                 var fileName = '';

                 if (this.files && this.files.length > 1)
                     fileName = (this.getAttribute('data-multiple-caption') || '').replace('{count}', this.files.length);
                 else if (e.target.value)
                     fileName = e.target.value.split('\\').pop();

                 if (fileName)
                     $label.find('span').html(fileName);
                 else
                     $label.html(labelVal);
             });

             // Firefox bug fix
             $input
                 .on('focus', function() {
                     $input.addClass('has-focus');
                 })
                 .on('blur', function() {
                     $input.removeClass('has-focus');
                 });
         });
     }
</script>

<script src="{{ asset('frontend/js/bootstrap-tagsinput.min.js') }}"></script>
<script src="{{ asset('frontend/js/jodit.min.js') }}"></script>
<script src="{{ asset('frontend/js/xzoom.min.js') }}"></script>
<!-- App JS -->
<script src="{{ asset('frontend/js/active-shop.js') }}"></script>
<script src="{{ asset('frontend/js/main.js') }}"></script>
<script src="{{ asset('frontend/js/swiper-bundle.min.js') }}"></script>
{{-- <script src="{{ asset('frontend/js/fb-script.js') }}"></script> --}}
{{-- ssl hasib add start  --}}
{{--  <script>
    (function (window, document) {
        var loader = function () {
            var script = document.createElement("script"), tag = document.getElementsByTagName("script")[0];
            script.src = "https://sandbox.sslcommerz.com/embed.min.js?" + Math.random().toString(36).substring(7);
            tag.parentNode.insertBefore(script, tag);
        };

        window.addEventListener ? window.addEventListener("load", loader, false) : window.attachEvent("onload", loader);
    })(window, document);
</script>  --}}
{{-- ssl stop  --}}
@yield('script')

</body>
</html>
