@extends('layouts.app')

@section('content')
<input type="hidden" id="headerdata" value="{{ __('CATEGORY') }}">
<div class="content-area">

    <div class="product-area">
        <div class="row">
            <div class="col-lg-12">
                <div class="mr-table allproduct float-right">
                   <a class="btn btn-hover-success btn-primary" data-href="{{ route('admin-cblog-create') }}" id="add-data" data-toggle="modal" data-target="#modal1"><i class="fa fa-plus"></i> {{ __('Add New Category') }}</a>
                   <br><br>
                    <div class="table-responsiv">
                        <table id="example" class="table table-striped table-bordered dt-responsive" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>{{ __('Name') }}</th>
                                    <th>{{ __('Slug') }}</th>
                                    <th>{{ __('Options') }}</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


{{-- ADD / EDIT MODAL --}}

<div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="geniusformdata" action="{{ route('admin-cblog-create') }}" method="POST"
                enctype="multipart/form-data">
                {{ csrf_field() }}

                <div class="row">
                    <div class="col-lg-4">
                        <div class="left-area">
                            <h4 class="heading">{{ __('Name') }} *</h4>
                            <p class="sub-heading">{{ __('(In Any Language)') }}</p>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <input type="text" class="form-control" name="name" placeholder="{{ __('Name') }}"
                            required="" value="">
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4">
                        <div class="left-area">
                            <h4 class="heading">{{ __('Slug') }} *</h4>
                            <p class="sub-heading">{{ __('(In Any English)') }}</p>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <input type="text" class="form-control" name="slug" placeholder="{{ __('Slug') }}"
                            required="" value="">
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4">
                        <div class="left-area">

                        </div>
                    </div>
                    <div class="col-lg-7">
                        <button class="addProductSubmit-btn"
                            type="submit">{{ __('Create Category') }}</button>
                    </div>
                </div>
            </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __('Close') }}</button>
            </div>
        </div>
    </div>
</div>

{{-- ADD / EDIT MODAL ENDS --}}

{{-- ADD / EDIT MODAL --}}

<div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-labelledby="modal2" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="geniusformdata" action="{{ route('admin-cblog-create') }}" method="POST"
                enctype="multipart/form-data">
                {{ csrf_field() }}

                <div class="row">
                    <div class="col-lg-4">
                        <div class="left-area">
                            <h4 class="heading">{{ __('Name') }} *</h4>
                            <p class="sub-heading">{{ __('(In Any Language)') }}</p>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <input type="text" class="form-control" name="name" placeholder="{{ __('Name') }}"
                            required="" value="">
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4">
                        <div class="left-area">
                            <h4 class="heading">{{ __('Slug') }} *</h4>
                            <p class="sub-heading">{{ __('(In Any English)') }}</p>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <input type="text" class="form-control" name="slug" placeholder="{{ __('Slug') }}"
                            required="" value="">
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4">
                        <div class="left-area">

                        </div>
                    </div>
                    <div class="col-lg-7">
                        <button class="addProductSubmit-btn"
                            type="submit">{{ __('Create Category') }}</button>
                    </div>
                </div>
            </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __('Close') }}</button>
            </div>
        </div>
    </div>
</div>

{{-- ADD / EDIT MODAL ENDS --}}

{{-- DELETE MODAL --}}

<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header d-block text-center">
                <h4 class="modal-title d-inline-block">{{ __('Confirm Delete') }}</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <p class="text-center">
                    {{ __('You are about to delete this Category. Everything will be deleted under this Category.') }}
                </p>
                <p class="text-center">{{ __('Do you want to proceed?') }}</p>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-default" data-dismiss="modal">{{ __('Cancel') }}</button>
                <a class="btn btn-danger btn-ok">{{ __('Delete') }}</a>
            </div>

        </div>
    </div>
</div>

{{-- DELETE MODAL ENDS --}}
@endsection
@section('script')
<script type="text/javascript">
$(document).ready(function(){
    var table = $('#example').DataTable({
        ordering: true,
        processing: true,
        serverSide: true,
        ajax: '{{ route('admin-cblog-datatables') }}',
        columns: [{
                data: 'name',
                name: 'name'
            },
            {
                data: 'slug',
                name: 'slug'
            },
            {
                data: 'action',
                searchable: true,
                orderable: true
            }

        ],
        language: {
            processing: '<img src="{{asset('images/loader.gif')}}">'
        }
    });
});

</script>
@endsection
