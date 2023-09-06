<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Borrow;
use App\Models\Category;
use Illuminate\Contracts\Pagination\Paginator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class PagesController extends Controller
{
    public function landing() {
        $categories = Category::all();
        return view('pages.landing',[
            'title' => 'Landing',
            'categories' => $categories,
        ]);
    }

    public function homeBooks() {
        $categories = Category::all();
        
        $query = request('search');
        
        $books = Book::with('category')->latest();
        
        if ($query) {
            $books = $books->where(function($q) use ($query) {
                $q->where('title', 'like', '%' . $query . '%')
                    ->orWhere('author', 'like', '%' . $query . '%');
            });
        }
        
        $books = $books->simplePaginate(25);
        
        return view('pages.home', [
            'books' => $books,
            'categories' => $categories,
            'title' => 'Books'
        ]);
    }


    public function homeNews() {
        return view('pages.news',[
            'title' => 'Information'
        ]);
    }
    

    public function singleCategory(Category $category) {
        $categories = Category::all();
        return view('pages.home', [
            'title' => $category->name,
            'categories' => $categories,
            'books' => $category->book()->latest()->simplePaginate(16),
        ]);
    }
    
    public function singleBook($id)
    {   
        $categories = Category::all();
        $book_id = $id;
        $book = Book::find($id);

    
        return view('pages.book', [
            'title' => 'Detail Buku',
            'categories' => $categories,
            'book' => $book,
            'ulasans' => $book ? $book->ulasans : null,
        ]);
    }

    public function Profile()
    {
        $categories = Category::all();
        $borrows = Borrow::where('user_id', Auth()->user()->id)->get();
        
        return view('pages.profile', [
            'title' => 'Profile',
            'categories' => $categories,
            'borrows' => $borrows,
        ]);
    }

    public function KaryaBuku()
    {
        $karyabuku = Book::where('category_id', 30);

        $karyabuku = $karyabuku->simplePaginate(25);

        return view('pages.home',[
            'title' => 'Karya Buku',
            'books' => $karyabuku
        ]);
    }

    public function KaryaTulisIlmiah()
    {
        $karyatulisilmiah = Book::where('category_id', 31);

        $karyatulisilmiah = $karyatulisilmiah->simplePaginate(25);

        return view('pages.home',[
            'title' => 'Karya Tulis Ilmiah',
            'books' => $karyatulisilmiah
        ]);
    }

    public function KaryaTulisTerpublikasi()
    {
        $karyatulisterpublikasi = Book::where('category_id', 32);

        $karyatulisterpublikasi = $karyatulisterpublikasi->simplePaginate(25);

        return view('pages.home',[
            'title' => 'Karya Tulis Terpublikasi',
            'books' => $karyatulisterpublikasi
        ]);
    }



    public function ProfilePerpustakaan()
    {
        return view('pages.profile.perpustakaan', [
            'title' => 'Profile Perpustakaan'
        ]);
    }

    public function VisiMisi()
    {
         return view('pages.profile.visi-misi', [
            'title' => 'Visi Misi'
        ]);
    }

    public function Prestasi()
    {
         return view('pages.profile.prestasi', [
            'title' => 'Prestasi'
        ]);
    }

    public function Layanan()
    {
         return view('pages.profile.layanan', [
            'title' => 'Layanan'
        ]);
    }

    public function Fasilitas()
    {
         return view('pages.profile.fasilitas', [
            'title' => 'Fasilitas'
        ]);
    }

    public function Promosi()
    {
         return view('pages.profile.promosi', [
            'title' => 'Promosi'
        ]);
    }

    public function TataTertib()
    {
         return view('pages.profile.tata-tertib', [
            'title' => 'Tata Tertib'
        ]);
    }

    public function Berita()
    {
         return view('pages.berita', [
            'title' => 'Berita'
        ]);
    }
    
    
    
}
