@extends('Layouts.main')

@section('container')
    <div>
        <div id="carouselExample" class="carousel slide my-3">
            <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="{{ asset('img/book.jpg') }}" class="d-block w-100" style="height: 400px" alt="...">
            </div>
            <div class="carousel-item">
                <img src="{{ asset('img/book.jpg') }}" class="d-block w-100" style="height: 400px" alt="...">
            </div>
            <div class="carousel-item">
                <img src="{{ asset('img/book.jpg') }}" class="d-block w-100" style="height: 400px" alt="...">
            </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <div>
        <div class="col-lg-8 offset-lg-2">
            <h1 class="text-center">PERATURAN DAN TATA TERTIB <br>PERPUSTAKAAN MAN IC LAMPUNG TIMUR<br>TAHUN 2022/2023</h1>
            <h2>LAYANAN PERPUSTAKAAN :</h2>
            <ul>Jam Buka:
                <li>Hari Senin –  Jumat	:  Jam 09.30 – 16.30 WIB</li>
                <li>Hari Jum’at		: Jam 11.00 – 13.00 WIB (Istirahat)</li>
                <li>Hari Sabtu		: Jam 10.00-16.30</li>
            </ul>
            <h2>TATA TERTIB</h2>
            <li>1.	Setiap pengunjung diwajibkan mengisi buku pengunjung</li>
            <li>2.	Pengunjung dilarang membawa makanan & minuman</li>
            <li>3.	Pengunjung dilarang menimbulkan suara gaduh/bising yang menganggu pengunjung lain</li>
            <li>4.	Pengunjung harus menjaga kebersihan, kerapian dan kesopanan</li>
            <li>5.	Pengunjung dilarang merusak buku (merobek, melipat, mencorat-coret, atau mengotori bahan pustaka)</li>
            <li>6.	Buku yang telah selesai dibaca harus diletakkan dimeja.  </li>
            <h2>PERSYARATAN KARTU ANGGOTA PERPUSTAKAAN</h2>
            <ul>
                <li>1.	Peserta didik MAN IC Lampung Timur, menunjukkan kartu pelajar</li>
                <li>2.	Pas Foto berwarna 1 lembar</li>
                <li>3.	Mengisi formulir perndaftaran anggota yang telah disediakan</li>
                <li>4.	Bersedia mentaati segala peraturan yang ada.</li>
            </ul>
            <h2>SYARAT PEMINJAMAN BUKU</h2>
            <ul>
                <li>1.	Setiap peminjaman harus menyertakan Kartu Tanda Anggota (KTA) perpustakaan</li>
                <li>2.	Peminjaman harus dilakukan sesuai jadwal yang ada</li>
                <li>3.	Peminjam harus datang sendiri dalam proses peminjaman</li>
                <li>4.	Jumlah buku yang dipinjam maksimal 2 (dua) eksemplar</li>
                <li>5.	Jangka waktu peminjaman selama 1 satu minggu dan dapat diperpanjang sekali selama 1 minggu</li>
                <li>6.	Keterlambatan pengembalian lebih dari 30 hari akan dikenakan sanksi tidak boleh meminjam buku selama 1 bulan</li>
                <li>7.	Apabila buku yang dipinjam rusak atau hilang, peminjam wajib mengganti buku yang sama.</li>
            </ul>
        </div>
    </div>
@endsection