@extends('layouts.app')

@section ('content')

<div class="container p-0">
  <div class="row">

    <div class="col-lg-3 col-md-3 col-sm-4 col-5 pl-4 filter">
      <div class="fixedfilter">

        <h3><i class="fa fa-filter"></i> Filter </h3>
        <input class="mt-3" type="text" id="search" placeholder="Cari product.." style="width:100%;">

        <div class="filterprice card">
          <div class="card-body">
            <h5 class="card-title">Harga</h5>
            <input type="range" min="{{ $minPrice }}" max="{{ $maxPrice }}" value="{{ $maxPrice }}" class="slider selector" id="pricerange">
            <p class="p-0 m-0">Max: Rp <span id="currentrange">{{ $maxPrice }}</span></p>
          </div>
        </div>

        <div class="filterbrand card">
          <div class="card-body">
            <h5 class="card-title">Brand</h5>
            @foreach ($brands as $brands)
              <input type="checkbox" id="{{ $brands['brand'] }}" class="brand selector" name="brand" value="{{ $brands['brand'] }}" >
              <label for="{{ $brands['brand'] }}">{{ $brands['brand'] }}</label><br>
            @endforeach
          </div>
        </div>

    <h2 class="pt-4">PRODUCT</h2>
  
      @foreach ($products as $product) 
         
      <div class="row d-flex justify-content-start">
        <div class="card">
          <a href="{{ route('product.show',['product'=>$product->id]) }}">
            <div class="card-body ">
              <div class="product-info">
                <div class="info-1"><img src="{{ asset('/storage/'.$product->image) }}" alt=""></div>
                <div class="info-4"><h5>{{ $product->brand }}</h5></div>
                <div class="info-2"><a href="product/{{ $product->id }}"><h4>{{ $product->name }}</h4></a></div>
                <div class="info-3"><h5>Rp {{ $product->price }}</h5></div>
              </div>
            </div>
          </a>
        </div>
      </div>
      @endforeach
    </div>
  </div>
</div>



@endsection

