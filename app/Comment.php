<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    //
    protected $fillable = [
        'author',
        'post_id',
        'comment',
        'is_active',
        'author',
        'email',
        'photo'
    ];
    public function replies(){
        return $this->hasMany('App\CommentReplay');
    }

    public function user(){
        return $this->belongsTo('App\User');
    }

    public function post(){
        return $this->belongsTo('App\Post');
    }
}
