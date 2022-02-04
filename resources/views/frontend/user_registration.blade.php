@extends('frontend.layouts.app')
@section('title')
    Registration - Ehavene 
@stop
@section('content')
    <style>
        #message {
            display: block;
            background: #f1f1f1;
            color: #000;
            margin-top: 0px;
            padding: 10px 0px;
            margin-bottom: 10px;
        }

        #message p {
            padding: 0 35px;
            font-size: 14px;
            line-height: 1rem;
        }

        /* Add a green text color and a checkmark when the requirements are right */
        .valid {
            color: green;
        }

        .valid:before {
            position: relative;
            left: -20px;
            content: "✔";
        }

        /* Add a red text color and an "x" when the requirements are wrong */
        .invalid {
            color: red;
        }

        .invalid:before {
            position: relative;
            left: -20px;
            content: "✖";
        }

    </style>
    <section class="gry-bg py-4">
        <div class="profile">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <div class="card">
                            <div class="text-center px-35 pt-5">
                                <h3 class="heading heading-4 strong-500">
                                    {{ __('Create an account.') }}
                                </h3>
                            </div>
                            <div class="px-5 py-3 py-lg-5">
                                <div class="row align-items-center">
                                    <div class="col-12 col-lg">
                                        <div class="ermsg"></div>
                                        {{-- <form class="form-default" action=""> --}}
                                        <form class="form-default" role="form" action="{{ route('user.register') }}"
                                            method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <!-- <label>{{ __('name') }}</label> -->
                                                        <div class="input-group input-group--style-1">
                                                            <input type="text"
                                                                class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}"
                                                                value="{{ old('name') }}"
                                                                placeholder="{{ __('Name') }}" name="name" id="name"
                                                                required>
                                                            <span class="input-group-addon">
                                                                <i class="text-md la la-user"></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    @error('name')
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('name') }}</strong>
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <!-- <label>{{ __('email') }}</label> -->
                                                        <div class="input-group input-group--style-1">
                                                            <input id="email" type="text"
                                                                class="form-control @error('error') is-invalid @enderror"
                                                                value="{{ old('email') }}"
                                                                placeholder="{{ __('Phone') }}" name="email" required
                                                                autocomplete="email">
                                                            <span class="input-group-addon">
                                                                <i class="text-md la la-envelope"></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    @error('email')
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('email') }}</strong>
                                                            <strong>{{ $message }}</strong>
                                                            {{-- <strong>{{ $validator->messages() }}</strong> --}}
                                                        </span>
                                                    @enderror
                                                    {{-- @if ($errors->any())
                                                        <h5 style="color: rgb(155, 37, 37)">This email has already been used!!</h5>
                                                        @endif --}}
                                                    <span id="error_email"></span>
                                                </div>
                                            </div>

                                            {{-- affiliate code start --}}

                                            <input type="hidden"
                                                class="form-control{{ $errors->has('reference') ? ' is-invalid' : '' }}"
                                                @php
                                                    if (isset($_GET['affiliate_id'])) {
                                                        $id = decrypt($_GET['affiliate_id']);
                                                    }
                                                    if (isset($id)) {
                                                        echo 'value="' . $id . '"';
                                                        echo 'readonly';
                                                    } else {
                                                        echo 'value="reference"';
                                                    }
                                                @endphp placeholder="{{ __('Reference id') }}"
                                                name="reference">
                                            {{-- affiliate code end --}}

                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <!-- <label>{{ __('password') }}</label> -->
                                                        <div class="input-group input-group--style-1">
<input type="password" id="password" class="form-control"
                                                                placeholder="{{ __('Password') }}" name="password"
                                                                pattern="{6,}"
                                                                title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters"
                                                                required>
<span class="input-group-addon">
                                                                <i class="text-md la la-lock"></i>
                                                            </span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="clear"></div>

                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <!-- <label>{{ __('confirm_password') }}</label> -->
                                                        <div class="input-group input-group--style-1">
                                                            <input type="password" class="form-control"
                                                                placeholder="{{ __('Confirm Password') }}"
                                                                name="password_confirmation" id="password_confirmation"
                                                                required>
                                                            <span class="input-group-addon">
                                                                <i class="text-md la la-lock"></i>
                                                            </span>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            {{-- <div class="row">
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <div class="g-recaptcha" data-sitekey="{{ env('CAPTCHA_KEY') }}">
                                                            @if ($errors->has('g-recaptcha-response'))
                                                                <span class="invalid-feedback" style="display:block">
                                                                    <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                                                                </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> --}}
                                            {{-- password validation --}}
                                            <div class="row">
                                                <div class="col-12">
                                                    <div id="message">
                                                        {{-- <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                                                        <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
                                                        <p id="number" class="invalid">A <b>number</b></p>
                                                        <p id="length" class="invalid">Minimum <b>8 characters</b></p> --}}
                                                        <p><span id='messagev'></span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            {{-- password validation --}}

                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="checkbox pad-btm text-left">
                                                        <input class="magic-checkbox" type="checkbox"
                                                            name="checkbox_example_1" id="checkboxExample_1a" required
                                                            checked>
                                                        <label for="checkboxExample_1a" class="text-sm">By signing up
                                                            you agree to our <a href="{{ route('terms') }}">terms and
                                                                conditions</a></label>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="row align-items-center">
                                                <div class="col-12 text-right  mt-3">
                                                    <button type="submit" name="register" id="register"
                                                        class="btn btn-styled btn-base-1 w-100 btn-md">{{ __('Create Account') }}</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    {{ csrf_field() }}

                                    <div class="col-lg-1 text-center align-self-stretch">
                                        <div class="border-right h-100 mx-auto" style="width:1px;"></div>
                                    </div>
                                    <div class="col-12 col-lg">
                                        @if (\App\Models\BusinessSetting::where('type', 'google_login')->first()->value == 1)
                                            <a href="{{ route('social.login', ['provider' => 'google']) }}"
                                                class="btn btn-styled btn-block btn-google btn-icon--2 btn-icon-left px-4 my-4">
                                                <i class="icon fa fa-google"></i> {{ __('Login with Google') }}
                                            </a>
                                        @endif
                                        @if (\App\Models\BusinessSetting::where('type', 'facebook_login')->first()->value == 1)
                                            <a href="{{ route('social.login', ['provider' => 'facebook']) }}"
                                                class="btn btn-styled btn-block btn-facebook btn-icon--2 btn-icon-left px-4 my-4">
                                                <i class="icon fa fa-facebook"></i> {{ __('Login with Facebook') }}
                                            </a>
                                        @endif
                                        @if (\App\Models\BusinessSetting::where('type', 'twitter_login')->first()->value == 1)
                                            <a href="{{ route('social.login', ['provider' => 'twitter']) }}"
                                                class="btn btn-styled btn-block btn-twitter btn-icon--2 btn-icon-left px-4 my-4">
                                                <i class="icon fa fa-twitter"></i> {{ __('Login with Twitter') }}
                                            </a>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            <div class="text-center px-35 pb-3">
                                <p class="text-md">
                                    {{ __('Already have an account?') }}<a href="{{ route('user.login') }}"
                                        class="strong-600">{{ __('Log In') }}</a>
                                </p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
@endsection
@section('script')
    <script>
        $(document).ready(function() {
            $('#email').keyup(function() {
                var error_email = '';
                var email = $('#email').val();
                var _token = $('input[name="_token"]').val();
                var filter = /(^(01){1}[3456789]{1}(\d){8})$/;
                if (!filter.test(email)) {
                    $('#error_email').html('<label class="text-danger">Invalid Phone Number</label>');
                    $('#email').addClass('has-error');
                    $('#register').attr('disabled', 'disabled');
                } else if (email.length > 11) {
                    $('#error_email').html('<label class="text-danger">Invalid Phone Number</label>');
                    $('#email').addClass('has-error');
                    $('#register').attr('disabled', 'disabled');
                } else {
                    $.ajax({
                        url: "{{ route('email_available.check') }}",
                        method: "POST",
                        data: {
                            email: email,
                            _token: _token
                        },
                        success: function(result) {
                            if (result == 'unique') {
                                $('#error_email').html(
                                    '<label class="text-success">Phone Available</label>');
                                $('#email').removeClass('has-error');
                                $('#register').attr('disabled', false);
                            } else {
                                $('#error_email').html(
                                    '<label class="text-danger">Already have a Account</label>'
                                );
                                $('#email').addClass('has-error');
                                $('#register').attr('disabled', 'disabled');
                            }
                        }
                    })
                }
            });

        });
    </script>

    <script>
        $('#password_confirmation').on('keyup', function() {
            if ($('#password').val() == $('#password_confirmation').val()) {
                $('#messagev').html('Password Match').css('color', 'green');
                $('#messagev').addClass('valid');
                $('#messagev').removeClass('invalid');
                $('#register').attr('disabled', false);
            } else {
                $('#messagev').html('Password doesn\'t Match').css('color', 'red');
                $('#messagev').addClass('invalid');
                $('#messagev').removeClass('valid')
                $('#register').attr('disabled', 'disabled');
            }
        });
    </script>
@endsection
