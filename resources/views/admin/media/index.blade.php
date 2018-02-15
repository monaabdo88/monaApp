@extends('layouts.admin')
@section('content')
    @if(Session::has('delete_msg_media'))
        <div class="alert alert-success">
            <p class="text-center">{{session('delete_msg_media')}}</p>
        </div>
    @endif

    <h1>Media</h1>
    <form action="delete/image" method="post">
        {{csrf_field()}}
        {{method_field('delete')}}
        <input type="submit" name="del_all" value="Delete Images" class="btn btn-danger">
    <table class="table table-striped">
        <thead>
        <tr>
            <th><input type="checkbox" id="options"></th>
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
                    <td><input type="checkbox" class="check_del" name="del[]" value="{{$photo->id}}"></td>
                    <td>{{$photo->id}}</td>
                    <td><img style="max-height:15%;width:20%" class="img-thumbnail img-responsive" src="{{$photo->file ? $photo->file : '/images/no-photo.png'}}" /></td>
                    <td>{{$photo->created_at->diffForHumans()}}</td>
                    <td>{{$photo->updated_at->diffForHumans()}}</td>
                    <input type="hidden" name="photo" value="{{$photo->id}}" />
                    <td><input type="submit" name="del_single" class="btn btn-danger" value="Delete" />
                    </td>
                </tr>
            @endforeach
        @endif
        </tbody>
    </table>
    </form>
@stop
@section('scripts')
    <script>
        $(document).ready(function(){
            $("#options").click(function(){
                if(this.checked){
                    $(".check_del").each(function(){
                       this.checked = true;
                    });
                }else{
                    $(".check_del").each(function(){
                        this.checked = false;
                    });
                }
                consol.log('it works');
            });
        });
    </script>
    @stop