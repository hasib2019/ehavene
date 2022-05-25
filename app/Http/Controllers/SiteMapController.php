<?php

namespace App\Http\Controllers;

use App\Models\SiteMap;
use Illuminate\Http\Request;

class SiteMapController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $siteMap = SiteMap::all();
        // dd($siteMap);
        return view('sitemap.index', compact('siteMap'));
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
        $siteMap = new SiteMap();
        $siteMap->title = $request->title;
        $siteMap->slug = $request->slug;
        $siteMap->body = $request->desc;
        if($siteMap->save()){
            flash(__('Your Site Mao has been created successfully!'))->success();
            return redirect()->route('sitemap.index');
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\SiteMap  $siteMap
     * @return \Illuminate\Http\Response
     */
    public function show(SiteMap $siteMap)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\SiteMap  $siteMap
     * @return \Illuminate\Http\Response
     */
    public function edit(SiteMap $siteMap)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\SiteMap  $siteMap
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, SiteMap $siteMap)
    {
        $siteMap = SiteMap::find($request->id);
        $siteMap->title = $request->title;
        $siteMap->slug = $request->slug;
        $siteMap->body = $request->desc;
        if($siteMap->save()){
            flash(__('Your Site Mao has been Update successfully!'))->success();
            return redirect()->route('sitemap.index');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\SiteMap  $siteMap
     * @return \Illuminate\Http\Response
     */
    public function destroy(SiteMap $siteMap)
    {
        //
    }
}
