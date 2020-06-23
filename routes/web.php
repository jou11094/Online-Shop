<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use Gloudemans\Shoppingcart\Facades\Cart; 

Route::get('/' , 'landingpageController@index')->name('landing-page');

Route::get('/shop' , 'shopController@index')->name('shop.index');
Route::get('/shop/{product}' , 'shopController@show')->name('shop.show');


Route::get('/cart', 'CartController@index')->name('cart.index');
Route::post('/cart}', 'CartController@store')->name('cart.store');
Route::patch('/cart/{product}', 'CartController@update')->name('cart.update');
Route::delete('/cart/{product}', 'CartController@destroy')->name('cart.destroy');
Route::post('/cart/switchToSaveForLater/{product}', 'CartController@switchToSaveForLater')->name('cart.switchToSaveForLater');

Route::delete('/saveForLater/{product}' , 'saveForLaterController@destroy')->name('saveForLater.destroy');
Route::post('/saveForLater/switchToCart/{product}' , 'saveForLaterController@swtichToCart')->name('saveForLater.switchToCart');

// CheckOut Dependencies
Route::get('/checkout' , 'checkOutController@index')->name('checkout.index')->middleware('auth');
Route::get('/guestCheckout' , 'checkOutController@index')->name('guestCheckout.index');
Route::post('/checkout/}' , 'checkOutController@store')->name('checkout.store');

// Coupons Dependencies
Route::post('/coupon' , 'CouponController@store')->name('coupon.store');
Route::delete('/coupon' , 'CouponController@destroy')->name('coupon.delete');


Route::get('/empty' , function(){
	Cart::instance('default')->destroy();
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/search', 'shopController@search')->name('search');

Route::middleware('auth')->group(function (){
    Route::get('/my-profile' , 'usersController@edit')->name('user-edit');
    Route::patch('/my-profiel' , 'usersController@update')->name('user-update');
    Route::get('/my-order' , 'ordersController@index')->name('order-index');
    Route::get('/my-order/{order}' , 'ordersController@show')->name('order.show');
});