@extends('admins.layouts.main')

@section('container')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<div class="container main-search my-3">
    <form class="d-flex" role="search" action="/admins/books">
        @csrf
        <input class="form-control me-2" type="search" placeholder="Search..." aria-label="Search" name="search">
        <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
</div>
<div class="col-lg-8 offset-lg-2">
    <h2>List Books</h2>
    <a name="" id="" class="btn btn-primary" href="/admins/books/create" role="button">Add Books</a>
</div>

<div class="table-responsive small col-lg-8 offset-lg-2">
  <table class="table table-striped table-sm">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Title</th>
        <th scope="col">Author</th>
        <th scope="col">Pdf</th>
        <th scope="col">Borrowed</th>
        <th scope="col">Actions</th>
      </tr>
    </thead>
    <tbody>
      @foreach ($books as $book)
        <tr>
          <td>{{ $book->id }}</td>
          <td>{{ $book->title }}</td>
          <td>{{ $book->author }}</td>
          <td>
            @if ($book->pdf_url === null || $book->pdf_url === '')
              <i class="bi bi-x-lg"></i>
            @else
              <i class="bi bi-check2"></i>
            @endif
          </td>
          <td>
            @if ($book->borrow)
                {{ $book->borrow->user->name . '#' . $book->borrow->user_id }}
            @else
                -
            @endif
          </td>
          <td style="display:flex;">
            <a href="{{ route('books.edit', $book->id) }}" class="btn btn-primary">Edit</a>

            <!-- Button Borrow -->
            <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#borrowModal{{ $book->id }}">Borrow</button>

            <!-- Button Queue -->
            <button class="btn btn-info" data-bs-toggle="modal" data-bs-target="#queueModal{{ $book->id }}">Queue</button>

            @if ($book->borrow)
              <form class="" action="{{ route('borrows.destroy', $book->borrow->id) }}" method="post">
                @csrf
                @method('DELETE')
                <!-- Isi formulir yang lain -->
                <button type="submit" class="btn btn-danger">Delete br</button>
              </form>
            @endif
            <form class="" action="{{ route('books.destroy', $book->id) }}" method="post">
              @csrf
              @method('DELETE')
              <!-- Isi formulir yang lain -->
              <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#confirmDelete{{ $book->id }}">Delete</button>
              <!-- Modal Konfirmasi Penghapusan -->
              <div class="modal fade" id="confirmDelete{{ $book->id }}" tabindex="-1" aria-labelledby="confirmDeleteLabel{{ $book->id }}" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="confirmDeleteLabel{{ $book->id }}">Confirm Delete</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <p>Are you sure you want to delete this book?</p>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                      <button type="submit" class="btn btn-danger">Delete</button>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </td>
        </tr>

 <!-- Modal Borrow -->
<div class="modal fade" id="borrowModal{{ $book->id }}" tabindex="-1" aria-labelledby="borrowModalLabel{{ $book->id }}" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="borrowModalLabel{{ $book->id }}">Borrow Book - {{ $book->title }}</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <!-- Isi form peminjaman -->
          <form action="{{ route('borrows.store') }}" method="post">
            @csrf
            <input type="hidden" name="book_id" value="{{ $book->id }}">
            <div class="mb-3">
              <label for="user_id" class="form-label">Borrower</label>
              <input type="text" class="form-control" id="user_id" name="user_id" list="userList" required>
              <datalist id="userList">
                @foreach ($users as $user)
                  <option value="{{ $user->id }}">{{ $user->name }}</option>
                @endforeach
              </datalist>
            </div>
            <input type="hidden" name="tgl_pinjam" value="{{ now() }}">
            <div class="mb-3">
              <label for="return_date" class="form-label">Return Date</label>
              <input type="date" class="form-control" id="return_date" name="tgl_kembali" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
      </div>
    </div>
  </div>

        <!-- Modal Queue -->
        <div class="modal fade" id="queueModal{{ $book->id }}" tabindex="-1" aria-labelledby="queueModalLabel{{ $book->id }}" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="queueModalLabel{{ $book->id }}">Queue - {{ $book->title }}</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <!-- Isi daftar antrian -->
                @if ($book->queue->count() > 0)
                  <ul>
                    @foreach ($book->queue as $queue)
                      <li>
                        <form class="" action="{{ route('queues.destroy', $queue->user_id) }}" method="post">
                          {{ $loop->iteration }}.
                          {{ $queue->user->name }}
                          @csrf
                          @method('DELETE')
                          <!-- Isi formulir yang lain -->
                          <button type="submit" class="btn btn-danger"><i class="bi bi-person-dash"></i></button>
                        </form>
                      </li>
                      <hr style="margin: 0%; margin-bottom: 5px;">
                    @endforeach
                  </ul>
                @else
                  <p>No queue available for this book.</p>
                @endif
              </div>
            </div>
          </div>
        </div>

      @endforeach
    </tbody>
  </table>
</div>
@endsection
