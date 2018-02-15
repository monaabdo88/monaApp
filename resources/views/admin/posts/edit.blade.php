@extends('layouts.admin')
@section('content')
    @include('includes.tinyeditor');
    <h1>Edit Post</h1>
    <div class="col-sm-3">
        <img src="{{$post->photo ? $post->photo->file : '/images/no-photo.png'}}" class="img-responsive img-rounded">
    </div>
    <div class="col-sm-9">
        @include('includes.errors')
        {!! Form::model($post,['method'=>'PATCH','action'=>['AdminPostController@update',$post->id],'files'=>true]) !!}
        <div class="form-group">
            {!! Form::label('title','Title') !!}
            {!! Form::text('title',$post->title,['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('category_id','Category') !!}
            {!! Form::select('category_id',$categories,null,['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('body','Description') !!}
            {!! Form::textarea('body',$post->body,['class'=>'form-control','rows'=>3]) !!}
        </div>
        <div class="form-group">
            {!! Form::label('photo_id','Photo') !!}
            {!! Form::file('photo_id',null,['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::submit('Save Changes',['class'=>'btn btn-success']) !!}
        </div>
        {!! Form::close() !!}
        {!! Form::open(['method'=>'DELETE','action'=>['AdminPostController@destroy',$post->id]]) !!}
        <div class="form-group">
            {!! Form::submit('Delete Post',['class'=>'btn btn-danger pull-right']) !!}
        </div>
        {!! Form::close() !!}
    </div>
@stop