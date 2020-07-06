@extends('template')

@section('main')
<div id="user">
<h2>Edit Admin</h2>

{!! Form::model($user, ['method' => 'PATCH', 'action' => ['UserController@update', $user->id]]) !!}
@include('user.form', ['submitButtonText' => 'Update Admin'])
{!! Form::close() !!}
</div>
@stop

@section('footer')
@include('footer')
@stop