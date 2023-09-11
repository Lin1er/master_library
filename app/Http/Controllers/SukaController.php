<?php

namespace App\Http\Controllers;

use App\Models\Suka;
use App\Http\Requests\StoreSukaRequest;
use App\Http\Requests\UpdateSukaRequest;
use Illuminate\Http\Request;


class SukaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreSukaRequest $request)
    {
        $validatedData = $request->validate([
            'ulasan_id' => 'required',
            'user_id' => 'required',
        ]);

        $suka = new Suka([
            'ulasan_id' => $request->ulasan_id,
            'user_id' => $request->user_id,
        ]);
        
        $suka->save();
        

        return redirect()->back();
    }

    /**
     * Display the specified resource.
     */
    public function show(Suka $suka)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Suka $suka)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateSukaRequest $request, Suka $suka)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        // Validasi request sesuai kebutuhan Anda, seperti memeriksa apakah pengguna sudah login, dll.

        $ulasan_id = $request->input('ulasan_id');
        $user_id = $request->input('user_id');

        // Cari dan hapus suka berdasarkan ulasan_id dan user_id
        $suka = Suka::where('ulasan_id', $ulasan_id)->where('user_id', $user_id)->first();

        if ($suka) {
            $suka->delete();
            return redirect()->back()->with('success', 'Suka has been removed successfully.');
        } else {
            return redirect()->back()->with('error', 'Suka not found.');
        }
    }
}
