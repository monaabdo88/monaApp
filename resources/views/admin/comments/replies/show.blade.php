@extends('layouts.admin')
@section('content')
    <h1>Replies</h1>
    @if(count($replies) > 0)
        <table class="table table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>Author</th>
                <th>Email</th>
                <th>Comment</th>
                <th>Post</th>
                <th>Activate</th>
                <th>Created</th>
                <th>Updated</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            @if($replies)
                @foreach($replies as $reply)
                    <tr>
                        <td>{{$reply->id}}</td>
                        <td>{{$reply->author}}</td>
                        <td>{{$reply->email}}</td>
                        <td>{{$reply->comment}}</td>
                        <td><a href="{{ route('home.post',$reply->comment()->first()->post->id)}}">{{ $reply->comment()->first()->post->title }}</a> </td>
                        <td>
                            @if($reply->is_active == 1)
                                {!! Form::open(['method'=>'PATCH','action'=>['CommentRepliesController@update',$reply->id]]) !!}
                                <input type="hidden" name="is_active" value="0">
                                <div class="form-group">
                                    {!! Form::submit('UnApprove',['class'=>'btn btn-primary']) !!}
                                </div>
                                {!! Form::close() !!}
                            @else
                                {!! Form::open(['method'=>'PATCH','action'=>['CommentRepliesController@update',$reply->id]]) !!}
                                <input type="hidden" name="is_active" value="1">
                                <div class="form-group">
                                    {!! Form::submit('Approve',['class'=>'btn btn-success']) !!}
                                </div>
                                {!! Form::close() !!}
                            @endif
                        </td>
                        <td>{{$reply->created_at->diffForHumans()}}</td>
                        <td>{{$reply->updated_at->diffForHumans()}}</td>
                        <td>
                            {!! Form::open(['method'=>'DELETE','action'=>['CommentRepliesController@destroy',$reply->id]]) !!}
                            <div class="form-group">
                                {!! Form::submit('Delete',['class'=>'btn btn-danger']) !!}
                            </div>
                            {!! Form::close() !!}
                        </td>
                    </tr>
                @endforeach
            @endif
            </tbody>
        </table>
    @else
        <div class="alert alert-danger">
            <p class="text-center">No Replies Found</p>
        </div>
    @endif
@stop