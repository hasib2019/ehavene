<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use App\Models\Master;
use App\Models\Customer;
use App\Models\Transaction;
use App\Models\MobileVerify;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Session;
class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'emailAddress' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'email' => ['required','regex:/^([0-9\s\-\+\(\)]*)$/','min:11'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function store(Request $data)
    {
    if($data['password']==$data['password_confirmation']){       
        
        // $commission = Master::where('softcode', '=','ref_commission')->first()->hardcode;
        //update user
        // if($data['reference'] == 'reference'){
            
        // }else{
            
        //     $reference_id = User::where('ref_id', '=', $data['reference'])->first()->id;
        //     $updateuser = User::find(User::where('ref_id', '=', $data['reference'])->first()->id);
        //     $updateuser->balance = $updateuser->balance+$commission;
        //     $updateuser->save();
           
        //     $tran = new Transaction;
        //     $tran->user_id = $reference_id;
        //     $tran->ref_by = $data['reference'];
        //     $tran->status = "Pending";
        //     $tran->amount = $commission;
        //     $tran->earning_type = "Reference";
        //     $tran->save();
        // }
        //update user
        // dd($data['emailAddress']);
        $phone = $data['email'];
        $codeverify = rand(1234, 4568);
        $user = User::create([
          'name' => $data['name'],
          'phone' => $data['email'],
          'email' => $data['emailAddress'],
          'password' => Hash::make($data['password']),
          'email_verified_at' => now(),
          'status' => 1,

        ]);
        $user_id = $user->id;
        $mobile_verify = new MobileVerify();
        $mobile_verify->user_id = $user_id;
        $mobile_verify->code = $codeverify;

    //   if($mobile_verify->save()){
    //       $curl = curl_init();
    //       curl_setopt_array($curl, array(
    //           CURLOPT_URL => "https://api.mobireach.com.bd/SendTextMessage?Username=lextlink&Password=Dhaka@5599&From=Apon%20Health&To=88".$phone."&Message=".urlencode('Your Apon Health varification code is: '.$codeverify)."",
    //           CURLOPT_RETURNTRANSFER => true,
    //           CURLOPT_TIMEOUT => 30,
    //           CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    //           CURLOPT_CUSTOMREQUEST => "GET",
    //           CURLOPT_HTTPHEADER => array(
    //               "cache-control: no-cache"
    //           ),
    //       ));
    //       $response = curl_exec($curl);
    //       $err = curl_error($curl);
    //       curl_close($curl);
    //   }
        // return redirect()->route('varified',encrypt($user_id));
        return redirect()->route('dashboard');
    }else{
        flash(__('Opps! Password Did not match'))->error();
        return back();
    }

    }

    public function varified($user_id){
        $user = User::where('id', decrypt($user_id))->first();
        return view('frontend.verify', compact('user'));
    }

    public function varifiedconfirm(Request $request)
    {
        $id = MobileVerify::where('user_id',$request->user_id)->first();
        if($id){
            $varify_code = MobileVerify::find($id->id);
            if($varify_code->code == $request->verification_code){
                $user = User::find($request->user_id);
                $user->status= 1;
                $user->save();
                $details=MobileVerify::where('user_id',$request->user_id)->delete();
                auth()->login($user, true);
                if(Session::has('cart')){
                    flash(__('Account create successfully. Please add your address first'))->success();
                    return redirect()->route('checkout.shipping_info');
                }else{
                    flash(__('Account Varified successfully!'))->success();
                    return redirect()->route('dashboard');
                }
            }else{
                flash(__('Sorry! wrong varified code'))->error();
            return back();
            }
        }else{
            flash(__('Sorry! wrong varified code'))->error();
            return back();
        }

    }

    public function resendotp(Request $request)
    {
        $detail = MobileVerify::where('user_id', $request->user_id)->first();
        if($detail){
            $details=MobileVerify::where('user_id',$request->user_id)->delete();
            $phone = $request->phone;
            $codeverify = rand(1234, 4568);
            $mobile_verify = new MobileVerify();
            $mobile_verify->user_id = $request->user_id;
            $mobile_verify->code = $codeverify;

        if($mobile_verify->save()){
            $curl = curl_init();
            curl_setopt_array($curl, array(
                CURLOPT_URL => "https://api.mobireach.com.bd/SendTextMessage?Username=lextlink&Password=Dhaka@5599&From=Apon%20Health&To=88".$phone."&Message=".urlencode('your varification code: '.$codeverify)."",
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_TIMEOUT => 30,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "GET",
                CURLOPT_HTTPHEADER => array(
                    "cache-control: no-cache"
                ),
            ));
            $response = curl_exec($curl);
            $err = curl_error($curl);
            curl_close($curl);
        }
        return redirect()->route('varified',encrypt($request->user_id));

    }else{
        $phone = $request->phone;
        $codeverify = rand(1234, 4568);
        $mobile_verify = new MobileVerify();
        $mobile_verify->user_id = $request->user_id;
        $mobile_verify->code = $codeverify;

    if($mobile_verify->save()){
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => "https://api.mobireach.com.bd/SendTextMessage?Username=lextlink&Password=Dhaka@5599&From=Apon%20Health&To=88".$phone."&Message=".urlencode('your varification code: '.$codeverify)."",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "GET",
            CURLOPT_HTTPHEADER => array(
                "cache-control: no-cache"
            ),
        ));
        $response = curl_exec($curl);
        $err = curl_error($curl);
        curl_close($curl);
    }
    return redirect()->route('varified',encrypt($request->user_id));
    }

    }

}
