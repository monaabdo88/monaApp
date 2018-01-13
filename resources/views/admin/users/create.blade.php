@extends('layouts.admin')
@section('content')
    <h1>Create User</h1>
    @include('includes.errors')
    {!! Form::open(['method'=>'post','action'=>'AdminUserController@store','files'=>true]) !!}
    <div class="form-group">
            {!! Form::label('name','Name') !!}
            {!! Form::text('name',null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('email','Email') !!}
        {!! Form::email('email',null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('password','Password') !!}
        {!! Form::password('password',['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('role_id','Role') !!}
        {!! Form::select('role_id',[''=>'Choose Role'] + $roles,null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('is_active','Status') !!}
        {!! Form::select('is_active',array('1'=>'Active','0'=>'Not Active'),null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('photo_id','Photo') !!}
        {!! Form::file('photo_id',null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::submit('Add User',['class'=>'btn btn-success']) !!}
    </div>
    {!! Form::close() !!}

    @stop