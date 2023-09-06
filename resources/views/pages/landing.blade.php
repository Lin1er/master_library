@extends('layouts.main')

@section('styles') 
<style>
    /* Mobile Styles */
    @media screen and (max-width: 600px) {
        
        .con-bg {
            background: url('img/ic.png') no-repeat;
            background-size: cover;
            padding-top: 100px;
            padding-bottom: 150px;
            flex-direction: column;
        }

        .con-land {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .pamflet {
            max-width: 300px;
            padding: 20px;
            box-shadow: 0px 0px 19px 10px rgb(0 0 0 / 55%);
            order: 2;
        }

        .h1-land {
            text-align: center;
            font-size: 20px;
            font-family: -webkit-body;
        }

        .p-land {
            font-family: math;
            font-size: 10px;
        }

        .img-land {
            margin-bottom: 20px;
            max-width: 180px;
            filter: hue-rotate(43deg);
            box-shadow: 0px 0px 19px 10px rgb(0 0 0 / 55%);
            order: 1;
        }
    }

    /* Tablet Styles */
    @media screen and (min-width: 601px) and (max-width: 1000px) {
        .con-bg {
            background: url('img/ic.png') no-repeat;
            background-size: cover;
            padding-top: 100px;
            padding-bottom: 150px;
        }

        .con-land {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .pamflet {
            max-width: 400px;
            padding: 20px;
            margin-right: 70px;
            box-shadow: 0px 0px 19px 10px rgb(0 0 0 / 55%);
        }

        .h1-land {
            text-align: center;
            font-size: 3rem;
            font-family: -webkit-body;
        }

        .p-land {
            font-family: math;
        }

        .img-land {
            margin-left: 20px;
            max-width: 300px;
            filter: hue-rotate(43deg);
            box-shadow: 0px 0px 19px 10px rgb(0 0 0 / 55%);
        }
    }

    /* Laptop Styles */
    @media screen and (min-width: 1001px) {
        .con-bg {
            background: url('img/ic.png') no-repeat;
            background-size: cover;
            padding-top: 100px;
            padding-bottom: 150px;
        }

        .con-land {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .pamflet {
            max-width: 600px;
            padding: 20px;
            margin-right: 70px;
            box-shadow: 0px 0px 19px 10px rgb(0 0 0 / 55%);
        }

        .h1-land {
            text-align: center;
            font-size: 5rem;
            font-family: -webkit-body;
        }

        .p-land {
            font-family: math;
        }

        .img-land {
            margin-left: 20px;
            max-width: 500px;
            filter: hue-rotate(43deg);
            box-shadow: 0px 0px 19px 10px rgb(0 0 0 / 55%);
        }
    }
</style>
@endsection

@section('container')
<div class="con-bg">
    <div class="con-land">
        <div class="card pamflet">
            <h1 class="h1-land">LibrarIC</h1>
            <p class="p-land">"Something very magical happens when you READ A GOOD BOOK" <br>-J.K. Rowling</p>
            <a href="/home" class="btn btn-dark">Explore Now</a>
        </div>
        <img src="img/book.jpg" alt="Book" class="rounded border img-land"> 
    </div>
</div>

{{-- <div class="container mt-5">
    <article>
        <h2>Kelulusan Angkatan 2</h2>
    </article>
</div>

<div class="mt-5">
    <div id="carouselExampleCaptions" class="carousel slide my-3 rounded" style="margin-left: 250px; margin-right: 250px; " data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="{{ asset('img/ic.png') }}" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5>First slide label</h5>
          <p>Some representative placeholder content for the first slide.</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="{{ asset('img/ic.png') }}" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5>Second slide label</h5>
          <p>Some representative placeholder content for the second slide.</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="{{ asset('img/ic.png') }}" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5>Third slide label</h5>
          <p>Some representative placeholder content for the third slide.</p>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</div> --}}
</div>
@endsection
