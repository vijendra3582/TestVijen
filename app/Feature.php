<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Feature extends Model
{
    protected $table = 'features';
    
    public function featureValue(){
        return $this->hasMany(FeatureValue::class);
    }
}
