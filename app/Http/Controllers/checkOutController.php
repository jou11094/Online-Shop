<?php

namespace App\Http\Controllers;

use App\Order;
use App\OrderProduct;
use App\Product;
use Gloudemans\Shoppingcart\Facades\Cart;
use App\Http\Requests\CheckoutRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderPlaced;

class checkOutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        if(Cart::instance('default')->count() == 0){
            return redirect()->route('shop.index');
        }

        if(auth()->user() && request()->is('guestCheckout')){
            return redirect()->route('checkout.index');
        }
 
        return view('checkout')->with([
            'discount' => getNumbers()->get('discount'),
            'newSubtotal' => getNumbers()->get('newSubtotal'),
            'newTax' => getNumbers()->get('newTax'),
            'newTotal' => getNumbers()->get('newTotal'),
        ]);
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
    public function store(checkOutRequest $request)
    {
        // check numbers of products in stuck

        if($this->productsInStuck()){
            return back()->withErrors('sorry product items is Out Of Stuck');
        }

        //insert into order table
        $order = Order::create([
            'user_id'=> auth()->user() ? auth()->user()->id : null,
            'billing_email'=> $request->email,
            'billing_name'=> $request->name,
            'billing_address'=> $request->address,
            'billing_city'=> $request->city,
            'billing_province'=>$request->province,
            'billing_postalcode'=>$request->postalcode,
            'billing_phone'=>$request->phone,
            'billing_name_on_card'=>$request->name_on_card,
            'billing_discount'=> getNumbers()->get('discount'),
            'billing_discount_code'=> getNumbers()->get('code'),
            'billing_subtotal'=> getNumbers()->get('newSubtotal'),
            'billing_tax'=> getNumbers()->get('newTax'),
            'billing_total'=> getNumbers()->get('newTotoal')?? 0,
            'error'=>null,
        ]);

        //insert into poivet table
            foreach(Cart::content() as $item)
            {
                OrderProduct::create([
                    'order_id'=> $order->id,
                    'product_id'=> $item->model->id,
                    'quantity'=> $item->qty
                ]);
            }
        
    

        $this->decressQuantities();

        //normal syntax

        Cart::instance('default')->destroy();
        return view('thankyoupage');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
       
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
    public function update(checkOutRequest $request, $id)
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
        //
    }

    protected function decressQuantities()
    {
        foreach(Cart::content() as $item){
            $product = Product::find($item->model->id);

            $product->update(['quantity' => $product->quantity - $item->qty]);
        }
    }

    protected function productsInStuck()
    {
        foreach(Cart::content() as $item)
        {
        $product = Product::find($item->model->id);
        
            if($product->quantity >= $item->qty){
                return false;
            }
        }
        return true;
    }
}
