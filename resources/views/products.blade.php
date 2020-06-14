@extends('layouts.app')
@section('content')
<div class="products">
    <!-- Filter Form Start -->
    <div class="filter">
        <form action="">
            <h4>Filter Products</h4>
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
    <!-- Filter Form End -->
    
    <!-- Filtered Product Data Area Start -->
    <div class="data">
    
    <!-- Start Product Data Iteration -->
    @forelse($products as $key => $value)
        <div class="seperator"></div>
        <!-- Product Basic Information Start -->
        <h4 class="title-pr">Product Information</h4>
        <ul>
            <li><strong>Seller : </strong><span>{{ $value->seller }}</span></li>
            <li><strong>Title : </strong><span>{{ $value->title }}</span></li>
            <li><strong>Description : </strong><span>{{ $value->description }}</span></li>
            <li><strong>Image : </strong><span><img src="{{ URL($value->image) }}" width="200"/></span></li>
        </ul>
        <!-- Product Basic Information End -->
        
        <!-- Product Attributes Start -->
        <h4 class="title-pr">Product Attributes</h4>
        <ul>
            @foreach($value->attribute as $attribute)
                <li><strong>{{ $attribute->attributeName->name }}</strong><span>{{ $attribute->attributeValue->value }} <i>( {{ $value->currency.' '.$attribute->price }} )</i></span></li>
            @endforeach
        </ul>
        <!-- Product Attributes End -->
        
        <!-- Product Specifications Start -->
        <h4 class="title-pr">Product Specifications</h4>
        <ul>
            @foreach($value->specification as $specification)
                <li><strong>{{ $specification->specificationName->name }}</strong><span>{{ $specification->specificationValue->value }}</span></li>
            @endforeach
        </ul>
        <!-- Product Specifications End -->
        
        <!-- Product Features Start -->
        <h4 class="title-pr">Product Features</h4>
        <ul>
            @foreach($value->feature as $feature)
                <li><strong>{{ $feature->featureName->name }}</strong><span>{{ $feature->featureValue->value }}</span></li>
            @endforeach
        </ul>
        <!-- Product Features End -->
        
    <!-- If No Product Found -->
    @empty
        <span class="do-data">No data found.</span>
    @endforelse
    <!-- End Product Data Iteration -->
    </div>
    <!-- Filtered Product Data Area End --> 
</div>
@endsection
