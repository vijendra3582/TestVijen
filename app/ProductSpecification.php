<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductSpecification extends Model
{
    protected $table = "product_specifications";
    
    
    public function specificationName(){
        return $this->belongsTo(Specification::class, 'key', 'id');
    }
    
    public function specificationValue(){
        return $this->belongsTo(SpecificationValue::class, 'value', 'id');
    }
}
