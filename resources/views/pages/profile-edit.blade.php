@extends('layouts.main')

@section('container')
<div class="row mt-5">
    <div class="col-8 offset-2">
        <h1>Edit Profile</h1>

        @if(session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif

        <form action="{{ route('profile.update') }}" method="POST">
            @csrf
            @method('PUT')

            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" name="name" id="name" value="{{ $user->name }}" required>
            </div>

            <div class="mb-3">
                <select class="form-select" name="class" required>
                    <option value="" selected disabled>Pilih Kelas</option>
                    <option value="101" {{ $user->class == '101' ? 'selected' : '' }}>10-1</option>
                    <option value="102" {{ $user->class == '102' ? 'selected' : '' }}>10-2</option>
                    <option value="103" {{ $user->class == '103' ? 'selected' : '' }}>10-3</option>
                    <option value="104" {{ $user->class == '104' ? 'selected' : '' }}>10-4</option>
                    <option value="111" {{ $user->class == '111' ? 'selected' : '' }}>11-1</option>
                    <option value="112" {{ $user->class == '112' ? 'selected' : '' }}>11-2</option>
                    <option value="113" {{ $user->class == '113' ? 'selected' : '' }}>11-3</option>
                    <option value="114" {{ $user->class == '114' ? 'selected' : '' }}>11-4</option>
                    <option value="121" {{ $user->class == '121' ? 'selected' : '' }}>12-Ipa</option>
                    <option value="122" {{ $user->class == '122' ? 'selected' : '' }}>12-Ipa</option>
                    <option value="123" {{ $user->class == '123' ? 'selected' : '' }}>12-Ips</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" name="username" id="username" value="{{ $user->username }}" required>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" name="email" id="email" value="{{ $user->email }}" required>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" name="password" id="password" required>
            </div>

            <div class="mb-3">
                <label for="password_confirmation" class="form-label">Confirm Password</label>
                <input type="password" class="form-control" name="password_confirmation" id="password_confirmation" required>
            </div>

            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>
</div>
@endsection
