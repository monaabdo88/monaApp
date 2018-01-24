<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CommentReplay extends Model
{
    //
    protected $fillable = [
        'author',
        'comment_id',
        'comment',
        'is_active',
        'author',
        'email'
    ];
    public function replies(){
        return $this->belongsTo('App\Comment');
    }
}
