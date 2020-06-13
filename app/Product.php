<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = "products";
    
    public function getProducts($request = []){
        $query = self::query();
        $query->distinct('products.id');
        $query->select('products.*');
        if(isset($request['query']) && !empty($request['query'])){
            $search = $request['query'];
            $query->where('title', 'LIKE', "%$search%");
        }
        
        if(isset($request['price_from']) && !empty($request['price_from']) && isset($request['price_to']) && !empty($request['price_to'])){
            $price_from = $request['price_from'];
            $price_to = $request['price_to'];
            $query->whereBetween('price', [$price_from, $price_to]);
        }
        
        $query->join('product_specifications as specification','specification.product_id',  '=', 'products.id');
        
        $specKey = [];
        $specValue = [];
        
        if(isset($request['specification']) && !empty($request['specification'])){
            foreach($request['specification'] as $key => $spec){
                if(!empty($spec)){ 
                    $specKey[] = $key; 
                    $specValue[] = $spec; 
                }
            }
          
            if($specValue){            
                $query->whereIn('specification.key', $specKey);   
                $query->whereIn('specification.value', $specValue);
            }
        }
        
        // $sql = Str::replaceArray('?', $query->getBindings(), $query->toSql());
        $result = $query->with(['category', 'specification', 'feature'])->get();
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
}
