@extends('layouts.admin')
@section('content')
    <h1>Edit User</h1>
    <div class="col-sm-3">
        <img src="{{$user->photo ? $user->photo->file : '/images/no-photo.png'}}" class="img-responsive img-rounded">
    </div>
    <div class="col-sm-9">
        @include('includes.errors')
        {!! Form::model($user,['method'=>'PATCH','action'=>['AdminUserController@update',$user->id],'files'=>true]) !!}
        <div class="form-group">
            {!! Form::label('name','Name') !!}
            {!! Form::text('name',$user->name,['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('email','Email') !!}
            {!! Form::email('email',$user->email,['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('password','Password') !!}
            {!! Form::password('password',['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('role_id','Role') !!}
            {!! Form::select('role_id',$roles,null,['class'=>'form-control']) !!}
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
            {!! Form::submit('Save Changes',['class'=>'btn btn-success']) !!}
        </div>
        {!! Form::close() !!}
        {!! Form::open(['method'=>'DELETE','action'=>['AdminUserController@destroy',$user->id]]) !!}
            <div class="form-group">
                {!! Form::submit('Delete User',['class'=>'btn btn-danger pull-right']) !!}
            </div>
        {!! Form::close() !!}
    </div>
@stop