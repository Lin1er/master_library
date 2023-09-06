@extends('layouts.main')

@section('container')
    <div>
        <div id="carouselExample" class="carousel slide my-3">
            <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="{{ asset('img/book.jpg') }}" class="d-block w-100" style="height: 500px" alt="...">
            </div>
            <div class="carousel-item">
                <img src="{{ asset('img/book.jpg') }}" class="d-block w-100" style="height: 500px" alt="...">
            </div>
            <div class="carousel-item">
                <img src="{{ asset('img/book.jpg') }}" class="d-block w-100" style="height: 500px" alt="...">
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
    <div class="col-lg-8 offset-lg-2 my-3">
        <div class="col-lg-8">
            <h1 class="">Sejarah</h1>
            <p>
                Perpustakaan MAN IC Lampung Timur , sebagai sumber ilmu pengetahuan penunjang pendidikan terletak di komplek MAN IC Lampung Timur   yang beralamat di Jalan Taman Nasional way Kambas. <br>
                Peprustakaan MAN IC Lampung Timur didirikan pada .bulan Januari 2021. Lokasi perpustakaan menempati sebuah ruangan yang sebenarnya merupakan ruang kelas. <br>
                Perpustakaan MAN IC Lampung Timur , mulai menggunakan otomasi perpustakaan yaitu aplikasi  SLIM pada tahun 2021 hingga 2022.Pada awal tahun pelajaran 2023 aplikasi otomasi yang digunakan perpustkaan MAN IC Lampung Timur menggunakan wab aplikasi yang dikembangkan oleh salah satu siswa terbaik dalam bidang informatika yang dipilih sebagai duta perpustakaan MAN IC Lampung Timur atas nama Muhammad Ulinuha As-Shiddqy kelas XI yaitu <a href="shorturl.ac/perpus-ic-lamtim">shorturl.ac/perpus-ic-lamtim</a>  . Pelayanan menggunakan <a href="shorturl.ac/perpus-ic-lamtim">shorturl.ac/perpus-ic-lamtim</a>  ini sangat efektif, proses sirkulasi dapat dilakukan dengan cepat, tepat dan terkoordinir. Penelusuran buku-buku yang dibutuhkan oleh pengguna dilakukan dengan mempergunakan komputer yang sudah terhubung dengan yang lain secara local (Local Area Network).
            </p>
        </div>
        <hr>
        <h1 class="text-center">Slogan</h1>
        <p class="text-center">
            “Something very magial happens when you READ A GOOD BOOK” <br>*J.K. Rowling <br>Dengan slogan ini diharapkan perpustakaan MAN IC Lampung Timur dapat menumbuh kembangkan semangat belajar, berkresasi dan  meningktkan kegiata literasi.
        </p>
        <hr>
        <div class="col-lg-8">
            <h1 class="">
                Tugas dan Fungsi <br>Perpustakaan MAN IC Lampung Timur
            </h1>
            <P> Tugas : <br>
                Perpustakaan MAN IC Lampung Timur mempunyai tugas memberikan pelayanan bagi siswa, guru, dan karyawan sesuai dengan tata tertib pengunjung perpustakaan. <br>
                Fungsi : <br>
                •  Pusat kegiatan belajar mengajar untuk mencapai tujuan pendidikan. <br>
                •  Pusat penelitian sederhana yang memungkinkan para siswa mengembangkan kreatifitas dan imajinasi.
            </P>
        </div>
    </div>
@endsection