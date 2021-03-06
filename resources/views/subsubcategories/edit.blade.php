@extends('layouts.app')

@section('content')

<div class="col-lg-12">
    <div class="panel">
        <div class="panel-heading">
            <h3 class="panel-title">{{__('Sub Subcategory Information')}}</h3>
        </div>

        <!--Horizontal Form-->
        <!--===================================================-->
        <form class="form-horizontal" action="{{ route('subsubcategories.update', $subsubcategory->id) }}" method="POST" enctype="multipart/form-data">
            <input name="_method" type="hidden" value="PATCH">
            @csrf
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-sm-3 col-lg-2 control-label" for="name">{{__('Name')}}</label>
                    <div class="col-sm-9 col-lg-10">
                        <input type="text" placeholder="{{__('Name')}}" id="name" name="name" class="form-control" required value="{{$subsubcategory->name}}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 col-lg-2 control-label" for="name">{{__('Category')}}</label>
                    <div class="col-sm-9 col-lg-10">
                        <select name="category_id" id="category_id" class="form-control demo-select2" required>
                            @foreach($categories as $category)
                                <option value="{{$category->id}}">{{__($category->name)}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 col-lg-2 control-label" for="name">{{__('Subcategory')}}</label>
                    <div class="col-sm-9 col-lg-10">
                        <select name="sub_category_id" class="form-control demo-select2" required>
                            @foreach ($subCategories as $sCategory)
                            <option @if($subsubcategory->sub_category_id==$sCategory->id) selected @endif  value="{{$subsubcategory->sub_category_id}}">
                                        {{__($sCategory->name)}}
                            </option>
                            @endforeach

                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 col-lg-2 control-label" for="name">{{__('Brands')}}</label>
                    <div class="col-sm-9 col-lg-10">
                        <select name="brands[]" id="brands" class="form-control demo-select2" multiple  required data-placeholder="Choose Brands">
                            @foreach($brands as $brand)
                                <option value="{{$brand->id}}" <?php if(in_array($brand->id, json_decode($subsubcategory->brands))) echo "selected";?> >{{$brand->name}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 control-label">{{__('Description')}}(Optional)</label>
                    <div class="col-lg-10">
                        <textarea class="editor" name="description">{{$subsubcategory->description}}</textarea>
                    </div>
                </div>
            </div>

            <div class="panel-footer text-right">
                <button class="btn btn-purple" type="submit">{{__('Save')}}</button>
            </div>
        </form>
        <!--===================================================-->
        <!--End Horizontal Form-->

    </div>
</div>

@endsection


@section('script')

<script type="text/javascript">

    function get_subcategories_by_category(){
        var category_id = $('#category_id').val();
        $.post('{{ route('subcategories.get_subcategories_by_category') }}',{_token:'{{ csrf_token() }}', category_id:category_id}, function(data){
            $('#sub_category_id').html(null);
            for (var i = 0; i < data.length; i++) {
                $('#sub_category_id').append($('<option>', {
                    value: data[i].id,
                    text: data[i].name
                }));
                $('.demo-select2').select2();
            }
        });
    }

    $('.demo-select2').select2();

    $(document).ready(function(){

        $("#category_id > option").each(function() {
            if(this.value == '{{$subsubcategory->subcategory->category_id}}'){
                $("#category_id").val(this.value).change();
            }
        });

        get_subcategories_by_category();
    });

    $('#category_id').on('change', function() {
        get_subcategories_by_category();
    });

</script>

@endsection
