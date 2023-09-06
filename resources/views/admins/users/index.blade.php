@extends('admins.layouts.main')

@section('container')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<div class="container main-search my-3">
  <form class="d-flex" role="search" action="/admins/users">
      @csrf
      <input class="form-control me-2" type="search" placeholder="Search..." aria-label="Search" name="search">
      <button class="btn btn-outline-success" type="submit">Search</button>
  </form>
</div>

      {{-- <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas> --}}
<div class="col-lg-8 offset-2">
  <h2>List Users</h2>
  <a name="" id="" class="btn btn-primary" href="/admins/users/create" role="button">add User</a>
</div>      

<div class="table-responsive small offset-2 col-lg-8">
  <table class="table table-striped table-sm">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Username</th>
        <th scope="col">Class</th>
        <th scope="col">Actions</th>
      </tr>
    </thead>
    <tbody>
        @forEach ($users as $user)
            <tr>
                <td>{{ $user->id }}</td>
                <td>{{ $user->name }}</td>
                <td>{{ $user->username }}</td>
                <td>{{ $user->class }}</td>
                <td style="display:flex;">
                  <a href="/admins/users/{{ $user->id }}/edit"><button class="btn btn-primary">Edit</button></a>
                  <form class="" action="{{ route('users.destroy', $user->id) }}" method="post">
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