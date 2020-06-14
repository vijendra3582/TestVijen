<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductAttribute extends Model
{
    protected $table = 'product_attributes';
    
    public function attributeName(){
        return $this->belongsTo(Attribute::class, 'key', 'id');
    }
    
    public function attributeValue(){
        return $this->belongsTo(AttributeValue::class, 'value', 'id');
    }
}
