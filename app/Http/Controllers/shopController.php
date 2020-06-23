<?php

namespace App\Http\Controllers;

use App\Product;
use App\Category;
use Illuminate\Http\Request;

class shopController extends Controller
{
 /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
            $categories = Category::all();
            $pagination = 9;

        if (request()->category){
            $products = Product::with('categories')->whereHas('categories', function ($query) {
                $query->where('slug', request()->category);
            });
            $categoryName = optional($categories->where('slug' , request()->category)->first())->name;
        }else{
            $products = Product::where('featured', true);
            $categoryName = 'Featured';  
        }

        if (request()->sort == 'highToLow') {
            $products = $products->orderBy('price' , 'desc')->paginate($pagination);
        }elseif (request()->sort == 'lowToHigh') {
            $products = $products->orderBy('price')->paginate($pagination);
        }else{
            $products = $products->paginate($pagination);
        }

        return view('shop')->with([
            'products' => $products,
            'categories'=> $categories,
            'categoryName' => $categoryName
        ]);
    }
    
    /**
     * Display the specified resource.
     * 
     * @param string $slug
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $product = Product::where('slug',$slug)->firstOrFail();
        $mightAlsoLike = Product::where('slug', '!=' , $slug)->inRandomOrder()->take(4)->get();

        $proLevel = $product->quantity ;

        if($proLevel > 5){
            $stocklevel = '<div class="badge badge-success">In Stock</div>' ;
        }elseif($proLevel < 5 && $proLevel > 0 ) {
            $stocklevel = '<div class="badge badge-warning">Low Stock</div>';
        }else{
            $stocklevel = '<div class="badge badge-danger">Not availible</div>';
        }

        return view('product')->with([
            'product' => $product,
            'stocklevel'=> $stocklevel,
            'mightAlsoLike' => $mightAlsoLike
            ]);
    }

    public function search(Request $request)
    {
        $query = $request->input('query') ;

        $products = Product::where('name', 'LIKE', '%'. $query .'%')->paginate(8);

        return view('search-result')->with('products' , $products);
    }
}
