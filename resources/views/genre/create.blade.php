@extends('template')

@section('main')
    <div id="genre">
    <h2>Tambah Genre</h2>

    {!! Form::open(['url' => 'genre']) !!}
    @include('genre.form', ['submitButtonText' => 'Tambah Genre'])
    {!! Form::close() !!}
    </div>
@stop

@section('footer')
    @include('footer')
@stop