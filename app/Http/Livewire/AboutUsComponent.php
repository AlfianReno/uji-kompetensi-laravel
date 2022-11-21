<?php

namespace App\Http\Livewire;

use App\Models\Product;
use Livewire\Component;
use Illuminate\Support\Facades\DB;

class AboutUsComponent extends Component
{

    public function render()
    {
        $productsCount  = DB::table('products')->where('stock_status', '=', 'instock')->count();
        $brandsCount  = DB::table('subcategories')->count();
        $ordersCount  = DB::table('orders')->count();
        return view('livewire.about-us-component',['productsCount'=>$productsCount,'brandsCount'=>$brandsCount,'ordersCount'=>$ordersCount])->layout('layouts.base');
    }
}
