@extends('admins.layouts.main')

@section('container')
<div class="col-lg-8">
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
            <label for="category_id" class="form-label">Category</label>
            <select class="form-control" name="category_id" id="category_id" required>
                @foreach ($categories as $category)
                <option value="{{ $category->id }}" {{ $category->id == $book->category_id ? 'selected' : '' }}>
                    {{ $category->name }}
                </option>
                @endforeach
            </select>
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
@endsection
