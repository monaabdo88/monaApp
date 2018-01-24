@extends('layouts.admin')
@section('content')
    @if(Session::has('delete_msg_category'))
        <div class="alert alert-success">
            <p class="text-center">{{session('delete_msg_category')}}</p>
        </div>
    @endif
    <div class="col-md-6">
        <h1>Create Category</h1>
        @include('includes.errors')
        {!! Form::open(['method'=>'post','action'=>'AdminCategoryController@store','files'=>true]) !!}
        <div class="form-group">
            {!! Form::label('name','Title') !!}
            {!! Form::text('name',null,['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::submit('Add Category',['class'=>'btn btn-success']) !!}
        </div>
        {!! Form::close() !!}
    </div>
    <div class="col-md-6">
        <h1>Posts</h1>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Created</th>
                <th>Updated</th>
                <th>Edit</th>
            </tr>
            </thead>
            <tbody>
            @if($categories)
                @foreach($categories as $post)
                    <tr>
                        <td>{{$post->id}}</td>
                        <td>{{$post->name}}</td>
                        <td>{{$post->created_at->diffForHumans()}}</td>
                        <td>{{$post->updated_at->diffForHumans()}}</td>
                        <td><a href="{{route('admin.categories.edit',$post->id)}}"><i class="fa fa-pencil-square fa-2x"></i></a></td>
                    </tr>
                @endforeach
            @endif
            </tbody>
        </table>
    </div>
@stop