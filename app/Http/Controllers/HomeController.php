<?php

namespace App\Http\Controllers;

use App\Models\FeatureBrand;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Session;
use Auth;
use Hash;
use App\Models\Category;
use App\Models\SubSubCategory;
use App\Models\Contact;
use App\Models\Product;
use App\Models\PrescriptionImage;
use App\Models\ShippingAddess;
use App\Models\User;
use App\Models\Seller;
use App\Models\BlogComment;
use App\Models\Shop;
use App\Models\Color;
use App\Models\Brand;
use App\Models\Order;
use App\Models\DoctorDepartment;
use App\Models\DoctorExperienced;
use App\Models\DoctorAppointmnet;
use App\Models\DoctorEducation;
use App\Models\BusinessSetting;
use App\Http\Controllers\SearchController;
use ImageOptimizer;
use Redirect;
use Storage;
use Illuminate\Support\Facades\DB;
use App\Models\Blog;
use App\Models\BlogCategory;
use App\Models\Division;
use App\Models\District;
use App\Models\Upazila;
use Illuminate\Support\Facades\Http;

class HomeController extends Controller
{

    use AuthenticatesUsers;
    public function login()
    {
        if(Auth::check()){
            return redirect()->route('home');
        }
        return view('frontend.user_login');
    }

    public function registration()
    {
        if(Auth::check()){
            return redirect()->route('home');
        }
        return view('frontend.user_registration');
    }
    // email check
    function check(Request $request)
    {
     if($request->get('email'))
     {
      $email = $request->get('email');
      $data = DB::table("users")
       ->where('phone','=', $email)
       ->count();
      if($data > 0)
      {
       echo 'not_unique';
      }
      else
      {
       echo 'unique';
      }
     }
    }

    // phone check
    function phonecheck(Request $request)
    {
     if($request->get('phone'))
     {
      $phone = $request->get('phone');
      $data = DB::table("users")
       ->where('phone','=', $phone)
       ->count();
      if($data > 0)
      {
       echo 'not_unique';
      }
      else
      {
       echo 'unique';
      }
     }
    }

     // email check
     function emailcheck(Request $request)
     {
      if($request->get('emails'))
      {
       $email = $request->get('emails');
       $data = DB::table("users")
        ->where('email','=', $email)
        ->count();
       if($data > 0)
       {
        echo 'not_unique';
       }
       else
       {
        echo 'unique';
       }
      }
     }
     function emailcheckuser(Request $request)
     {
      if($request->get('emailCheck'))
      {
       $email = $request->get('emailCheck');
       $data = DB::table("users")
        ->where('email','=', $email)
        ->count();
       if($data > 0)
       {
        echo 'not_unique';
       }
       else
       {
        echo 'unique';
       }
      }
     }

     // email check
     function emailrecheck(Request $request)
     {
    //   if($request->get('email'))
    //   {
          $exemail = $request->get('exemail');
       $email = $request->get('email');
       $data = DB::table("users")
        ->where('email','=', $email)
        ->first();

        if($data->email==$exemail){
            echo 'unique';
        }elseif($data->email!=$exemail){
            echo 'not_unique';
        }else{
            echo 'unique';
        }
    //    if($data > 0)
    //    {
    //     echo 'not_unique';
    //    }
    //    else
    //    {
    //     echo 'unique';
    //    }
    //   }
     }



    public function user_login(Request $request)
    {
        $user = User::whereIn('user_type', ['customer', 'seller', 'doctor'])->where('phone', $request->email)->first();
        if($user){
            if($user->status==1){
                if($user != null){
                    if(Hash::check($request->password, $user->password)){
                        if($request->has('remember')){
                            auth()->login($user, true);
                        }
                        else{
                            auth()->login($user, false);
                        }
                        return redirect()->route('dashboard');
                    }else{
                        return view('frontend.user_login')->withErrors(
                            [
                                'password' => 'Password does not match!!',
                            ]
                        );
                    }
                    return view('frontend.user_login');
                }else{
                    return view('frontend.user_login')->withErrors(
                        [
                            'email' => 'Phone does not match!!',
                        ]
                    );
                }
            }if($user->status==0){
                return redirect()->route('varified',encrypt($user->id));
            }
        }else{
            return view('frontend.user_login')->withErrors(
                [
                    'account' => 'Sorry! Account Not Found',
                ]
            );
        }
        // Redirect::back()->withErrors(['msg', 'The Message']);

    }
    public function cart_login_page()
    {
        return view('frontend.cart_login');
    }
    public function cart_login(Request $request)
    {
        // $user = User::whereIn('user_type', ['customer', 'seller', 'doctor'])->where('phone', $request->email)->first();
        // if($user != null){
        //     updateCartSetup();
        //     if(Hash::check($request->password, $user->password)){
        //         if($request->has('remember')){
        //             auth()->login($user, true);
        //             return redirect()->route('checkout.shipping_info');
        //         }
        //         else{
        //             auth()->login($user, false);
        //         }
        //     }
        // }
        // return back();
        $user = User::whereIn('user_type', ['customer', 'seller', 'doctor'])->where('phone', $request->email)->first();
        if($user){
            if($user->status==1){
                updateCartSetup();
                if($user != null){
                    if(Hash::check($request->password, $user->password)){
                        if($request->has('remember')){
                            auth()->login($user, true);
                        }
                        else{
                            auth()->login($user, false);
                        }
                        return redirect()->route('checkout.shipping_info');
                    }else{
                        return redirect()->route('cart.login')->withErrors(
                            [
                                'password' => 'Password does not match!!',
                            ]
                        );
                    }
                    return redirect()->route('cart.login');
                }else{
                    return redirect()->route('cart.login')->withErrors(
                        [
                            'email' => 'Phone does not match!!',
                        ]
                    );
                }
            }if($user->status==0){
                return redirect()->route('varified',encrypt($user->id));
            }
        }else{
            return view('frontend.cart_login')->withErrors(
                [
                    'account' => 'Sorry! Account Not Found',
                ]
            );
        }
    }

    public function __construct()
    {
        // $this->middleware('auth');
        // $this->middleware(['auth','verified']);
        
    }

    public function admin_dashboard()
    {

        return view('admin_dashboard');
    }

    public function dashboard()
    {
       
        if(Auth::user()->user_type == 'doctor'){
            return view('frontend.doctor.dashboard');
        }
        elseif(Auth::user()->user_type == 'seller'){
            return view('frontend.seller.dashboard');
        }
        elseif(Auth::user()->user_type == 'customer'){
            $address = ShippingAddess::where('user_id', Auth::user()->id)->where('id', Auth::user()->shipping_address)->get();
            // dd($address);
            $billaddress = ShippingAddess::where('user_id', Auth::user()->id)->where('id', Auth::user()->billing_address)->get();
            return view('frontend.customer.dashboard', compact('address','billaddress'));
        }
        else {
         
            // abort(404);
            return redirect()->route('home');
        }
    }

    public function profile(Request $request)
    {
        if(Auth::user()->user_type == 'doctor'){
            return view('frontend.doctor.profile');
        }
        elseif(Auth::user()->user_type == 'seller'){
            return view('frontend.seller.profile');
        }
        elseif(Auth::user()->user_type == 'customer'){
            $address = User::where('id', '=', Auth()->user()->id)->first();
            $districts = District::where('division_id', '=', $address->region)->get();
            $upazilas = Upazila::where('district_id', '=', $address->city)->get();
            $region = Division::all();
            return view('frontend.customer.profile', compact('region','districts','upazilas'));
        }
    }

    public function customer_update_profile(Request $request)
    {
        // $userFind = ShippingAddess::where('user_id', '=', Auth::user()->id);
        // dd($userFind);
        $user = Auth::user();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->address = $request->address;
        $user->region = $request->region;
        $user->city = $request->city;
        $user->area = $request->area;
        $user->shipping_cost = $request->shipping_cost;
        $user->postal_code = $request->postal_code;
        $user->phone = $request->phone;
        if($request->hasFile('photo')){
            $user->avatar_original = $request->photo->store('uploads');
        }
        if($user->save()){
            // add default address
            $userFind = ShippingAddess::where('user_id', '=', Auth::user()->id)->first();
            // dd($userFind);
            if(empty($userFind)){
                $bcmnt = new ShippingAddess();
                $bcmnt->user_id = Auth::user()->id;
                $bcmnt->name = $request->name;
                $bcmnt->email = $request->email;
                $bcmnt->phone = $request->phone;
                $bcmnt->address = $request->address;
                $bcmnt->region = $request->region;
                $bcmnt->city = $request->city;
                $bcmnt->area = $request->area;
                $bcmnt->shipping_cost = $request->shipping_cost;
                $bcmnt->post_code = $request->postal_code;
                $bcmnt->label = 'Home';
                $bcmnt->status = "1";
                $bcmnt->save();

                $user = Auth::user();
                $user->shipping_address = $bcmnt->id;
                $user->billing_address = $bcmnt->id;
                $user->save();
            }
            flash(__('Your Profile has been updated successfully!'))->success();
            return back();
        }

        flash(__('Sorry! Something went wrong.'))->error();
        return back();
    }

    public function changePassword(Request $request)
    {
        return view('frontend.customer.password');

    }

    public function customer_update_password(Request $request)
        {

            if(empty($request->current_password)){

                flash(__('Please fill Old Password field..!'))->error();
                return redirect()->route('profile');
            }

            if(empty($request->new_password)){
                flash(__('Please fill New Password field..!'))->error();
                return redirect()->route('profile');
                // exit();
            }

            if(empty($request->new_password === $request->confirm_password)){

                flash(__('New password doesn\'t match.'))->error();
                return redirect()->route('profile');
                // exit();
            }

        $hashedPassword = Auth::user()->password;

       if (\Hash::check($request->current_password , $hashedPassword )) {

         if (!\Hash::check($request->new_password , $hashedPassword)) {
                $where = [
                    'id'=>auth()->user()->id
                ];
                $passwordchange = User::where($where)->get()->first();
                $passwordchange->password =Hash::make($request->new_password);

                if ($passwordchange->save()) {
                    auth()->login($passwordchange, true);
                    flash(__('Password Change Successfully.'))->success();
                    // return back();
                    return redirect()->route('profile');
                }else{
                    flash(__('Server Error!!'))->error();
                    return redirect()->route('profile');
                }

        }else{
            flash(__('New password can not be the old password.'))->error();
            return redirect()->route('profile');

                }

           }else{

            flash(__('Old password doesn\'t match.'))->error();
            return redirect()->route('profile');
             }

        }




    public function seller_update_profile(Request $request)
    {
        $user = Auth::user();
        $user->name = $request->name;
        $user->address = $request->address;
        $user->country = $request->country;
        $user->city = $request->city;
        $user->postal_code = $request->postal_code;
        $user->phone = $request->phone;

        if($request->new_password != null && ($request->new_password == $request->confirm_password)){
            $user->password = Hash::make($request->new_password);
        }

        if($request->hasFile('photo')){
            $user->avatar_original = $request->photo->store('uploads');
        }

        $seller = $user->seller;
        $seller->cash_on_delivery_status = $request->cash_on_delivery_status;
        $seller->sslcommerz_status = $request->sslcommerz_status;
        $seller->ssl_store_id = $request->ssl_store_id;
        $seller->ssl_password = $request->ssl_password;
        $seller->paypal_status = $request->paypal_status;
        $seller->paypal_client_id = $request->paypal_client_id;
        $seller->paypal_client_secret = $request->paypal_client_secret;
        $seller->stripe_status = $request->stripe_status;
        $seller->stripe_key = $request->stripe_key;
        $seller->stripe_secret = $request->stripe_secret;

        if($user->save() && $seller->save()){
            flash(__('Your Profile has been updated successfully!'))->success();
            return back();
        }

        flash(__('Sorry! Something went wrong.'))->error();
        return back();
    }



    public function index(Request $request)
    {

        $tablet = Category::with('products')
            ->where('id',18)
            ->whereHas('products',function ($query){
                $query->where('published',1);
            })->limit(10)
            ->first();
        $capsule = Category::with('products')
            ->where('id',19)
            ->whereHas('products',function ($query){
                $query->where('published',1);
            })->limit(10)
            ->first();
        $injection = Category::with('products')
            ->where('id',20)
            ->whereHas('products',function ($query){
                $query->where('published',1);
            })->limit(10)
            ->first();
        $cream = Category::with('products')
            ->where('id',21)
            ->whereHas('products',function ($query){
                $query->where('published',1);
            })->limit(10)
            ->first();
        $kids = Category::with('products')
            ->where('id',22)
            ->whereHas('products',function ($query){
                $query->where('published',1);
            })->limit(10)
            ->first();
        $syrup = Category::with('products')
            ->where('id',24)
            ->whereHas('products',function ($query){
                $query->where('published',1);
            })->limit(10)
            ->first();

    //     $featured_product = Category::with('products')
    //         ->whereHas('products',function ($query){
    //             $query->where('featured',1);
    //             $query->where('published',1);
    //         })
    //         ->first();

    //     $category_product_four = Category::with('products')->where('id',4)
    //         ->whereHas('products',function ($query){
    //             $query->where('published',1);
    //         })
    //         ->first();

    //    $categories = Category::with('products')->whereNotIn('id',[9,10,11])
    //        ->whereHas('products',function ($query){
    //            $query->where('published',1);
    //        })
    //        ->get();

        // return view('frontend.index',compact('category_product_one','category_product_two','featured_product','categories'));
        return view('frontend.index', compact('tablet','capsule','injection','cream','kids','syrup'));
    }
    // load more product
    // function more_data(Request $request){
    //     if($request->ajax()){
    //         $skip=$request->skip;
    //         $take=10;
    //         $products=Product::skip($skip)->take($take)->get();
    //         return response()->json($products);
    //     }else{
    //         return response()->json('Direct Access Not Allowed!!');
    //     }
    // }

    public function product($slug)
    {
        $product  = Product::where('slug', $slug)->first();
        if($product!=null){
            updateCartSetup();
            return view('frontend.product_details', compact('product'));
        }
        // abort(404);
        return redirect()->route('home');
    }

    public function shop($slug)
    {
        $shop  = Shop::where('slug', $slug)->first();
        if($shop!=null){
            return view('frontend.seller_shop', compact('shop'));
        }
        // abort(404);
        return redirect()->route('home');
    }

    public function filter_shop($slug, $type)
    {
        $shop  = Shop::where('slug', $slug)->first();
        if($shop!=null && $type != null){
            return view('frontend.seller_shop', compact('shop', 'type'));
        }
        // abort(404);
        return redirect()->route('home');
    }

    public function listing(Request $request)
    {
        // $products = filter_products(Product::inRandomOrder())->paginate(60);

       $products = filter_products(Product::inRandomOrder())->simplePaginate(140);
        return view('frontend.product_listing', compact('products'));
    }

    public function all_categories(Request $request)
    {
        $categories = Category::all();
        return view('frontend.all_category', compact('categories'));
    }

     public function all_brands(Request $request)
    {
        $brands = Brand::all()->sortBy('name');
        return view('frontend.brand', compact('brands'));
    }

    public function show_product_upload_form(Request $request)
    {
        $categories = Category::all();
        return view('frontend.seller.product_upload', compact('categories'));
    }

    public function show_product_edit_form(Request $request, $id)
    {
        $categories = Category::all();
        $product = Product::find(decrypt($id));
        return view('frontend.seller.product_edit', compact('categories', 'product'));
    }

    public function seller_product_list(Request $request)
    {
        $products = Product::where('user_id', Auth::user()->id)->orderBy('created_at', 'desc')->paginate(10);
        return view('frontend.seller.products', compact('products'));
    }

    public function ajax_search(Request $request)
    {
        $keywords = array();
        $products = Product::where('published', 1)->where('tags', 'like', '%'.$request->search.'%')->get();
        foreach ($products as $key => $product) {
            foreach (explode(',',$product->tags) as $key => $tag) {
                if(stripos($tag, $request->search) !== false){
                    if(sizeof($keywords) > 5){
                        break;
                    }
                    else{
                        if(!in_array(strtolower($tag), $keywords)){
                            array_push($keywords, strtolower($tag));
                        }
                    }
                }
            }
        }

        $products = filter_products(Product::where('published', 1)->where('name', 'like', '%'.$request->search.'%'))->get()->take(5);

        $subsubcategories = SubSubCategory::where('name', 'like', '%'.$request->search.'%')->get()->take(3);

        $shops = Shop::where('name', 'like', '%'.$request->search.'%')->get()->take(5);

        if(sizeof($keywords)>0 || sizeof($subsubcategories)>0 || sizeof($products)>0 || sizeof($shops) >0){
            return view('frontend.partials.search_content', compact('products', 'subsubcategories', 'keywords', 'shops'));
        }
        return '0';
    }

    public function search(Request $request)
    {
        // dd('hello');
        $query = $request->q;
        $brand_id = $request->brand_id;
        $sort_by = $request->sort_by;

            $category_id = $request->category_id;


        $subcategory_id = $request->subcategory_id;
        $subsubcategory_id = $request->subsubcategory_id;
        $min_price = $request->min_price;
        $max_price = $request->max_price;
        $seller_id = $request->seller_id;

        $conditions = ['published' => 1];

        if($brand_id != null){
            $conditions = array_merge($conditions, ['brand_id' => $request->brand_id]);
        }
        if($category_id != null){
            $conditions = array_merge($conditions, ['category_id' => $category_id]);
        }
        if($subcategory_id != null){
            $conditions = array_merge($conditions, ['subcategory_id' => $subcategory_id]);
        }
        if($subsubcategory_id != null){
            $conditions = array_merge($conditions, ['subsubcategory_id' => $subsubcategory_id]);
        }
        if($seller_id != null){
            $conditions = array_merge($conditions, ['user_id' => Seller::findOrFail($seller_id)->user->id]);
        }

        $products = Product::where($conditions);

        if($min_price != null && $max_price != null){
            $products = $products->where('unit_price', '>=', $min_price)->where('unit_price', '<=', $max_price);
        }

        if($query != null){
            $searchController = new SearchController;
            $searchController->store($request);
            $products = $products->where('name', 'like', '%'.$query.'%');
        }

        if($sort_by != null){
            switch ($sort_by) {
                case '1':
                    $products->orderBy('created_at', 'desc');
                    break;
                case '2':
                    $products->orderBy('created_at', 'asc');
                    break;
                case '3':
                    $products->orderBy('unit_price', 'asc');
                    break;
                case '4':
                    $products->orderBy('unit_price', 'desc');
                    break;
                default:
                    // code...
                    break;
            }
        }
        else{
            $products->orderBy('id', 'DESC');
        }

        $products = filter_products($products)->paginate(32)->appends(request()->query());

        return view('frontend.product_listing', compact('products', 'query', 'category_id', 'subcategory_id', 'subsubcategory_id', 'brand_id', 'sort_by', 'seller_id','min_price', 'max_price'));
    }

    public function product_content(Request $request){
        $connector  = $request->connector;
        $selector   = $request->selector;
        $select     = $request->select;
        $type       = $request->type;
        productDescCache($connector,$selector,$select,$type);
    }

    public function home_settings(Request $request)
    {
        return view('home_settings.index');
    }

    public function variant_price(Request $request)
    {
        $product = Product::find($request->id);
        $str = '';

        if($request->has('color')){
            $data['color'] = $request['color'];
            $str = Color::where('code', $request['color'])->first()->name;
        }

        foreach (json_decode(Product::find($request->id)->choice_options) as $key => $choice) {
            if($str != null){
                $str .= '-'.str_replace(' ', '', $request[$choice->name]);
            }
            else{
                $str .= str_replace(' ', '', $request[$choice->name]);
            }
        }

        if($str != null){
            $price = json_decode($product->variations)->$str->price;
        }
        else{
            $price = $product->unit_price;
        }

        //discount calculation
        $flash_deal = \App\FlashDeal::where('status', 1)->first();
        if ($flash_deal != null && strtotime(date('d-m-Y')) >= $flash_deal->start_date && strtotime(date('d-m-Y')) <= $flash_deal->end_date && \App\FlashDealProduct::where('flash_deal_id', $flash_deal->id)->where('product_id', $product->id)->first() != null) {
            $flash_deal_product = \App\FlashDealProduct::where('flash_deal_id', $flash_deal->id)->where('product_id', $product->id)->first();
            if($flash_deal_product->discount_type == 'percent'){
                $price -= ($price*$flash_deal_product->discount)/100;
            }
            elseif($flash_deal_product->discount_type == 'amount'){
                $price -= $flash_deal_product->discount;
            }
        }
        else{
            if($product->discount_type == 'percent'){
                $price -= ($price*$product->discount)/100;
            }
            elseif($product->discount_type == 'amount'){
                $price -= $product->discount;
            }
        }

        if($product->tax_type == 'percent'){
            $price += ($price*$product->tax)/100;
        }
        elseif($product->tax_type == 'amount'){
            $price += $product->tax;
        }
        return single_price($price*$request->quantity);
    }

    public function sellerpolicy(){
        return view("frontend.policies.sellerpolicy");
    }

    public function returnpolicy(){
        return view("frontend.policies.returnpolicy");
    }

    public function supportpolicy(){
        return view("frontend.policies.supportpolicy");
    }

    public function terms(){
        return view("frontend.policies.terms");
    }

    public function privacypolicy(){
        return view("frontend.policies.privacypolicy");
    }

    public function security(){
        return view("frontend.policies.security");
    }
    public function aboutUs(){
        return view("frontend.policies.about");
    }
    public function stories(){
        return view("frontend.policies.stories");
    }
    public function payments(){
        return view("frontend.policies.payments");
    }
    public function shipping(){
        return view("frontend.policies.shipping");
    }
    public function cancellation(){
        return view("frontend.policies.cancellation");
    }
    public function faq(){
        return view("frontend.policies.faq");
    }
    public function career(){
        return view("frontend.policies.career");
    }

    public function group(){
        $groupdlt = User::where('group_by', Auth::user()->group_by)->get();
        // dd($groupdlt);
        return view('frontend.group.index', compact('groupdlt'));
    }

    public function contactus(){
        return view("frontend.policies.contactus");
    }

    public function contactUsStore(Request $request)
    {

        // dd('Controller Called');
        // exit();
        $contact = new Contact;
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->message = $request->message;
        if($contact->save()){
            flash(__('Message send successfully'))->success();
            return redirect()->route('contactus');
        }
        else{
            flash(__('Something went wrong'))->error();
            return back();
        }
    }

    public function groupstore(Request $request){
        if(Auth::user()->cid != $request->gcid){
            $gstore = User::find(Auth::user()->id);
            $gstore->group_by = $request->gcid;
            $gstore->save();

            $gupdate = User::find(User::where('cid',$request->gcid)->first()->id);
            // dd($gupdate);
            $gupdate->group_by = $request->gcid;
            $gupdate->save();
            flash(__('Group Create succesfully'))->success();
            return redirect()->route('group.index');
        }else{
            flash(__('Wrong Group ID'))->error();
            return redirect()->route('group.index');
        }

    }

    public function groupchange()
    {
       $groupdlt = User::where('group_by', Auth::user()->group_by)->get();
        // dd($groupdlt);
        return view('frontend.group.change_ghead', compact('groupdlt'));
    }

    public function groupchangeconfirm($id)
    {
        DB::table('users')
              ->where('group_by', Auth::user()->cid)
              ->update(['group_by' => $id]);
    flash(__('New group Head create successfully'))->success();
       return redirect()->route('group.index');
    }

    public function changeyourself($id)
    {
        DB::table('users')
              ->where('cid', $id)
              ->update(['group_by' => NULL]);

    flash(__('Group Leave successfully'))->success();
       return redirect()->route('group.index');
    }


    // new code for order now

    public function ordernow()
    {
        if(Auth::check()){
            return redirect()->route('home');
        }
        return view('frontend.ordernow');
    }

    // customer registration 2

    public function newCustomer(Request $request)
    {

        if(empty($request->name)){
            $message ="<div class='alert alert-warning'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><b>Please fill \"Username \" field..!</b></div>";
            return response()->json(['status'=> 303,'message'=>$message]);
            exit();
        }
        if(empty($request->email)){
            $message ="<div class='alert alert-warning'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><b>Please fill \"Email \" field..!</b></div>";
            return response()->json(['status'=> 303,'message'=>$message]);
            exit();
        }

        if(empty($request->password)){
            $message ="<div class='alert alert-warning'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><b>Please fill \"Password\" field..!</b></div>";
            return response()->json(['status'=> 303,'message'=>$message]);
            exit();
        }
        if(empty($request->password === $request->password_confirmation)){
            $message ="<div class='alert alert-warning'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><b>Password doesn't match.</b></div>";
            return response()->json(['status'=> 303,'message'=>$message]);
            exit();
        }
        try{
            $account = new User();
            $account->name = $request->name;
            $account->email = $request->email;
            $account->medication = "No";
            $account->password = Hash::make($request->input('password'));
            $account->email_verified_at = now(); //Carbon Instance

            $account->save();
            $message ="<div class='alert alert-success'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><b>Customer Account Created Successfully.</b></div>";
            return response()->json(['status'=> 300,'message'=>$message]);
        }catch (\Exception $e){
            return response()->json(['status'=> 303,'message'=>'Server Error!!']);

        }
    }

    // blog
    public function blog(Request $request)
    {
        $blogs = Blog::orderBy('created_at','desc')->paginate(9);
            if($request->ajax()){
                return view('frontend.blog-pagination',compact('blogs'));
            }
		return view('frontend.blog',compact('blogs'));
    }

    public function blogshow($id)
    {
        $tags = null;
        $tagz = '';
        $bcats = BlogCategory::all();
        $blog = Blog::findOrFail(decrypt($id));
        $blog->views = $blog->views + 1;
        $blog->update();
        $name = Blog::pluck('tags')->toArray();
        foreach($name as $nm)
        {
            $tagz .= $nm.',';
        }
        $tags = array_unique(explode(',',$tagz));

        $archives= Blog::orderBy('created_at','desc')->get()->groupBy(function($item){ return $item->created_at->format('F Y'); })->take(5)->toArray();
        $blog_meta_tag = $blog->meta_tag;
        $blog_meta_description = $blog->meta_description;

        $bcmnts = BlogComment::where('blog_id', '=', decrypt($id))->where('status','=','1')->orderBy('id', 'DESC')->paginate(10);
        // dd($bcmnts);
        return view('frontend.blogshow',compact('blog','bcats','tags','archives','blog_meta_tag','blog_meta_description','bcmnts'));
    }

    public function blogcategory(Request $request, $slug)
    {
        $bcat = BlogCategory::where('slug', '=', str_replace(' ', '-', $slug))->first();
        $blogs = $bcat->blogs()->orderBy('created_at','desc')->paginate(9);
            if($request->ajax()){
                return view('frontend.blog-pagination',compact('blogs'));
            }
        return view('frontend.blog',compact('bcat','blogs'));
    }

    public function blogtags(Request $request, $slug)
    {
        $blogs = Blog::where('tags', 'like', '%' . $slug . '%')->paginate(9);
            if($request->ajax()){
                return view('frontend.blog-pagination',compact('blogs'));
            }
        return view('frontend.blog',compact('blogs','slug'));
    }

    public function blogsearch(Request $request)
    {
        $search = $request->search;
        $blogs = Blog::where('title', 'like', '%' . $search . '%')->orWhere('details', 'like', '%' . $search . '%')->paginate(9);
            if($request->ajax()){
                return view('frontend.blog-pagination',compact('blogs'));
            }
        return view('frontend.blog',compact('blogs','search'));
    }

    public function blogarchive(Request $request,$slug)
    {
        $date = \Carbon\Carbon::parse($slug)->format('Y-m');
        $blogs = Blog::where('created_at', 'like', '%' . $date . '%')->paginate(9);
            if($request->ajax()){
                return view('frontend.blog-pagination',compact('blogs'));
            }
        return view('frontend.blog',compact('blogs','date'));
    }

    public function blogComment(Request $request)
    {
        $bcmnt = new BlogComment();
        $bcmnt->name = $request->name;
        $bcmnt->comments = $request->comment;
        $bcmnt->blog_id = $request->bcmntid;
        if (Auth::user()) {
            $bcmnt->user_id = Auth::user()->id;
        }
        $bcmnt->email = $request->email;
        $bcmnt->status = "1";
        if($bcmnt->save()){
            flash(__('Message Send successfully'))->success();
            return back();
        }
        flash(__('Sorry! Something went wrong.'))->error();
        return back();
    }

    public function medicine(Request $request)
    {
        $scroolproduct=Product::where('published', 1)->orderBy('id', 'desc')->paginate(15);
        // scrool loadmore
    $html='';
    foreach ($scroolproduct as $product) {
        $image = asset($product->thumbnail_img);
        $productroute = route('product', $product->slug);
        $home_base_price = home_base_price($product->id);
        $home_discounted_base_price = home_discounted_base_price($product->id);

        $html.='<div class="product-style" product-box">';
        $html.='<div class="product-card-1">';
        $html.='<figure class="product-image-container">';
        $html.='<a href="'.$productroute.'" class="product-image d-block" style="background-image:url('.$image.');"></a><button class="btn-quickview" onclick="showAddToCartModal('.$product->id.')"><i class="la la-eye"></i></button>';
        if (strtotime($product->created_at) > strtotime("-10 day")){
            $html.='<span class="product-label label-hot">New</span>';
         }
        $html.='</figure>';
        $html.='<div class="product-details text-center"><h2 class="product-title text-truncate-2 m-0"><a href="'.$productroute.'">'.$product->name.'</a></h2>';
        $html.='<div class="price-box">';
        if(home_base_price($product->id) != home_discounted_base_price($product->id)){
        $html.='<span class="old-product-price strong-300">'.$home_base_price.'</span>';
        }
        $html.='<span class="product-price strong-300"><strong>'.$home_discounted_base_price.'</strong></span></div>';
        $html.='<div class="product-card-1-action"><button class="paction add-wishlist" title="Add to Wishlist" onclick="addToWishList('.$product->id.')"><i class="la la-heart-o"></i></button><button type="button" class="paction add-cart btn btn-base-1 btn-circle btn-icon-left" onclick="showAddToCartModal('.$product->id.')"><i class="fa la la-shopping-cart"></i>Add to cart</button><button class="paction add-compare" title="Add to Compare" onclick="addToCompare('.$product->id.')"><i class="la la-refresh"></i></button></div></div></div></div>';
    }

    if ($request->ajax()) {
        return $html;
    }
    // end scrool load more
        return view('frontend.medicine.index');
    }
    // load more product
    function more_data(Request $request){
        if($request->ajax()){
            $skip=$request->skip;
            $take=15;
            $products=Product::skip($skip)->take($take)->get();
            return response()->json($products);
        }else{
            return response()->json('Direct Access Not Allowed!!');
        }
    }

    public function specialOffer(){
        return view("frontend.specialoffer.index");
    }

    public function product_truck()
    {
        if(!Auth::check()){
            flash('As a customer, you must first login or register')->success();
            return redirect()->route('user.login');
        }
        return view("frontend.truckProduct.index");
    }

    public function product_truck_show(Request $request)
    {
        $code   = $request->code;
        $order = Order::where('code', '=', $code)->first();
        // dd($order);
        if ($order) {
            return view('frontend.truckProduct.trucking_show', compact('order'));
        } else {
            flash('Order not found')->success();
            return redirect()->route('product-truck');
        }
    }
}
