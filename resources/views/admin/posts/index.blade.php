@extends('layouts.admin')
@section('content')
    @if(Session::has('delete_msg_user'))
        <div class="alert alert-success">
            <p class="text-center">{{session('delete_msg_user')}}</p>
        </div>
    @endif

    <h1>Posts</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Photo</th>
            <th>Category</th>
            <th>Author</th>
            <th>Title</th>
            <th>Body</th>
            <th>Created</th>
            <th>Updated</th>
            <th>Edit</th>
        </tr>
        </thead>
        <tbody>
        @if($posts)
            @foreach($posts as $post)
                <tr>
                    <td>{{$post->id}}</td>
                    <td><img style="max-height:15%;width:40%" class="img-thumbnail img-responsive" src="{{$post->photo ? $post->photo->file : '/images/no-photo.png'}}" /></td>
                    <td>{{$post->category_id ? $post->category->name : "No Category Selected"}}</td>
                    <td>{{$post->user->name}}</td>
                    <td>{{$post->title}}</td>
                    <td>{{$post->body}}</td>
                    <td>{{$post->created_at->diffForHumans()}}</td>
                    <td>{{$post->updated_at->diffForHumans()}}</td>
                    <td><a href="{{route('admin.posts.edit',$post->id)}}"><i class="fa fa-pencil-square fa-2x"></i></a>
                    </td>
                </tr>
            @endforeach
        @endif
        </tbody>
    </table>
@stop