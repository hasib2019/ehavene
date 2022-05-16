<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Slider;
use App\Models\Category;
class ApiController extends Controller
{
    public function banner()
    {
        $banner = Slider::where('published', 1)->get();
        // dd($banner);
        return $banner;

    }

    public function categories()
    {
        $catagories = Category::inRandomOrder()->where('featured', 1)->limit(10)->get();
        // dd($banner);
        return $catagories;

    }
}
