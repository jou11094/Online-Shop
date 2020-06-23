<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Support\Facades\Validator;
use Gloudemans\Shoppingcart\Facades\Cart; 
use Illuminate\Http\Request;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        



        $mightAlsoLike = Product::inRandomOrder()->take(4)->get();

        return view('cart')->with([
            'mightAlsoLike' => $mightAlsoLike,
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
    public function store(Request $request)
    {

        $duplicates = Cart::search(function($cartItem , $rowId) use ($request){
            return $cartItem->id === $request->id ;
        });

        if($duplicates->isNotEmpty()) {
            return redirect()->route('cart.index')->with('success_message' , 'item is already in your cart!');
        }


        Cart::add($request->id , $request->name, 1 , $request->price)->associate('App\Product');
            

        return redirect()->route('cart.index')->with('success_message' , 'you item has been saved in your cart');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
    public function update(Request $request, $id)
    {

        $Validator = Validator::make($request->all() ,[
            'quantity' => 'required|between:1,5'
        ]);

        if($Validator->fails()){
            return redirect()->route('cart.index')->withErrors('number must be between 1 to 5 !');
        }

        if($request->quantity > $request->proQuantity){
            session()->flash('errors', collect(['number is biger than the item we have']));
            return response()->json(['success' => false] , 400);
        }

       

        Cart::update($id, $request->quantity);

        session()->flash('success_message', 'quantity has been updated');
            return response()->json(['success' => true]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Cart::remove($id);

        return back()->with('success_message', 'item has been removed');
    }

    /**
     * Switch item for shopping cart Save for Later.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function switchToSaveForLater($id)
    {

        $item = Cart::get($id);

        Cart::remove($id); 
        $duplicates = Cart::instance('saveForLater')->search(function($cartItem , $rowId) use ($id){
            return $rowId == $id ; 
        });

        if($duplicates->isNotEmpty()){
            return redirect()->route('cart.index')->with('success_message' , 'item is already in your save for later Cart!');
        }

        Cart::instance('saveForLater')->add($item->id , $item->name , 1 , $item->price)->associate('App\Product');

        return redirect()->route('cart.index')->with('success_message', 'item has been moved to save for later Cart');


    }
}
