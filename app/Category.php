<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'categories';
    
    public function childCategory()
    {
        return $this->hasMany(Category::class, 'parent_id');
    }
    
    public function subCategory()
    {
        return $this->hasMany(Category::class, 'parent_id')->with('childCategory');
    }
}
