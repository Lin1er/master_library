{{-- <div class="row">
    <div class="sidebar border border-right col-md-3 col-lg-2 p-0 bg-body-tertiary">
      <div class="offcanvas-lg offcanvas-end bg-body-tertiary" tabindex="-1" id="sidebarMenu" aria-labelledby="sidebarMenuLabel">
        <div class="offcanvas-header">
          <h5 class="offcanvas-title" id="sidebarMenuLabel">Company name</h5>
          <button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#sidebarMenu" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body d-md-flex flex-column p-0 pt-lg-3 overflow-y-auto">
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link d-flex align-items-center gap-2 " aria-current="page" href="/admins/dashboard">
                <svg class="bi"><use xlink:href="#house-fill"/></svg>
                Dashboard
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link d-flex align-items-center gap-2" href="/admins/books">
                <svg class="bi"><use xlink:href="#file-earmark"/></svg>
                Books
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link d-flex align-items-center gap-2" href="/admins/users">
                <svg class="bi"><use xlink:href="#people"/></svg>
                users
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link d-flex align-items-center gap-2 " href="/admins/categories">
                <i class="bi bi-tags"></i>
                Category
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link d-flex align-items-center gap-2 " aria-current="page" href="/home">
                <svg class="bi"><use xlink:href="#house-fill"/></svg>
                Home Back
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link d-flex align-items-center gap-2" href="#">
                <svg class="bi"><use xlink:href="#puzzle"/></svg>
                Integrations
              </a>
            </li>
          </ul>

          <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-body-secondary text-uppercase">
            <span>Saved reports</span>
            <a class="link-secondary" href="#" aria-label="Add a new report">
              <svg class="bi"><use xlink:href="#plus-circle"/></svg>
            </a>
          </h6>
          <ul class="nav flex-column mb-auto">

          </ul>

          <hr class="my-3">

          <ul class="nav flex-column mb-auto">
            <li class="nav-item">
              <a class="nav-link d-flex align-items-center gap-2" href="#">
                <svg class="bi"><use xlink:href="#gear-wide-connected"/></svg>
                Settings
              </a>
            </li>
            <li class="nav-item">
                <form action="/logout" method="post">
                    @csrf
                    <button type="submit" class="nav-link d-flex align-items-center gap-2">
                        <svg class="bi"><use xlink:href="#door-closed"/></svg> Logout
                    </button>
                  </form>
            </li>
          </ul>
        </div>
      </div>
    </div> --}}
    
{{-- <style>
  .sidebar {
    width: 200px;
    height: 100%;
    background-color: #f1f1f1;
    float: left;
}

.sidebar ul {
    list-style-type: none;
    padding: 0;
}

.sidebar ul li {
    padding: 10px;
}

.sidebar ul li a {
    text-decoration: none;
    color: #000;
}

.content {
    margin-left: 200px;
    padding: 20px;
}

</style>

    <div class="sidebar">
      <ul>
          <li><a href="#">Beranda</a></li>
          <li class="nav-item">
            <a class="nav-link d-flex align-items-center gap-2" href="/admins/books">
              <svg class="bi"><use xlink:href="#file-earmark"/></svg>
              Books
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link d-flex align-items-center gap-2" href="/admins/users">
              <svg class="bi"><use xlink:href="#people"/></svg>
              users
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link d-flex align-items-center gap-2 " href="/admins/categories">
              <i class="bi bi-tags"></i>
              Category
            </a>
          </li>
      </ul>
  </div> --}}

  <nav class="navbar navbar-expand-lg bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand text-light" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link text-light active" aria-current="page" href="/home">Home.User</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light" href="/admins/books">
              Books
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light" href="/admins/users">
              users
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light " href="/admins/categories">
              Category
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light " href="/admins/user-late">
               Daftar Peminjaman
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>