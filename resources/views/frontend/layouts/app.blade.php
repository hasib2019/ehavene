<!DOCTYPE html>
@if (\App\Models\Language::where('code', Session::get('locale', Config::get('app.locale')))->first()->rtl == 1)
    <html dir="rtl">
@else
    <html>
@endif

<head>
    @yield('meta')
    <title>@yield('title')</title>
    @include('frontend.layouts.head')
    {{-- extra css add --}}
    @yield('css')
</head>

<body>
    <!-- MAIN WRAPPER -->
    {{-- <div class="body-wrap shop-default shop-cards shop-tech"> --}}
    <!-- Header -->
    @include('frontend.inc.nav')

    @yield('content')
    
    @include('frontend.layouts.anyTagManager')

    @include('frontend.inc.footer')

    @include('frontend.partials.modal')

    <div class="modal fade" id="addToCart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-zoom product-modal" id="modal-size"
            role="document">
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
    <!-- SCRIPTS -->
    <a href="#" class="back-to-top btn-back-to-top"></a>
    {{-- ssl stop --}}
    @include("frontend.layouts.script")
    @yield('script')

</body>

</html>
