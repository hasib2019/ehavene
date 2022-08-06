
    <!-- Core -->
    <script src="{{ asset('frontend/js/vendor/popper.min.js') }}"></script>
    <script src="{{ asset('frontend/js/vendor/bootstrap.min.js') }}"></script>

    <!-- Plugins: Sorted A-Z -->
    <script src="{{ asset('frontend/js/jquery.countdown.min.js') }}"></script>
    <script src="{{ asset('frontend/js/select2.min.js') }}"></script>
    <script src="{{ asset('frontend/js/nouislider.min.js') }}"></script>

    <script src="{{ asset('frontend/js/sweetalert2.min.js') }}"></script>
    <script src="{{ asset('frontend/js/slick.min.js') }}"></script>
    <script src="https://code.iconify.design/2/2.0.1/iconify.min.js"></script>
    <script src="{{ asset('frontend/js/jquery.share.js') }}"></script>
    <script src="{{ asset('frontend/js/app.js') }}"></script>

    <script type="text/javascript">
        function showFrontendAlert(type, message) {
            swal({
                position: 'top-end',
                type: type,
                title: message,
                showConfirmButton: false,
                timer: 4000
            });
        }
    </script>

    @foreach (session('flash_notification', collect())->toArray() as $message)
        <script type="text/javascript">
            showFrontendAlert('{{ $message['level'] }}', '{{ $message['message'] }}');
        </script>
    @endforeach

    <script>
        $(document).ready(function() {
            if ($('#lang-change').length > 0) {
                $('#lang-change .dropdown-item a').each(function() {
                    $(this).on('click', function(e) {
                        e.preventDefault();
                        var $this = $(this);
                        var locale = $this.data('flag');
                        $.post('{{ route('language.change') }}', {
                            _token: '{{ csrf_token() }}',
                            locale: locale
                        }, function(data) {
                            location.reload();
                        });

                    });
                });
            }

            if ($('#currency-change').length > 0) {
                $('#currency-change .dropdown-item a').each(function() {
                    $(this).on('click', function(e) {
                        e.preventDefault();
                        var $this = $(this);
                        var currency_code = $this.data('currency');
                        $.post('{{ route('currency.change') }}', {
                            _token: '{{ csrf_token() }}',
                            currency_code: currency_code
                        }, function(data) {
                            location.reload();
                        });

                    });
                });
            }
        });

        $('#search').on('keyup', function() {
            search();
        });

        $('#search').on('focus', function() {
            search();
        });

        function search() {
            var search = $('#search').val();
            if (search.length > 0) {
                $('body').addClass("typed-search-box-shown");

                $('.typed-search-box').removeClass('d-none');
                $('.search-preloader').removeClass('d-none');
                $.post('{{ route('search.ajax') }}', {
                    _token: '{{ @csrf_token() }}',
                    search: search
                }, function(data) {
                    if (data == '0') {
                        // $('.typed-search-box').addClass('d-none');
                        $('#search-content').html(null);
                        $('.typed-search-box .search-nothing').removeClass('d-none').html(
                            'Sorry, nothing found for <strong>"' + search + '"</strong>');
                        $('.search-preloader').addClass('d-none');

                    } else {
                        $('.typed-search-box .search-nothing').addClass('d-none').html(null);
                        $('#search-content').html(data);
                        $('.search-preloader').addClass('d-none');
                    }
                });
            } else {
                $('.typed-search-box').addClass('d-none');
                $('body').removeClass("typed-search-box-shown");
            }
        }

        function updateNavCart() {
            $.post('{{ route('cart.nav_cart') }}', {
                _token: '{{ csrf_token() }}'
            }, function(data) {
                $('#cart_items').html(data);
            });
            $.post('{{ route('cart.nav_cartNumber') }}', {
                _token: '{{ csrf_token() }}'
            }, function(data) {
                $('#cartNumber').html(data);
                $('#cartNumberNav').html(data);
                $('#cartNumberTMobile').html(data);
                $('#cartNumberTaka').html(data);
            });
            $.post('{{ route('cart.nav_Taka') }}', {
                _token: '{{ csrf_token() }}'
            }, function(data) {
                $('#cartThakUpdate').html(data);
            });
        }

        function removeFromCart(key) {
            $.post('{{ route('cart.removeFromCart') }}', {
                _token: '{{ csrf_token() }}',
                key: key
            }, function(data) {
                updateNavCart();
                $('#cart-summary').html(data);
                showFrontendAlert('success', 'Item has been removed from cart');
                $('#cart_items_sidenav').html(parseInt($('#cart_items_sidenav').html()) - 1);
            });
        }

        function addToCompare(id) {
            // @if (Auth::check())
            //     $.post('{{ route('compare.addToCompare') }}', {_token:'{{ csrf_token() }}', id:id}, function(data){
            //         $('#compare').html(data);
            //         showFrontendAlert('success', 'Item has been added to compare list');
            //         $('#compare_items_sidenav').html(parseInt($('#compare_items_sidenav').html())+1);
            //     });
            //
        @else
            //     showFrontendAlert('warning', 'Please login first');
            //
        @endif

        $.post('{{ route('compare.addToCompare') }}', {
            _token: '{{ csrf_token() }}',
            id: id
        }, function(data) {
            $('#compare').html(data);
            showFrontendAlert('success', 'Item has been added to compare list');
            $('#compare_items_sidenav').html(parseInt($('#compare_items_sidenav').html()) + 1);
        });
        }

        function addToWishList(id) {
            @if (Auth::check())
                $.post('{{ route('wishlists.store') }}', {
                    _token: '{{ csrf_token() }}',
                    id: id
                }, function(data) {
                    if (data != 0) {
                        $('#wishlist').html(data);
                        showFrontendAlert('success', 'Item has been added to wishlist');
                    } else {
                        showFrontendAlert('warning', 'Please login first');
                    }
                });
            @else
                showFrontendAlert('warning', 'Please login first');
            @endif
        }

        function showAddToCartModal(id) {
            if (!$('#modal-size').hasClass('modal-lg')) {
                $('#modal-size').addClass('modal-lg');
            }
            $('#addToCart-modal-body').html(null);
            $('#addToCart').modal();
            $('.c-preloader').show();
            $.post('{{ route('cart.showCartModal') }}', {
                _token: '{{ csrf_token() }}',
                id: id
            }, function(data) {
                $('.c-preloader').hide();
                $('#addToCart-modal-body').html(data);
                $('.xzoom, .xzoom-gallery').xzoom({
                    Xoffset: 20,
                    bg: true,
                    tint: '#000',
                    defaultScale: -1
                });
            });
        }

        function showAddToCartModalshop(id) {
            if (!$('#modal-size').hasClass('modal-md')) {
                $('#modal-size').addClass('modal-md');
            }
            $('#addToCart-modal-body').html(null);
            $('#addToCart').modal();
            $('.c-preloader').show();
            $.post('{{ route('cart.showCartModalshop') }}', {
                _token: '{{ csrf_token() }}',
                id: id
            }, function(data) {
                $('.c-preloader').hide();
                $('#addToCart-modal-body').html(data);
                $('.xzoom, .xzoom-gallery').xzoom({
                    Xoffset: 20,
                    bg: true,
                    tint: '#000',
                    defaultScale: -1
                });
            });
        }

        $('#option-choice-form input').on('change', function() {
            getVariantPrice();
        });

        function getVariantPrice() {
            if ($('#option-choice-form input[name=quantity]').val() > 0 && checkAddToCartValidity()) {
                $.ajax({
                    type: "POST",
                    url: '{{ route('products.variant_price') }}',
                    data: $('#option-choice-form').serializeArray(),
                    success: function(data) {
                        $('#option-choice-form #chosen_price_div').removeClass('d-none');
                        $('#option-choice-form #chosen_price_div #chosen_price').html(data);
                    }
                });
            }
        }

        function checkAddToCartValidity() {
            var names = {};
            $('#option-choice-form input:radio').each(function() { // find unique names
                names[$(this).attr('name')] = true;
            });
            var count = 0;
            $.each(names, function() { // then count them
                count++;
            });
            if ($('input:radio:checked').length == count) {
                return true;
            }
            return false;
        }

        function addToCart() {
            if (checkAddToCartValidity()) {
                $('#addToCart').modal();
                $('.c-preloader').show();
                $.ajax({
                    type: "POST",
                    url: '{{ route('cart.addToCart') }}',
                    data: $('#option-choice-form').serializeArray(),

                    success: function(data) {
                        $('#addToCart-modal-body').html(null);
                        $('.c-preloader').hide();
                        $('#modal-size').removeClass('modal-lg');
                        $('#addToCart-modal-body').html(data);
                        updateNavCart();
                        //    updateNumber();
                        $('#cart_items_sidenav').html(parseInt($('#cart_items_sidenav').html()) + 1);
                    }
                });

            } else {
                showFrontendAlert('warning', 'Please choose all the options');
            }
            console.log("my data", data);
        }

        function show_purchase_history_details(order_id) {
            $('#order-details-modal-body').html(null);

            if (!$('#modal-size').hasClass('modal-lg')) {
                $('#modal-size').addClass('modal-lg');
            }

            $.post('{{ route('purchase_history.details') }}', {
                _token: '{{ @csrf_token() }}',
                order_id: order_id
            }, function(data) {
                $('#order-details-modal-body').html(data);
                $('#order_details').modal();
                $('.c-preloader').hide();
            });
        }

        function show_order_details(order_id) {
            $('#order-details-modal-body').html(null);

            if (!$('#modal-size').hasClass('modal-lg')) {
                $('#modal-size').addClass('modal-lg');
            }

            $.post('{{ route('orders.details') }}', {
                _token: '{{ @csrf_token() }}',
                order_id: order_id
            }, function(data) {
                $('#order-details-modal-body').html(data);
                $('#order_details').modal();
                $('.c-preloader').hide();
            });
        }

        function cartQuantityInitialize() {
            $('.btn-number').click(function(e) {
                e.preventDefault();

                fieldName = $(this).attr('data-field');
                type = $(this).attr('data-type');
                var input = $("input[name='" + fieldName + "']");
                var currentVal = parseInt(input.val());

                if (!isNaN(currentVal)) {
                    if (type == 'minus') {

                        if (currentVal > input.attr('min')) {
                            input.val(currentVal - 1).change();
                        }
                        if (parseInt(input.val()) == input.attr('min')) {
                            $(this).attr('disabled', true);
                        }

                    } else if (type == 'plus') {

                        if (currentVal < input.attr('max')) {
                            input.val(currentVal + 1).change();
                        }
                        if (parseInt(input.val()) == input.attr('max')) {
                            $(this).attr('disabled', true);
                        }

                    }
                } else {
                    input.val(0);
                }
            });

            $('.input-number').focusin(function() {
                $(this).data('oldValue', $(this).val());
            });

            $('.input-number').change(function() {

                minValue = parseInt($(this).attr('min'));
                maxValue = parseInt($(this).attr('max'));
                valueCurrent = parseInt($(this).val());

                name = $(this).attr('name');
                if (valueCurrent >= minValue) {
                    $(".btn-number[data-type='minus'][data-field='" + name + "']").removeAttr('disabled')
                } else {
                    alert('Sorry, the minimum value was reached');
                    $(this).val($(this).data('oldValue'));
                }
                if (valueCurrent <= maxValue) {
                    $(".btn-number[data-type='plus'][data-field='" + name + "']").removeAttr('disabled')
                } else {
                    alert('Sorry, the maximum value was reached');
                    $(this).val($(this).data('oldValue'));
                }


            });
            $(".input-number").keydown(function(e) {
                // Allow: backspace, delete, tab, escape, enter and .
                if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== -1 ||
                    // Allow: Ctrl+A
                    (e.keyCode == 65 && e.ctrlKey === true) ||
                    // Allow: home, end, left, right
                    (e.keyCode >= 35 && e.keyCode <= 39)) {
                    // let it happen, don't do anything
                    return;
                }
                // Ensure that it is a number and stop the keypress
                if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                    e.preventDefault();
                }
            });
        }

        function imageInputInitialize() {
            $('.custom-input-file').each(function() {
                var $input = $(this),
                    $label = $input.next('label'),
                    labelVal = $label.html();

                $input.on('change', function(e) {
                    var fileName = '';

                    if (this.files && this.files.length > 1)
                        fileName = (this.getAttribute('data-multiple-caption') || '').replace('{count}',
                            this.files.length);
                    else if (e.target.value)
                        fileName = e.target.value.split('\\').pop();

                    if (fileName)
                        $label.find('span').html(fileName);
                    else
                        $label.html(labelVal);
                });

                // Firefox bug fix
                $input
                    .on('focus', function() {
                        $input.addClass('has-focus');
                    })
                    .on('blur', function() {
                        $input.removeClass('has-focus');
                    });
            });
        }
    </script>

    <script src="{{ asset('frontend/js/bootstrap-tagsinput.min.js') }}"></script>
    <script src="{{ asset('frontend/js/jodit.min.js') }}"></script>
    <script src="{{ asset('frontend/js/xzoom.min.js') }}"></script>
    <!-- App JS -->
    <script src="{{ asset('frontend/js/active-shop.js') }}"></script>
    <script src="{{ asset('frontend/js/main.js') }}"></script>
    <script src="{{ asset('frontend/js/swiper-bundle.min.js') }}"></script>
    {{-- <script src="{{ asset('frontend/js/fb-script.js') }}"></script> --}}
    {{-- ssl hasib add start --}}
    {{-- <script>
    (function (window, document) {
        var loader = function () {
            var script = document.createElement("script"), tag = document.getElementsByTagName("script")[0];
            script.src = "https://sandbox.sslcommerz.com/embed.min.js?" + Math.random().toString(36).substring(7);
            tag.parentNode.insertBefore(script, tag);
        };

        window.addEventListener ? window.addEventListener("load", loader, false) : window.attachEvent("onload", loader);
    })(window, document);
</script> --}}
    {{-- ssl stop --}}