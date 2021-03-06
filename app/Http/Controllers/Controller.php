<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use DB;
use App\Category;
use App\User;
use App\Product;
use App\Feature;
use App\Specification;
use App\Http\Requests\UserInsertRequest;
use Illuminate\Support\Facades\Hash;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    
    public function taskOne(){
        // Categroies with sub_category and child_category using relation
        $categories = Category::with('subCategory')->where('parent_id', 0)->get()->toArray();
        
        // If you want to make tree using recursion function then uncomment below two lines
        // $categoriesAll = Category::get()->toArray();
        // $categories = $this->makeTree($categoriesAll);
        
        echo "<pre>";
        print_r($categories);
    }
    
    public function taskTwo(){
        return view('create-user');
    }
    
    public function createUser(UserInsertRequest $request){
        
        //Generate image name
        $imageName = time().'.'.$request->image->getClientOriginalExtension();
        
        //Save image to public/uploads folder
        $request->image->move(public_path('/uploads'), $imageName);
        
        //Save data to user table
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'mobile' => $request->mobile,
            'image' => 'uploads/'.$imageName,
            'password' => Hash::make($request->password), 
        ]);
        
        return redirect(url('user/'.$user->id));
    }
    
    public function getUser($id){
        echo "<pre>";
        $user = User::findOrFail($id)->toArray();
        print_r($user);
    }
    
    public function taskThree(){
        
        //Initiate product object
        $product = new Product;
        
        //Get specifications for filter products
        $specifications = Specification::with('specificationValue')->get();
        
        //Get filtered products
        $products = $product->getProducts($_GET);
        return view('products')->with('products', $products)->with('specifications', $specifications);
    }
    
    private function makeTree(array &$array, $parent_id = 0) {
        $tree = array();    
        foreach ($array as $row) {
            if ($row['parent_id'] == $parent_id) {
                $child = $this->makeTree($array, $row['id']);
                if ($child) {
                    $row['child'] = $child;
                }
                $tree[$row['id']] = $row;
            }
        }
        return $tree;
    }
}
