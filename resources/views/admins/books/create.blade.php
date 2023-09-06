@extends('admins.layouts.main')

@section('container')
<div class="offset-lg-2 col-lg-8">
    <form method="post" action="/admins/books" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" name="title" id="title" class="form-control" placeholder="" aria-describedby="helpId">
            <label for="author" class="form-label">Author</label>
            <input type="text" name="author" id="author" class="form-control" placeholder="" aria-describedby="helpId">
            <label for="author" class="form-label">Synopsis</label>
            <textarea name="synopsis" class="form-control" id=""></textarea>
            <div class="category-checkboxes" style="margin-top: 20px">
                <h4>Categories</h4>
                @foreach ($categories as $category)
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="category_id" value="{{ $category->id }}" id="category{{ $category->id }}">
                        <label class="form-check-label" for="category{{ $category->id }}">
                            {{ $category->name }}
                        </label>
                    </div>
                @endforeach
            </div>
            
            

            <label for="thumbnail" class="form-label">Choose Thumbnail</label>
            <input type="file" class="form-control" name="thumbnail" id="thumbnail" placeholder="" aria-describedby="fileHelpId">
            <label for="thumbnail" class="form-label">Choose PDF</label>
            <input type="file" class="form-control" name="pdf" id="pdf" placeholder="" aria-describedby="fileHelpId">

        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
@endsection
