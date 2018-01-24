@extends('layouts.admin')
@section('content')
    @if(Session::has('delete_msg_media'))
        <div class="alert alert-success">
            <p class="text-center">{{session('delete_msg_media')}}</p>
        </div>
    @endif

    <h1>Media</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Photo</th>
            <th>Created</th>
            <th>Updated</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        @if($photos)
            @foreach($photos as $photo)
                <tr>
                    <td>{{$photo->id}}</td>
                    <td><img style="max-height:15%;width:20%" class="img-thumbnail img-responsive" src="{{$photo->file ? $photo->file : '/images/no-photo.png'}}" /></td>
                    <td>{{$photo->created_at->diffForHumans()}}</td>
                    <td>{{$photo->updated_at->diffForHumans()}}</td>
                    <td>{!! Form::open(['method'=>'DELETE','action'=>['AdminPhotoController@destroy',$photo->id]]) !!}
                        {!! Form::submit('Delete',['class'=>'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
            @endforeach
        @endif
        </tbody>
    </table>
@stop