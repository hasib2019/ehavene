@extends('frontend.layouts.app')

@section('title')
    Return Policy
@stop

@section('content')

    <section class="gry-bg py-4">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="p-4 bg-white">
                        
                        @php
                            echo \App\Models\Policy::where('name', 'return_policy')->first()->content;
                        @endphp
            
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
