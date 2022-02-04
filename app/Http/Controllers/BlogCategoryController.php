<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\BlogCategory;
use DataTables;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input;
use Validator;

class BlogCategoryController extends Controller
{
     //*** JSON Request
     public function datatables()
     {
          $datas = BlogCategory::orderBy('id','desc')->get();
          //--- Integrating This Collection Into Datatables
          return DataTables::of($datas)
                             ->addColumn('action', function(BlogCategory $data) {
                                 return '<div class="action-list"><a data-href="' . route('admin-cblog-edit',$data->id) . '" class="edit" data-toggle="modal" data-target="#modal2"> <i class="fa fa-edit"></i>'.$data->id.'</a><a href="javascript::" data-href="' . route('admin-cblog-delete',$data->id) . '" data-toggle="modal" data-target="#confirm-delete" class="delete"><i class="fa fa-trash"></i>Delete</a></div>';
                             })
                             ->toJson();//--- Returning Json Data To Client Side
     }

     //*** GET Request

     public function index()
     {
        //  dd(BlogCategory::orderBy('id','desc')->get());
         return view('cblog.index');
     }

     //*** GET Request
     public function create()
     {
         return view('cblog.create');
     }

     //*** POST Request
     public function store(Request $request)
     {
         //--- Validation Section
         $rules = [
                'name' => 'unique:blog_categories',
                'slug' => 'unique:blog_categories'
                 ];
         $customs = [
                'name.unique' => 'This name has already been taken.',
                'slug.unique' => 'This slug has already been taken.'
                    ];
        //  $validator = Validator::make(Input::all(), $rules, $customs);
        //  if ($validator->fails()) {
        //    return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        //  }
         //--- Validation Section Ends

         //--- Logic Section
         $data = new BlogCategory;
         $input = $request->all();
         $data->fill($input)->save();
         //--- Logic Section Ends

         //--- Redirect Section
         $msg = 'New Data Added Successfully.';
         return response()->json($msg);
         //--- Redirect Section Ends
     }

     //*** GET Request
     public function edit($id)
     {
         $data = BlogCategory::findOrFail($id);
         return view('cblog.edit',compact('data'));
     }

     //*** POST Request
     public function update(Request $request, $id)
     {
         //--- Validation Section
         $rules = [
                'name' => 'unique:blog_categories,name,'.$id,
                'slug' => 'unique:blog_categories,slug,'.$id
                 ];
         $customs = [
                'name.unique' => 'This name has already been taken.',
                'slug.unique' => 'This slug has already been taken.'
                    ];
         $validator = Validator::make(Input::all(), $rules, $customs);
         if ($validator->fails()) {
           return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
         }
         //--- Validation Section Ends

         //--- Logic Section
         $data = BlogCategory::findOrFail($id);
         $input = $request->all();
         $data->update($input);
         //--- Logic Section Ends

         //--- Redirect Section
         $msg = 'Data Updated Successfully.';
         return response()->json($msg);
         //--- Redirect Section Ends

     }

     //*** GET Request
     public function destroy($id)
     {
         $data = BlogCategory::findOrFail($id);

         //--- Check If there any blogs available, If Available Then Delete it
         if($data->blogs->count() > 0)
         {
             foreach ($data->blogs as $element) {
                 $element->delete();
             }
         }
         $data->delete();
         //--- Redirect Section
         $msg = 'Data Deleted Successfully.';
         return response()->json($msg);
         //--- Redirect Section Ends
     }
}
