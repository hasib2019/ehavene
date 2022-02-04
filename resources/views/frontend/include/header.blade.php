        <header>

            <div class="header-container">
                <div class="login-top">
                    <!-- Modal -->
                    <div class="modal fade" id="loginpop" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header" style="text-align: center;">

                                    <button type="button" class="close" data-dismiss="modal">×</button>
                                    <h4 class="modal-title"> Login </h4>
                                </div>
                                <div class="modal-body">
                                    <section class="col1-layout">
                                        <div class="main">
                                            <div style="overflow: hidden;">
                                                <div class="account-login">
                                                    <div class="col-sm-6 col-md-6 col-xs-12">
                                                        <div class="box-authentication box-authentication-popup">
                                                            <p class="before-login-text"> Welcome back! Sign in to your account </p>

                                                            <label for="emmail_login"> Email or Phone <span class="required">*</span></label>

                                                            <input id="loginemail" name="loginemail" placeholder=" Email or Phone " type="text" class="form-control">

                                                            <label for="password_login"> Password <span class="required">*</span></label>

                                                            <!-- <input id="loginpassword" name="loginpassword" placeholder=" Mimimum 6 characters " type="password" class="form-control">-->
                                                            <input id="loginpassword" name="loginpassword" placeholder=" Mimimum 6 characters " type="password" class="form-control">

                                                            <p class="forgot-pass"><a href="https://aponpharmacy.com/forget_password"> Lost your password  ?</a></p>

                                                            <button id="login_submit" class="button"><i class="icon-lock icons"></i>&nbsp; <span> Login </span></button>

                                                            <input type="hidden" id="return_url" value="https://aponpharmacy.com">


                                                        </div>
                                                    </div>

                                                    <div class="col-sm-6 col-md-6 col-xs-12">
                                                        <div class="box-authentication">
                                                            <p> Connect your Facebook Account for Sign Up Apon Lab- Anything Everywhere .</p>

                                                            <a onclick="fb_login()" class="facebook_login" style="margin-top:5px; margin-bottom:5px">&nbsp;</a>
                                                            <div class="register-benefits">
                                                                <h5> Dont have an account yet  ?
           <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;"> Sign up         </a></h5></div>
                                                            <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">
                                                            </a>
                                                        </div>
                                                        <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">
                                                        </a>
                                                    </div>
                                                    <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">

                                                    </a>
                                                </div>
                                                <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">
                                                </a>
                                            </div>
                                            <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">
                                            </a>
                                        </div>
                                        <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">
                                        </a>
                                    </section>
                                </div>
                                <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">

                                </a>
                            </div>
                            <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">
                            </a>
                        </div>
                        <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">

                        </a>
                    </div>
                    <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">
                    </a>
                </div>
                <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">
                </a>
            </div>
            <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">

                <!-- JS -->

                <!-- jquery js -->
                <script type="text/javascript" src="./files/jquery.min.js"></script>

                <!-- bootstrap js -->
                <script type="text/javascript" src="./files/bootstrap.min.js"></script>

                <!-- owl.carousel.min js -->
                <script type="text/javascript" src="./files/owl.carousel.min.js"></script>

                <!-- jquery.mobile-menu js -->
                <script type="text/javascript" src="./files/mobile-menu.js"></script>

                <!--jquery-ui.min js -->
                <script type="text/javascript" src="./files/jquery-ui.js"></script>

                <!-- main js -->

                <!-- countdown js -->
                <script type="text/javascript" src="./files/countdown.js"></script>

                <!-- Slider Js -->
                <!-- <script type="text/javascript" src="/public/themes/js/revolution-slider.js"></script>
<script type='text/javascript'>
        jQuery(document).ready(function(){
            jQuery('#rev_slider_4').show().revolution({
                dottedOverlay: 'none',
                delay: 5000,
                startwidth: 865,
              startheight: 450,

                hideThumbs: 200,
                thumbWidth: 200,
                thumbHeight: 50,
                thumbAmount: 2,

                navigationType: 'thumb',
                navigationArrows: 'solo',
                navigationStyle: 'round',

                touchenabled: 'on',
                onHoverStop: 'on',

                swipe_velocity: 0.7,
                swipe_min_touches: 1,
                swipe_max_touches: 1,
                drag_block_vertical: false,

                spinner: 'spinner0',
                keyboardNavigation: 'off',

                navigationHAlign: 'center',
                navigationVAlign: 'bottom',
                navigationHOffset: 0,
                navigationVOffset: 20,

                soloArrowLeftHalign: 'left',
                soloArrowLeftValign: 'center',
                soloArrowLeftHOffset: 20,
                soloArrowLeftVOffset: 0,

                soloArrowRightHalign: 'right',
                soloArrowRightValign: 'center',
                soloArrowRightHOffset: 20,
                soloArrowRightVOffset: 0,

                shadow: 0,
                fullWidth: 'on',
                fullScreen: 'off',

                stopLoop: 'off',
                stopAfterLoops: -1,
                stopAtSlide: -1,

                shuffle: 'off',

                autoHeight: 'off',
                forceFullWidth: 'on',
                fullScreenAlignForce: 'off',
                minFullScreenHeight: 0,
                hideNavDelayOnMobile: 1500,

                hideThumbsOnMobile: 'off',
                hideBulletsOnMobile: 'off',
                hideArrowsOnMobile: 'off',
                hideThumbsUnderResolution: 0,

                hideSliderAtLimit: 0,
                hideCaptionAtLimit: 0,
                hideAllCaptionAtLilmit: 0,
                startWithSlide: 0,
                fullScreenOffsetContainer: ''
            });
        });
        </script> -->

                <script src="./files/sdk(1).js" type="text/javascript"></script>
                <script type="text/javascript">
                    window.fbAsyncInit = function() {
                        FB.init({
                            appId: '252403752219546',
                            oauth: true,
                            status: true, // check login status
                            cookie: true, // enable cookies to allow the server to access the session
                            xfbml: true, // parse XFBML
                            version: 'v2.8' // use graph api version 2.8
                        });

                    };

                    function fb_login() {
                        console.log('fb_login function initiated');
                        FB.login(function(response) {

                            console.log('login response');
                            console.log(response);
                            console.log('Response Status' + response.status);
                            //top.location.href=http://demo.Sundaroecommerce.com/;
                            if (response.authResponse) {

                                console.log('Auth success');

                                FB.api("/me", 'GET', {
                                    'fields': 'id,email,verified,name'
                                }, function(me) {

                                    if (me.id) {

                                        //console.log( 'Retrived user details from FB.api', me );

                                        var id = me.id;
                                        var email = me.email;
                                        var name = me.name;
                                        var live = '';
                                        if (me.hometown != null) {
                                            var live = me.hometown.name;
                                        }

                                        var passData = 'fid=' + id + '&email=' + email + '&name=' + name + '&live=' + live;
                                        //alert(passData);
                                        //console.log('data', passData);

                                        $.ajax({
                                            type: 'GET',
                                            data: passData,
                                            //data: $.param(passData),
                                            global: false,
                                            url: 'https://aponpharmacy.com/facebooklogin',
                                            success: function(responseText) {
                                                console.log(responseText);

                                                location.reload();
                                            },
                                            error: function(xhr, status, error) {
                                                console.log(status, status.responseText);
                                            }
                                        });

                                    } else {

                                        console.log('There was a problem with FB.api', me);

                                    }
                                });

                            } else {
                                console.log('Auth Failed');
                            }

                        }, {
                            scope: 'email'
                        });
                    }

                    function logout() {

                        try {
                            if (FB.getAccessToken() != null) {
                                FB.logout(function(response) {
                                    // user is now logged out from facebook do your post request or just redirect
                                    window.location = "https://aponpharmacy.com/facebook_logout";
                                });
                            } else {
                                // user is not logged in with facebook, maybe with something else
                                window.location = "https://aponpharmacy.com/facebook_logout";
                            }
                        } catch (err) {
                            // any errors just logout
                            window.location = "https://aponpharmacy.com/facebook_logout";
                        }
                        /*  FB.logout(function(response) {

                             FB.getAuthResponse(null, 'unknown');
                             //FB.Auth.getAuthResponse(null, 'unknown');
                              window.location = "";
                           //FB.logout();
                                    console.log(response);

                         }); */
                    }
                </script>

                <script>
                    $(document).ready(function() {
                        var cname = $('#inputregisterName');
                        var cemail = $('#inputregisterEmail');
                        var cpwd = $('#inputregisterPassword');
                        var loginemail = $('#loginemail');
                        var loginpassword = $('#loginpassword');
                        var selectcity = $('#selectcity');
                        var selectcountry = $('#selectcountry');
                        var return_url = $('#return_url');

                        $('#login_submit').click(function() {

                            var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                            if (loginemail.val() == "") {
                                loginemail.css('border', '1px solid red');

                                loginemail.focus();
                                return false;
                            } else {
                                loginemail.css('border', '');

                            }

                            //  if(!emailReg.test(loginemail.val()))
                            //     {
                            //       loginemail.css('border', '1px solid red');
                            //
                            //       loginemail.focus();
                            //       return false;
                            //
                            //     }
                            //
                            // else
                            //   {
                            //   loginemail.css('border', '');
                            //
                            //
                            //    }
                            if (loginpassword.val() == "") {
                                loginpassword.css('border', '1px solid red');

                                loginpassword.focus();
                                return false;
                            } else {

                                loginpassword.css('border', '');
                                $('#logerror_msg').html('');

                                var logemail = loginemail.val();
                                var logpassword = loginpassword.val();
                                var returl = return_url.val()

                                var passemail = 'email=' + logemail + "&pwd=" + logpassword;

                                $.ajax({
                                    type: 'get',
                                    data: passemail,
                                    url: 'https://aponpharmacy.com/user_login_submit_popup',

                                    success: function(responseText, status) {
                                        /* alert(status+passemail);exit; */

                                        if (responseText) {
                                            if (responseText.trim() == "success") {

                                                //$(".loginSuccess").html("");

                                                //window.location=returl;

                                                /* $("#login").modal("hide"); */

                                                window.location.reload();
                                            } else if (responseText.trim() == "block") {
                                                $('#logerror_msg').html('Seems your user account is not Active, please contact us for more details');
                                            } else {
                                                $('#logerror_msg').html('Invalid Login Credentials');
                                            }

                                        }
                                    }
                                });

                            }

                        });
                    });
                </script>
                <div class="alert-box success" id="success" style="display:none; "> Successfully Subscribed !!!</div>

                <style>
                    .popup1,
                    .popup2 {
                        vertical-align: top;
                        background: #fff;
                        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .2);
                        display: none;
                        text-align: left;
                        z-index: 3000;
                        padding: 10px 20px;
                        font-size: 13px;
                        margin-left: 21px;
                        margin-top: -11px;
                    }

                    .popup1,
                    .popup1,
                    .popup2 {
                        display: none;
                        background: #fff;
                    }

                    .popup li.active .popup1 {
                        display: block;
                    }

                    .popup1:hover .popup2 {
                        display: block;
                    }
                </style>
                <!--  <link rel="stylesheet" href="https://aponpharmacy.com/public/themes/css/style.css"> -->

                <!-- header inner -->
            </a>
            <div class="header-inner">
                <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">
                </a>
                <div class="container">
                    <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">
                    </a>
                    <div class="row">
                        <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">
                        </a>
                        <div class="col-sm-3 col-xs-12 jtv-logo-block">
                            <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;">

                                <!-- Header Logo -->
                            </a>
                            <div class="logo">
                                <a href="https://aponpharmacy.com/registers" style="color:#00A0E4;"> </a>
                                <a class="brand" href="https://aponpharmacy.com/index"><img src="{{asset('./files/Logo_1553519479.png')}}" alt=" Logo "></a>
                            </div>

                        </div>
                        <div class="col-xs-12 col-sm-5 col-md-6 jtv-top-search">

                            <!-- Search -->

                            <div class="top-search">
                                <div id="search">
                                    <form action="https://aponpharmacy.com/searching" class="form-inline navbar-search searBoxStyle">
                                        <div class="input-group">
                                            <select class="cate-dropdown hidden-xs hidden-sm" name="category">
                                                <option value="0">All Categories</option>

                                                <option value="MjIx">
                                                    MEN</option>

                                                <option value="MjIy">
                                                    WOMEN</option>

                                                <option value="MjIz">
                                                    KIDS</option>

                                                <option value="MjI0">
                                                    ELECTRONICS</option>

                                                <option value="MjI1">
                                                    HOME APPLIANCE </option>

                                                <option value="MjI2">
                                                    MOBILE &amp; COMPUTER</option>

                                            </select>

                                            <input type="text" id="searchbox" value="" placeholder="Search Din Ratri..." autocomplete="on" style="font-family:lato !important;border-radius: 0px; float: left;" name="q" class="form-control">

                                            <button class="btn-search" name="submit" type="submit"><i class="fa fa-search"></i></button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <!-- End Search -->

                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-3 top-cart">
                            <div class="link-wishlist">
                                <a href="https://aponpharmacy.com/" role="button" data-toggle="modal" data-target="#loginpop"><i class="fa fa-user"></i><span>  My Account
                    </span></a>
                            </div>
                            <!-- top cart -->
                            <div class="top-cart-contain">
                                <div class="mini-cart">
                                    <!-- removed data-toggle="dropdown"  -->
                                    <div data-hover="dropdown" class="basket dropdown-toggle">
                                        <a href="https://aponpharmacy.com/" role="button" data-toggle="modal" data-target="#loginpop">
                                            <div class="cart-icon"><i class="icon-basket-loaded icons"></i></div>
                                        </a>
                                        <div class="shoppingcart-inner hidden-xs">
                                            <a href="https://aponpharmacy.com/" role="button" data-toggle="modal" data-target="#loginpop"><span class="cart-title"> My Cart  </span></a>
                                        </div>
                                    </div>

                                    <div class="menuIcon" onclick="myFunction(this)">
                                        <div class="bar1"></div>
                                        <div class="bar2"></div>
                                        <div class="bar3"></div>
                                    </div>
                                    <div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- end header -->
