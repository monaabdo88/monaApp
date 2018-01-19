@extends('layouts.admin')
@section('content')
    <h1>Edit Category</h1>

    <div class="col-sm-9">
        @include('includes.errors')
        {!! Form::model($category,['method'=>'PATCH','action'=>['AdminCategoryController@update',$category->id],'files'=>true]) !!}
        <div class="form-group">
            {!! Form::label('name','Name') !!}
            {!! Form::text('name',$category->name,['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::submit('Save Changes',['class'=>'btn btn-success']) !!}
        </div>
        {!! Form::close() !!}

        {!! Form::open(['method'=>'DELETE','action'=>['AdminCategoryController@destroy',$category->id]]) !!}
        <div class="form-group">
            {!! Form::submit('Delete Category',['class'=>'btn btn-danger pull-right']) !!}
        </div>
        {!! Form::close() !!}
    </div>
@stop