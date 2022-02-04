<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;
use DataTables;
use App\Models\BlogCategory;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input;
use Validator;
use App\Models\BlogComment;

class BlogController extends Controller
{
 //*** JSON Request
 public function datatables()
 {
      $datas = Blog::orderBy('id','desc')->get();
      //--- Integrating This Collection Into Datatables
      return DataTables::of($datas)
                         ->editColumn('photo', function(Blog $data) {
                             $photo = $data->photo ? url('public/images/blogs/'.$data->photo):url('public/images/noimage.png');
                             return '<img src="' . $photo . '" alt="Image">';
                         })
                         ->addColumn('action', function(Blog $data) {
                             return '<div class="action-list"><a href="' . route('admin-blog-edit',$data->id) . '"> <i class="fas fa-edit"></i>Edit</a><a href="javascript:;" data-href="' . route('admin-blog-delete',$data->id) . '" data-toggle="modal" data-target="#confirm-delete" class="delete"><i class="fas fa-trash-alt"></i></a></div>';
                         })
                         ->rawColumns(['photo', 'action'])
                         ->toJson(); //--- Returning Json Data To Client Side
 }

 //*** GET Request
 public function index()
 {
     return view('blog.index');
 }

 //*** GET Request
 public function create()
 {
     $cats = BlogCategory::all();
     return view('blog.create',compact('cats'));
 }

 //*** POST Request
 public function store(Request $request)
 {
     //--- Validation Section
     $rules = [
            'photo'      => 'required|mimes:jpeg,jpg,png,svg',
             ];

    //  $validator = Validator::make(Input::all(), $rules);

    //  if ($validator->fails()) {
    //    return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
    //  }
     //--- Validation Section Ends

     //--- Logic Section
     $data = new Blog();
     $input = $request->all();
     if ($file = $request->file('photo'))
      {
         $name = time().$file->getClientOriginalName();
         $file->move('public/images/blogs',$name);
         $input['photo'] = $name;
     }
     if (!empty($request->meta_tag))
      {
         $input['meta_tag'] = implode(',', $request->meta_tag);
      }
     if (!empty($request->tags))
      {
         $input['tags'] = implode(',', $request->tags);
      }
     if ($request->secheck == "")
      {
         $input['meta_tag'] = null;
         $input['meta_description'] = null;
      }
     $data->fill($input)->save();
     //--- Logic Section Ends

     //--- Redirect Section
     $msg = 'New Data Added Successfully.'.'<a href="'.route("admin-blog-index").'">View Post Lists</a>';
     return response()->json($msg);
     //--- Redirect Section Ends
 }

 //*** GET Request
 public function edit($id)
 {
     $cats = BlogCategory::all();
     $data = Blog::findOrFail($id);
     return view('blog.edit',compact('data','cats'));
 }

 //*** POST Request
 public function update(Request $request, $id)
 {
     //--- Validation Section
     $rules = [
            'photo'      => 'mimes:jpeg,jpg,png,svg',
             ];

    //  $validator = Validator::make(Input::all(), $rules);

    //  if ($validator->fails()) {
    //    return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
    //  }
     //--- Validation Section Ends

     //--- Logic Section
     $data = Blog::findOrFail($id);
     $input = $request->all();
         if ($file = $request->file('photo'))
         {
             $name = time().$file->getClientOriginalName();
             $file->move('public/images/blogs',$name);
             if($data->photo != null)
             {
                 if (file_exists(public_path().'/public/images/blogs/'.$data->photo)) {
                     unlink(public_path().'/public/images/blogs/'.$data->photo);
                 }
             }
         $input['photo'] = $name;
         }
     if (!empty($request->meta_tag))
      {
         $input['meta_tag'] = implode(',', $request->meta_tag);
      }
     else {
         $input['meta_tag'] = null;
      }
     if (!empty($request->tags))
      {
         $input['tags'] = implode(',', $request->tags);
      }
     else {
         $input['tags'] = null;
      }
     if ($request->secheck == "")
      {
         $input['meta_tag'] = null;
         $input['meta_description'] = null;
      }
     $data->update($input);
     //--- Logic Section Ends

     //--- Redirect Section
     $msg = 'Data Updated Successfully.'.'<a href="'.route("admin-blog-index").'">View Post Lists</a>';
     return response()->json($msg);
     //--- Redirect Section Ends
 }

 //*** GET Request Delete
 public function destroy($id)
 {
     $data = Blog::findOrFail($id);
     //If Photo Doesn't Exist
     if($data->photo == null){
         $data->delete();
         //--- Redirect Section
         $msg = 'Data Deleted Successfully.';
         return response()->json($msg);
         //--- Redirect Section Ends
     }
     //If Photo Exist
     if (file_exists(public_path().'/public/images/blogs/'.$data->photo)) {
         unlink(public_path().'/public/images/blogs/'.$data->photo);
     }
     $data->delete();
     //--- Redirect Section
     $msg = 'Data Deleted Successfully.';
     return response()->json($msg);
     //--- Redirect Section Ends
 }

    //  blog comments section
    public function comment()
    {
        $comment = BlogComment::where('status',1)->get();
        // dd($comment);
        return view('blog.comment', compact('comment'));
    }


    // comment delete
    public function commentdestroy($id)
    {
        if(BlogComment::destroy($id)){
            flash(__('Comment has been deleted successfully'))->success();
            return redirect()->route('admin-blog-comment');
        }
        flash(__('Something went wrong'))->error();
        return back();
    }
  // change status

    public function changeStatus(Request $request)
    {
        $data = BlogComment::find($request->id);
        $data->status = $request->status;
        $data->save();

        if($request->status==1){
            $data = BlogComment::find($request->id);
            $data->status = $request->status;
            $data->save();
            $message ="<div class='alert alert-success'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><b>Active Successfully.</b></div>";
            return response()->json(['status'=> 300,'message'=>$message]);
        }else{
            $data = BlogComment::find($request->id);
            $data->status = $request->status;
            $data->save();
            $message ="<div class='alert alert-danger'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><b>Inactive Successfully.</b></div>";
        return response()->json(['status'=> 300,'message'=>$message]);
        }


    }






}
