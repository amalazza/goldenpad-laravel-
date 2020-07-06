@extends('template')

@section('main')
    <div id="user">
    <h2>Tambah Admin</h2>

    {!! Form::open(['url' => 'user']) !!}
    @include('user.form', ['submitButtonText' => 'Tambah Admin'])
    {!! Form::close() !!}
    </div>
@stop

@section('footer')
    @include('footer')
@stop