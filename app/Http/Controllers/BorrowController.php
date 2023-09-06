<?php

namespace App\Http\Controllers;

use App\Models\Borrow;
use Illuminate\Http\Request;
use App\Http\Requests\StoreBorrowRequest;
use App\Http\Requests\UpdateBorrowRequest;
use App\Models\BorrowHistory;

class BorrowController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $borrows = Borrow::orderBy('tgl_kembali')->get();
        return view('admins.borrows.index',[
            'borrows' => $borrows
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admins.borrows.create',[

        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'book_id' => '',
            'user_id' => 'required',
            'tgl_pinjam' => 'required',
            'tgl_kembali' => 'required'
        ]);

    // Cek apakah ada peminjaman sebelumnya untuk buku ini
    $previousBorrows = Borrow::whereNotNull('book_id')
                            ->where('book_id', $data['book_id'])
                            ->get();

    foreach ($previousBorrows as $previousBorrow) {
        // Hapus peminjaman lama
        $previousBorrow->delete();
    }

        // Simpan data peminjaman ke database
        Borrow::create($data);
        BorrowHistory::create($data);

        return redirect()->back()->with('success', 'Book borrowed successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Borrow $borrow)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Borrow $borrow)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateBorrowRequest $request, Borrow $borrow)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $borrow = Borrow::find($id);
        if ($borrow) {
            $borrow->delete();
            return redirect()->back()->with('success', 'Borrow has been deleted successfully.');
        } else {
            // Redirect or display a message indicating that the borrow record was not found
        }
    }
}
