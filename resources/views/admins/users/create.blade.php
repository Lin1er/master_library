@extends('admins.layouts.main')

@section('container')
<div class="col-lg-8 my-3 offset-2">
    <form class="" action="/admins/users/" method="post">
        @csrf
        <div class="mb-3">
            <input class="form-control @error('name') is-invalid @enderror" placeholder="Name" type="name" name="name" id="name" value="{{ old('name') }}">
            @error('name')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <input class="form-control @error('username') is-invalid @enderror" placeholder="Username" type="username" name="username" id="username" value="{{ old('username') }}">
            @error('username')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <select class="form-select" name="class">
                <option selected>Pilih Kelas</option>
                <option value="101">10-1</option>
                <option value="102">10-2</option>
                <option value="103">10-3</option>
                <option value="104">10-4</option>
                <option value="111">11-1</option>
                <option value="112">11-2</option>
                <option value="113">11-3</option>
                <option value="114">11-4</option>
                <option value="121">12-Ipa-1</option>
                <option value="122">12-Ipa-2</option>
                <option value="123">12-Ips</option>
            </select>
        </div>
        <div class="mb-3">
            <input class="form-control @error('password') is-invalid @enderror" name="password" placeholder="Password" type="password" id="password">
            @error('password')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
@endsection
