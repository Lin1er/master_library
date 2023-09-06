@extends('layouts.main')

@section('styles')
<link rel="stylesheet" href="{{ asset('css/thumb-item.css') }}">
<style>
    p {
        margin-bottom: 0;
    }

    .item-thumb {
        display: flex;
        flex-direction: row;
        align-items: center;
        margin: 20px;
        /* line-height: 0.5; */
        width: 250px;
        margin-inline-end: auto;
    }

    .img-thumb {
        display: block;
        width: 75px;
        height: 105px;
        position: relative;
    }

    .img-thumb img {
        width: 75px;
        height: 105px;
    }

    .overlay {
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        height: 100%;
        width: 100%;
    }

    .text {
        color: white;
        position: absolute;
        font-size: 10px;
        top: 0;
        left: 6px;
        background: #c93e3e;
        border-radius: 2px;
        padding: 1px;
    }

    .title {
        font-size: 1.25rem;
    }

    .detail {
        margin-left: 5px;
    }

</style>
<style>
    @media screen and (max-width: 600px) {
        .thumb-book {}

        .img-book {
            align-self: center;
            max-width: 150px;
        }

        .con-thumb {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
            margin-right: 10px;
            margin-left: 10px;
        }

        .thumb-book a {
            position: relative;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .thumb-book div {
            position: absolute;
            top: 90%;
            left: 0;
            right: 0;
            transform: translateY(-80%);
            margin: 0;
            padding: 5px; /* Ubah padding menjadi 5px */
            background-color: rgba(255, 255, 255, 0.516);
            color: #000;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }
    }

    @media screen and (min-width: 601px) and (max-width: 1024px) {
        .thumb-book {
            margin: 10px;
        }

        .img-book {
            align-self: center;
            max-width: 200px;
            height: 285px;
        }

        .con-thumb {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
            background-color: #ffffff00;
            max-width: 768px;
            margin: 0 auto;
        }

        .thumb-book a {
            position: relative;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .thumb-book div {
            position: absolute;
            top: 90%;
            left: 0;
            right: 0;
            transform: translateY(-80%);
            margin: 0;
            padding: 5px; /* Ubah padding menjadi 5px */
            background-color: rgba(255, 255, 255, 0.741);
            color: #000;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }
    }

    @media screen and (min-width: 1025px) {
        .img-thumb {
            display: block;
            width: 75px;
            height: 105px;
        }

        .thumb-book {
            margin: 10px;
        }

        .img-book {
            align-self: center;
            max-width: 200px;
            height: 285px;
        }

        .con-thumb {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
            background-color: #ffffff00;
            max-width: 960px;
            margin: 0 auto;
        }

        .thumb-book a {
            position: relative;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .thumb-book div {
            position: absolute;
            top: 90%;
            left: 0;
            right: 0;
            transform: translateY(-80%);
            margin: 0;
            padding: 5px; /* Ubah padding menjadi 5px */
            background-color: rgba(255, 255, 255, 0.741);
            color: #000;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        .main-search {
            margin-left: 30px
        }
    }
</style>
@endsection

@section('container')

<div class="container main-search my-3">
    <form class="d-flex" role="search" action="/home">
        @csrf
        <input class="form-control me-2" type="search" placeholder="Search..." aria-label="Search" name="search">
        <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
</div>
<div class="row">
    <div class="offset-lg-2 col-lg-2">
        @if (isset($categories))
        <div class="offset-lg-2 col-lg-2">
            @include('partials.sidebar')
        </div>
    @endif
    </div>
    @if ($books->count())
    <div class="col-lg-5">
        @foreach ($books as $book)
        <div class="card p-3 my-2">
            <div class="row" style="display: flex; flex-direction: row; align-items: center; gap: 15px;">
                <div class="col-lg-2">
                    @if (file_exists(public_path('img-thumb/' . $book->thumbnail_url)))
                    <img src="{{ asset('img-thumb/' . $book->thumbnail_url) }}" class="img-thumbnail rounded-top" alt="{{ $book->title }}">
                    @else
                    <img src="{{ asset('img-thumb/default.png') }}" class="img-thumbnail rounded-top" alt="{{ $book->title }}">
                    @endif
                </div>
                <div class="col-lg-8" style="display: flex; flex-direction: column; justify-content: center;">
                    <a href="/books/{{ $book->id }}?={{ $book->slug }}" style="text-decoration: none; color: black;">
                        <h3>{{ $book->title }}</h3>
                    </a>
                    @if ($book->pdf_url !== null && $book->pdf_url !== '')
                    <span class="d-inline-block" tabindex="0" data-bs-toggle="popover" data-bs-placement="top" data-bs-content="PDF book is available">
                        <img style="width: 20px; height: 20px;" src="{{ asset('icon-svg/ebook.svg') }}" alt="">
                        <small>EBook 
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
                            <path d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z"/>
                            </svg>
                        </small>
                    </span>
                    @endif
                    <p>Author: {{ Illuminate\Support\Str::limit($book->author, 50) }}</p>
                    <small>Category: {{ $book->category->name }}</small>
                    <p style="text-align: start;">Status: {{ $book->borrow ? 'Dipinjam' : 'Tersedia' }}</p>
                    <p>{{ Illuminate\Support\Str::limit($book->synopsis, 150) }}</p>
                </div>
                {{-- <div style="display: flex; justify-content: center; align-items: center; flex-direction: column;" class="col-lg-2 border rounded"></div> --}}
            </div>
        </div>
        @endforeach
    </div>
    </div>

    <br>
    @else
    <p class="text-center fs4">No book found.</p>
    @endif
    <div class="container my-3" style="text-align: center;">{{ $books->links() }}</div>
@endsection

@section('scripts')
<script>
    var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
    var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
        return new bootstrap.Popover(popoverTriggerEl)
    })
</script>
@endsection
