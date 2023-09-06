@extends('layouts.main')

@push('styles')
    <style>        
        @media screen and (max-width: 600px) {
            .profileimg {
                width:250px; 
                height: 10px;
            }
        }
        @media screen and (max-width: 1024px) {
            .profileimg {
                width:250px; 
                height: 350px; 
            }
        }
        footer {
            position: fixed;
            bottom: 0
        }
    </style>
@endpush

@section('container')
<div class="row mt-5" style="display: flex; align-items: flex-end;">
    {{-- <div class="col-2 offset-3">
        <img class="img-thumbnail profileimg" src="img/ic.png" style="" alt="">
    </div> --}}
    
    <div class="col-lg-2 offset-lg-3">
        <h1>Profile User</h1>
        <h3>Name: {{ Auth()->user()->name }}</h3>
        <h5>Username: {{ auth()->user()->username }} #{{ auth()->user()->id }}</h5>
        <h5>Email: {{ auth()->user()->email }}</h5>
    </div>
    <div class="col-2">
        <a href="{{ route('profile.edit') }}" class="btn btn-primary">Edit Profile</a>
    </div>
</div>

<div class="row mt-3">
    <div class="col-8 offset-2">
        <div class="table-responsive">
            <table class="table table-primary">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Title</th>
                        <th scope="col">Tanggal Pinjam</th>
                        <th scope="col">Tanggal Kembali</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($borrows as $borrow)
                        <tr>
                            <td scope="row">{{ $borrow->book_id }}</td>
                            <td>{{ isset($borrow->book) ? $borrow->book->title : '-' }}</td>
                            <td>{{ $borrow->tgl_pinjam }}</td>
                            <td>{{ $borrow->tgl_kembali }}</td>
                        </tr>
                    @endforeach
                </tbody>
                
            </table>
        </div>
    </div>
</div>

@endsection
