@extends('admins.layouts.main')

@section('container')
    <div class="row my-5 ">
        <div class="offset-lg-2 col-lg-5">
            <form action="/admins/books/{{ $book->id }}" method="post" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="mb-3">
                <label for="title" class="form-label">Title</label>
                <input type="text" class="form-control" name="title" id="title" value="{{ $book->title }}" required>
            </div>
            <div class="mb-3">
                <label for="author" class="form-label">Author</label>
                <input type="text" class="form-control" name="author" id="author" value="{{ $book->author }}" required>
            </div>
            <div class="mb-3">
                <label for="synopsis" class="form-label">Synopsis</label>
                <textarea class="form-control" name="synopsis" id="synopsis">{{ $book->synopsis }}</textarea>
            </div>
            <div class="mb-3">
                <label for="thumbnail" class="form-label">Thumbnail</label>
                <input type="file" class="form-control" name="thumbnail" id="thumbnail">
                @if ($book->thumbnail_url)
                <div>
                    <img src="{{ asset('img-thumb/' . $book->thumbnail_url) }}" alt="Thumbnail" style="max-width: 200px;">
                </div>
                @endif
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
        <div class="offset-lg-1 col-lg-3">
            <form action="/admins/categories/{{ $book->id }}" method="post">
                <h4>Categories</h4>
                <div class="category-checkboxes" style="margin-top: 20px">
                    @foreach ($categories as $category)
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="category_id[]" value="{{ $category->id }}" id="category{{ $category->id }}">
                        <label class="form-check-label" for="category{{ $category->id }}">
                            {{ $category->name }}
                        </label>
                    </div>
                    @endforeach
                </div>
            </form>
        </div>
    </div>
    @endsection
    