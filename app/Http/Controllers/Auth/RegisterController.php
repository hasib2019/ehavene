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
        // dd('work');
    if($data['password']==$data['password_confirmation']){       
        $phone = $data['email'];
        $codeverify = rand(1234, 4568);
        $user = User::create([
          'name' => $data['name'],
          'phone' => $data['email'],
          'email' => $data['emailAddress'],
          'password' => Hash::make($data['password']),
          'email_verified_at' => now(),
          'status' => 0,

        ]);
        $user_id = $user->id;
        $mobile_verify = new MobileVerify();
        $mobile_verify->user_id = $user_id;
        $mobile_verify->code = $codeverify;

      if($mobile_verify->save()){
            $sms = "Your Ehavene varification code is: $codeverify";
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
      }
        return redirect()->route('varified',encrypt($user_id));
        // return redirect()->route('dashboard');
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
            $sms = "Your Ehavene varification code is: $codeverify";
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
        }
        return redirect()->route('varified',encrypt($request->user_id));

    }else{
        $phone = $request->phone;
        $codeverify = rand(1234, 4568);
        $mobile_verify = new MobileVerify();
        $mobile_verify->user_id = $request->user_id;
        $mobile_verify->code = $codeverify;

    if($mobile_verify->save()){
        $sms = "Your Ehavene varification code is: $codeverify";
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
    }
    return redirect()->route('varified',encrypt($request->user_id));
    }

    }

    public function resendsms(Request $request)
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
            $sms = "Your Ehavene varification code is: $codeverify";
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
        }
        flash(__('SMS Send succesfully'))->success();
        return "sms send";;

    }else{
        $phone = $request->phone;
        $codeverify = rand(1234, 4568);
        $mobile_verify = new MobileVerify();
        $mobile_verify->user_id = $request->user_id;
        $mobile_verify->code = $codeverify;

    if($mobile_verify->save()){
        $sms = "Your Ehavene varification code is: $codeverify";
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
    }
    flash(__('SMS Send succesfully'))->success();
    return "sms send";
    }
    }

}
