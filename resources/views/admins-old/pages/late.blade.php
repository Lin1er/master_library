@extends('admins.layouts.main')

@section('container')
<div class="table-responsive">
    <table class="table table-primary">
        <thead>
            <tr>
                <th scope="col">No.</th>
                <th scope="col">Name</th>
                <th scope="col">Class</th>
                <th scope="col">Loan date</th>
                <th scope="col">Return date</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($borrows as $borrow)
                @php
                    $returnDate = $borrow ? $borrow->tgl_kembali : null;
                    $today = now()->format('Y-m-d');
                    $isLate = ($returnDate && $today > $returnDate);
                @endphp
                <tr class="{{ $isLate ? 'table-danger' : '' }}">
                    <td scope="row">{{ $loop->iteration }}.</td>
                    <td>{{ $borrow->user->name }}</td>
                    <td>{{ $borrow->user->class }}</td>
                    <td>{{ $borrow->user->borrow ? $borrow->tgl_pinjam : '-' }}</td>
                    <td>{{ $borrow->returnDate ? $returnDate : '-' }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
