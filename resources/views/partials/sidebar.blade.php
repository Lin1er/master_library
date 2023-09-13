<div class="col-lg-2 col-md-3 col-sm-4 offset-lg-1 col-sm-1">
    <div class="sidebar">
        <nav id="sidebar">
            <div class="p-4 pt-5">
                <h5>Categories</h5>
                <ul class="list-unstyled components mb-5">
                    <li>
                        <a href="#categorySubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">All Categories</a>
                        <ul class="collapse list-unstyled @if(isset($selectedCategory)){{ 'show' }}@endif" id="categorySubmenu">
                            @foreach ($categories as $category)
                            <li>
                                <a href="/category/{{ $category->slug }}">
                                    @if ($title == $category->name)
                                        <i class="bi bi-caret-right-fill"></i>
                                    @else
                                        <i class="bi bi-caret-right"></i>
                                    @endif
                                    {{ $category->name }}
                                </a>
                            </li>
                            @endforeach
                        </ul>

                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>

<style>
    /* CSS styles for the sidebar */
    hr {
        margin: 0%;
        margin-bottom: 5px;
    }

    .sidebar {
        margin: 0;
        padding: 0;
        width: 250px;
        background-color: #f1f1f1;
        position: sticky;
        height: 100%;
        overflow: auto;
        padding: 10px;
        border-radius: 10px;
    }

    .sidebar ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }

    .sidebar li {
        /* margin-bottom: 10px; */
    }

    .sidebar a {
        text-decoration: none;
        color: #333333;
        font-weight: bold;
    }

    /* Responsive styles */
    @media screen and (max-width: 1199px) {
        .col-lg-2 {
            flex: 0 0 25%;
            max-width: 25%;
        }
    }

    @media screen and (max-width: 991px) {
        .col-md-3 {
            flex: 0 0 33.333333%;
            max-width: 33.333333%;
        }
    }

    @media screen and (max-width: 767px) {
        .col-sm-4 {
            flex: 0 0 50%;
            max-width: 50%;
        }
    }

    @media screen and (max-width: 575px) {
        .col-lg-2,
        .col-md-3,
        .col-sm-4 {
            flex: 0 0 100%;
            max-width: 100%;
        }
    }
</style>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
<script>
    $(document).ready(function() {
        // Membuka submenu kategori yang dipilih saat halaman dimuat
        $('#categorySubmenu').addClass('show');
    });
</script>
