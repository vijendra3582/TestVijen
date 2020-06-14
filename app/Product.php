<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = "products";
    
    public function getProducts($request = []){
        //Initiate self class query
        $query = self::query();
        $query->select('products.*');
        
        //If user choose specification to filter product
        if(isset($request['specification']) && !empty($request['specification'])){
            
            //Iterate all specification
            foreach($request['specification'] as $key => $spec){
                
                 //If specification has a value
                if(!empty($spec)){ 
                    $keyValue['key'] = $key;
                    $keyValue['spec'] = $spec;
                    
                    //Check specification filter
                    $query->whereHas('specification', function ($queryIN) use ($keyValue) {
                    $queryIN->where('key', $keyValue['key'])
                        ->where('value', $keyValue['spec']);
                    });
                }
            }
        }
        
        
        // $sql = Str::replaceArray('?', $query->getBindings(), $query->toSql());
        
        //Get product data with category , specification, feature and attributes
        $result = $query->with(['category', 'specification', 'feature', 'attribute'])->get();
        
        return $result;
    }
    
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    
    public function specification()
    {
        return $this->hasMany(ProductSpecification::class);
    }
    
    public function feature()
    {
        return $this->hasMany(ProductFeature::class);
    }
    
    public function attribute()
    {
        return $this->hasMany(ProductAttribute::class);
    }
}
