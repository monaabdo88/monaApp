@section('header')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.2.0/min/dropzone.min.css" rel="stylesheet">
@endsection
@extends('layouts.admin')
@section('content')
    <h1>Upload Media</h1>
    {!! Form::open(['method'=>'POST', 'action'=>'AdminPhotoController@store', 'class'=>'dropzone']) !!}
    {!! Form::close() !!}
@endsection
@section('footer')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.2.0/min/dropzone.min.js"></script>
@endsection