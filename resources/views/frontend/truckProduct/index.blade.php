@extends('frontend.layouts.app')
@section('title')
    About Us
@stop
@section('content')

    <section class="gry-bg py-4">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="bg-white">

                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Truck Product</h4>
                                </div>
                                <div class="card-body" id="offersContainer">
                                    <div class="card">
                                        <div class="card-body">
                                             {{-- search strt  --}}
                                            <form  action="{{route('product_truck.show')}}" method ="POST">
                                                @csrf
                                                <br>
                                                <div class="container-fluid" style="background-color: rgb(0 0 0 / 20%); border: 1px solid #8a753bbf;">
                                                    <div class="row">
                                                        <div class="col-8">
                                                            <input type="text" class="form-control" style="margin-top: 2px;" id="code" name="code" required placeholder="Input Order Number">
                                                        </div>
                                                        <div class="col-2">
                                                            <button type="submit" class="btn btn-sm btn-success" name="search" title="Search" style="width: 220px;margin-top: 3px;"><img src="https://img.icons8.com/android/24/000000/search.png"/>Search</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br>
                                            </form>
                                            {{-- search end  --}}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
