@extends('frontend.layouts.app')

@section('title')
    All Brands
@stop
@section('css')
    <link type="text/css" href="{{ asset('frontend/css/extra.css') }}" rel="stylesheet">
    <link type="text/css" href="{{ asset('frontend/css/doctor.css') }}" rel="stylesheet">
@endsection
@section('content')
    <div class="container-fluid">
        {{-- brand start --}}
        <div class="row">
            <div class="single_section" style="padding-top: 50px">
                <div class="col-md-12 col-sm-12 padding_3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="section_heading">
                                <h2 class="text-center">All Popular Brands</h2>
                            </div>
                        </div>
                        @foreach ($brands as $brand)
                            <div class="col-lg-2 col-md-4 col-sm-6 brandmob p-1">
                                <a href="{{ route('products.brand', $brand->id) }}">
                                    <div class="single_item">
                                        <img src="{{ asset($brand->logo) }}" class="img-thumbnail" alt="Ehavene Brands">
                                        {{-- <div class="product_info"> --}}
                                            {{-- <div class="pro_logo">
                                                <a href="{{ route('products.brand', $brand->id) }}"><img src="{{ asset($brand->banner) }}" alt=""></a>
                                            </div> --}}
                                            {{-- <h3>{{ $brand->name }}</h3> --}}

                                            {{-- <p>Up to 60% off on our clearance items</p> --}}
                                        {{-- </div> --}}
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        {{-- brand end --}}



    </div>
@endsection
@section('script')

@endsection
