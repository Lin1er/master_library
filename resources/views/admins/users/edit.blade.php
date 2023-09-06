@extends('admins.layouts.main')

@section('container')
    <h2>Edit User</h2>

    <form action="{{ route('users.update', $user->id) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" class="form-control" id="name" name="name" value="{{ $user->name }}">
        </div>

        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" value="{{ $user->username }}">
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
            <label for="password" class="form-label">New Password</label>
            <input type="password" class="form-control" id="password" name="password">
        </div>
        
        <div class="mb-3">
            <label for="password_confirmation" class="form-label">Confirm New Password</label>
            <input type="password" class="form-control" id="password_confirmation" name="password_confirmation">
        </div>
        

        <button type="submit" class="btn btn-primary">Update</button>
    </form>
@endsection
