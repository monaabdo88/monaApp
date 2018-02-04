<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/post/{id}',['as'=>'home.post','uses'=>'AdminPostController@post']);
Route::auth();
Route::get('/home', 'HomeController@index');
Route::group(['middleware'=>'admin'],function (){
    Route::resource('admin/users','AdminUserController');
    Route::resource('admin/posts','AdminPostController');
    Route::resource('admin/categories','AdminCategoryController');
    Route::resource('admin/media','AdminPhotoController');
    Route::resource('admin/comments','PostCommentsController');
    Route::resource('admin/comments/replies','CommentRepliesController');
});
Route::get('/admin',function(){
    return view('admin.index');
});
Route::group(['middleware'=>'auth'],function (){
    Route::post('comment','PostCommentsController@createComment');
    Route::post('comment/replay','CommentRepliesController@createReplay');
});