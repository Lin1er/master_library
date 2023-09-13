  <style>
        /* Add custom CSS here to style the header and make it visually appealing */

    /* Example: */
    .navbar {
    padding: 10px 0;
    }

    .navbar-brand {
    font-size: 24px;
    }

    .nav-link {
    font-size: 16px;
    }

    .dropdown-menu {
    background-color: #f8f9fa;
    }

    .dropdown-item {
    font-size: 14px;
    }

    .dropdown-divider {
    border-color: #d6d6d6;
    }

    /* Adjust as needed to match your desired design */

  </style>


<nav class="navbar navbar-expand-lg navbar-light bg-light" style="box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1); margin: 10px; margin-bottom: 0%;">
    <div class="container-fluid">
      <a class="navbar-brand" href="/">Library | {{ $title }}</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-center" id="navbarText">
        <ul class="navbar-nav">
          <li class="nav-item {{ Request::is('/') ? 'active' : '' }}">
            <a class="nav-link" href="/">Home</a>
          </li>
          {{-- <li class="nav-item {{ Request::is('/berita') ? 'active' : '' }}">
            <a class="nav-link" href="/berita">Berita</a>
          </li> --}}
          <li class="nav-item {{ Request::is('home') ? 'active' : '' }}">
            <a class="nav-link" href="/home">Katalog Perpustakaan</a>
          </li>
          <li class="nav-item dropdown {{ Request::is('profile/*') ? 'active' : '' }}">
            <a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Profile</a>
            <ul class="dropdown-menu" aria-labelledby="profileDropdown">
              <li><a class="dropdown-item" href="/profile-perpustakaan">Profile Perpustakaan</a></li>
              <li><a class="dropdown-item" href="/visimisi">Visi & Misi</a></li>
              {{-- <li><a class="dropdown-item" href="/prestasi">Prestasi</a></li> --}}
              {{-- <li><a class="dropdown-item" href="/layanan">Layanan</a></li> --}}
              {{-- <li><a class="dropdown-item" href="/fasilitas">Fasilitas</a></li> --}}
              {{-- <li><a class="dropdown-item" href="/promosi">Promosi</a></li> --}}
              <li><a class="dropdown-item" href="/tata-tertib">Tata Tertib</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown {{ Request::is('karya/*') ? 'active' : '' }}">
            <a class="nav-link dropdown-toggle" href="#" id="karyaDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Karya</a>
            <ul class="dropdown-menu" aria-labelledby="karyaDropdown">
              <li><a class="dropdown-item" href="/karya/karyabuku">Karya Buku</a></li>
              <li><a class="dropdown-item" href="/karya/karyatulisilmiah">Karya Tulis Ilmiah</a></li>
              <li><a class="dropdown-item" href="/karya/karyatulisterpublikasi">Karya Karya Tulis Terpublik</a></li>
            </ul>
          </li>
          {{-- <li class="nav-item {{ Request::is('kliping') ? 'active' : '' }}">
            <a class="nav-link" href="/kliping">Kliping</a>
          </li> --}}
          <li class="nav-item {{ Request::is('openlibrary/search') ? 'active' : '' }}">
            <a class="nav-link" href="/openlibrary/search">Cari E-Book</a>
          </li>

          @auth
          @if (auth()->user()->role == 1)
          <li class="nav-item {{ Request::is('admins/dashboard') ? 'active' : '' }}">
            <a class="nav-link" href="/admins/dashboard">Admin</a>
        </li>
          @endif
          @endauth
        </ul>

        <div class="navbar-nav ms-auto">
          @auth
            <p class="navbar-text me-3">Welcome back, {{ auth()->user()->username }}</p>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="menuDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Menu</a>
              <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="menuDropdown">
                <li><a class="dropdown-item" href="/profile">Profile</a></li>
                <li><a class="dropdown-item" href="#">blank</a></li>
                <li><hr class="dropdown-divider"></li>
                <form action="/logout" method="post">
                  @csrf
                  <button type="submit" class="dropdown-item">
                    <i class="bi bi-box-arrow-right me-2"></i> Logout
                  </button>
                </form>
              </ul>
            </li>
          @else
            <div>
              <a class="nav-link" href="/login">
                <i class="bi bi-box-arrow-in-right me-1"></i> Login
              </a>
            </div>
          @endauth
        </div>
      </div>
    </div>
  </nav>


