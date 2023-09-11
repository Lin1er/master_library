<?php

namespace App\Http\Controllers;

use App\Models\Queue;
use Illuminate\Http\Request;
use App\Http\Requests\StoreQueueRequest;
use App\Http\Requests\UpdateQueueRequest;
use App\Models\User;

class QueueController extends Controller
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
        
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'book_id' => 'required',
            'user_id' => 'required',
        ]);
    
        // // Cek apakah ada antrian sebelumnya untuk buku ini
        // $previousBorrow = Queue::where('book_id', $data['book_id'])->first();
    
        // if ($previousBorrow) {
        //     // Hapus antrian lama
        //     $previousBorrow->delete();
        // }
    
        // Simpan data antrian ke database
        Queue::create($data);
    
        return redirect()->back()->with('success', 'Book borrowed successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Queue $queue)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Queue $queue)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateQueueRequest $request, Queue $queue)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        $book_id = $request->input('book_id');
        $user_id = $request->input('user_id');
        
        // Cari dan hapus suka berdasarkan ulasan_id dan user_id
        $queue = Queue::where('book_id', $book_id)->where('user_id', $user_id)->first();

        if ($queue) {
            $queue->delete();
            return redirect()->back()->with('success', 'Antrian telah berhasil dibatalkan.');
        } else {
            return redirect()->back()->with('error', 'Antrian tidak ditemukan.');
            // Atau Anda bisa menambahkan pesan error langsung pada halaman saat ini
            // dengan mengirimkan variabel 'error' ke view dan menampilkannya di halaman.
        }
    }
    
    
}
