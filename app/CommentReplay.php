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
        'email',
        'photo'
    ];
    public function comment(){
        return $this->belongsTo('App\Comment');
    }
}
