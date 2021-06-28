@extends('layouts.app')

@section ('content')

<div class="container p-0">
  @if(Session::has('success'))
  <div class="row">
    <div class="col-12">
      <div id="charge-message" class="alert alert-success">
        {{ Session::get('success') }}
      </div>
    </div>
  </div>
  @endif

    <div class="row">
      <div class="col-12 promowrap">
        <div class="row m-0 p-0">
          <div class="col-4 promo-info h-100">
            <div class="infowrapper d-flex flex-column h-100 justify-content-center">
              <h2>BELI DARI RUMAH</h2>
              <h4>Diskon 30% untuk seluruh item!</h4>
              <p>Sampai 1 Juli 2021</p>
              <a href="{{ route('product.index') }}" class="w-100 button">Lihat</a>
            </div>   
          </div> 
        </div>
        <img class="d-block w-100" src="{{ asset('photo/fitfromhome.jpg') }}" alt="">
      </div>
    </div>
   
    <div class="row pt-4">
      <div class="col-6 d-flex flex-column align-items-center genderwrapper">
        <a href="{{ route('product.index') }}">
          <button id="maleBtn">
          <div class="gender">
            <img class="d-block w-100" src="{{ asset('photo/model3.jpg') }}" alt="">
            <h2 class="pt-2">PRIA</h2>
          </div>
        </button>
        </a>
      </div>
      <div class="col-6 d-flex flex-column align-items-center genderwrapper">
        <a href="{{ route('product.index') }}">
          <button id="femaleBtn">
          <div class="gender">
            <img class="d-block w-100" src="{{ asset('photo/model4.jpg') }}" alt="">
            <h2 class="pt-2">WANITA</h2>
          </div>
        </button>
        </a>
      </div>
    </div>
    
        <div class="row m-0 pt-4">
          <div class="col-lg-4 col-sm-12 d-flex flex-column align-items-center categorywrapper">
            <a href="{{ route('product.index') }}">
              <div class="category">
                <img class="" height="200px" src="{{ asset('photo/shoes.png') }}" alt="">
                <h5 class="pt-2">SEPATU</h5>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-12 d-flex flex-column align-items-center categorywrapper">
            <a href="#">
              <div class="category">
                <img class="" height="200px" src="{{ asset('photo/shirt.png') }}" alt="">
                <h5 class="pt-2">BAJU</h5>
            </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-12 d-flex flex-column align-items-center categorywrapper">
            <a href="#">
              <div class="category">
                <img class="" height="200px" src="{{ asset('photo/bag.png') }}" alt="">
                <h5 class="pt-2">AKSESORIS</h5>
              </div>
            </a>
          </div>
        </div>
        
    <h2 class="pt-4">TERLARIS</h2>
    <div class="row d-flex justify-content-center">
      @foreach ($products as $product)    
      <div class="col-lg-4 col-md-7 col-sm-7 col-7 pt-4">
        <div class="card">
          <a href="{{ route('product.show',['product'=>$product->id]) }}">
            <div class="card-body ">
              <div class="product-info">
                <div class="info-1"><img src="{{ asset('/storage/'.$product->image) }}" alt=""></div>
                <div class="info-4"><h5>{{ $product->brand }}</h5></div>
                <div class="info-2"><a href="product/{{ $product->id }}"><h4>{{ $product->name }}</h4></a></div>
                <div class="info-10"><h5>Rp {{ $product->price }}</h5></div>
              </div>
            </div>
          </a>
        </div>
      </div>
      @endforeach
    </div>
 
    <div class="row m-0 pt-4">
      <div class="col-lg-4 col-sm-12 d-flex flex-column align-items-center advantagewrapper">
        <img class="" height="80px" src="{{ asset('photo/delivery2.svg') }}" alt="">
          <h4>BEBAS ONGKIR</h4>
      </div>
      <div class="col-lg-4 col-sm-12 d-flex flex-column align-items-center advantagewrapper">
        <img class="" height="80px" src="{{ asset('photo/guarantee.svg') }}" alt="">
          <h4>PREMIUM AND ORIGINAL</h4>
      </div>
      <div class="col-lg-4 col-sm-12 d-flex flex-column align-items-center advantagewrapper">
        <img class="" height="80px" src="{{ asset('photo/support.svg') }}" alt="">
          <h4>24/7 CUSTOMER SUPPORT</h4>
      </div>
    </div>
   

</div>

@endsection