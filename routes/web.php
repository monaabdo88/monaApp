<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/
Auth::routes();
Route::get('/', function () {
    return view('welcome');
});
Route::get('/post/{id}',['as'=>'home.post','uses'=>'AdminPostController@post']);
Route::get('/logout', 'Auth\LoginController@logout');
Route::group(['middleware'=>'admin'],function (){
    Route::get('/admin',function(){
       return view('admin.index');
    });

Route::resource('admin/users','AdminUserController',['names'=>[
    'index'=>'admin.users.index',
    'create'=>'admin.users.create',
    'store'=>'admin.users.store',
    'edit'=>'admin.users.edit'
]]);
Route::resource('admin/posts','AdminPostController',['names'=>[
    'index'=>'admin.posts.index',
    'create'=>'admin.posts.create',
    'store'=>'admin.posts.store',
    'edit'=>'admin.posts.edit'
]]);
Route::resource('admin/categories','AdminCategoryController',['names'=>[
    'index'=>'admin.categories.index',
    'create'=>'admin.categories.create',
    'store'=>'admin.categories.store',
    'edit'=>'admin.categories.edit'
]]);
Route::resource('admin/media','AdminPhotoController',['names'=>[
    'index'=>'admin.media.index',
    'create'=>'admin.media.create',
    'store'=>'admin.media.store',
    'edit'=>'admin.media.edit'
]]);
Route::resource('admin/comments','PostCommentsController',['names'=>[
    'index'=>'admin.comments.index',
    'create'=>'admin.comments.create',
    'store'=>'admin.comments.store',
    'edit'=>'admin.comments.edit',
    'show' =>'admin.comments.show'
]]);
Route::resource('admin/comments/replies','CommentRepliesController',['names'=>[
    'index'=>'admin.replies.index',
    'create'=>'admin.replies.create',
    'store'=>'admin.replies.store',
    'edit'=>'admin.replies.edit'
]]);
});
Route::group(['middleware'=>'auth'],function (){
    Route::post('comment','PostCommentsController@createComment');
    Route::post('comment/replay','CommentRepliesController@createReplay');
});