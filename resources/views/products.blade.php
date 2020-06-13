@extends('layouts.app')
@section('content')
<div class="products">
    <div class="filter">
        <form action="">
            <h4>Filter Products</h4>
            <div class="form-group-p">
                <label>Name</label>
                <input type="text" name="query" value="@if(isset($_GET['query'])){{ $_GET['query'] }}@endif">
            </div>
            <div class="form-group-p">
                <div class="half">
                <label>Price From</label>
                    <input type="text" name="price_from" value="@if(isset($_GET['price_from'])){{ $_GET['price_from'] }}@endif">
                </div>
                <div class="half">
                <label>Price To</label>
                    <input type="text" name="price_to" value="@if(isset($_GET['price_to'])){{ $_GET['price_to'] }}@endif">
                </div>
            </div>
            @foreach($specifications as $specification)
            <div class="form-group-p">
                <label>{{ $specification->name }}</label>
                <select name="specification[{{ $specification->id }}]">
                    <option value="">Choose {{ $specification->name }}</option>
                    @foreach($specification->specificationValue as $value)
                        <option value="{{ $value->id }}" @if(isset($_GET['specification'][$value->id])) @if($_GET['specification'][$value->id] == $value->id) selected @endif  @endif>{{ $value->value }}</option>
                    @endforeach
                </select>
            </div>
            @endforeach
            <button>Filter</button>
        </form>
    </div>
    <div class="data">
    @forelse($products as $key => $value)
        <div class="seperator"></div>
        <h4 class="title-pr">Product Information</h4>
        <ul>
            <li><strong>Seller : </strong><span>{{ $value->seller }}</span></li>
            <li><strong>Title : </strong><span>{{ $value->title }}</span></li>
            <li><strong>Description : </strong><span>{{ $value->description }}</span></li>
            <li><strong>Image : </strong><span><img src="{{ URL($value->image) }}" width="200"/></span></li>
            <li><strong>Price : </strong><span>{{ $value->currency.' '.$value->price }}</span></li>
        </ul>
        <h4 class="title-pr">Product Specifications</h4>
        <ul>
            @foreach($value->specification as $specification)
                <li><strong>{{ $specification->specificationName->name }}</strong><span>{{ $specification->specificationValue->value }}</span></li>
            @endforeach
        </ul>
        <h4 class="title-pr">Product Features</h4>
        <ul>
            @foreach($value->feature as $feature)
                <li><strong>{{ $feature->featureName->name }}</strong><span>{{ $feature->featureValue->value }}</span></li>
            @endforeach
        </ul>
    @empty
        <span class="do-data">No data found.</span>
    @endforelse
    </div>
</div>
@endsection
