@extends('layouts.admin')
@section('content')
    <h1>Create User</h1>
    @include('includes.errors')
    {!! Form::open(['method'=>'post','action'=>'AdminPostController@store','files'=>true]) !!}
    <div class="form-group">
        {!! Form::label('title','Title') !!}
        {!! Form::text('title',null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('category_id','Category') !!}
        {!! Form::select('category_id',[''=>'Choose Category'],null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('body','Description') !!}
        {!! Form::textarea('body',null,['class'=>'form-control','rows'=>3]) !!}
    </div>
    <div class="form-group">
        {!! Form::label('photo_id','Photo') !!}
        {!! Form::file('photo_id',null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::submit('Add Post',['class'=>'btn btn-success']) !!}
    </div>
    {!! Form::close() !!}

@stop