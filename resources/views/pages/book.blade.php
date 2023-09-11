@extends('layouts.main')

@section('styles')
<style>

</style>
{{-- @if (false) --}}
    <link rel="stylesheet" href="{{ secure_asset('css/style-book.css') }}">
{{-- @else --}}
    <link rel="stylesheet" href="{{ asset('css/style-book.css') }}">
{{-- @endif --}}

@endsection

@section('container')
<div class="" style="">
    <div class="my-2 row " style="">
        <div class="col-lg-6 offset-lg-2 bookDetail">
            <img class="rounded img-thumbnail" style="align-self: center; width: 250px;" src="{{ asset('img-thumb/' . $book->thumbnail_url) }}" alt="{{ $book->title }}">
            <div class="my-2 mx-3">
                <h5>Title: {{ $book->title }}</h5>
                <h6>Author: {{ $book->author }}</h6>
                <h6>Category: <a href="/category/{{ $book->category->slug }}">{{ $book->category->name }}</a></h6>
                <p><small>Synopsis: <br>{{ $book->synopsis }}</small></p> 
                <p>Status:
                    @if ($book->borrow && $book->borrow->user)
                        Dipinjam oleh {{ $book->borrow->user->name }}
                        @if ($book->borrow->tgl_kembali)
                            (Tanggal Kembali: {{ \Carbon\Carbon::parse($book->borrow->tgl_kembali)->format('d/m/Y') }})
                        @endif
                    @else
                        Tersedia
                    @endif
                </p>
                @if ($book->pdf_url === null || $book->pdf_url === 'Null' || $book->pdf_url === '')
                @else
                @include('partials.download-pdf')
                @endif
            </div>
        </div>
        <div class="col-lg-3 sidebar">
            <div class="table-responsive">
                <table class="table table-info" style="height: 400px;">
                    <thead>
                        <tr>
                            <th scope="col">No.</th>
                            <th scope="col">Username</th>
                            <th scope="col">Waiting Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($book->queue as $queue)
                        <tr>
                            <td scope="row">{{ $loop->iteration }}</td>
                            <td>
                                @if ($queue->user)
                                    {{ $queue->user->username }}
                                @else
                                    User Deleted
                                @endif
                            </td>
                            <td>{{ $queue->created_at->diffForHumans() }}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            
            <hr style="height: 3px;">

            @if (Auth()->user())
                @if ($book->queue->contains('user_id', Auth::id()))
                    <div style="">
                        <p class="text-muted">Anda sudah mengantri untuk buku ini.</p>
                        @auth
                        <form class="" action="/queues" method="post">
                            @csrf
                            @method('DELETE')
                            <input type="hidden" name="book_id" value="{{ $book->id }}">
                            <input type="hidden" name="user_id" value="{{ Auth::id() }}">
                            <button type="submit" class="btn btn-danger">Batal Mengantri</button>
                        </form>                    
                        @endauth
                    </div>
                @else
                    <form action="/queues" method="post">
                        @csrf
                        <input type="hidden" name="user_id" value="{{ Auth::id() }}">
                        <input type="hidden" name="book_id" value="{{ $book->id }}">
                        <button type="submit" class="btn btn-primary">Antri</button>
                    </form>
                @endif
            @else
                <p>Login dahulu untuk mengantri</p>
            @endif

        </div>
    </div>
    <div class="row my-2 offset-lg-2 col-lg-8">
        @include('partials.ulasan')
    </div>

</div>
@endsection
