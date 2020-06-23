<?php

namespace App\Http\Controllers;

use App\Coupon;
use Gloudemans\Shoppingcart\Facades\Cart; 
use Illuminate\Http\Request;

class CouponController extends Controller
{

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $coupon = Coupon::where('code' , $request->coupon_code)->first();   

        if(!$coupon){
            return redirect()->route('cart.index')->with('success_message' , 'code is invalid');
        }

        session()->put('coupon', [
            'code' => $coupon->code,
            'discount' => $coupon->discount(Cart::subtotal())
        ]);

        return redirect()->route('cart.index')->with('success_message' , 'code has been applaied');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy()
    {
        session()->forget('coupon');

        return redirect()->route('cart.index')->with('success_message', 'your coupon has been Removed');
    }
}
