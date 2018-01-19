@extends('layouts.admin')
@section('content')
    <h1>Create Category</h1>
    @include('includes.errors')
    {!! Form::open(['method'=>'post','action'=>'AdminPostController@store','files'=>true]) !!}
    <div class="form-group">
        {!! Form::label('title','Title') !!}
        {!! Form::text('title',null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::submit('Add Category',['class'=>'btn btn-success']) !!}
    </div>
    {!! Form::close() !!}

@stop