@extends('layouts.app')

@section('content')

    <div class="panel">
    	<div class="panel-body">
    		<div class="invoice-masthead">
    			<div class="invoice-text">
    				<h3 class="h1 text-thin mar-no text-primary">{{ __('Order Details') }}</h3>
    			</div>
    		</div>
            <div class="row">
                @php
                    $delivery_status = $order->delivery_status;
                    $payment_status = $order->payment_status;

                @endphp
                <div class="col-lg-offset-6 col-lg-3">
                    <label for="update_payment_status">{{__('Payment Status')}}</label>
                    @if ($payment_status == 'paid')
                    <select class="form-control">
                        <option value="Paid">{{__('Paid')}}</option>
                    </select>
                    @else
                    <select class="form-control demo-select2"   data-minimum-results-for-search="Infinity" id="update_payment_status">
                        <option value="paid" @if ($payment_status == 'paid') selected @endif>{{__('Paid')}}</option>
                        <option value="unpaid" @if ($payment_status == 'unpaid') selected @endif>{{__('Unpaid')}}</option>
                    </select>
                    @endif


                </div>
                <div class="col-lg-3">
                    <label for="update_delivery_status">{{__('Delivery Status')}}</label>
                            @if ($delivery_status == 'pending')
                            <select class="form-control demo-select2" @if ($delivery_status == 'delivered') disabled @endif  data-minimum-results-for-search="Infinity" id="update_delivery_status">
                                <option value="pending" @if ($delivery_status == 'pending') selected @endif>{{__('Pending')}}</option>
                                <option value="wpayment" @if ($delivery_status == 'wpayment') selected @endif>{{__('Waiting for payment')}}</option>
                                <option value="processing" @if ($delivery_status == 'processing') selected @endif>{{__('Processing')}}</option>
                                <option value="on_delivery" @if ($delivery_status == 'on_delivery') selected @endif>{{__('On delivery')}}</option>
                                <option value="delivered" @if ($delivery_status == 'delivered') selected @endif>{{__('Delivered')}}</option>
                                <option value="rejected" @if ($delivery_status == 'rejected') selected @endif>{{__('Rejected')}}</option>
                            </select>
                            @endif
                            @if ($delivery_status == 'wpayment')
                            <select class="form-control demo-select2" @if ($delivery_status == 'delivered') disabled @endif  data-minimum-results-for-search="Infinity" id="update_delivery_status">
                                <option value="wpayment" @if ($delivery_status == 'wpayment') selected @endif>{{__('Waiting for payment')}}</option>
                                <option value="processing" @if ($delivery_status == 'processing') selected @endif>{{__('Processing')}}</option>
                                <option value="on_delivery" @if ($delivery_status == 'on_delivery') selected @endif>{{__('On delivery')}}</option>
                                <option value="delivered" @if ($delivery_status == 'delivered') selected @endif>{{__('Delivered')}}</option>
                                <option value="rejected" @if ($delivery_status == 'rejected') selected @endif>{{__('Rejected')}}</option>
                            </select>
                            @endif
                            @if ($delivery_status == 'complain')
                            <select class="form-control demo-select2" @if ($delivery_status == 'delivered') disabled @endif  data-minimum-results-for-search="Infinity" id="update_delivery_status">
                                <option value="complain" @if ($delivery_status == 'complain') selected @endif>{{__('Complain Order')}}</option>
                                <option value="processing" @if ($delivery_status == 'processing') selected @endif>{{__('Processing')}}</option>
                                <option value="on_delivery" @if ($delivery_status == 'on_delivery') selected @endif>{{__('On delivery')}}</option>
                                <option value="delivered" @if ($delivery_status == 'delivered') selected @endif>{{__('Delivered')}}</option>
                                <option value="rejected" @if ($delivery_status == 'rejected') selected @endif>{{__('Rejected')}}</option>
                            </select>
                            @endif
                            @if ($delivery_status == 'processing')
                            <select class="form-control demo-select2" @if ($delivery_status == 'delivered') disabled @endif  data-minimum-results-for-search="Infinity" id="update_delivery_status">
                                <option value="processing" @if ($delivery_status == 'processing') selected @endif>{{__('Processing')}}</option>
                                <option value="on_delivery" @if ($delivery_status == 'on_delivery') selected @endif>{{__('On delivery')}}</option>
                                <option value="delivered" @if ($delivery_status == 'delivered') selected @endif>{{__('Delivered')}}</option>
                                <option value="rejected" @if ($delivery_status == 'rejected') selected @endif>{{__('Rejected')}}</option>
                            </select>
                            @endif
                            @if ($delivery_status == 'on_delivery')
                            <select class="form-control demo-select2" @if ($delivery_status == 'delivered') disabled @endif  data-minimum-results-for-search="Infinity" id="update_delivery_status">
                                <option value="on_delivery" @if ($delivery_status == 'on_delivery') selected @endif>{{__('On delivery')}}</option>
                                <option value="delivered" @if ($delivery_status == 'delivered') selected @endif>{{__('Delivered')}}</option>
                                <option value="rejected" @if ($delivery_status == 'rejected') selected @endif>{{__('Rejected')}}</option>
                            </select>
                            @endif
                            @if ($delivery_status == 'delivered')
                            <select class="form-control demo-select2" @if ($delivery_status == 'delivered') disabled @endif  data-minimum-results-for-search="Infinity" id="update_delivery_status">
                                <option value="delivered" @if ($delivery_status == 'delivered') selected @endif>{{__('Delivered')}}</option>
                                <option value="rejected" @if ($delivery_status == 'rejected') selected @endif>{{__('Rejected')}}</option>
                            </select>
                            @endif
                            @if ($delivery_status == 'rejected')
                            <select class="form-control demo-select2" @if ($delivery_status == 'rejected') disabled @endif  data-minimum-results-for-search="Infinity" id="update_delivery_status">
                                <option value="rejected" @if ($delivery_status == 'rejected') selected @endif>{{__('Rejected')}}</option>
                            </select>
                            @endif

                </div>
            </div>
            <hr>
    		<div class="invoice-bill row">
    			<div class="col-sm-6 text-xs-center">
    				<address>
        				<strong class="text-main">{{ json_decode($order->shipping_address)->name }}</strong><br>
                         {{ json_decode($order->shipping_address)->email }}<br>
                         {{ json_decode($order->shipping_address)->phone }}<br>
        				 {{ json_decode($order->shipping_address)->address }}, {{ json_decode($order->shipping_address)->area }}, {{ json_decode($order->shipping_address)->city }}-{{ json_decode($order->shipping_address)->post_code }}
                    </address>
    			</div>
    			<div class="col-sm-6 text-xs-center">
    				<table class="invoice-details">
    				<tbody>
    				<tr>
    					<td class="text-main">
    						{{__('Order #')}}
    					</td>
    					<td class="text-right text-info">
    						{{ $order->code }}
    					</td>
    				</tr>
    				<tr>
    					<td class="text-main">
    						{{__('Delivery Status')}}
    					</td>
                        @php
                            $status = $order->first()->delivery_status;
                        @endphp
    					<td class="text-right">
                            @if($status == 'delivered')
                                <span class="badge badge-success">{{ $order->delivery_status }}</span>
                            @else
                                <span class="badge badge-info">{{ $order->delivery_status }}</span>
                            @endif
    					</td>
    				</tr>
    				<tr>
    					<td class="text-main">
    						{{__('Order Date')}}
    					</td>
    					<td class="text-right">
    						{{ date('d-m-Y H:m A', $order->date) }}
    					</td>
    				</tr>
                    <tr>
    					<td class="text-main">
    						{{__('Total amount')}}
    					</td>
    					<td class="text-right">
    						<!--{{ single_price($order->orderDetails->sum('price') + $order->orderDetails->sum('tax')) }}-->
    						{{ single_price($order->orderDetails->sum('price') + $order->orderDetails->sum('tax') + $order->shipping_cost) }}
    					</td>
    				</tr>
                    
    				</tbody>
    				</table>
    			</div>
    		</div>
    		<hr class="new-section-sm bord-no">
    		<div class="row">
    			<div class="col-lg-12 table-responsive">
    				<table class="table table-bordered invoice-summary">
        				<thead>
            				<tr class="bg-trans-dark">
                                <th class="min-col">#</th>
            					<th class="text-uppercase">
            						{{__('Description')}}
            					</th>
            					<th class="min-col text-center text-uppercase">
            						{{__('Qty')}}
            					</th>
            					<th class="min-col text-center text-uppercase">
            						{{__('Price')}}
            					</th>
            					<th class="min-col text-right text-uppercase">
            						{{__('Total')}}
            					</th>
            				</tr>
        				</thead>
        				<tbody>
                            @foreach ($order->orderDetails as $key => $orderDetail)
                                <tr>
                                    <td>{{ $key+1 }}</td>
                					<td>
                						<strong><a href="{{ route('product', $orderDetail->product->slug) }}" target="_blank">{{ $orderDetail->product->name }}</a></strong>
                						<small>{{ $orderDetail->variation }}</small>
                					</td>
                					<td class="text-center">
                						{{ $orderDetail->quantity }}
                					</td>
                					<td class="text-center">
                						{{ single_price($orderDetail->price/$orderDetail->quantity) }}
                					</td>
                                    <td class="text-center">
                						{{ single_price($orderDetail->price) }}
                					</td>
                				</tr>
                            @endforeach
        				</tbody>
    				</table>
    			</div>
    		</div>
    		<div class="clearfix">
    			<table class="table invoice-total">
    			<tbody>
    			<tr>
    				<td>
    					<strong>{{__('Sub Total')}} :</strong>
    				</td>
    				<td>
    					{{ single_price($order->orderDetails->sum('price')) }}
    				</td>
    			</tr>
				@if($order->orderDetails->sum('tax')!=0)
    			<tr>
    				<td>
    					<strong>{{__('Tax')}} :</strong>
    				</td>
    				<td>
    					{{ single_price($order->orderDetails->sum('tax')) }}
    				</td>
    			</tr>
				@endif
                <tr>
    				<td>
    					<strong>{{__('Shipping')}} :</strong>
    				</td>
    				<td>
    					{{ single_price($order->shipping_cost) }}
    				</td>
    			</tr>
				<tr>
    				<td>
    					<strong>{{__('Discount')}} :</strong>
    				</td>
    				<td>
    					{{ single_price($order->discount) }}
    				</td>
    			</tr>
				
    			<tr>
    				<td>
    					<strong>{{__('Total')}} :</strong>
    				</td>
    				<td>
    					{{ single_price($order->orderDetails->sum('price') + $order->orderDetails->sum('tax') + $order->shipping_cost - $order->discount) }}
    				</td>
    			</tr>
    			</tbody>
    			</table>
    		</div>
    		<div class="text-right no-print">
    			<a href="{{ route('customer.invoice.download', $order->id) }}" class="btn btn-default"><i class="demo-pli-printer icon-lg"></i></a>
    		</div>
    	</div>
    </div>

	{{-- new  --}}

	@if ($order->delivery_status == "complain")
	<div class="panel">
    	<div class="panel-body">
    		<div class="invoice-masthead">
    			<div>
    				<h3 class="h1 text-primary">{{ __('Order Complain') }}</h3>
    			</div>
    		</div>

			<div class="row">

				<p>{{ $order->complain }}</p>

			</div>
            
    	</div>
    </div>
	@endif
	

@endsection

@section('script')
    <script type="text/javascript">
         $('#update_delivery_status').on('change', function(){
            var order_id = {{ $order->id }};
            var price = {{ $orderDetail->price }};
            // var user_id = {{ $order->user_id }};
            var status = $('#update_delivery_status').val();
			// console.log(status);
            $.post('{{ route('orders.update_delivery_status') }}', {_token:'{{ @csrf_token() }}',order_id:order_id,price:price,status:status}, function(data){
                showAlert('success', 'Payment status has been updated');
                //console.log(data);
				 location.reload();
            });
        });
    </script>
@endsection
