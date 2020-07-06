@extends('template')

@section('main')
<div id="genre">
    <h2>Edit Genre</h2>

    {!! Form::model($genre, ['method' => 'PATCH', 'action' => ['GenreController@update', $genre->id]]) !!}
    @include('genre.form', ['submitButtonText' => 'Update Genre'])
    {!! Form::close() !!}
</div>
@stop

@section('footer')
    @include('footer')
@stop