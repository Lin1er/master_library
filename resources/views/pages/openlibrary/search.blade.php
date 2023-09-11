<!-- resources/views/openlibrary/search.blade.php -->

@extends('layouts.app')

@section('content')
    <h1>Daftar Buku</h1>

    <form action="/search" method="GET">
        <input type="text" name="query" placeholder="Kata kunci pencarian" required>
        <button type="submit">Cari</button>
    </form>

    @if (isset($data))
        <h2>Hasil Pencarian untuk "{{ $data->q }}"</h2>

        @if (isset($data->docs))
            <ul>
                @foreach ($data->docs as $book)
                    <li>
                        @if (isset($book->cover_i))
                            <img src="https://covers.openlibrary.org/b/id/{{ $book->cover_i }}-M.jpg" alt="Cover Buku">
                        @endif
                        <strong>Judul:</strong> {{ $book->title }}
                        <br>
                        <strong>Penulis:</strong> {{ implode(', ', $book->author_name) }}
                        <br>
                    </li>
                @endforeach
            </ul>
        @else
            <p>Tidak ada hasil yang ditemukan.</p>
        @endif
    @endif
@endsection
