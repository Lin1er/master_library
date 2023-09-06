@extends('admins.layouts.main')

@section('container')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">


<div class="col-lg-8 offset-2">
  <h3>Category List</h3>
  <a name="" id="" class="btn btn-primary" href="/admins/categories/create" role="button">add category</a>
  <table class="table table-striped table-sm">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Category</th>
        <th scope="col">slug</th>
        <th scope="col">Actions</th>
      </tr>
    </thead>
    <tbody>
      @foreach ($categories as $category)
      <tr>
        <td>{{ $category->id }}</td>
        <td>{{ $category->name }}</td>
        <td>{{ $category->slug }}</td>
        
        <td style="display:flex;">
          <a href="/admins/categories/{{ $category->id }}/edit"><button class="btn btn-primary">Edit</button></a>
                  <form class="" action="{{ route('categories.destroy', $category->id) }}" method="post">
                    @csrf
                    @method('DELETE')
                    <!-- Isi formulir yang lain -->
                    
                    <button type="submit" class="btn btn-danger">Delete</button>
                  </form>
                  
                </td>
              </tr>
              @endforeach
            </tbody>
          </table>
  </div>
@endsection