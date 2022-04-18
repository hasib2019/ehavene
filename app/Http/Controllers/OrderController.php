<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Product;
use App\Models\Color;
use App\Models\OrderDetail;
use App\Models\ShippingMethod;
use App\Models\PrescriptionImage;
use App\Models\User;
use App\Models\Transaction;
use App\Models\Master;
use App\Models\Upazila;
use App\Models\District;
use App\Models\Division;
use App\Models\MedicationCount;
use Auth;
use Session;
use DB;
use PDF;
use Mail;
use App\Mail\InvoiceEmailManager;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Http;
class OrderController extends Controller
{
    /**
     * Display a listing of the resource to seller.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $orders = DB::table('orders')
            ->orderBy('code', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            ->where('order_details.seller_id', Auth::user()->id)
            ->select('orders.id')
            ->distinct()
            ->paginate(9);

        return view('frontend.seller.orders', compact('orders'));
    }

    /**
     * Display a listing of the resource to admin.
     *
     * @return \Illuminate\Http\Response
     */
    public function admin_orders(Request $request)
    {
        $orders = DB::table('orders')
            ->orderBy('id', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            //->where('order_details.seller_id', Auth::user()->id)
            ->where('orders.meduserorder', 0)
            ->select('orders.id')
            ->distinct()
            ->get();

        return view('orders.index', compact('orders'));
    }
    // admin medication order

    public function admin_medorders(Request $request)
    {
        $orders = DB::table('orders')
            ->orderBy('id', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            //->where('order_details.seller_id', Auth::user()->id)
            ->where('orders.meduserorder', 1)
            ->select('orders.id')
            ->distinct()
            ->get();

        return view('orders.medindex', compact('orders'));
    }

    // pending order
    public function admin_orders_pending(Request $request)
    {
        $orders = DB::table('orders')
            ->orderBy('id', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            ->select('orders.id')
            ->where('orders.meduserorder', 0)
            ->where('orders.delivery_status', '=', 'pending')
            ->distinct()
            ->get();

        return view('orders.index', compact('orders'));
    }

    // medication pending order
    public function admin_medorders_pending(Request $request)
    {
        $orders = DB::table('orders')
            ->orderBy('id', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            ->select('orders.id')
            ->where('orders.delivery_status', '=', 'pending')
            ->where('orders.meduserorder', 1)
            ->distinct()
            ->get();

        return view('orders.medindex', compact('orders'));
    }

    // medication waiting order
    public function admin_medorders_wpayment(Request $request)
    {
        $orders = DB::table('orders')
            ->orderBy('id', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            ->select('orders.id')
            ->where('orders.delivery_status', '=', 'wpayment')
            ->where('orders.meduserorder', 1)
            ->distinct()
            ->get();

        return view('orders.medindex', compact('orders'));
    }
    // medication pending order
    public function admin_orders_complain(Request $request)
    {
        $orders = DB::table('orders')
            ->orderBy('id', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            ->select('orders.id')
            ->where('orders.delivery_status', '=', 'complain')
            ->where('orders.meduserorder', 0)
            ->distinct()
            ->get();

        return view('orders.index', compact('orders'));
    }

    // medication pending order
    public function admin_medorders_complain(Request $request)
    {
        $orders = DB::table('orders')
            ->orderBy('id', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            ->select('orders.id')
            ->where('orders.delivery_status', '=', 'complain')
            ->where('orders.meduserorder', 1)
            ->distinct()
            ->get();

        return view('orders.medindex', compact('orders'));
    }

    // Processing
    public function admin_orders_processing(Request $request)
    {
        $orders = DB::table('orders')
            ->orderBy('id', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            ->select('orders.id')
            ->where('orders.meduserorder', 0)
            ->where('orders.delivery_status', '=', 'processing')
            ->distinct()
            ->get();

        return view('orders.index', compact('orders'));
    }

    // Medication Processing
    public function admin_medorders_processing(Request $request)
    {
        $orders = DB::table('orders')
            ->orderBy('id', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            ->select('orders.id')
            ->where('orders.delivery_status', '=', 'processing')
            ->where('orders.meduserorder', 1)
            ->distinct()
            ->get();

        return view('orders.medindex', compact('orders'));
    }
    // on_delivery
    public function admin_orders_on_delivery(Request $request)
    {
        $orders = DB::table('orders')
            ->orderBy('id', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            ->select('orders.id')
            ->where('orders.meduserorder', 0)
            ->where('orders.delivery_status', '=', 'on_delivery')
            ->distinct()
            ->get();

        return view('orders.index', compact('orders'));
    }

    // medication  on_delivery
    public function admin_medorders_on_delivery(Request $request)
    {
        $orders = DB::table('orders')
            ->orderBy('id', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            ->select('orders.id')
            ->where('orders.delivery_status', '=', 'on_delivery')
            ->where('orders.meduserorder', 1)
            ->distinct()
            ->get();

        return view('orders.medindex', compact('orders'));
    }

    // delivered
    public function admin_orders_delivered(Request $request)
    {
        $orders = DB::table('orders')
            ->orderBy('id', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            ->select('orders.id')
            ->where('orders.meduserorder', 0)
            ->where('orders.delivery_status', '=', 'delivered')
            ->distinct()
            ->get();

        return view('orders.index', compact('orders'));
    }

    // medication delivered
    public function admin_medorders_delivered(Request $request)
    {
        $orders = DB::table('orders')
            ->orderBy('id', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            ->select('orders.id')
            ->where('orders.delivery_status', '=', 'delivered')
            ->where('orders.meduserorder', 1)
            ->distinct()
            ->get();

        return view('orders.medindex', compact('orders'));
    }
    // rejected
    public function admin_orders_rejected(Request $request)
    {
        $orders = DB::table('orders')
            ->orderBy('id', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            ->select('orders.id')
            ->where('orders.meduserorder', 0)
            ->where('orders.delivery_status', '=', 'rejected')
            ->distinct()
            ->get();

        return view('orders.index', compact('orders'));
    }

    // medication rejected
    public function admin_medorders_rejected(Request $request)
    {
        $orders = DB::table('orders')
            ->orderBy('id', 'desc')
            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
            ->select('orders.id')
            ->where('orders.delivery_status', '=', 'rejected')
            ->where('orders.meduserorder', 1)
            ->distinct()
            ->get();

        return view('orders.medindex', compact('orders'));
    }

    /**
     * Display a listing of the sales to admin.
     *
     * @return \Illuminate\Http\Response
     */
    public function sales(Request $request)
    {

        if (!empty($request->input('fromDate')) && !empty($request->input('toDate'))) {
            $fromDate = $request->input('fromDate');
            $toDate   = $request->input('toDate');
            $orders = Order::where([
                ['created_at', '>=', $fromDate],
                ['created_at', '<=', $toDate],
            ])->orderBy('code', 'desc')->get();
        } else {
            $orders = Order::orderBy('code', 'desc')->get();
        }

        return view('sales.index', compact('orders'));
    }

    /**
     * Display a single sale to admin.
     *
     * @return \Illuminate\Http\Response
     */
    public function sales_show($id)
    {
        $order = Order::findOrFail(decrypt($id));
        return view('sales.show', compact('order'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $order = new Order;
        if (Auth::check()) {
            $order->user_id = Auth::user()->id;
        } else {
            $order->guest_id = mt_rand(100000, 999999);
        }
        $order->shipping_address = json_encode($request->session()->get('shipping_info'));
        $order->shipping_cost = (int)$request->session()->get('shipcost');
        $order->payment_type = $request->payment_option;
        if ($request->payment_option == 'wallet') {
            $order->payment_status = 'paid';
        }
        $order->code = date('Ymd-his');
        $order->date = strtotime(date('d-m-Y'));
        $order->upcoming = 0;

        if ($order->save()) {
            $subtotal = 0;
            $tax = 0;
            $shipping = 0;
            foreach (Session::get('cart') as $key => $cartItem) {
                $product = Product::find($cartItem['id']);
                $subtotal += $cartItem['price'] * $cartItem['quantity'];
                $tax += $cartItem['tax'] * $cartItem['quantity'];
                $shipping += $cartItem['shipping'];
                // $shippingcost = $cartItem['shipping'];
                $product_variation = null;
                if (isset($cartItem['color'])) {
                    $product_variation .= Color::where('code', $cartItem['color'])->first()->name;
                }
                foreach (json_decode($product->choice_options) as $choice) {
                    $str = $choice->name; // example $str =  choice_0
                    if ($product_variation != null) {
                        $product_variation .= '-' . str_replace(' ', '', $cartItem[$str]);
                    } else {
                        $product_variation .= str_replace(' ', '', $cartItem[$str]);
                    }
                }

                if ($product_variation != null) {
                    $variations = json_decode($product->variations);
                    $variations->$product_variation->qty -= $cartItem['quantity'];
                    $product->variations = json_encode($variations);
                    $product->save();
                }

                $order_detail = new OrderDetail;
                $order_detail->order_id  = $order->id;
                $order_detail->seller_id = $product->user_id;
                $order_detail->product_id = $product->id;
                $order_detail->variation = $product_variation;
                $order_detail->price = $cartItem['price'] * $cartItem['quantity'];
                $order_detail->tax = $cartItem['tax'] * $cartItem['quantity'];
                $order_detail->quantity = $cartItem['quantity'];
                $order_detail->save();
                $product->num_of_sale++;
                $product->save();
            }

            $drate = Master::where('softcode', '=', 'discount')->first()->hardcode / 100;
            $damount = $subtotal * $drate;

            $order->discount = $damount;
            $order->grand_total = $subtotal + $tax + $order->shipping_cost - $damount;
            if ($order->save()) {
                $order_id = $order->id;
                // DB::update('update prescription_images set order_id = ? , status = ? where user_id = ? and status = ?',[$order_id,1,Auth::user()->id,0]);
            }

            //stores the pdf for invoice

            $pdf = PDF::loadView('invoices.customer_invoice', compact('order'));
            $output = $pdf->output();
            file_put_contents(public_path() . '/invoices/' . 'Order#' . $order->code . '.pdf', $output);
            $array['view'] = 'emails.invoice';
            $array['subject'] = 'Order Placed - ' . $order->code;
            $array['from'] = 'support@ehavene.com.bd';
            $array['content'] = 'Hi, Your order has been placed';
            $array['file'] = public_path() . '/invoices/Order#' . $order->code . '.pdf';
            $array['file_name'] = 'Order#' . $order->code . '.pdf';
            $array['subjectsingle'] = 'Order Placed - ' . $order->code;
            Mail::to($request->session()->get('shipping_info')['email'])->queue(new InvoiceEmailManager($array));
            unlink($array['file']);

            // sms send tanjil pagla dakis ki hoise
            $sms = "Your Order ID is:-$order->code. Check your status here: https://ehavene.com.bd/product-truck";
            // $sms = urlencode("Your Order ID is:-$order->code. Check your status here: https://ehavene.com.bd/product-truck");
            $phone = $request->session()->get('shipping_info')['phone'];
            // Http::get('https://www.24bulksmsbd.com/api/smsSendApi?customer_id=128&api_key=172929182721250301911695556&message='.urlencode($sms).'&mobile_no='.$phone.'');
            $url = 'https://www.24bulksmsbd.com/api/smsSendApi';
            $data = array(
                'customer_id' => 128,
                'api_key' => 172929182721250301911695556,
                'message' =>$sms,	
                'mobile_no' => $phone
            );

            $curl = curl_init($url);
            curl_setopt($curl, CURLOPT_POST, true);
            curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);     
            $output = curl_exec($curl);
            curl_close($curl);
            // echo $output;
            // sms send end
            $request->session()->put('order_id', $order->id);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // dd(decrypt($id));
        $order = Order::findOrFail(decrypt($id));
        $order->viewed = 1;
        $order->save();
        return view('orders.show', compact('order'));
    }

    public function prescriptionshow($id)
    {
        // $order = Order::findOrFail(decrypt($id));
        $pimg = PrescriptionImage::where('order_id', '=', decrypt($id))->get();

        // dd($pimg);
        return view('orders.prescription', compact('pimg'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $order = Order::findOrFail($id);
        if ($order != null) {
            foreach ($order->orderDetails as $key => $orderDetail) {
                $orderDetail->delete();
            }
            $order->delete();
            flash('Order has been deleted successfully')->success();
        } else {
            flash('Something went wrong')->error();
        }
        return back();
    }

    public function order_details(Request $request)
    {
        $order = Order::findOrFail($request->order_id);
        return view('frontend.partials.order_details_seller', compact('order'));
    }

    public function update_delivery_status(Request $request)
    {
        // dd($request->user_id);
        if ($request->status == 'delivered') {

            $user = User::where('id', '=', $request->user_id)->first()->ref_by;


            if ($user != "reference") {

                $reference_id = User::where('ref_id', '=', $user)->first()->id;

                $salescommission = Master::where('softcode', '=', 'sales_commission')->first()->hardcode;
                $commission = $request->price * $salescommission / 100;
                $updateuser = User::find(User::where('ref_id', '=', $user)->first()->id);
                $updateuser->balance = $updateuser->balance + $commission;
                $updateuser->save();

                $tran = new Transaction;
                $tran->user_id = $reference_id;
                $tran->order_id = $request->order_id;
                $tran->status = "Paid";
                $tran->amount = $commission;
                $tran->earning_type = "Sales Commission";
                $tran->save();
            }
        }

        $order = Order::findOrFail($request->order_id);
        $order->delivery_status = $request->status;
        $order->save();
        return 1;
    }

    public function update_payment_status(Request $request)
    {

        $order = Order::findOrFail($request->order_id);
        $order->payment_status = $request->status;
        $order->save();
        // $status = 'paid';
        // if($order->payment_status == 'unpaid'){
        //     $status = 'unpaid';
        // }
        // $order->payment_status = $request->status;
        // $order->save();

        return 1;
    }

    //custom order
    public function admin_custom_orders(Request $request)
    {
        $peoducts = Product::all();
        $order_id = date('Ymd-his');
        $region = Division::all();
        $districts = District::all();
        $upazilas = Upazila::all();
        return view('orders.customorder', compact('peoducts', 'order_id', 'region', 'districts', 'upazilas'));
    }

    public function custom_order_confirm(Request $request)
    {
        // create order
        $order = new Order();
        $name = $request->name;
        $email = $request->email;
        $phone = $request->phone;
        $address = $request->address;
        $region = $request->region;
        $city = $request->city;
        $area = $request->area;
        $post_code = $request->post_code;
        $order_id = $request->order_id;
        // ship
        $data['name'] = $name;
        $data['email'] = $email;
        $data['phone'] = $phone;
        $data['address'] = $address;
        $data['region'] = $region;
        $data['city'] = $city;
        $data['area'] = $area;
        $data['post_code'] = $post_code;
        $shipping_info = $data;
        // ship info
        $usercheck = User::where('phone', '=', $request->phone)->first('id');
        if (!empty($usercheck)) {
            $order->user_id = $usercheck->id;
        } else {
            if (!empty($request->checkusser)) {
                $newuser = new User();
                $newuser->name = $name;
                $newuser->email = $email;
                $newuser->password = Hash::make(123456);
                $newuser->email_verified_at = now();
                $newuser->medication = 'Yes';
                $newuser->save();
                $order->user_id = $newuser->id;
            } else {
                $order->guest_id = mt_rand(100000, 999999);
            }
        }
        $order->shipping_address = json_encode($shipping_info);
        $order->payment_type = $request->payment_option;
        $order->code = $order_id;
        $order->grand_total = $request->subtotal;
        $order->date = strtotime(date('d-m-Y'));
        $order->upcoming_date = $request->date;
        $order->upcoming = 1;

        if ($order->save()) {
            $product_ids = $request->product_id;
            $price = $request->price;
            $qty = $request->qty;
            $auth = Auth::user()->id;
            if ($city == 'Dhaka') {
                $shipping = 60;
            } else {
                $shipping = 120;
            }
            foreach ($product_ids as $key => $product_id) {
                $input['product_id'] = $product_id;
                $input['order_id'] = $order->id;
                $input['seller_id'] = $auth;
                $input['variation '] = '';
                $input['price'] = $price[$key] * $qty[$key];
                $input['tax '] = 0;
                $input['shipping_cost'] = $shipping;
                $input['quantity'] = $qty[$key];
                OrderDetail::create($input);
            }
        }
        // stores the pdf for invoice
        $pdf = PDF::loadView('invoices.customer_invoice', compact('order'));
        $output = $pdf->output();
        file_put_contents(public_path() . '/invoices/' . 'Order#' . $order->code . '.pdf', $output);

        $array['view'] = 'emails.invoice';
        $array['subject'] = 'Order Placed - ' . $order->code;
        $array['from'] = 'support@ehavene.com.bd';
        $array['content'] = 'Hi. Your order has been placed';
        $array['file'] = public_path() . '/invoices/Order#' . $order->code . '.pdf';
        $array['file_name'] = 'Order#' . $order->code . '.pdf';

        //sends email to customer with the invoice pdf attached
        Mail::to($email)->queue(new InvoiceEmailManager($array));

        unlink($array['file']);

        $request->session()->put('order_id', $order->id);
        flash(__('New Custom Order added successfully'))->success();
        return redirect()->route('orders.index.admin');
    }

    public function shippingMethod()
    {
        $methods = ShippingMethod::all();
        return view("shipmethod.index", compact('methods'));
    }

    public function shippingMethodCreate()
    {
        return view('shipmethod.create');
    }

    public function shippingMethodStore(Request $request)
    {
        $link = new ShippingMethod;
        $link->title = $request->title;
        $link->price = $request->price;
        $link->status = "1";
        if ($link->save()) {
            flash('Shipping method has been inserted successfully')->success();
            return redirect()->route('shippingmethod.index');
        }
        flash('Something went wrong')->error();
        return back();
    }

    public function shippingMethodEdit($id)
    {
        $methods = ShippingMethod::findOrFail(decrypt($id));
        return view('shipmethod.edit', compact('methods'));
    }

    public function shippingMethodUpdate(Request $request, $id)
    {
        $link = ShippingMethod::findOrFail($id);
        $link->title = $request->title;
        $link->price = $request->price;
        if ($link->save()) {
            flash('Shipping method has been updated successfully')->success();
            return redirect()->route('shippingmethod.index');
        }
        flash('Something went wrong')->error();
        return back();
    }

    public function shippingMethodDelete($id)
    {
        $link = ShippingMethod::findOrFail($id);
        if (ShippingMethod::destroy($id)) {
            flash('Shipping method has been deleted successfully')->success();
            return redirect()->route('shippingmethod.index');
        }

        flash('Something went wrong')->error();
        return back();
    }

    public function updateFeatured(Request $request)
    {
        $category = ShippingMethod::findOrFail($request->id);
        $category->status = $request->status;
        if ($category->save()) {
            return 1;
        }
        return 0;
    }

    public function orderTracking()
    {
        return view('orders.tracking');
    }

    public function orderTrackingShow(Request $request)
    {
        // dd($request->code);
        $code   = $request->code;
        $order = Order::where('code', '=', $code)->first();
        if ($order) {
            return view('orders.trackingshow', compact('order'));
        } else {
            flash('Order not found')->success();
            return redirect()->route('order-tracking.index');
        }
    }

    public function orderComplainStore(Request $request)
    {
        $order = Order::findOrFail($request->order_id);
        $order->delivery_status = 'complain';
        $order->complain = $request->complain;
        if ($order->save()) {
            flash('Complain has been saved successfully')->success();
            return redirect()->route('order-tracking.index');
        }
        flash('Something went wrong')->error();
        return view('orders.tracking');
    }
}
