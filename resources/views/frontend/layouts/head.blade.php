 @php
     $seosetting = \App\Models\SeoSetting::first();
 @endphp
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <meta name="robots" content="index, follow">

 <meta name="csrf-token" content="{{ csrf_token() }}" />
 @if (!empty($seosetting->description))
     <meta name="description" content="{{ $seosetting->description }}">
 @endif

 @if (!empty($seosetting->keyword))
     <meta name="keywords" content="{{ $seosetting->keyword }}">
 @endif

 @if (!empty($seosetting->author))
     <meta name="author" content="{{ $seosetting->author }}">
 @endif

 @if (!empty($seosetting->sitemap_link))
     <meta name="sitemap_link" content="{{ $seosetting->sitemap_link }}">
 @endif

 <!-- Favicon -->
 <link name="favicon" type="image/x-icon" href="{{ asset(\App\Models\GeneralSetting::first()->favicon) }}"
     rel="shortcut icon" />
 <!-- Fonts -->
 <link rel="preconnect" href="https://fonts.gstatic.com">
 <link
     href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i&display=swap"
     rel="stylesheet">
 <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville:300,300i,400,400i,500,500i&display=swap"
     rel="stylesheet">
 <!-- Bootstrap -->
 <link rel="stylesheet" href="{{ asset('frontend/css/bootstrap.min.css') }}" type="text/css">
 <!-- Icons -->
 <link rel="stylesheet" href="{{ asset('frontend/css/font-awesome.min.css') }}" type="text/css">
 <link rel="stylesheet" href="{{ asset('frontend/css/line-awesome.min.css') }}" type="text/css">
 <link type="text/css" href="{{ asset('frontend/css/bootstrap-tagsinput.css') }}" rel="stylesheet">
 <link type="text/css" href="{{ asset('frontend/css/jodit.min.css') }}" rel="stylesheet">
 <link type="text/css" href="{{ asset('frontend/css/sweetalert2.min.css') }}" rel="stylesheet">
 <link type="text/css" href="{{ asset('frontend/css/slick.css') }}" rel="stylesheet">
 <link type="text/css" href="{{ asset('frontend/css/xzoom.css') }}" rel="stylesheet">
 <link type="text/css" href="{{ asset('frontend/css/jquery.share.css') }}" rel="stylesheet">
 <link type="text/css" href="{{ asset('frontend/css/animate.min.css') }}" rel="stylesheet">
 <link type="text/css" href="{{ asset('frontend/icofont.min.css') }}" rel="stylesheet">
 <!-- Global style (main) -->
 <link type="text/css" href="{{ asset('frontend/css/active-shop.css') }}" rel="stylesheet" media="screen">
 {{-- new css --}}
 <link type="text/css" href="{{ asset('frontend/css/app.css') }}" rel="stylesheet">
 <link type="text/css" href="{{ asset('frontend/css/swiper-bundle.min.css') }}" rel="stylesheet">
 <!--Spectrum Stylesheet [ REQUIRED ]-->
 <link href="{{ asset('css/spectrum.css') }}" rel="stylesheet">

 <!-- Custom style -->
 <link type="text/css" href="{{ asset('frontend/css/custom-style.css') }}" rel="stylesheet">
 <link type="text/css" href="{{ asset('frontend/css/custom-nav.css') }}" rel="stylesheet">


 @if (\App\Models\Language::where('code', Session::get('locale', Config::get('app.locale')))->first()->rtl == 1)
     <!-- RTL -->
     <link type="text/css" href="{{ asset('frontend/css/active.rtl.css') }}" rel="stylesheet">
 @endif
 {{-- webmaster --}}
 <meta name="yandex-verification" content="b6b328dcbe4cc92a" />
 {{-- webmaster counter code --}}
 <!-- Yandex.Metrika counter -->
 <script type="text/javascript">
     (function(m, e, t, r, i, k, a) {
         m[i] = m[i] || function() {
             (m[i].a = m[i].a || []).push(arguments)
         };
         m[i].l = 1 * new Date();
         k = e.createElement(t), a = e.getElementsByTagName(t)[0], k.async = 1, k.src = r, a.parentNode.insertBefore(
             k, a)
     })
     (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

     ym(89171552, "init", {
         clickmap: true,
         trackLinks: true,
         accurateTrackBounce: true,
         webvisor: true,
         ecommerce: "dataLayer"
     });
 </script>
 <noscript>
     <div><img src="https://mc.yandex.ru/watch/89171552" style="position:absolute; left:-9999px;" alt="" />
     </div>
 </noscript>
 <!-- /Yandex.Metrika counter -->
 {{-- serch console add --}}
 <meta name="google-site-verification" content="-fRrJFS_wfFvJoxRghPnoOdehBLbMYnvwG-CpX5WZD4" />
 <meta name="google-site-verification" content="X0iUvCMcdm0zes5mzq2Y_0IBbqS4rKAF-9jBY7VR6s0" />
 {{-- bing console added --}}
 <meta name="msvalidate.01" content="2DA8E1841A9BA8557D45514335B6631C" />
 <!-- Clarity tracking code for https://ehavene.com.bd/ -->
 <script>
     (function(c, l, a, r, i, t, y) {
         c[a] = c[a] || function() {
             (c[a].q = c[a].q || []).push(arguments)
         };
         t = l.createElement(r);
         t.async = 1;
         t.src = "https://www.clarity.ms/tag/" + i + "?ref=bwt";
         y = l.getElementsByTagName(r)[0];
         y.parentNode.insertBefore(t, y);
     })(window, document, "clarity", "script", "bhir5ela5h");
 </script>
 {{-- tag manager --}}
 <!-- Google Tag Manager -->
 <script>
     (function(w, d, s, l, i) {
         w[l] = w[l] || [];
         w[l].push({
             'gtm.start': new Date().getTime(),
             event: 'gtm.js'
         });
         var f = d.getElementsByTagName(s)[0],
             j = d.createElement(s),
             dl = l != 'dataLayer' ? '&l=' + l : '';
         j.async = true;
         j.src =
             'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
         f.parentNode.insertBefore(j, f);
     })(window, document, 'script', 'dataLayer', 'GTM-M6MJM36');
 </script>
 <!-- Global site tag (gtag.js) - Google Analytics -->
 <script async src="https://www.googletagmanager.com/gtag/js?id=G-6X1HHJ1DQV"></script>
 <script>
     window.dataLayer = window.dataLayer || [];

     function gtag() {
         dataLayer.push(arguments);
     }
     gtag('js', new Date());

     gtag('config', 'G-6X1HHJ1DQV');
 </script>
 <!-- End Google Tag Manager -->

 <!-- color theme -->
 <link href="{{ asset('frontend/css/colors/' . \App\Models\GeneralSetting::first()->frontend_color . '.css') }}"
     rel="stylesheet">
 <!-- jQuery -->
 <script src="{{ asset('frontend/js/vendor/jquery.min.js') }}"></script>
 <!--Start of Tawk.to Script-->
 <script type="text/javascript">
     var Tawk_API = Tawk_API || {},
         Tawk_LoadStart = new Date();
     (function() {
         var s1 = document.createElement("script"),
             s0 = document.getElementsByTagName("script")[0];
         s1.async = true;
         s1.src = 'https://embed.tawk.to/624432c62abe5b455fc25e8e/1fvd6cmhj';
         s1.charset = 'UTF-8';
         s1.setAttribute('crossorigin', '*');
         s0.parentNode.insertBefore(s1, s0);
     })();
 </script>
 <!--End of Tawk.to Script-->
