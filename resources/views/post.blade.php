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
        {!! Form::open(['method'=>'post','action'=>'PostCommentsController@createComment']) !!}
        <div class="form-group">
            <input type="hidden" name="post_id" value="{{$post->id}}" />
            {!! Form::label('body','Comment') !!}
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
            <img width="46" height="46" class="media-object" src="{{Auth::user()->gravatar}}" alt="">
        </a>
        <div class="media-body">
            <h4 class="media-heading">{{$comment->author}}
                <small>{{$comment->created_at->diffForHumans()}}</small>
            </h4>
             {{$comment->comment}}
        <!-- Nested Comment -->
            @if(count($comment->replies) > 0 )
                @foreach($comment->replies as $replay)
                    @if($replay->is_active == 1)
                        <div id="nested-comment" class="media">
                        <a class="pull-left" href="#">
                            <img width="46" height="46" class="media-object" src="{{$replay->photo}}" alt="">
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading">{{$replay->author}}
                                <small>{{$replay->created_at->diffForHumans()}}</small>
                            </h4>
                            {{$replay->comment}}
                        </div>
                        </div>
                        <!-- End Nested Comment -->
                    @endif
                @endforeach
            @endif
                    <div class="comment-replay-container">
                        <button class="toggle-replay btn btn-info pull-right">Replay</button>
                        <div class="comment-replay col-sm-6">
                        <!------------------- form replay to comment --------------------------------->
                        {!! Form::open(['method'=>'post','action'=>'CommentRepliesController@createReplay']) !!}
                        <div class="form-group">
                            <input type="hidden" name="comment_id" value="{{$comment->id}}" />
                            {!! Form::textarea('body',null,['class'=>'form-control','rows'=>2]) !!}


                        </div>
                        <div class="form-group">
                            {!! Form::submit('Submit Replay',['class'=>'btn btn-primary']) !!}
                        </div>
                    {!! Form::close() !!}
                    <!-------------------------------- end form replay -------------------------->
                        </div>
                    </div>


        </div>
    </div>
    @endforeach
    @else
        <p class="text-center">No Comments Found for This Post</p>
    @endif

    @stop
@section('scripts')
    <script>
        $(".comment-replay-container .toggle-replay").click(function(){
            $(this).next().slideToggle("slow");
        });
    </script>
    @stop