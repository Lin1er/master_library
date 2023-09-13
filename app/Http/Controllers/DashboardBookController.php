<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\User;
use App\Models\Category;
use Illuminate\Http\Request;

class DashboardBookController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $query = request('search');

        $books = Book::query()->latest()
            ->where('title', 'like', '%' . $query . '%')
            ->orWhere('author', 'like', '%' . $query . '%')
            ->get();

        $users = User::all();

        return view('admins.books.index', [
            'books' => $books,
            'users' => $users,
        ]);
    }



    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::all();
        return view('admins.books.create', [
            'categories' => $categories
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validasi permintaan formulir sesuai kebutuhan
        $validatedData = $request->validate([
            'title' => 'required',
            'author' => 'required',
            'synopsis' => '',
            'category_id' => 'required',
            'thumbnail' => 'image|mimes:jpeg,png,jpg,gif|max:2048',
            'pdf' => 'file|mimes:pdf',
        ]);

        $book = new Book;
        if($request->thumbnail) {
            // Mendapatkan informasi file thumbnail
            $thumbnail = $request->file('thumbnail');
            $thumbnailName = 'img' . time() . '.' . $thumbnail->extension();
            $thumbnail->move(public_path('img-thumb'), $thumbnailName);

            $book->thumbnail_url = $thumbnailName;

        } else {
            $book->thumbnail_url = 'Null';
        }

        if($request->pdf) {

            $pdf = $request->file('pdf');
            $pdfName = 'book' . time() . '.' . $pdf->extension();
            $pdf->move(public_path('book-pdf'), $pdfName);

            $book->pdf_url = $pdfName;

        } else {
            $book->pdf_url = 'Null';
        }


        // Simpan buku ke database
        $book->title = $request->title;
        $book->author = $request->author;
        $book->synopsis = $request->synopsis;
        $book->category_id = $request->category_id;
        $book->save();

        return redirect('/admins/books')->with('success', 'Book has been created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Book $book)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $book = Book::findOrFail($id);
        $categories = Category::all();

        return view('admins.books.edit', compact('book', 'categories'));
    }




    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'title' => 'required',
            'author' => 'required',
            'synopsis' => '',
            'category_id' => 'required',
            'thumbnail' => 'image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        $book = Book::findOrFail($id);

        $book->title = $request->title;
        $book->author = $request->author;
        $book->synopsis = $request->synopsis;
        $book->category_id = $request->category_id;

        if ($request->hasFile('thumbnail')) {
            // Menghapus thumbnail lama jika ada
            if ($book->thumbnail_url) {
                $thumbnailPath = public_path('img-thumb/' . $book->thumbnail_url);
                if (file_exists($thumbnailPath)) {
                    unlink($thumbnailPath);
                }
            }

            // Mengupload thumbnail baru
            $thumbnail = $request->file('thumbnail');
            $thumbnailName = 'img' . time() . '.' . $thumbnail->extension();
            $thumbnail->move(public_path('img-thumb'), $thumbnailName);

            $book->thumbnail_url = $thumbnailName;
        }

        $book->save();

        return redirect('/admins/books')->with('success', 'Book has been updated successfully.');
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $book = Book::find($id);
        if ($book) {
            $book->delete();
            return redirect('/admins/books')->with('success', 'book has been deleted successfully.');
        } else {
            // Redirect atau tampilkan pesan bahwa book tidak ditemukan
        }
    }
}
