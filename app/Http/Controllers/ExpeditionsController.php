<?php

namespace App\Http\Controllers;

use App\Models\Expeditions;
use App\Http\Requests\StoreExpeditionsRequest;
use App\Http\Requests\UpdateExpeditionsRequest;

class ExpeditionsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
     * @param  \App\Http\Requests\StoreExpeditionsRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreExpeditionsRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Expeditions  $expeditions
     * @return \Illuminate\Http\Response
     */
    public function show(Expeditions $expeditions)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Expeditions  $expeditions
     * @return \Illuminate\Http\Response
     */
    public function edit(Expeditions $expeditions)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateExpeditionsRequest  $request
     * @param  \App\Models\Expeditions  $expeditions
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateExpeditionsRequest $request, Expeditions $expeditions)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Expeditions  $expeditions
     * @return \Illuminate\Http\Response
     */
    public function destroy(Expeditions $expeditions)
    {
        //
    }
}
