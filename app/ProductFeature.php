<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductFeature extends Model
{
    protected $table = "product_features";
    
    public function featureName(){
        return $this->belongsTo(Feature::class, 'key', 'id');
    }
    
    public function featureValue(){
        return $this->belongsTo(FeatureValue::class, 'key', 'id');
    }
}
