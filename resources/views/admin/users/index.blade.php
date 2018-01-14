@extends('layouts.admin')
@section('content')
    @if(Session::has('delete_msg_user'))
        <div class="alert alert-success">
            <p class="text-center">{{session('delete_msg_user')}}</p>
        </div>
    @endif

    <h1>Users</h1>
    <table class="table table-striped">
        <thead>
          <tr>
            <th>ID</th>
              <th>Photo</th>
            <th>Name</th>
            <th>Email</th>
              <th>Role</th>
              <th>Status</th>
              <th>Created</th>
              <th>Updated</th>
              <th>Edit</th>
          </tr>
        </thead>
        <tbody>
        @if($users)
            @foreach($users as $user)
                <tr>
                    <td>{{$user->id}}</td>
                    <td><img style="max-height:15%;width:40%" class="img-thumbnail img-responsive" src="{{$user->photo ? $user->photo->file : '/images/no-photo.png'}}" /></td>
                    <td>{{$user->name}}</td>
                    <td>{{$user->email}}</td>
                    <td>{{$user->role->name}}</td>
                    <td>{{$user->is_active == 1 ? 'Active' : "Not Active "}}</td>
                    <td>{{$user->created_at->diffForHumans()}}</td>
                    <td>{{$user->updated_at->diffForHumans()}}</td>
                    <td><a href="{{route('admin.users.edit',$user->id)}}"><i class="fa fa-pencil-square fa-2x"></i></a>
                    </td>
                </tr>
                @endforeach
            @endif
        </tbody>
      </table>
@stop