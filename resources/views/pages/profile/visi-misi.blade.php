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
            <h1 class="text-center">Tentang Kami</h1>
            
            <h2>A. Visi Perpustakaan</h2>
            <p>Menyediakan layanan perpustakaan yang berkualitas tinggi dalam mendukung pembelajaran, pengajaran, penelitian dan pengembangan diri peserta didik, pendidik, dan tenaga kependidikan MAN Insan Cendekia Lampung Timur.</p>
            <h2>B. Misi Perpustakaan</h2>
            <p>
                1.	Mendukung pembelajaran, pengajaran dan penelitian yang berkualitas di   lingkungan MAN Insan Cendekia Lampung Timur. <br>
                2.	Memberikan pengetahuan, keterampilan, pengalaman dan rasa percaya diri siswa dalam memanfaatkan perpustakaan dan sumber informasi untuk menjadi pribadi yang memiliki kemampuan informasi (Information literate), pembelajar mandiri (independent leaner) dan pembelajar sepanjang hayat (longlife leaner). <br>
                3.	Menanamkan minat baca (reading interest), kebiasaan membaca (reading habit) dan kemampuan membaca (reading ability) pada civitas akademika MAN Insan Cendekia Serpong.
            </p>
        </div>
    </div>
@endsection