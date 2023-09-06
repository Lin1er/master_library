@extends('admins.layouts.main')

@section('container')
<div class="col-lg-8">
    <form class="" action="/admins/categories/" method="post">
        @csrf
    <div class="mb-3">
      <label for="category" class="form-label">Category Name</label>
      <input type="text"
        class="form-control" name="name" id="name" aria-describedby="helpId" placeholder="">
    </div>
    <div class="mb-3">
      <label for="category" class="form-label">Category slug</label>
      <input type="text"
        class="form-control" name="slug" id="slug" aria-describedby="helpId" placeholder="">
    </div>
    <button type="submit" class="btn btn-primary my-3">Save</button>
    </form>
</div>
@endsection