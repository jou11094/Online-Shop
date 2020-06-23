<?php

namespace App\Http\Controllers;

use Gloudemans\Shoppingcart\Facades\Cart; 
use Illuminate\Http\Request;

class saveForLaterController extends Controller
{
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Cart::instance('saveForLater')->remove($id);

        return redirect()->route('cart.index')->with('success_message', 'item has been removed' );
    }

    /**
     * Swtich itme from Save for Later to Cart.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function swtichToCart($id)
    {
        $item = Cart::instance('saveForLater')->get($id);

        $duplicates = Cart::instance('default')->search(function($cartItem , $rowId) use ($id) {
            return $rowId === $id ;
        });

        if($duplicates->isNotEmpty()){
            return redirect()->route('cart.index')->with('success_message' , 'item is already in your cart');
        }

        Cart::instance('saveForLater')->remove($id);

        Cart::instance('default')->add($item->id , $item->name , 1 , $item->price)->associate('App\Product');

        return redirect()->route('cart.index')->with('success_message', 'item has been moved');
    }
}
