<?php 

function setStateActive($category , $outPut = 'active')
{
	return request()->category == $category ? $outPut : '';
}

function your_money_format($price) 
{
  	return '$' . number_format($price, 2);
}

function imageCondtion($image)
{
	return file_exists('storage/'. $image) ?   asset('img/products/camera-1.jpg') : Voyager::image($image);
}

function getNumbers()
    {
        $tax = config('tax') / 100;
        $discount = session()->get('coupon')['discount'] ?? 0 ;
        $code = session()->get('coupon')['code'] ?? 0;
		$newSubTotal = (Cart::subtotal() - $discount);
		if($newSubTotal < 0){
			$newSubTotal = 0;
		}
        $newTax = $newSubTotal * $tax ;
        $newTotal = $newSubTotal * ( 1 + $tax );

        return collect([
            'tax' => $tax,
            'discount' => $discount,
            'code' => $code,
            'newSubtotal'=> $newSubTotal,
            'newTax'=> $newTax,
            'newTotal' => $newTotal
        ]);
    }