@extends('admins.layouts.main')

@section('container')
<div class="offset-lg-2 col-lg-8 col-md-8 offset-md-1">
    <form action="{{ route('borrows.store') }}" method="post">
        @csrf
        <div class="mb-3">
        <label for="book_id" class="form-label">Id Buku</label>
        <input type="text" name="book_id" class="form-control">
    </div>
    <div class="mb-3">
      <label for="user_id" class="form-label">Borrower Id</label>
      <input type="text" class="form-control" id="user_id" name="user_id" required>
    </div>
    <div class="mb-3">
        <label for="borrow_date" class="form-label">Tanggal Pinjam</label>
        <input type="date" class="form-control" id="borrow_date" name="tgl_pinjam" required>
    </div>
    <div class="mb-3">
        <label for="return_date" class="form-label">Return Date</label>
        <input type="date" class="form-control" id="return_date" name="tgl_kembali" required>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
@endsection
