<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/task-one', 'Controller@taskOne')->name('task-one');
Route::get('/task-two', 'Controller@taskTwo')->name('task-two');
Route::get('/task-three', 'Controller@taskThree')->name('task-three');

Route::post('/create-user', 'Controller@createUser')->name('create-user');
Route::get('/user/{id}', 'Controller@getUser')->name('user');