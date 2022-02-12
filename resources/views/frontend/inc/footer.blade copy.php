<style>
    footer {
    overflow: hidden;
    color: white;
    background: #333;
    font-size: 13px;
    padding-top: 35px;
}

.footer-logo {
    margin: 0px 0px 18px;
    display: block;
}
footer p {
    color: white;
    line-height: 20px;
}
footer h5 {
    margin: 0px 0 2px;
    padding: 0 0 10px;
    letter-spacing: 0.5px;
    text-transform: uppercase;
    color: white;
}
h5 {
    font-weight: 600;

}
.visible-lg, .visible-md, .visible-sm, .visible-xs {
    display: none!important;
}
footer .footer-links ul {
    margin: 0px;
    padding: 0px;
}
footer .footer-links ul li {
    list-style-type: none;
    padding: 5px 0;
    font-size: 12px;
}
footer .footer-links ul li a {
    transition: all .3s ease-in-out 0s;
    color: rgba(255,255,255,0.50);
}
.links-title{
    font-size: 16px;
}
.footer-coppyright {
    padding-bottom: 2px;
    background-color: #222;
    margin-top: 40px;
}
.coppyright {
    padding-top: 12px;
    color: #999;
}
.coppyright a {
    color: #999;
}
ul.footer-company-links {
    padding: 12px 0px 12px;
    margin: auto;
    text-align: right;
}
ul.footer-company-links li:first-child {
    border: none;
}
ul.footer-company-links li {
    display: inline-block;
    margin-left: 0;
    list-style: none;
}
ul.footer-company-links li a {
    color: #999;
}

.list-links li a{
    font-weight: 600;
    font-size: 13px;
}
@media only screen and (max-width: 600px) {
    .footer-sm{
        width: 24%;
    }
    .ml{
        margin-left: 10px
    }
}

</style>
<footer>
    <div class="container-custom">
        <div class="row">
            <div class="col-sm-6 col-md-4 col-xs-12">
                <div class="footer-logo">
                    <a class="brand" href="{{ URL::to('/') }}"><img src="{{asset('uploads/logo/apon.png')}}" alt=" Logo "></a>
                    <p>Address: Section-12, Block-D, Road-21, House-24. <br>
                       Email: info@aponpharmacy.com <br>
                       Phone: +8801886335834 </p>
                    <p style="font-size: 14px;color: rgba(255,255,255,0.50);">©  2020 <a href="https://aponpharmacy.com">Apon Health</a>. All Rights Reserved <a href="https://aponlab.com/">Apon Lab</a>.</p>
                </div>

                {{-- <div>
                    <input type="text" placeholder="Enter your email" style="height: 40px;width:200px;padding:19px;border:none;border-radius: 5px;background-color: rgba(0,0,0,0.20);">
                    <input type="submit" value="Subscribe" style="margin-left:-21px;;border:none;border-radius:5px;background-color: #E88139;color:white;padding:10px;">
                </div> --}}

            </div>
            <div class="footer-sm collapsed-block ml">
                <div class="footer-links">
                    <h5 class="links-title">About</h5>
                    <div class="tabBlock" id="TabBlock-3">
                        <ul class="list-links list-unstyled">
                            <li><a href="{{ route('aboutus') }}">About us</a></li>
                            <li><a href="{{ route('contactus') }}">Contact Us</a></li>
                            <!--<li><a href="{{ route('career') }}">Careers</a></li>-->
                            <!--<li><a href="{{ route('stories') }}">Our Stories</a></li>-->
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-sm collapsed-block">
                <div class="footer-links">
                    <h5 class="links-title">HELP</h5>
                    <div class="tabBlock" id="TabBlock-3">
                        <ul class="list-links list-unstyled">
                            <li><a href="{{ route('payments') }}">Payments</a></li>
                            <!--<li><a href="{{ route('shipping') }}">Shipping</a></li>-->
                            <!--<li><a href="{{ route('supportpolicy') }}">Support</a></li>-->
                            <!--<li><a href="{{ route('faq') }}">FAQ</a></li>-->
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-sm collapsed-block">
                <div class="footer-links">
                    <h5 class="links-title">POLICY<a class="expander visible-xs" href="">+</a></h5>
                    <div class="tabBlock" id="TabBlock-3">
                        <ul class="list-links list-unstyled">
                            <li><a href="{{ route('privacypolicy') }}">Privacy</a></li>
                            <li><a href="{{ route('returnpolicy') }}">Returns Policy</a></li>
                            <!--<li><a href="{{ route('security') }}">Security</a></li>-->
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-sm collapsed-block">
                <div class="footer-links">
                    <h5 class="links-title">SOCIAL<a class="expander visible-xs" href="">+</a></h5>
                    <div class="tabBlock" id="TabBlock-3">
                        <ul class="list-links list-unstyled">
                            <li><i class="fa fa-facebook" style="background-color: white;color:#333333;width:12px;border-radius: 50%;text-align: center;"></i>&nbsp;&nbsp;<a href="#" target="_blank">Facebook</a></li>
                            <li><i class="fa fa-instagram" style="background-color: white;color:#333333;width:12px;border-radius: 50%;text-align: center;"></i>&nbsp;&nbsp;<a href="#" target="_blank">Instagram</a></li>
                            <!--<li><i class="fa fa-twitter" style="background-color: white;color:#333333;width:12px;border-radius: 50%;text-align: center;"></i>&nbsp;&nbsp;<a href="#" target="_blank">Twitter</a></li>-->
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="footer-coppyright">
        <div class="container-custom">
            <div class="row" style="padding-bottom:19px; padding-top:19px;">
                <div class="col-sm-4 col-md-6 col-xl-3 coppyright">
                    <a href=""><img src="{{asset('./files/Button - App Store 2.png')}}"></a>
                    <a href=""><img src="{{asset('./files/Button - Play Store 2.png')}}" style="margin-left:10px;"></a>
                </div>
                <div class="col-sm-4 col-md-6 col-xl-4" style="margin-top:22px;">
                    <a href="{{ route('user.ordernow') }}"><i class="fa fa-shopping-bag" style="padding-right:4px;color:#CB356B;font-size:13px;"></i>&nbsp;<span style="padding-left: 2px;padding-right: 10px;">Order Now</span></a>
                    {{-- <a href=""><i class="fa fa-gift" style="padding-right:4px;color:#CB356B;font-size:13px;"></i>&nbsp;<span style="padding-left: 2px;padding-right: 10px;">Gift Cards</span></a>
                    <a href=""><i class="fa fa-comments" style="padding-right:4px;color:#CB356B;font-size:13px;"></i>&nbsp;<span style="padding-left: 2px;">Support Center</span></a> --}}
                </div>
                <div class="col-sm-12 col-md-12 col-xl-5">
                    <ul class="footer-company-links">
                        <li>
                            <a href=""><img src="{{asset('./files/1.svg')}}"></a>
                        </li>
                        <li>
                            <a href=""><img src="{{asset('./files/1 copy.svg')}}"></a>
                        </li>
                        <li>
                            <a href=""><img src="{{asset('./files/1 copy 2.svg')}}"></a>
                        </li>
                        <li>
                            <a href=""><img src="{{asset('./files/1 copy 3.svg')}}"></a>
                        </li>
                        <li>
                            <a href=""><img src="{{asset('./files/1 copy 4.svg')}}"></a>
                        </li>
                        <li>
                            <a href=""><img src="{{asset('./files/1 copy 5.svg')}}"></a>
                        </li>
                        <li>
                            <a href=""><img src="{{asset('./files/1 copy 6.svg')}}"></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
