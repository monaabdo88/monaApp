@extends('layouts.blog-post')
@section('sidebar')

    @stop
@section('content')
    <!-- Blog Post -->

    <!-- Title -->
    <h1>{{$post->title}}</h1>

    <!-- Author -->
    <p class="lead">
        by <a href="#">{{$post->user->name}}</a>
    </p>

    <hr>

    <!-- Date/Time -->
    <p><span class="glyphicon glyphicon-time"></span> Posted on {{$post->created_at->diffForHumans()}}</p>

    <hr>

    <!-- Preview Image -->
    <img class="img-responsive" src="{{$post->photo->file}}" alt="">

    <hr>

    <!-- Post Content -->
    <p class="lead">{{$post->body}}</p>
    <hr>

    <!-- Blog Comments -->
     @if(Session::has('comment_msg'))
         <div class="alert alert-success">
             <p class="text-center">{{session('comment_msg')}}</p>
         </div>
         @endif
    @if(Auth::check())
    <!-- Comments Form -->

    <div class="well">
        <h4>Leave a Comment:</h4>
        {!! Form::open(['method'=>'post','action'=>'PostCommentsController@store']) !!}
        <div class="form-group">
            <input type="hidden" name="post_id" value="{{$post->id}}" />
            {!! Form::label('body','Body') !!}
            {!! Form::textarea('body',null,['class'=>'form-control','rows'=>3]) !!}


        </div>
        <div class="form-group">
            {!! Form::submit('Submit Comment',['class'=>'btn btn-success']) !!}
        </div>
        {!! Form::close() !!}
    </div>
    <hr>
    @endif

    <!-- Posted Comments -->
    @if(count($comments) > 0)
        @foreach($comments as $comment)
    <!-- Comment -->
    <div class="media">
        <a class="pull-left" href="#">
            <img width="46" height="46" class="media-object" src="{{$comment->photo}}" alt="">
        </a>
        <div class="media-body">
            <h4 class="media-heading">{{$comment->author}}
                <small>{{$comment->created_at->diffForHumans()}}</small>
            </h4>
             {{$comment->comment}}
        </div>
    </div>
    @endforeach
    @endif
    <!-- Comment --->
    <div class="media">
        <a class="pull-left" href="#">
            <img class="media-object" src="http://placehold.it/64x64" alt="">
        </a>
        <div class="media-body">
            <h4 class="media-heading">Start Bootstrap
                <small>August 25, 2014 at 9:30 PM</small>
            </h4>
            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
            <!-- Nested Comment -->
            <div class="media">
                <a class="pull-left" href="#">
                    <img class="media-object" src="http://placehold.it/64x64" alt="">
                </a>
                <div class="media-body">
                    <h4 class="media-heading">Nested Start Bootstrap
                        <small>August 25, 2014 at 9:30 PM</small>
                    </h4>
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                </div>
            </div>
            <!-- End Nested Comment -->
        </div>
    </div>
    @stop