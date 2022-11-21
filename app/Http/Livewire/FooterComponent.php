<?php

namespace App\Http\Livewire;

use App\Models\Setting;
use Livewire\Component;
use App\Models\Category;

class FooterComponent extends Component
{

    public function render()
    {
        $setting = Setting::find(1);
        $categories = Category::all();
        return view('livewire.footer-component',['setting'=>$setting,'categories'=>$categories]);
    }
}
